Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPULibFunc?download=true
inline.NumInlined: 953
inline.NumDeleted: 580
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
@.str.45 = private unnamed_addr constant [5 x i8] c"cosh\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"cospi\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"cross\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"ctz\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"degrees\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"distance\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"divide\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"dot\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"erf\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"erfc\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"exp10\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"exp2\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"expm1\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"fabs\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"fast_distance\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"fast_length\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"fast_normalize\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"fdim\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"fma\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"fmax\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"fmin\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"fmod\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"fract\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"frexp\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"get_image_array_size\00", align 1
@.str.72 = private unnamed_addr constant [28 x i8] c"get_image_channel_data_type\00", align 1
@.str.73 = private unnamed_addr constant [24 x i8] c"get_image_channel_order\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"get_image_dim\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"get_image_height\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"get_image_width\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"get_pipe_max_packets\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"get_pipe_num_packets\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"hadd\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"hypot\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"ilogb\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"isequal\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"isfinite\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"isgreater\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"isgreaterequal\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"isinf\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"isless\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"islessequal\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"islessgreater\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"isnan\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"isnormal\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"isnotequal\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"isordered\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"isunordered\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"ldexp\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"lgamma\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"lgamma_r\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"log10\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"log1p\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"log2\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"logb\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"mad\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"mad24\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"mad_hi\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"mad_sat\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"maxmag\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"minmag\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"mix\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"modf\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"mul24\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"mul_hi\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"nextafter\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"normalize\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"popcount\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"__pow_fast\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"pown\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"__pown_fast\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"powr\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"__powr_fast\00", align 1
@.str.126 = private unnamed_addr constant [9 x i8] c"prefetch\00", align 1
@.str.127 = private unnamed_addr constant [8 x i8] c"radians\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"recip\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"remainder\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"remquo\00", align 1
@.str.131 = private unnamed_addr constant [18 x i8] c"reserve_read_pipe\00", align 1
@.str.132 = private unnamed_addr constant [19 x i8] c"reserve_write_pipe\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"rhadd\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"rint\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"rootn\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"__rootn_fast\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"round\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"rsqrt\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"shuffle\00", align 1
@.str.142 = private unnamed_addr constant [9 x i8] c"shuffle2\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"sign\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"signbit\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"sincos\00", align 1
@.str.147 = private unnamed_addr constant [5 x i8] c"sinh\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"sinpi\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"smoothstep\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.152 = private unnamed_addr constant [20 x i8] c"sub_group_broadcast\00", align 1
@.str.153 = private unnamed_addr constant [27 x i8] c"sub_group_commit_read_pipe\00", align 1
@.str.154 = private unnamed_addr constant [28 x i8] c"sub_group_commit_write_pipe\00", align 1
@.str.155 = private unnamed_addr constant [21 x i8] c"sub_group_reduce_add\00", align 1
@.str.156 = private unnamed_addr constant [21 x i8] c"sub_group_reduce_max\00", align 1
@.str.157 = private unnamed_addr constant [21 x i8] c"sub_group_reduce_min\00", align 1
@.str.158 = private unnamed_addr constant [28 x i8] c"sub_group_reserve_read_pipe\00", align 1
@.str.159 = private unnamed_addr constant [29 x i8] c"sub_group_reserve_write_pipe\00", align 1
@.str.160 = private unnamed_addr constant [29 x i8] c"sub_group_scan_exclusive_add\00", align 1
@.str.161 = private unnamed_addr constant [29 x i8] c"sub_group_scan_exclusive_max\00", align 1
@.str.162 = private unnamed_addr constant [29 x i8] c"sub_group_scan_exclusive_min\00", align 1
@.str.163 = private unnamed_addr constant [29 x i8] c"sub_group_scan_inclusive_add\00", align 1
@.str.164 = private unnamed_addr constant [29 x i8] c"sub_group_scan_inclusive_max\00", align 1
@.str.165 = private unnamed_addr constant [29 x i8] c"sub_group_scan_inclusive_min\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"sub_sat\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c"tanh\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"tanpi\00", align 1
@.str.170 = private unnamed_addr constant [7 x i8] c"tgamma\00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"upsample\00", align 1
@.str.173 = private unnamed_addr constant [9 x i8] c"vec_step\00", align 1
@.str.174 = private unnamed_addr constant [7 x i8] c"vstore\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"vstore16\00", align 1
@.str.176 = private unnamed_addr constant [8 x i8] c"vstore2\00", align 1
@.str.177 = private unnamed_addr constant [8 x i8] c"vstore3\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"vstore4\00", align 1
@.str.179 = private unnamed_addr constant [8 x i8] c"vstore8\00", align 1
@.str.180 = private unnamed_addr constant [28 x i8] c"work_group_commit_read_pipe\00", align 1
@.str.181 = private unnamed_addr constant [29 x i8] c"work_group_commit_write_pipe\00", align 1
@.str.182 = private unnamed_addr constant [22 x i8] c"work_group_reduce_add\00", align 1
@.str.183 = private unnamed_addr constant [22 x i8] c"work_group_reduce_max\00", align 1
@.str.184 = private unnamed_addr constant [22 x i8] c"work_group_reduce_min\00", align 1
@.str.185 = private unnamed_addr constant [29 x i8] c"work_group_reserve_read_pipe\00", align 1
@.str.186 = private unnamed_addr constant [30 x i8] c"work_group_reserve_write_pipe\00", align 1
@.str.187 = private unnamed_addr constant [30 x i8] c"work_group_scan_exclusive_add\00", align 1
@.str.188 = private unnamed_addr constant [30 x i8] c"work_group_scan_exclusive_max\00", align 1
@.str.189 = private unnamed_addr constant [30 x i8] c"work_group_scan_exclusive_min\00", align 1
@.str.190 = private unnamed_addr constant [30 x i8] c"work_group_scan_inclusive_add\00", align 1
@.str.191 = private unnamed_addr constant [30 x i8] c"work_group_scan_inclusive_max\00", align 1
@.str.192 = private unnamed_addr constant [30 x i8] c"work_group_scan_inclusive_min\00", align 1
@.str.193 = private unnamed_addr constant [13 x i8] c"write_imagef\00", align 1
@.str.194 = private unnamed_addr constant [13 x i8] c"write_imagei\00", align 1
@.str.195 = private unnamed_addr constant [14 x i8] c"write_imageui\00", align 1
@.str.196 = private unnamed_addr constant [5 x i8] c"ncos\00", align 1
@.str.197 = private unnamed_addr constant [6 x i8] c"nexp2\00", align 1
@.str.198 = private unnamed_addr constant [5 x i8] c"nfma\00", align 1
@.str.199 = private unnamed_addr constant [6 x i8] c"nlog2\00", align 1
@.str.200 = private unnamed_addr constant [5 x i8] c"nrcp\00", align 1
@.str.201 = private unnamed_addr constant [7 x i8] c"nrsqrt\00", align 1
@.str.202 = private unnamed_addr constant [5 x i8] c"nsin\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"nsqrt\00", align 1
@.str.204 = private unnamed_addr constant [4 x i8] c"ftz\00", align 1
@.str.205 = private unnamed_addr constant [7 x i8] c"fldexp\00", align 1
@.str.206 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.207 = private unnamed_addr constant [6 x i8] c"rcbrt\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"U3AS\00", align 1
@.str.209 = private unnamed_addr constant [3 x i8] c"Dv\00", align 1
@_ZTVN4llvm19raw_svector_ostreamE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.218 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.220 = private unnamed_addr constant [14 x i8] c"__read_pipe_2\00", align 1
@.str.221 = private unnamed_addr constant [14 x i8] c"__read_pipe_4\00", align 1
@.str.222 = private unnamed_addr constant [15 x i8] c"__write_pipe_2\00", align 1
@.str.223 = private unnamed_addr constant [15 x i8] c"__write_pipe_4\00", align 1
@_ZN12_GLOBAL__N_117UnmangledFuncInfo5TableE = internal unnamed_addr constant [4 x { ptr, i32 }] [{ ptr, i32 } { ptr @.str.220, i32 4 }, { ptr, i32 } { ptr @.str.221, i32 6 }, { ptr, i32 } { ptr @.str.222, i32 4 }, { ptr, i32 } { ptr @.str.223, i32 6 }], align 16
@_ZZN12_GLOBAL__N_117UnmangledFuncInfo6lookupEN4llvm9StringRefERNS1_17AMDGPULibFuncBase7EFuncIdEE3Map = internal global %"class.llvm::StringMap.115" zeroinitializer, align 8
@_ZGVZN12_GLOBAL__N_117UnmangledFuncInfo6lookupEN4llvm9StringRefERNS1_17AMDGPULibFuncBase7EFuncIdEE3Map = internal global i64 0, align 8
@_ZTVN4llvm2cl11OptionValueIbEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIbEE = external unnamed_addr constant { [6 x ptr] }, align 8
@.str.225 = private unnamed_addr constant [8 x i8] c"native_\00", align 1
@.str.226 = private unnamed_addr constant [6 x i8] c"half_\00", align 1
@.str.227 = private unnamed_addr constant [3 x i8] c"S_\00", align 1
@.str.228 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.229 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.230 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.231 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.232 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.233 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.234 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.235 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.236 = private unnamed_addr constant [3 x i8] c"Dh\00", align 1
@.str.237 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.238 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.239 = private unnamed_addr constant [19 x i8] c"16ocl_image1darray\00", align 1
@.str.240 = private unnamed_addr constant [20 x i8] c"17ocl_image1dbuffer\00", align 1
@.str.241 = private unnamed_addr constant [19 x i8] c"16ocl_image2darray\00", align 1
@.str.242 = private unnamed_addr constant [14 x i8] c"11ocl_image1d\00", align 1
@.str.243 = private unnamed_addr constant [14 x i8] c"11ocl_image2d\00", align 1
@.str.244 = private unnamed_addr constant [14 x i8] c"11ocl_image3d\00", align 1
@.str.245 = private unnamed_addr constant [14 x i8] c"11ocl_sampler\00", align 1
@.str.246 = private unnamed_addr constant [11 x i8] c"9ocl_event\00", align 1
@.str.247 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_AMDGPULibFunc.cpp, ptr null }]
@switch.table._ZNK4llvm20AMDGPUMangledLibFunc17mangleNameItaniumB5cxx11Ev = private unnamed_addr constant [118 x ptr] [ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246], align 8
@switch.table._ZN12_GLOBAL__N_113ParamIterator12getNextParamEv = private unnamed_addr constant [9 x i8] c"\01\01\04\04\01\01\01\01\04", align 4
@switch.table._ZN12_GLOBAL__N_113ParamIterator12getNextParamEv.6 = private unnamed_addr constant [9 x i8] c"\00\87\13#\00\86433", align 4

