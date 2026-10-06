Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_tonecurve?download=true
inline.NumInlined: 147
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 48
begin_hunk_0
@.str.76 = private unnamed_addr constant [11 x i8] c"Nikon D750\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"NIKON CORPORATION\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"NIKON D750\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"NIKON D5100\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"Nikon D7000\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"NIKON D7000\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"Nikon D7200\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"NIKON D7200\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"NIKON D7500\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"Nikon D90\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"NIKON D90\00", align 1
@.str.87 = private unnamed_addr constant [22 x i8] c"Olympus OM-D E-M10 II\00", align 1
@.str.88 = private unnamed_addr constant [24 x i8] c"OLYMPUS CORPORATION    \00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"E-M10MarkII     \00", align 1
@preset_camera_curves = internal constant <{ { ptr, ptr, ptr, i32, float, { [3 x <{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }>], [3 x i32], [3 x i32], i32, i32, i32, i32 } }, %struct.anon.4, { ptr, ptr, ptr, i32, float, { [3 x <{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }>], [3 x i32], [3 x i32], i32, i32, i32, i32 } }, %struct.anon.4, %struct.anon.4, { ptr, ptr, ptr, i32, float, { [3 x <{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }>], [3 x i32], [3 x i32], i32, i32, i32, i32 } }, %struct.anon.4 }> <{ { ptr, ptr, ptr, i32, float, { [3 x <{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }>], [3 x i32], [3 x i32], i32, i32, i32, i32 } } { ptr @.str.76, ptr @.str.77, ptr @.str.78, i32 0, float f0x7F7FFFFF, { [3 x <{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }>], [3 x i32], [3 x i32], i32, i32, i32, i32 } { [3 x <{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }>] [<{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }> <{ [8 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 8.350800e-02, float 7.367700e-02 }, %struct.dt_iop_tonecurve_node_t { float 2.121910e-01, float 2.747990e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.970950e-01, float 5.940350e-01 }, %struct.dt_iop_tonecurve_node_t { float 4.950250e-01, float f0x3F36F3F5 }, %struct.dt_iop_tonecurve_node_t { float 6.835650e-01, float f0x3F60E8A7 }, %struct.dt_iop_tonecurve_node_t { float 8.540590e-01, float 9.509270e-01 }, %struct.dt_iop_tonecurve_node_t { float 1.000000e+00, float 1.000000e+00 }], [12 x %struct.dt_iop_tonecurve_node_t] zeroinitializer }>, <{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }> <{ [8 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 1.250000e-01, float 1.250000e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.500000e-01, float 2.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.750000e-01, float 3.750000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.000000e-01, float 5.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.250000e-01, float 6.250000e-01 }, %struct.dt_iop_tonecurve_node_t { float 7.500000e-01, float 7.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 8.750000e-01, float 8.750000e-01 }], [12 x %struct.dt_iop_tonecurve_node_t] zeroinitializer }>, <{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }> <{ [8 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 1.250000e-01, float 1.250000e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.500000e-01, float 2.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.750000e-01, float 3.750000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.000000e-01, float 5.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.250000e-01, float 6.250000e-01 }, %struct.dt_iop_tonecurve_node_t { float 7.500000e-01, float 7.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 8.750000e-01, float 8.750000e-01 }], [12 x %struct.dt_iop_tonecurve_node_t] zeroinitializer }>], [3 x i32] [i32 8, i32 8, i32 8], [3 x i32] [i32 2, i32 2, i32 2], i32 1, i32 0, i32 0, i32 0 } }, %struct.anon.4 { ptr @.str.79, ptr @.str.77, ptr @.str.79, i32 0, float f0x7F7FFFFF, %struct.dt_iop_tonecurve_params_t { [3 x [20 x %struct.dt_iop_tonecurve_node_t]] [[20 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 9.570000e-04, float 1.760000e-04 }, %struct.dt_iop_tonecurve_node_t { float 2.423000e-03, float 7.980000e-04 }, %struct.dt_iop_tonecurve_node_t { float 5.893000e-03, float 3.685000e-03 }, %struct.dt_iop_tonecurve_node_t { float 1.321900e-02, float 6.619000e-03 }, %struct.dt_iop_tonecurve_node_t { float 2.337200e-02, float 1.195400e-02 }, %struct.dt_iop_tonecurve_node_t { float 3.758000e-02, float 1.781700e-02 }, %struct.dt_iop_tonecurve_node_t { float 6.969500e-02, float 3.535300e-02 }, %struct.dt_iop_tonecurve_node_t { float 7.727600e-02, float 4.031500e-02 }, %struct.dt_iop_tonecurve_node_t { float 1.237070e-01, float 8.270700e-02 }, %struct.dt_iop_tonecurve_node_t { float 1.452490e-01, float 1.121050e-01 }, %struct.dt_iop_tonecurve_node_t { float 1.891680e-01, float 1.861350e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.195760e-01, float 2.436770e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.902010e-01, float 3.852510e-01 }, %struct.dt_iop_tonecurve_node_t { float 4.281500e-01, float f0x3F1D04D5 }, %struct.dt_iop_tonecurve_node_t { float 5.061990e-01, float 7.002560e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.228330e-01, float f0x3F4E3476 }, %struct.dt_iop_tonecurve_node_t { float 7.027630e-01, float f0x3F5EF72B }, %struct.dt_iop_tonecurve_node_t { float f0x3F6F5FA2, float 9.901390e-01 }, %struct.dt_iop_tonecurve_node_t { float 1.000000e+00, float 1.000000e+00 }], [20 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 5.000000e-02, float 5.000000e-02 }, %struct.dt_iop_tonecurve_node_t { float 1.000000e-01, float 1.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 1.500000e-01, float 1.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.000000e-01, float 2.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.500000e-01, float 2.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.000000e-01, float 3.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.500000e-01, float 3.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 4.000000e-01, float 4.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 4.500000e-01, float 4.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.000000e-01, float 5.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.500000e-01, float 5.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.000000e-01, float 6.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.500000e-01, float 6.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float f0x3F333333, float f0x3F333333 }, %struct.dt_iop_tonecurve_node_t { float 7.500000e-01, float 7.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 8.000000e-01, float 8.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 8.500000e-01, float 8.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float f0x3F666666, float f0x3F666666 }, %struct.dt_iop_tonecurve_node_t { float f0x3F733333, float f0x3F733333 }], [20 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 5.000000e-02, float 5.000000e-02 }, %struct.dt_iop_tonecurve_node_t { float 1.000000e-01, float 1.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 1.500000e-01, float 1.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.000000e-01, float 2.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.500000e-01, float 2.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.000000e-01, float 3.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.500000e-01, float 3.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 4.000000e-01, float 4.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 4.500000e-01, float 4.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.000000e-01, float 5.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.500000e-01, float 5.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.000000e-01, float 6.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.500000e-01, float 6.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float f0x3F333333, float f0x3F333333 }, %struct.dt_iop_tonecurve_node_t { float 7.500000e-01, float 7.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 8.000000e-01, float 8.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 8.500000e-01, float 8.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float f0x3F666666, float f0x3F666666 }, %struct.dt_iop_tonecurve_node_t { float f0x3F733333, float f0x3F733333 }]], [3 x i32] [i32 20, i32 20, i32 20], [3 x i32] [i32 2, i32 2, i32 2], i32 1, i32 0, i32 0, i32 0 } }, { ptr, ptr, ptr, i32, float, { [3 x <{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }>], [3 x i32], [3 x i32], i32, i32, i32, i32 } } { ptr @.str.80, ptr @.str.77, ptr @.str.81, i32 0, float f0x7F7FFFFF, { [3 x <{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }>], [3 x i32], [3 x i32], i32, i32, i32, i32 } { [3 x <{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }>] [<{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }> <{ [8 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 1.106330e-01, float 1.111920e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.097710e-01, float 2.869630e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.558880e-01, float 5.612360e-01 }, %struct.dt_iop_tonecurve_node_t { float 4.549870e-01, float 6.730980e-01 }, %struct.dt_iop_tonecurve_node_t { float 7.692120e-01, float 9.204850e-01 }, %struct.dt_iop_tonecurve_node_t { float 8.004680e-01, float f0x3F6EF523 }, %struct.dt_iop_tonecurve_node_t { float 1.000000e+00, float 1.000000e+00 }], [12 x %struct.dt_iop_tonecurve_node_t] zeroinitializer }>, <{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }> <{ [8 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 1.250000e-01, float 1.250000e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.500000e-01, float 2.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.750000e-01, float 3.750000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.000000e-01, float 5.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.250000e-01, float 6.250000e-01 }, %struct.dt_iop_tonecurve_node_t { float 7.500000e-01, float 7.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 8.750000e-01, float 8.750000e-01 }], [12 x %struct.dt_iop_tonecurve_node_t] zeroinitializer }>, <{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }> <{ [8 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 1.250000e-01, float 1.250000e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.500000e-01, float 2.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.750000e-01, float 3.750000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.000000e-01, float 5.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.250000e-01, float 6.250000e-01 }, %struct.dt_iop_tonecurve_node_t { float 7.500000e-01, float 7.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 8.750000e-01, float 8.750000e-01 }], [12 x %struct.dt_iop_tonecurve_node_t] zeroinitializer }>], [3 x i32] [i32 8, i32 8, i32 8], [3 x i32] [i32 2, i32 2, i32 2], i32 1, i32 0, i32 0, i32 0 } }, %struct.anon.4 { ptr @.str.82, ptr @.str.77, ptr @.str.83, i32 0, float f0x7F7FFFFF, %struct.dt_iop_tonecurve_params_t { [3 x [20 x %struct.dt_iop_tonecurve_node_t]] [[20 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 6.180000e-04, float 3.286000e-03 }, %struct.dt_iop_tonecurve_node_t { float 1.639000e-03, float 3.705000e-03 }, %struct.dt_iop_tonecurve_node_t { float 5.227000e-03, float 5.101000e-03 }, %struct.dt_iop_tonecurve_node_t { float 1.329900e-02, float 1.119200e-02 }, %struct.dt_iop_tonecurve_node_t { float 1.604800e-02, float 1.313000e-02 }, %struct.dt_iop_tonecurve_node_t { float 3.794100e-02, float 2.701400e-02 }, %struct.dt_iop_tonecurve_node_t { float 5.819500e-02, float 4.133900e-02 }, %struct.dt_iop_tonecurve_node_t { float 8.653100e-02, float 6.908800e-02 }, %struct.dt_iop_tonecurve_node_t { float 1.166790e-01, float 1.072830e-01 }, %struct.dt_iop_tonecurve_node_t { float 1.556290e-01, float 1.594220e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.054770e-01, float 2.462650e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.259230e-01, float 2.873430e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.480560e-01, float 5.091040e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.606290e-01, float 5.347320e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.075620e-01, float 7.620890e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.068990e-01, float 8.656920e-01 }, %struct.dt_iop_tonecurve_node_t { float 7.348280e-01, float f0x3F728D43 }, %struct.dt_iop_tonecurve_node_t { float 8.954880e-01, float 9.920210e-01 }, %struct.dt_iop_tonecurve_node_t { float 1.000000e+00, float 1.000000e+00 }], [20 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 5.000000e-02, float 5.000000e-02 }, %struct.dt_iop_tonecurve_node_t { float 1.000000e-01, float 1.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 1.500000e-01, float 1.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.000000e-01, float 2.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.500000e-01, float 2.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.000000e-01, float 3.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.500000e-01, float 3.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 4.000000e-01, float 4.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 4.500000e-01, float 4.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.000000e-01, float 5.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.500000e-01, float 5.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.000000e-01, float 6.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.500000e-01, float 6.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float f0x3F333333, float f0x3F333333 }, %struct.dt_iop_tonecurve_node_t { float 7.500000e-01, float 7.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 8.000000e-01, float 8.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 8.500000e-01, float 8.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float f0x3F666666, float f0x3F666666 }, %struct.dt_iop_tonecurve_node_t { float f0x3F733333, float f0x3F733333 }], [20 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 5.000000e-02, float 5.000000e-02 }, %struct.dt_iop_tonecurve_node_t { float 1.000000e-01, float 1.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 1.500000e-01, float 1.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.000000e-01, float 2.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.500000e-01, float 2.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.000000e-01, float 3.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.500000e-01, float 3.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 4.000000e-01, float 4.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 4.500000e-01, float 4.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.000000e-01, float 5.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.500000e-01, float 5.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.000000e-01, float 6.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.500000e-01, float 6.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float f0x3F333333, float f0x3F333333 }, %struct.dt_iop_tonecurve_node_t { float 7.500000e-01, float 7.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 8.000000e-01, float 8.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 8.500000e-01, float 8.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float f0x3F666666, float f0x3F666666 }, %struct.dt_iop_tonecurve_node_t { float f0x3F733333, float f0x3F733333 }]], [3 x i32] [i32 20, i32 20, i32 20], [3 x i32] [i32 2, i32 2, i32 2], i32 1, i32 0, i32 0, i32 0 } }, %struct.anon.4 { ptr @.str.84, ptr @.str.77, ptr @.str.84, i32 0, float f0x7F7FFFFF, %struct.dt_iop_tonecurve_params_t { [3 x [20 x %struct.dt_iop_tonecurve_node_t]] [[20 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 4.210000e-04, float 3.412000e-03 }, %struct.dt_iop_tonecurve_node_t { float 3.775000e-03, float 4.001000e-03 }, %struct.dt_iop_tonecurve_node_t { float 1.376200e-02, float 8.704000e-03 }, %struct.dt_iop_tonecurve_node_t { float 1.669800e-02, float 1.023000e-02 }, %struct.dt_iop_tonecurve_node_t { float 3.496500e-02, float 1.873200e-02 }, %struct.dt_iop_tonecurve_node_t { float f0x3DB2D01C, float 4.980800e-02 }, %struct.dt_iop_tonecurve_node_t { float 1.013890e-01, float 6.078900e-02 }, %struct.dt_iop_tonecurve_node_t { float 1.668450e-01, float 1.452690e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.309440e-01, float 2.712880e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.333990e-01, float 5.026090e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.532070e-01, float 5.425490e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.500140e-01, float 8.195350e-01 }, %struct.dt_iop_tonecurve_node_t { float f0x3F3B53E7, float 9.440330e-01 }, %struct.dt_iop_tonecurve_node_t { float 7.832830e-01, float 9.605460e-01 }, %struct.dt_iop_tonecurve_node_t { float 1.000000e+00, float 1.000000e+00 }, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer], [20 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 6.250000e-02, float 6.250000e-02 }, %struct.dt_iop_tonecurve_node_t { float 1.250000e-01, float 1.250000e-01 }, %struct.dt_iop_tonecurve_node_t { float 1.875000e-01, float 1.875000e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.500000e-01, float 2.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.125000e-01, float 3.125000e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.750000e-01, float 3.750000e-01 }, %struct.dt_iop_tonecurve_node_t { float 4.375000e-01, float 4.375000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.000000e-01, float 5.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.625000e-01, float 5.625000e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.250000e-01, float 6.250000e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.875000e-01, float 6.875000e-01 }, %struct.dt_iop_tonecurve_node_t { float 7.500000e-01, float 7.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 8.125000e-01, float 8.125000e-01 }, %struct.dt_iop_tonecurve_node_t { float 8.750000e-01, float 8.750000e-01 }, %struct.dt_iop_tonecurve_node_t { float 9.375000e-01, float 9.375000e-01 }, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer], [20 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 6.250000e-02, float 6.250000e-02 }, %struct.dt_iop_tonecurve_node_t { float 1.250000e-01, float 1.250000e-01 }, %struct.dt_iop_tonecurve_node_t { float 1.875000e-01, float 1.875000e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.500000e-01, float 2.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.125000e-01, float 3.125000e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.750000e-01, float 3.750000e-01 }, %struct.dt_iop_tonecurve_node_t { float 4.375000e-01, float 4.375000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.000000e-01, float 5.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.625000e-01, float 5.625000e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.250000e-01, float 6.250000e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.875000e-01, float 6.875000e-01 }, %struct.dt_iop_tonecurve_node_t { float 7.500000e-01, float 7.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 8.125000e-01, float 8.125000e-01 }, %struct.dt_iop_tonecurve_node_t { float 8.750000e-01, float 8.750000e-01 }, %struct.dt_iop_tonecurve_node_t { float 9.375000e-01, float 9.375000e-01 }, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer]], [3 x i32] [i32 16, i32 16, i32 16], [3 x i32] [i32 2, i32 2, i32 2], i32 1, i32 0, i32 0, i32 0 } }, { ptr, ptr, ptr, i32, float, { [3 x <{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }>], [3 x i32], [3 x i32], i32, i32, i32, i32 } } { ptr @.str.85, ptr @.str.77, ptr @.str.86, i32 0, float f0x7F7FFFFF, { [3 x <{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }>], [3 x i32], [3 x i32], i32, i32, i32, i32 } { [3 x <{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }>] [<{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }> <{ [8 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 2.915000e-03, float 6.453000e-03 }, %struct.dt_iop_tonecurve_node_t { float 2.332400e-02, float 2.160100e-02 }, %struct.dt_iop_tonecurve_node_t { float 7.871700e-02, float 7.496300e-02 }, %struct.dt_iop_tonecurve_node_t { float 1.865890e-01, float 2.422300e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.644320e-01, float 5.449560e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.297380e-01, float 8.141270e-01 }, %struct.dt_iop_tonecurve_node_t { float 1.000000e+00, float 1.000000e+00 }], [12 x %struct.dt_iop_tonecurve_node_t] zeroinitializer }>, <{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }> <{ [8 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 1.250000e-01, float 1.250000e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.500000e-01, float 2.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.750000e-01, float 3.750000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.000000e-01, float 5.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.250000e-01, float 6.250000e-01 }, %struct.dt_iop_tonecurve_node_t { float 7.500000e-01, float 7.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 8.750000e-01, float 8.750000e-01 }], [12 x %struct.dt_iop_tonecurve_node_t] zeroinitializer }>, <{ [8 x %struct.dt_iop_tonecurve_node_t], [12 x %struct.dt_iop_tonecurve_node_t] }> <{ [8 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 1.250000e-01, float 1.250000e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.500000e-01, float 2.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.750000e-01, float 3.750000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.000000e-01, float 5.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.250000e-01, float 6.250000e-01 }, %struct.dt_iop_tonecurve_node_t { float 7.500000e-01, float 7.500000e-01 }, %struct.dt_iop_tonecurve_node_t { float 8.750000e-01, float 8.750000e-01 }], [12 x %struct.dt_iop_tonecurve_node_t] zeroinitializer }>], [3 x i32] [i32 8, i32 8, i32 8], [3 x i32] [i32 2, i32 2, i32 2], i32 1, i32 0, i32 0, i32 0 } }, %struct.anon.4 { ptr @.str.87, ptr @.str.88, ptr @.str.89, i32 0, float f0x7F7FFFFF, %struct.dt_iop_tonecurve_params_t { [3 x [20 x %struct.dt_iop_tonecurve_node_t]] [[20 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 4.036000e-03, float f0x3A541312 }, %struct.dt_iop_tonecurve_node_t { float 1.504700e-02, float 9.425000e-03 }, %struct.dt_iop_tonecurve_node_t { float 5.194800e-02, float 4.205300e-02 }, %struct.dt_iop_tonecurve_node_t { float 7.177700e-02, float 6.663500e-02 }, %struct.dt_iop_tonecurve_node_t { float f0x3DB85B5B, float 8.672200e-02 }, %struct.dt_iop_tonecurve_node_t { float 1.101970e-01, float 1.187730e-01 }, %struct.dt_iop_tonecurve_node_t { float 1.458170e-01, float 1.718610e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.074760e-01, float 2.786520e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.668320e-01, float 4.028230e-01 }, %struct.dt_iop_tonecurve_node_t { float 4.280610e-01, float 6.963190e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.597280e-01, float 8.471130e-01 }, %struct.dt_iop_tonecurve_node_t { float f0x3F718E32, float f0x3F7E54D6 }, %struct.dt_iop_tonecurve_node_t { float 1.000000e+00, float 1.000000e+00 }, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer], [20 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 7.142900e-02, float 7.142900e-02 }, %struct.dt_iop_tonecurve_node_t { float 1.428570e-01, float 1.428570e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.142860e-01, float 2.142860e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.857140e-01, float 2.857140e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.571430e-01, float 3.571430e-01 }, %struct.dt_iop_tonecurve_node_t { float 4.285710e-01, float 4.285710e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.000000e-01, float 5.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.714290e-01, float 5.714290e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.428570e-01, float 6.428570e-01 }, %struct.dt_iop_tonecurve_node_t { float 7.142860e-01, float 7.142860e-01 }, %struct.dt_iop_tonecurve_node_t { float f0x3F49248D, float f0x3F49248D }, %struct.dt_iop_tonecurve_node_t { float f0x3F5B6DB9, float f0x3F5B6DB9 }, %struct.dt_iop_tonecurve_node_t { float 9.285710e-01, float 9.285710e-01 }, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer], [20 x %struct.dt_iop_tonecurve_node_t] [%struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t { float 7.142900e-02, float 7.142900e-02 }, %struct.dt_iop_tonecurve_node_t { float 1.428570e-01, float 1.428570e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.142860e-01, float 2.142860e-01 }, %struct.dt_iop_tonecurve_node_t { float 2.857140e-01, float 2.857140e-01 }, %struct.dt_iop_tonecurve_node_t { float 3.571430e-01, float 3.571430e-01 }, %struct.dt_iop_tonecurve_node_t { float 4.285710e-01, float 4.285710e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.000000e-01, float 5.000000e-01 }, %struct.dt_iop_tonecurve_node_t { float 5.714290e-01, float 5.714290e-01 }, %struct.dt_iop_tonecurve_node_t { float 6.428570e-01, float 6.428570e-01 }, %struct.dt_iop_tonecurve_node_t { float 7.142860e-01, float 7.142860e-01 }, %struct.dt_iop_tonecurve_node_t { float f0x3F49248D, float f0x3F49248D }, %struct.dt_iop_tonecurve_node_t { float f0x3F5B6DB9, float f0x3F5B6DB9 }, %struct.dt_iop_tonecurve_node_t { float 9.285710e-01, float 9.285710e-01 }, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer, %struct.dt_iop_tonecurve_node_t zeroinitializer]], [3 x i32] [i32 14, i32 14, i32 14], [3 x i32] [i32 2, i32 2, i32 2], i32 1, i32 0, i32 0, i32 0 } } }>, align 16
@__const.dt_iop_tonecurve_draw.destin = private unnamed_addr constant [3 x [3 x float]] [[3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float f0x3F40C0C1], [3 x float] [float f0x3F57D7D8, float f0x3F36B6B7, float 0.000000e+00]], align 16
@.str.91 = private unnamed_addr constant [27 x i8] c"100.00 / 100.00 ( +100.00)\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"%.1f \E2\86\92 %.1f\00", align 1
@.str.93 = private unnamed_addr constant [21 x i8] c"%.1f / %.1f ( %+.1f)\00", align 1
@dt_modifier_shortcuts = external local_unnamed_addr global i32, align 4
@.str.94 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.97 = private unnamed_addr constant [24 x i8] c"dt_iop_tonecurve_node_t\00", align 1
@.str.98 = private unnamed_addr constant [26 x i8] c"dt_iop_tonecurve_node_t[]\00", align 1
@.str.99 = private unnamed_addr constant [28 x i8] c"dt_iop_tonecurve_node_t[][]\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"int[]\00", align 1
@.str.102 = private unnamed_addr constant [29 x i8] c"dt_iop_tonecurve_autoscale_t\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"color space\00", align 1
@.str.104 = private unnamed_addr constant [19 x i8] c"dt_iop_rgb_norms_t\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"preserve colors\00", align 1
@.str.106 = private unnamed_addr constant [26 x i8] c"dt_iop_tonecurve_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.94, ptr @.str.66, ptr @.str.95, ptr @.str.6, i64 4, i64 0, ptr null }, float f0xFF7FFFFF, float f0x7F7FFFFF, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.94, ptr @.str.67, ptr @.str.96, ptr @.str.6, i64 4, i64 4, ptr null }, float f0xFF7FFFFF, float f0x7F7FFFFF, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.97, ptr @.str.68, ptr @.str.68, ptr @.str.6, i64 8, i64 0, ptr null }, i64 2, ptr null }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.98, ptr @.str.69, ptr @.str.69, ptr @.str.6, i64 160, i64 0, ptr null }, i64 20, i32 17, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 176) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.99, ptr @.str.17, ptr @.str.17, ptr @.str.6, i64 480, i64 0, ptr null }, i64 3, i32 15, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 264) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.100, ptr @.str.70, ptr @.str.70, ptr @.str.6, i64 4, i64 480, ptr null }, i32 -2147483648, i32 2147483647, i32 0, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.101, ptr @.str.71, ptr @.str.71, ptr @.str.6, i64 12, i64 480, ptr null }, i64 3, i32 10, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 440) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.100, ptr @.str.72, ptr @.str.72, ptr @.str.6, i64 4, i64 492, ptr null }, i32 -2147483648, i32 2147483647, i32 2, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, i32, [4 x i8], ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.101, ptr @.str.73, ptr @.str.73, ptr @.str.6, i64 12, i64 492, ptr null }, i64 3, i32 10, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @introspection_linear, i64 616) } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.102, ptr @.str.18, ptr @.str.18, ptr @.str.103, i64 4, i64 504, ptr null }, i64 4, ptr null, i32 3, [4 x i8] zeroinitializer } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.100, ptr @.str.74, ptr @.str.74, ptr @.str.6, i64 4, i64 508, ptr null }, i32 -2147483648, i32 2147483647, i32 0, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, i32, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.100, ptr @.str.75, ptr @.str.75, ptr @.str.6, i64 4, i64 512, ptr null }, i32 -2147483648, i32 2147483647, i32 1, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.104, ptr @.str.41, ptr @.str.41, ptr @.str.105, i64 4, i64 516, ptr null }, i64 7, ptr null, i32 3, [4 x i8] zeroinitializer } }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.106, ptr @.str.6, ptr @.str.6, ptr @.str.6, i64 520, i64 0, ptr null }, i64 7, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 5
}

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #22
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #22
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #22
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #22
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #22
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #22
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #22
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @legacy_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 1, label %.preheader
    i32 4, label %bb.c
    i32 3, label %bb.b
  ]