@_ZN4llvm20AMDGPUMangledLibFuncC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4llvm20AMDGPUMangledLibFuncC2Ev
@_ZN4llvm22AMDGPUUnmangledLibFuncC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4llvm22AMDGPUUnmangledLibFuncC2Ev
@_ZN4llvm20AMDGPUMangledLibFuncC1ENS_17AMDGPULibFuncBase7EFuncIdERKS0_ = unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN4llvm20AMDGPUMangledLibFuncC2ENS_17AMDGPULibFuncBase7EFuncIdERKS0_
@_ZN4llvm20AMDGPUMangledLibFuncC1ENS_17AMDGPULibFuncBase7EFuncIdEPNS_12FunctionTypeEb = unnamed_addr alias void (ptr, i32, ptr, i1), ptr @_ZN4llvm20AMDGPUMangledLibFuncC2ENS_17AMDGPULibFuncBase7EFuncIdEPNS_12FunctionTypeEb
@_ZN4llvm13AMDGPULibFuncC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm13AMDGPULibFuncC2ERKS0_
@_ZN4llvm13AMDGPULibFuncC1ENS_17AMDGPULibFuncBase7EFuncIdERKS0_ = unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN4llvm13AMDGPULibFuncC2ENS_17AMDGPULibFuncBase7EFuncIdERKS0_
@_ZN4llvm13AMDGPULibFuncC1ENS_17AMDGPULibFuncBase7EFuncIdEPNS_12FunctionTypeEb = unnamed_addr alias void (ptr, i32, ptr, i1), ptr @_ZN4llvm13AMDGPULibFuncC2ENS_17AMDGPULibFuncBase7EFuncIdEPNS_12FunctionTypeEb
@_ZN4llvm13AMDGPULibFuncC1ENS_9StringRefEPNS_12FunctionTypeE = unnamed_addr alias void (ptr, ptr, i64, ptr), ptr @_ZN4llvm13AMDGPULibFuncC2ENS_9StringRefEPNS_12FunctionTypeE

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #23, !inline_history !221 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !225, !range !17, !noundef !18
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !226
  tail call void @free(ptr noundef %i.i) #23
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #23
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm20AMDGPUMangledLibFuncC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4llvm20AMDGPUMangledLibFuncE, i64 16), ptr %0, align 8, !tbaa !13
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !29
  store i32 0, ptr %i.d, align 8, !tbaa !30
  store <8 x i8> <i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0>, ptr %.ptr, align 4, !tbaa !31
  store i64 0, ptr %i.c, align 8, !tbaa !32
  store i8 0, ptr %i.b, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm22AMDGPUUnmangledLibFuncC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !32
  store i8 0, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.d, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4llvm22AMDGPUUnmangledLibFuncE, i64 16), ptr %0, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.f, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4llvm20AMDGPUMangledLibFuncC2ENS_17AMDGPULibFuncBase7EFuncIdERKS0_(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !32
  store i8 0, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4llvm20AMDGPUMangledLibFuncE, i64 16), ptr %0, align 8, !tbaa !13
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <8 x i8> <i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0>, ptr %.ptr, align 4, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !30
  store i32 %i.g, ptr %i.d, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.i = load i32, ptr %i.h, align 4
  store i32 %i.i, ptr %.ptr, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load i32, ptr %i.j, align 8
  store i32 %i.k, ptr %.ptr.1, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm20AMDGPUMangledLibFuncC2ENS_17AMDGPULibFuncBase7EFuncIdEPNS_12FunctionTypeEb(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !32
  store i8 0, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.d, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4llvm20AMDGPUMangledLibFuncE, i64 16), ptr %0, align 8, !tbaa !13
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <8 x i8> <i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0>, ptr %.ptr, align 4, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40
  %i.h = add i32 %i.g, -1                         ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = and i32 %i.n, 255
  %i.p = icmp ne i32 %i.o, 18
  %.not10.i = icmp eq ptr %i.l, null
  %.not.i = or i1 %.not10.i, %i.p
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.u = shl i32 %i.r, 8
  %i.v = and i32 %i.u, 65280
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi i32 [ %i.n, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %.sroa.9.0.i = phi i32 [ 256, %bb.b ], [ %i.v, %bb.c ]
  %trunc.i = trunc i32 %i.w to i8
  switch i8 %trunc.i, label %bb.m [
    i8 2, label %bb.n
    i8 3, label %bb.e
    i8 0, label %bb.f
    i8 12, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  br label %bb.n

bb.g:                                             ; preds = %bb.d
  %i.x = lshr i32 %i.w, 8
  %i.y = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.x, i1 true)
end_hunk_0
begin_hunk_1_@_ZNK4llvm20AMDGPUMangledLibFunc17mangleNameItaniumB5cxx11Ev:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 2
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_114ItaniumManglerclIN4llvm19raw_svector_ostreamEEEvRT_NS2_17AMDGPULibFuncBase5ParamE.exit
  %i.bh = phi i32 [ %i.be, %.lr.ph ], [ %i.ep, %_ZN12_GLOBAL__N_114ItaniumManglerclIN4llvm19raw_svector_ostreamEEEvRT_NS2_17AMDGPULibFuncBase5ParamE.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 %i.bh, ptr %2, align 4
  %i.bi = lshr i32 %i.bh, 16                      ; 2 uses
  %i.bj = trunc i32 %i.bi to i8                   ; 3 uses
  %.not.i5 = icmp eq i8 %i.bj, 0
  %i.bk = lshr i32 %i.bh, 8
  %i.bl = trunc i32 %i.bh to i8                   ; 2 uses
  br i1 %.not.i5, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val16.i = load ptr, ptr %7, align 8
  %.val17.i = load i32, ptr %i.au, align 8
  %i.bm = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_114ItaniumMangler8trySubstIN4llvm19raw_svector_ostreamEEEbRT_RKNS2_17AMDGPULibFuncBase5ParamE(ptr %.val16.i, i32 %.val17.i, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 1 dereferenceable(4) %2)
  br i1 %i.bm, label %_ZN12_GLOBAL__N_114ItaniumManglerclIN4llvm19raw_svector_ostreamEEEvRT_NS2_17AMDGPULibFuncBase5ParamE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = load ptr, ptr %i.x, align 8, !tbaa !84  ; 3 uses
  %i.bo = load ptr, ptr %i.v, align 8, !tbaa !83
  %.not.i.i = icmp ult ptr %i.bn, %i.bo
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 noundef zeroext 80) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store ptr %i.bq, ptr %i.x, align 8, !tbaa !84
  store i8 80, ptr %i.bn, align 1, !tbaa !31
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %bb.k, %bb.j
  %i.br = and i8 %i.bj, 16
  %.not12.i = icmp eq i8 %i.br, 0
  br i1 %.not12.i, label %_ZN4llvm11raw_ostreamlsEc.exit20.i, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i
  %i.bs = load ptr, ptr %i.x, align 8, !tbaa !84  ; 3 uses
  %i.bt = load ptr, ptr %i.v, align 8, !tbaa !83
  %.not.i18.i = icmp ult ptr %i.bs, %i.bt
  br i1 %.not.i18.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 noundef zeroext 75) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit20.i

bb.n:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store ptr %i.bv, ptr %i.x, align 8, !tbaa !84
  store i8 75, ptr %i.bs, align 1, !tbaa !31
  br label %_ZN4llvm11raw_ostreamlsEc.exit20.i

_ZN4llvm11raw_ostreamlsEc.exit20.i:               ; preds = %bb.n, %bb.m, %_ZN4llvm11raw_ostreamlsEc.exit.i
  %i.bw = and i8 %i.bj, 32
  %.not13.i = icmp eq i8 %i.bw, 0
  br i1 %.not13.i, label %_ZN4llvm11raw_ostreamlsEc.exit23.i, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit20.i
  %i.bx = load ptr, ptr %i.x, align 8, !tbaa !84  ; 3 uses
  %i.by = load ptr, ptr %i.v, align 8, !tbaa !83
  %.not.i21.i = icmp ult ptr %i.bx, %i.by
  br i1 %.not.i21.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 noundef zeroext 86) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit23.i

bb.q:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store ptr %i.ca, ptr %i.x, align 8, !tbaa !84
  store i8 86, ptr %i.bx, align 1, !tbaa !31
  br label %_ZN4llvm11raw_ostreamlsEc.exit23.i

_ZN4llvm11raw_ostreamlsEc.exit23.i:               ; preds = %bb.q, %bb.p, %_ZN4llvm11raw_ostreamlsEc.exit20.i
  %i.cb = load i8, ptr %i.aw, align 8, !tbaa !253, !range !17, !noundef !18
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = and i32 %i.bi, 15
  %i.ce = add nsw i32 %i.cd, -1
  %i.cf = select i1 %i.cc, i32 %i.ce, i32 0       ; 2 uses
  %i.cg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL27EnableOCLManglingMismatchWA, i64 120), align 8, !tbaa !97, !range !17, !noundef !18
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = icmp ne i32 %i.cf, 0
  %or.cond.i = or i1 %i.ci, %i.ch
  br i1 %or.cond.i, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit23.i
  %i.cj = load ptr, ptr %i.v, align 8, !tbaa !83
  %i.ck = load ptr, ptr %i.x, align 8, !tbaa !84  ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = icmp ult i64 %i.cn, 4
  br i1 %i.co, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull @.str.208, i64 noundef 4) #23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.t:                                             ; preds = %bb.r
  store i32 1396781909, ptr %i.ck, align 1
  %i.cq = load ptr, ptr %i.x, align 8, !tbaa !84
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store ptr %i.cr, ptr %i.x, align 8, !tbaa !84
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.t, %bb.s
  %.0.i.i.i = phi ptr [ %i.cp, %bb.s ], [ %4, %bb.t ]
  %i.cs = zext i32 %i.cf to i64
  %i.ct = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, i64 noundef %i.cs) #23 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i, %_ZN4llvm11raw_ostreamlsEc.exit23.i
  store i8 0, ptr %i.bg, align 2, !tbaa !99
  %i.cu = and i32 %i.bh, -256
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.g
  %.sroa.8.0.i = phi i32 [ 256, %bb.g ], [ %i.cu, %bb.u ]
  %.sroa.0.0.i = phi i8 [ 0, %bb.g ], [ %i.bl, %bb.u ] ; 2 uses
  %i.cv = and i32 %i.bh, 65024
  %.not45.i = icmp eq i32 %i.cv, 0
  br i1 %.not45.i, label %_ZN4llvm11raw_ostreamlsEc.exit30.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val.i = load ptr, ptr %7, align 8
  %.val15.i = load i32, ptr %i.au, align 8
  %i.cw = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_114ItaniumMangler8trySubstIN4llvm19raw_svector_ostreamEEEbRT_RKNS2_17AMDGPULibFuncBase5ParamE(ptr %.val.i, i32 %.val15.i, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 1 dereferenceable(4) %2)
  br i1 %i.cw, label %_ZN4llvm11raw_ostreamlsEPKc.exit34.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.02.0.copyload.i = load i32, ptr %2, align 4 ; 3 uses
  %i.cx = load i32, ptr %i.au, align 8, !tbaa !85 ; 2 uses
  %i.cy = load i32, ptr %i.av, align 4, !tbaa !246
  %.not.i24.i = icmp ult i32 %i.cx, %i.cy
  %i.cz = trunc i32 %.sroa.02.0.copyload.i to i8  ; 2 uses
  br i1 %.not.i24.i, label %bb.z, label %bb.y, !prof !254