.preheader:                                       ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(520) ptr @malloc(i64 noundef 520) #23 ; 11 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(480) %i.a, ptr noundef nonnull align 4 dereferenceable(480) @constinit, i64 480, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store i32 2, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 500
  store i32 2, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !11
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 508
  %.sroa.1024.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 516
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = tail call <10 x float> @llvm.masked.load.v10f32.p0(ptr align 4 %1, <10 x i1> <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 true, i1 true, i1 true, i1 true>, <10 x float> poison), !tbaa !13
  %i.e = shufflevector <10 x float> %i.d, <10 x float> poison, <8 x i32> <i32 0, i32 6, i32 1, i32 7, i32 2, i32 8, i32 3, i32 9>
  store <8 x float> %i.e, ptr %i.a, align 4, !tbaa !13
  %i.f = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 4 %i.b, <8 x i1> <i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true>, <8 x float> poison), !tbaa !13
  %i.g = shufflevector <8 x float> %i.f, <8 x float> poison, <4 x i32> <i32 0, i32 6, i32 1, i32 7>
  store <4 x float> %i.g, ptr %i.c, align 4, !tbaa !13
  store <4 x i32> <i32 6, i32 3, i32 3, i32 0>, ptr %.sroa.3.0..sroa_idx, align 4
  store i32 1, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !149
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i32, ptr %i.h, align 4, !tbaa !151
  store i32 %i.i, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !152
  store i32 0, ptr %.sroa.1024.0..sroa_idx, align 4, !tbaa !153
  store i32 0, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !154
  br label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noalias dereferenceable_or_null(520) ptr @malloc(i64 noundef 520) #23 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(480) %i.j, ptr noundef nonnull align 4 dereferenceable(480) %1, i64 480, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 480
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 480
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %i.l, i64 12, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 492
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 492
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %i.n, i64 12, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 504
  %i.q = load <2 x i32>, ptr %i.o, align 4, !tbaa !14
  store <2 x i32> %i.q, ptr %i.p, align 4, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 512
  store i32 0, ptr %i.r, align 4, !tbaa !153
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 516
  store i32 0, ptr %i.s, align 4, !tbaa !154
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.t = tail call noalias dereferenceable_or_null(520) ptr @malloc(i64 noundef 520) #23 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(516) %i.t, ptr noundef nonnull align 4 dereferenceable(516) %1, i64 516, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 516
  store i32 0, ptr %i.u, align 4, !tbaa !154
  br label %.sink.split