bb.y:                                             ; preds = %bb.x
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_17AMDGPULibFuncBase5ParamELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(57) %7, i32 %.sroa.02.0.copyload.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_17AMDGPULibFuncBase5ParamELb1EE9push_backES2_.exit.i

bb.z:                                             ; preds = %bb.x
  %i.da = zext i32 %i.cx to i64
  %i.db = load ptr, ptr %7, align 8, !tbaa !20
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.da
  store i32 %.sroa.02.0.copyload.i, ptr %i.dc, align 1
  %i.dd = load i32, ptr %i.au, align 8, !tbaa !85
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.au, align 8, !tbaa !85
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_17AMDGPULibFuncBase5ParamELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_17AMDGPULibFuncBase5ParamELb1EE9push_backES2_.exit.i: ; preds = %bb.z, %bb.y
  %i.df = load ptr, ptr %i.v, align 8, !tbaa !83
  %i.dg = load ptr, ptr %i.x, align 8, !tbaa !84  ; 2 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = icmp ult i64 %i.dj, 2
  br i1 %i.dk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_17AMDGPULibFuncBase5ParamELb1EE9push_backES2_.exit.i
  %i.dl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull @.str.209, i64 noundef 2) #23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit27.i

bb.ab:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_17AMDGPULibFuncBase5ParamELb1EE9push_backES2_.exit.i
  store i16 30276, ptr %i.dg, align 1
  %i.dm = load ptr, ptr %i.x, align 8, !tbaa !84
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  store ptr %i.dn, ptr %i.x, align 8, !tbaa !84
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit27.i

_ZN4llvm11raw_ostreamlsEPKc.exit27.i:             ; preds = %bb.ab, %bb.aa
  %.0.i.i26.i = phi ptr [ %i.dl, %bb.aa ], [ %4, %bb.ab ]
  %.mask.i = and i32 %i.bk, 255
  %i.do = zext nneg i32 %.mask.i to i64
  %i.dp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i26.i, i64 noundef %i.do) #23 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !84 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !83
  %.not.i28.i = icmp ult ptr %i.dr, %i.dt
  br i1 %.not.i28.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit27.i
  %i.du = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.dp, i8 noundef zeroext 95) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit30.i

bb.ad:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit27.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  store ptr %i.dv, ptr %i.dq, align 8, !tbaa !84
  store i8 95, ptr %i.dr, align 1, !tbaa !31
  br label %_ZN4llvm11raw_ostreamlsEc.exit30.i

_ZN4llvm11raw_ostreamlsEc.exit30.i:               ; preds = %bb.ad, %bb.ac, %bb.v
  %i.dw = phi i8 [ %i.cz, %bb.ad ], [ %i.cz, %bb.ac ], [ %i.bl, %bb.v ]
  %switch.tableidx = add i8 %i.dw, -18
  %i.dx = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm20AMDGPUMangledLibFunc17mangleNameItaniumB5cxx11Ev, i64 %i.dx
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 3 uses
  %i.dy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #23 ; 5 uses
  %i.dz = load ptr, ptr %i.v, align 8, !tbaa !83
  %i.ea = load ptr, ptr %i.x, align 8, !tbaa !84  ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = icmp ugt i64 %i.dy, %i.ed
  br i1 %i.ee, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit30.i
  %i.ef = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull %switch.load, i64 noundef %i.dy) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34.i