.sink.split:                                      ; preds = %.preheader, %bb.b, %bb.c
  %.sink = phi ptr [ %i.t, %bb.c ], [ %i.j, %bb.b ], [ %i.a, %.preheader ]
  store ptr %.sink, ptr %3, align 8, !tbaa !16
  store i32 520, ptr %4, align 4, !tbaa !14
  store i32 5, ptr %5, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !155
  %i.c = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.b, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #22
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit200, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !33  ; 22 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !156
  %i.h = tail call ptr @dt_ioppr_add_profile_info_to_list(ptr noundef %i.g, i32 noundef 21, ptr noundef nonnull @.str.6, i32 noundef 0) #22 ; 18 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 786480 ; 9 uses
  %i.j = load float, ptr %i.i, align 8, !tbaa !13
  %i.k = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.j ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 786492 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 786504
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 786516 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 786528
  %6 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.l, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !13
  %7 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.n, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !13
  %8 = shufflevector <4 x float> %6, <4 x float> %7, <4 x i32> <i32 0, i32 3, i32 4, i32 7>
  %i.p = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %8 ; 3 uses
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.r = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 2668
  %i.u = load float, ptr %i.t, align 4, !tbaa !13 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !157
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !158
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 786540
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !46
  %i.ad = shl nsw i64 %i.x, 2
  %i.ae = mul i64 %i.ad, %i.aa                    ; 2 uses
  %.not205 = icmp eq i64 %i.ae, 0
  br i1 %.not205, label %.loopexit200, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 786544
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 786484 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 786488 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 786548
  %.not.i = icmp eq ptr %i.h, null
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 768
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 852
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 704
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 772
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 776
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 720
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 780
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 784
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 788
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 728
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 792
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 796
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 800
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 592 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 596 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 600 ; 2 uses
  %i.bb = icmp eq i32 %i.ag, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 262192 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 786508
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 786512
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 786496
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 786500
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 524336 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 786532
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 786536
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 786520
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 786524
  %i.bm = extractelement <4 x float> %i.p, i64 0
  %i.bn = extractelement <4 x float> %i.p, i64 2
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.cj
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cj ] ; 9 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 10 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !13 ; 2 uses
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, f0x3C23D70A ; 3 uses
  %i.br = fcmp reassoc nsz arcp contract afn olt float %i.bq, %i.k
  br i1 %i.br, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bs = fmul reassoc nsz arcp contract afn float %i.bp, 6.553600e+02
  %i.bt = fptosi float %i.bs to i32
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  %i.bv = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 65535)
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bz = load float, ptr %i.ah, align 4, !tbaa !13
  %i.ca = load float, ptr %i.i, align 8, !tbaa !13
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, %i.bq
  %i.cc = load float, ptr %i.ai, align 8, !tbaa !13
  %i.cd = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cb, float %i.cc)
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cf = phi reassoc nsz arcp contract afn float [ %i.by, %bb.d ], [ %i.ce, %bb.e ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  store float %i.cf, ptr %i.cg, align 4, !tbaa !13
  switch i32 %i.ac, label %bb.cj [
    i32 0, label %bb.g
    i32 1, label %bb.t
    i32 2, label %bb.w
    i32 3, label %bb.ar
  ]

bb.g:                                             ; preds = %bb.f
  %i.ch = or disjoint i64 %indvars.iv, 1          ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ch
  %i.cj = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.ck = load <2 x float>, ptr %i.ci, align 4, !tbaa !13
  %i.cl = fmul reassoc nsz arcp contract afn <2 x float> %i.ck, splat (float 3.906250e-03) ; 3 uses
  %i.cm = fadd reassoc nsz arcp contract afn <2 x float> %i.cl, splat (float 5.000000e-01) ; 5 uses
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cn = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, splat (float 6.553600e+04)
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ch
  %i.cp = fptosi <2 x float> %i.cn to <2 x i32>
  %i.cq = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cp, <2 x i32> zeroinitializer) ; 2 uses
  %i.cr = extractelement <2 x i32> %i.cq, i64 0
  %i.cs = tail call i32 @llvm.umin.i32(i32 %i.cr, i32 65535)
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ct
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !13
  store float %i.cv, ptr %i.co, align 4, !tbaa !13
  %i.cw = extractelement <2 x i32> %i.cq, i64 1
  %i.cx = tail call i32 @llvm.umin.i32(i32 %i.cw, i32 65535)
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !13
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cj
  store float %i.da, ptr %i.db, align 4, !tbaa !13
  br label %bb.cj