bb.af:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit30.i
  %.not.i2.i32.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i2.i32.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit34.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ea, ptr nonnull align 1 %switch.load, i64 %i.dy, i1 false)
  %i.eg = load ptr, ptr %i.x, align 8, !tbaa !84
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dy
  store ptr %i.eh, ptr %i.x, align 8, !tbaa !84
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34.i

_ZN4llvm11raw_ostreamlsEPKc.exit34.i:             ; preds = %bb.ag, %bb.af, %bb.ae, %bb.w
  %.not14.i = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %.not14.i, label %_ZN12_GLOBAL__N_114ItaniumManglerclIN4llvm19raw_svector_ostreamEEEvRT_NS2_17AMDGPULibFuncBase5ParamE.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit34.i
  %.sroa.0.0.insert.ext.i = zext i8 %.sroa.0.0.i to i32
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.8.0.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.ei = load i32, ptr %i.au, align 8, !tbaa !85 ; 2 uses
  %i.ej = load i32, ptr %i.av, align 4, !tbaa !246
  %.not.i35.i = icmp ult i32 %i.ei, %i.ej
  br i1 %.not.i35.i, label %bb.aj, label %bb.ai, !prof !254

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_17AMDGPULibFuncBase5ParamELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(57) %7, i32 %.sroa.0.0.insert.insert.i)
  br label %_ZN12_GLOBAL__N_114ItaniumManglerclIN4llvm19raw_svector_ostreamEEEvRT_NS2_17AMDGPULibFuncBase5ParamE.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ek = zext i32 %i.ei to i64
  %i.el = load ptr, ptr %7, align 8, !tbaa !20
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ek
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.em, align 1
  %i.en = load i32, ptr %i.au, align 8, !tbaa !85
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.au, align 8, !tbaa !85
  br label %_ZN12_GLOBAL__N_114ItaniumManglerclIN4llvm19raw_svector_ostreamEEEvRT_NS2_17AMDGPULibFuncBase5ParamE.exit

_ZN12_GLOBAL__N_114ItaniumManglerclIN4llvm19raw_svector_ostreamEEEvRT_NS2_17AMDGPULibFuncBase5ParamE.exit: ; preds = %bb.h, %_ZN4llvm11raw_ostreamlsEPKc.exit34.i, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ep = call fastcc i32 @_ZN12_GLOBAL__N_113ParamIterator12getNextParamEv(ptr noundef nonnull align 8 dereferenceable(20) %8) ; 2 uses
  %i.eq = and i32 %i.ep, 255
  %.not = icmp eq i32 %i.eq, 0
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !245

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_114ItaniumManglerclIN4llvm19raw_svector_ostreamEEEvRT_NS2_17AMDGPULibFuncBase5ParamE.exit, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.er = load ptr, ptr %i.i, align 8, !tbaa !81, !nonnull !18, !align !82 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !68 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !69 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ev, ptr %0, align 8, !tbaa !23
  %i.ew = icmp eq ptr %i.es, null
  %i.ex = icmp ne i64 %i.eu, 0
  %or.cond.i.i.i = and i1 %i.ew, %i.ex
  br i1 %or.cond.i.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %._crit_edge
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.218) #24
  unreachable

bb.al:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.eu, ptr %i.a, align 8, !tbaa !60
  %i.ey = icmp ugt i64 %i.eu, 15
  br i1 %i.ey, label %bb.am, label %._crit_edge.i.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.ez = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.ez, ptr %0, align 8, !tbaa !64
  %i.fa = load i64, ptr %i.a, align 8, !tbaa !60
  store i64 %i.fa, ptr %i.ev, align 8, !tbaa !31
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.am, %bb.al
  %i.fb = phi ptr [ %i.ez, %bb.am ], [ %i.ev, %bb.al ] ; 2 uses
  switch i64 %i.eu, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.an:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fc = load i8, ptr %i.es, align 1, !tbaa !31
  store i8 %i.fc, ptr %i.fb, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fb, ptr align 1 %i.es, i64 %i.eu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.an, %bb.ao
  %i.fd = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !32
  %i.ff = load ptr, ptr %0, align 8, !tbaa !64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fd
  store i8 0, ptr %i.fg, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.fh = load ptr, ptr %7, align 8, !tbaa !20    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.at
  br i1 %i.fi, label %_ZN12_GLOBAL__N_114ItaniumManglerD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  call void @free(ptr noundef %i.fh) #23
  br label %_ZN12_GLOBAL__N_114ItaniumManglerD2Ev.exit