bb.i:                                             ; preds = %bb.g
  %i.dc = extractelement <2 x float> %i.cm, i64 0 ; 3 uses
  %i.dd = fcmp reassoc nsz arcp contract afn ogt float %i.dc, %i.bm
  br i1 %i.dd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.de = load float, ptr %i.bf, align 8, !tbaa !13
  %i.df = load float, ptr %i.l, align 4, !tbaa !13
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, %i.dc
  %i.dh = load float, ptr %i.bg, align 4, !tbaa !13
  %i.di = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dg, float %i.dh)
  %i.dj = fmul reassoc nsz arcp contract afn float %i.di, %i.de
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.dk = fcmp olt <2 x float> %i.cm, %i.r
  %i.dl = extractelement <2 x i1> %i.dk, i64 0
  br i1 %i.dl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dm = extractelement <2 x float> %i.cl, i64 0
  %i.dn = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.dm
  %i.do = load float, ptr %i.bd, align 4, !tbaa !13
  %i.dp = load float, ptr %i.m, align 8, !tbaa !13
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, %i.dn
  %i.dr = load float, ptr %i.be, align 8, !tbaa !13
  %i.ds = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dq, float %i.dr)
  %i.dt = fmul reassoc nsz arcp contract afn float %i.ds, %i.do
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.du = fmul reassoc nsz arcp contract afn float %i.dc, 6.553600e+04
  %i.dv = fptosi float %i.du to i32
  %i.dw = tail call i32 @llvm.smax.i32(i32 %i.dv, i32 0)
  %i.dx = tail call i32 @llvm.umin.i32(i32 %i.dw, i32 65535)
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j
  %i.eb = phi reassoc nsz arcp contract afn float [ %i.dj, %bb.j ], [ %i.dt, %bb.l ], [ %i.ea, %bb.m ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ch
  store float %i.eb, ptr %i.ec, align 4, !tbaa !13
  %i.ed = extractelement <2 x float> %i.cm, i64 1 ; 3 uses
  %i.ee = fcmp reassoc nsz arcp contract afn ogt float %i.ed, %i.bn
  br i1 %i.ee, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ef = load float, ptr %i.bk, align 8, !tbaa !13
  %i.eg = load float, ptr %i.n, align 4, !tbaa !13
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, %i.ed
  %i.ei = load float, ptr %i.bl, align 4, !tbaa !13
  %i.ej = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.eh, float %i.ei)
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ej, %i.ef
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.el = fcmp olt <2 x float> %i.cm, %i.r
  %i.em = extractelement <2 x i1> %i.el, i64 1
  br i1 %i.em, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.en = extractelement <2 x float> %i.cl, i64 1
  %i.eo = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.en
  %i.ep = load float, ptr %i.bi, align 4, !tbaa !13
  %i.eq = load float, ptr %i.o, align 8, !tbaa !13
  %i.er = fmul reassoc nsz arcp contract afn float %i.eq, %i.eo
  %i.es = load float, ptr %i.bj, align 8, !tbaa !13
  %i.et = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.er, float %i.es)
  %i.eu = fmul reassoc nsz arcp contract afn float %i.et, %i.ep
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ev = fmul reassoc nsz arcp contract afn float %i.ed, 6.553600e+04
  %i.ew = fptosi float %i.ev to i32
end_hunk_0