_ZN12_GLOBAL__N_114ItaniumManglerD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.fj = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.j
  br i1 %i.fk, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN12_GLOBAL__N_114ItaniumManglerD2Ev.exit
  call void @free(ptr noundef %i.fj) #23
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit:          ; preds = %_ZN12_GLOBAL__N_114ItaniumManglerD2Ev.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.fl = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.b
  br i1 %i.fm, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit8, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit
  call void @free(ptr noundef %i.fl) #23
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit8

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit8:         ; preds = %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK4llvm20AMDGPUMangledLibFunc9writeNameINS_19raw_svector_ostreamEEEvRT_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.b, 2
  %switch.select = select i1 %switch.selectcmp, ptr @.str.226, ptr @.str.6
  %switch.selectcmp8 = icmp eq i32 %i.b, 1
  %switch.select9 = select i1 %switch.selectcmp8, ptr @.str.225, ptr %switch.select ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !32
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.select9) #23 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !84   ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ugt i64 %i.g, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %switch.select9, i64 noundef %i.g) #23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i2.i = icmp eq i64 %i.g, 0
  br i1 %.not.i2.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %switch.select9, i64 %i.g, i1 false)
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.g
  store ptr %i.r, ptr %i.j, align 8, !tbaa !84
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.p, %bb.c ], [ %1, %bb.e ], [ %1, %bb.d ]
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.t = load i64, ptr %i.d, align 8, !tbaa !32
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.s, i64 noundef %i.t) #23 ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %bb.a
end_hunk_1
