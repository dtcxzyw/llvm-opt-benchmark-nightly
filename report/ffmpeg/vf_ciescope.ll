Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_ciescope?download=true
inline.NumInlined: 41
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%struct.ColorSystem = type { float, float, float, float, float, float, float, float, float }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"ciescope\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Video CIE scope.\00", align 1
@inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_input }], align 16
@outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_output }], align 16
@ff_vf_ciescope = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @inputs, ptr @outputs, ptr @ciescope_class, i32 0, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, %union.anon.0 { ptr @query_formats }, i32 262288, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@color_systems = internal unnamed_addr constant [10 x %struct.ColorSystem] [%struct.ColorSystem { float 6.700000e-01, float 3.300000e-01, float 2.100000e-01, float f0x3F35C28F, float 1.400000e-01, float 8.000000e-02, float 3.100630e-01, float 3.161580e-01, float 0.000000e+00 }, %struct.ColorSystem { float 6.400000e-01, float 3.300000e-01, float 2.900000e-01, float 6.000000e-01, float 1.500000e-01, float 6.000000e-02, float 3.127130e-01, float 3.290160e-01, float 0.000000e+00 }, %struct.ColorSystem { float 6.300000e-01, float 3.400000e-01, float 3.100000e-01, float 5.950000e-01, float 1.550000e-01, float 7.000000e-02, float 3.127130e-01, float 3.290160e-01, float 0.000000e+00 }, %struct.ColorSystem { float 6.700000e-01, float 3.300000e-01, float 2.100000e-01, float f0x3F35C28F, float 1.500000e-01, float 6.000000e-02, float 3.127130e-01, float 3.290160e-01, float 0.000000e+00 }, %struct.ColorSystem { float 6.250000e-01, float 3.400000e-01, float 2.800000e-01, float 5.950000e-01, float 1.150000e-01, float 7.000000e-02, float 3.127130e-01, float 3.290160e-01, float 0.000000e+00 }, %struct.ColorSystem { float 7.347000e-01, float 2.653000e-01, float 1.152000e-01, float f0x3F538EF3, float 1.566000e-01, float 1.770000e-02, float 3.457000e-01, float 3.585000e-01, float 0.000000e+00 }, %struct.ColorSystem { float 7.347000e-01, float 2.653000e-01, float 2.738000e-01, float 7.174000e-01, float 1.666000e-01, float f0x3C11D14E, float f0x3EAAAAAB, float f0x3EAAAAAB, float 0.000000e+00 }, %struct.ColorSystem { float 6.400000e-01, float 3.300000e-01, float 3.000000e-01, float 6.000000e-01, float 1.500000e-01, float 6.000000e-02, float 3.127130e-01, float 3.290160e-01, float 0.000000e+00 }, %struct.ColorSystem { float 7.080000e-01, float 2.920000e-01, float 1.700000e-01, float f0x3F4C0831, float 1.310000e-01, float 4.600000e-02, float 3.127130e-01, float 3.290160e-01, float 0.000000e+00 }, %struct.ColorSystem { float 6.800000e-01, float 3.200000e-01, float 2.650000e-01, float f0x3F30A3D7, float 1.500000e-01, float 6.000000e-02, float 3.140000e-01, float 3.510000e-01, float 0.000000e+00 }], align 16
@spectral_chromaticity = internal unnamed_addr constant [471 x [3 x float]] [[3 x float] [float 1.755600e-01, float 5.294000e-03, float f0x3F51B38D], [3 x float] [float 1.754830e-01, float 5.286000e-03, float f0x3F51B91F], [3 x float] [float 1.754000e-01, float 5.279000e-03, float f0x3F51BF05], [3 x float] [float 1.753170e-01, float 5.271000e-03, float 8.194120e-01], [3 x float] [float 1.752370e-01, float 5.263000e-03, float 8.195000e-01], [3 x float] [float 1.751610e-01, float 5.256000e-03, float 8.195820e-01], [3 x float] [float 1.750880e-01, float 5.247000e-03, float 8.196650e-01], [3 x float] [float 1.750150e-01, float 5.236000e-03, float f0x3F51DB12], [3 x float] [float 1.749450e-01, float 5.226000e-03, float f0x3F51E050], [3 x float] [float 1.748800e-01, float 5.221000e-03, float 8.198990e-01], [3 x float] [float 1.748210e-01, float 5.221000e-03, float f0x3F51E8D5], [3 x float] [float 1.747700e-01, float 5.229000e-03, float 8.200010e-01], [3 x float] [float 1.747220e-01, float 5.238000e-03, float 8.200400e-01], [3 x float] [float 1.746650e-01, float 5.236000e-03, float f0x3F51F1F1], [3 x float] [float 1.745950e-01, float 5.218000e-03, float f0x3F51F7C6], [3 x float] [float 1.745100e-01, float 5.182000e-03, float f0x3F51FFC5], [3 x float] [float 1.744090e-01, float 5.127000e-03, float 8.204640e-01], [3 x float] [float 1.743080e-01, float 5.068000e-03, float f0x3F52146A], [3 x float] [float 1.742220e-01, float 5.017000e-03, float 8.207610e-01], [3 x float] [float 1.741560e-01, float 4.981000e-03, float 8.208630e-01], [3 x float] [float 1.741120e-01, float 4.964000e-03, float f0x3F522813], [3 x float] [float 1.740880e-01, float 4.964000e-03, float 8.209480e-01], [3 x float] [float 1.740730e-01, float 4.973000e-03, float f0x3F522A1B], [3 x float] [float 1.740570e-01, float 4.982000e-03, float f0x3F522A80], [3 x float] [float 1.740360e-01, float 4.986000e-03, float f0x3F522B9D], [3 x float] [float 1.740080e-01, float 4.981000e-03, float 8.210120e-01], [3 x float] [float 1.739720e-01, float 4.964000e-03, float f0x3F523140], [3 x float] [float 1.739320e-01, float 4.943000e-03, float f0x3F52353F], [3 x float] [float 1.738890e-01, float 4.926000e-03, float f0x3F52392E], [3 x float] [float 1.738450e-01, float 4.916000e-03, float f0x3F523CB8], [3 x float] [float 1.738010e-01, float 4.915000e-03, float f0x3F523FAB], [3 x float] [float 1.737540e-01, float 4.925000e-03, float 8.213210e-01], [3 x float] [float 1.737050e-01, float 4.937000e-03, float 8.213580e-01], [3 x float] [float 1.736550e-01, float 4.944000e-03, float 8.214010e-01], [3 x float] [float 1.736060e-01, float 4.940000e-03, float f0x3F524ACF], [3 x float] [float 1.735600e-01, float 4.923000e-03, float f0x3F524EF0], [3 x float] [float 1.735140e-01, float 4.895000e-03, float 8.215900e-01], [3 x float] [float 1.734680e-01, float 4.865000e-03, float 8.216670e-01], [3 x float] [float 1.734240e-01, float 4.836000e-03, float f0x3F525D8D], [3 x float] [float 1.733800e-01, float 4.813000e-03, float 8.218070e-01], [3 x float] [float 1.733370e-01, float 4.797000e-03, float f0x3F5265CF], [3 x float] [float 1.732910e-01, float 4.786000e-03, float 8.219230e-01], [3 x float] [float 1.732380e-01, float 4.779000e-03, float f0x3F526D7A], [3 x float] [float 1.731740e-01, float 4.775000e-03, float f0x3F5271EF], [3 x float] [float 1.731010e-01, float 4.774000e-03, float 8.221250e-01], [3 x float] [float 1.730210e-01, float 4.775000e-03, float f0x3F527BF6], [3 x float] [float 1.729340e-01, float 4.781000e-03, float f0x3F528145], [3 x float] [float 1.728430e-01, float 4.791000e-03, float 8.223660e-01], [3 x float] [float 1.727510e-01, float 4.799000e-03, float f0x3F528C15], [3 x float] [float 1.726620e-01, float 4.802000e-03, float f0x3F5291B8], [3 x float] [float 1.725770e-01, float 4.799000e-03, float 8.226240e-01], [3 x float] [float 1.724890e-01, float 4.795000e-03, float f0x3F529D73], [3 x float] [float 1.723960e-01, float 4.796000e-03, float 8.228080e-01], [3 x float] [float 1.722960e-01, float 4.803000e-03, float 8.229010e-01], [3 x float] [float 1.721920e-01, float 4.815000e-03, float f0x3F52AFAB], [3 x float] [float 1.720870e-01, float 4.833000e-03, float 8.230810e-01], [3 x float] [float 1.719820e-01, float 4.855000e-03, float f0x3F52BACF], [3 x float] [float 1.718710e-01, float 4.889000e-03, float f0x3F52BFDB], [3 x float] [float 1.717410e-01, float 4.939000e-03, float 8.233190e-01], [3 x float] [float 1.715870e-01, float 5.010000e-03, float f0x3F52CA79], [3 x float] [float 1.714070e-01, float 5.102000e-03, float 8.234900e-01], [3 x float] [float 1.712060e-01, float 5.211000e-03, float 8.235830e-01], [3 x float] [float 1.709930e-01, float 5.334000e-03, float 8.236740e-01], [3 x float] [float 1.707710e-01, float 5.470000e-03, float 8.237590e-01], [3 x float] [float 1.705410e-01, float 5.621000e-03, float 8.238380e-01], [3 x float] [float 1.703010e-01, float 5.789000e-03, float 8.239110e-01], [3 x float] [float 1.700500e-01, float 5.974000e-03, float f0x3F52F017], [3 x float] [float 1.697860e-01, float 6.177000e-03, float 8.240370e-01], [3 x float] [float 1.695050e-01, float 6.398000e-03, float f0x3F52F805], [3 x float] [float 1.692030e-01, float 6.639000e-03, float 8.241580e-01], [3 x float] [float 1.688780e-01, float 6.900000e-03, float 8.242220e-01], [3 x float] [float 1.685250e-01, float 7.184000e-03, float 8.242910e-01], [3 x float] [float 1.681460e-01, float 7.491000e-03, float 8.243630e-01], [3 x float] [float 1.677460e-01, float 7.821000e-03, float 8.244330e-01], [3 x float] [float 1.673280e-01, float 8.175000e-03, float f0x3F53122B], [3 x float] [float 1.668950e-01, float 8.556000e-03, float 8.245490e-01], [3 x float] [float 1.664460e-01, float 8.964000e-03, float 8.245890e-01], [3 x float] [float 1.659770e-01, float 9.402000e-03, float f0x3F531A6D], [3 x float] [float 1.654830e-01, float 9.865000e-03, float 8.246520e-01], [3 x float] [float 1.649630e-01, float 1.035100e-02, float 8.246870e-01], [3 x float] [float 1.644120e-01, float 1.085800e-02, float f0x3F532192], [3 x float] [float 1.638280e-01, float 1.138500e-02, float 8.247870e-01], [3 x float] [float 1.632100e-01, float 1.193700e-02, float 8.248530e-01], [3 x float] [float 1.625520e-01, float 1.252000e-02, float f0x3F532E7B], [3 x float] [float 1.618510e-01, float 1.313700e-02, float 8.250110e-01], [3 x float] [float 1.611050e-01, float 1.379300e-02, float f0x3F5339E2], [3 x float] [float 1.603100e-01, float 1.449100e-02, float 8.251990e-01], [3 x float] [float 1.594660e-01, float 1.523200e-02, float 8.253020e-01], [3 x float] [float 1.585730e-01, float 1.601500e-02, float f0x3F534E33], [3 x float] [float 1.576310e-01, float 1.684000e-02, float f0x3F5355DE], [3 x float] [float 1.566410e-01, float 1.770500e-02, float f0x3F535E0F], [3 x float] [float 1.556050e-01, float 1.860900e-02, float f0x3F5366B6], [3 x float] [float 1.545250e-01, float 1.955600e-02, float f0x3F536F7E], [3 x float] [float 1.533970e-01, float 2.055400e-02, float f0x3F5377F2], [3 x float] [float 1.522190e-01, float 2.161200e-02, float 8.261690e-01], [3 x float] [float 1.509850e-01, float 2.274000e-02, float f0x3F5386B1], [3 x float] [float 1.496910e-01, float 2.395000e-02, float f0x3F538C43], [3 x float] [float 1.483370e-01, float 2.524700e-02, float 8.264160e-01], [3 x float] [float 1.469280e-01, float 2.663500e-02, float 8.264370e-01], [3 x float] [float 1.454680e-01, float 2.811800e-02, float f0x3F538FCD], [3 x float] [float 1.439600e-01, float 2.970300e-02, float f0x3F538AD2], [3 x float] [float 1.424050e-01, float 3.139400e-02, float 8.262010e-01], [3 x float] [float 1.407960e-01, float 3.321300e-02, float f0x3F537425], [3 x float] [float 1.391210e-01, float 3.520100e-02, float 8.256790e-01], [3 x float] [float 1.373640e-01, float 3.740300e-02, float f0x3F534278], [3 x float] [float 1.355030e-01, float 3.987900e-02, float f0x3F531A2A], [3 x float] [float 1.335090e-01, float 4.269200e-02, float 8.237980e-01], [3 x float] [float 1.313710e-01, float 4.587600e-02, float 8.227530e-01], [3 x float] [float 1.290860e-01, float 4.945000e-02, float 8.214640e-01], [3 x float] [float 1.266620e-01, float 5.342600e-02, float 8.199120e-01], [3 x float] [float 1.241180e-01, float 5.780300e-02, float 8.180790e-01], [3 x float] [float 1.214690e-01, float 6.258800e-02, float 8.159440e-01], [3 x float] [float 1.187010e-01, float f0x3D8AEA74, float f0x3F503F70], [3 x float] [float 1.158070e-01, float 7.358100e-02, float 8.106120e-01], [3 x float] [float 1.127760e-01, float 7.989600e-02, float 8.073280e-01], [3 x float] [float 1.095940e-01, float 8.684300e-02, float f0x3F4DB64E], [3 x float] [float 1.062610e-01, float f0x3DC181E0, float f0x3F4C9BD8], [3 x float] [float 1.027760e-01, float 1.028640e-01, float f0x3F4B5B2D], [3 x float] [float 9.912800e-02, float 1.120070e-01, float f0x3F49F30E], [3 x float] [float 9.530400e-02, float 1.219450e-01, float 7.827510e-01], [3 x float] [float f0x3DBAF859, float 1.327020e-01, float 7.760040e-01], [3 x float] [float f0x3DB2580C, float 1.443170e-01, float 7.686010e-01], [3 x float] [float 8.268000e-02, float 1.568660e-01, float 7.604550e-01], [3 x float] [float f0x3D9FFB48, float 1.704200e-01, float 7.514640e-01], [3 x float] [float 7.343700e-02, float 1.850320e-01, float 7.415310e-01], [3 x float] [float 6.870600e-02, float 2.007230e-01, float f0x3F3B06B3], [3 x float] [float 6.399300e-02, float 2.174680e-01, float 7.185390e-01], [3 x float] [float 5.931600e-02, float 2.352540e-01, float f0x3F34970F], [3 x float] [float 5.466700e-02, float 2.540960e-01, float f0x3F30F4F9], [3 x float] [float 5.003100e-02, float 2.740020e-01, float 6.759670e-01], [3 x float] [float 4.539100e-02, float 2.949760e-01, float f0x3F28DDB5], [3 x float] [float 4.075700e-02, float 3.169810e-01, float f0x3F246B48], [3 x float] [float 3.619500e-02, float 3.399000e-01, float 6.239050e-01], [3 x float] [float 3.175600e-02, float 3.635980e-01, float 6.046460e-01], [3 x float] [float 2.749400e-02, float 3.879210e-01, float 5.845840e-01], [3 x float] [float 2.346000e-02, float 4.127030e-01, float 5.638370e-01], [3 x float] [float 1.970500e-02, float 4.377560e-01, float 5.425390e-01], [3 x float] [float 1.626800e-02, float 4.629550e-01, float 5.207770e-01], [3 x float] [float 1.318300e-02, float 4.882070e-01, float 4.986100e-01], [3 x float] [float 1.047600e-02, float 5.134040e-01, float 4.761200e-01], [3 x float] [float 8.168000e-03, float 5.384230e-01, float 4.534090e-01], [3 x float] [float 6.285000e-03, float 5.630680e-01, float 4.306470e-01], [3 x float] [float 4.875000e-03, float 5.871160e-01, float 4.080080e-01], [3 x float] [float 3.982000e-03, float f0x3F1C4641, float 3.855700e-01], [3 x float] [float 3.636000e-03, float 6.330110e-01, float 3.633520e-01], [3 x float] [float 3.859000e-03, float 6.548230e-01, float 3.413180e-01], [3 x float] [float 4.646000e-03, float 6.758980e-01, float 3.194560e-01], [3 x float] [float 6.011000e-03, float 6.961200e-01, float 2.978690e-01], [3 x float] [float 7.988000e-03, float f0x3F3720A7, float 2.766700e-01], [3 x float] [float 1.060300e-02, float 7.334130e-01, float 2.559840e-01], [3 x float] [float 1.387000e-02, float 7.501860e-01, float 2.359430e-01], [3 x float] [float 1.776600e-02, float 7.656120e-01, float 2.166220e-01], [3 x float] [float 2.224400e-02, float 7.796300e-01, float 1.981260e-01], [3 x float] [float 2.727300e-02, float 7.921040e-01, float 1.806230e-01], [3 x float] [float 3.282000e-02, float 8.029260e-01, float 1.642540e-01], [3 x float] [float 3.885200e-02, float 8.120160e-01, float 1.491320e-01], [3 x float] [float 4.532800e-02, float 8.193910e-01, float 1.352810e-01], [3 x float] [float 5.217700e-02, float 8.251640e-01, float 1.226600e-01], [3 x float] [float 5.932600e-02, float f0x3F545543, float 1.112490e-01], [3 x float] [float 6.671600e-02, float 8.322740e-01, float 1.010100e-01], [3 x float] [float 7.430200e-02, float f0x3F55741D, float 9.189400e-02], [3 x float] [float f0x3DA80B67, float 8.340900e-01, float 8.385600e-02], [3 x float] [float 8.994200e-02, float 8.332890e-01, float 7.676900e-02], [3 x float] [float f0x3DC894C4, float f0x3F54E347, float 7.046800e-02], [3 x float] [float 1.060210e-01, float f0x3F544502, float 6.480100e-02], [3 x float] [float 1.141610e-01, float f0x3F53824D, float 5.963200e-02], [3 x float] [float 1.223470e-01, float f0x3F52A10E, float 5.488200e-02], [3 x float] [float 1.305460e-01, float 8.189280e-01, float 5.052600e-02], [3 x float] [float 1.387020e-01, float f0x3F509507, float 4.652300e-02], [3 x float] [float 1.467730e-01, float 8.103950e-01, float 4.283200e-02], [3 x float] [float 1.547220e-01, float f0x3F4E4D1A, float 3.941400e-02], [3 x float] [float 1.625350e-01, float 8.012380e-01, float 3.622600e-02], [3 x float] [float 1.702370e-01, float f0x3F4BE8AB, float 3.324400e-02], [3 x float] [float 1.778500e-01, float 7.916870e-01, float 3.046400e-02], [3 x float] [float 1.853910e-01, float 7.867280e-01, float 2.788100e-02], [3 x float] [float 1.928760e-01, float 7.816290e-01, float 2.549500e-02], [3 x float] [float 2.003090e-01, float 7.763990e-01, float 2.329200e-02], [3 x float] [float 2.076900e-01, float 7.710550e-01, float 2.125500e-02], [3 x float] [float 2.150300e-01, float 7.655950e-01, float 1.937500e-02], [3 x float] [float 2.223370e-01, float 7.600200e-01, float 1.764300e-02], [3 x float] [float 2.296200e-01, float 7.543290e-01, float 1.605100e-02], [3 x float] [float 2.368850e-01, float 7.485240e-01, float 1.459100e-02], [3 x float] [float 2.441330e-01, float f0x3F3E1BF3, float 1.325300e-02], [3 x float] [float 2.513630e-01, float 7.366060e-01, float 1.203100e-02], [3 x float] [float 2.585780e-01, float 7.305070e-01, float 1.091600e-02], [3 x float] [float 2.657750e-01, float 7.243240e-01, float 9.901000e-03], [3 x float] [float 2.729580e-01, float f0x3F37D2E9, float 8.980000e-03], [3 x float] [float 2.801290e-01, float 7.117250e-01, float 8.146000e-03], [3 x float] [float 2.872920e-01, float 7.053160e-01, float 7.391000e-03], [3 x float] [float 2.944500e-01, float f0x3F32E74F, float 6.708000e-03], [3 x float] [float 3.016040e-01, float 6.923080e-01, float 6.088000e-03], [3 x float] [float 3.087600e-01, float 6.857120e-01, float 5.528000e-03], [3 x float] [float 3.159140e-01, float 6.790630e-01, float 5.022000e-03], [3 x float] [float 3.230660e-01, float 6.723670e-01, float 4.566000e-03], [3 x float] [float 3.302160e-01, float 6.656280e-01, float 4.156000e-03], [3 x float] [float 3.373630e-01, float f0x3F28AA43, float 3.788000e-03], [3 x float] [float 3.445130e-01, float 6.520280e-01, float 3.459000e-03], [3 x float] [float 3.516640e-01, float 6.451720e-01, float 3.163000e-03], [3 x float] [float 3.588140e-01, float 6.382870e-01, float 2.899000e-03], [3 x float] [float 3.659590e-01, float 6.313790e-01, float 2.662000e-03], [3 x float] [float 3.731020e-01, float f0x3F1FDC05, float 2.448000e-03], [3 x float] [float 3.802440e-01, float 6.175020e-01, float 2.254000e-03], [3 x float] [float 3.873790e-01, float f0x3F1C4C7B, float 2.079000e-03], [3 x float] [float 3.945070e-01, float 6.035710e-01, float 1.922000e-03], [3 x float] [float 4.016260e-01, float 5.965920e-01, float 1.782000e-03], [3 x float] [float 4.087360e-01, float 5.896070e-01, float 1.657000e-03], [3 x float] [float 4.158360e-01, float 5.826180e-01, float 1.546000e-03], [3 x float] [float 4.229210e-01, float 5.756310e-01, float 1.448000e-03], [3 x float] [float 4.299890e-01, float 5.686490e-01, float 1.362000e-03], [3 x float] [float 4.370360e-01, float 5.616760e-01, float 1.288000e-03], [3 x float] [float 4.440620e-01, float 5.547140e-01, float 1.224000e-03], [3 x float] [float 4.510650e-01, float 5.477660e-01, float 1.169000e-03], [3 x float] [float 4.580410e-01, float 5.408370e-01, float 1.123000e-03], [3 x float] [float 4.649860e-01, float 5.339300e-01, float 1.084000e-03], [3 x float] [float 4.718990e-01, float 5.270510e-01, float 1.051000e-03], [3 x float] [float 4.787750e-01, float 5.202020e-01, float 1.023000e-03], [3 x float] [float 4.856120e-01, float 5.133890e-01, float 1.000000e-03], [3 x float] [float 4.924050e-01, float 5.066150e-01, float 9.800000e-04], [3 x float] [float 4.991510e-01, float 4.998870e-01, float f0x3A7C2EBA], [3 x float] [float 5.058450e-01, float 4.932110e-01, float 9.440000e-04], [3 x float] [float 5.124860e-01, float 4.865910e-01, float 9.230000e-04], [3 x float] [float 5.190730e-01, float 4.800290e-01, float f0x3A6BAADE], [3 x float] [float 5.256000e-01, float 4.735270e-01, float 8.720000e-04], [3 x float] [float 5.320660e-01, float 4.670910e-01, float 8.430000e-04], [3 x float] [float 5.384630e-01, float 4.607250e-01, float 8.120000e-04], [3 x float] [float 5.447870e-01, float 4.544340e-01, float f0x3A4C35CE], [3 x float] [float 5.510310e-01, float 4.482250e-01, float 7.440000e-04], [3 x float] [float 5.571930e-01, float 4.420990e-01, float 7.080000e-04], [3 x float] [float 5.632690e-01, float 4.360580e-01, float 6.730000e-04], [3 x float] [float 5.692570e-01, float 4.301020e-01, float 6.410000e-04], [3 x float] [float 5.751510e-01, float 4.242320e-01, float 6.160000e-04], [3 x float] [float 5.809530e-01, float 4.184470e-01, float 6.010000e-04], [3 x float] [float 5.866500e-01, float 4.127580e-01, float 5.910000e-04], [3 x float] [float 5.922250e-01, float 4.071900e-01, float 5.860000e-04], [3 x float] [float 5.976580e-01, float 4.017620e-01, float 5.800000e-04], [3 x float] [float 6.029330e-01, float 3.964970e-01, float 5.710000e-04], [3 x float] [float 6.080350e-01, float 3.914090e-01, float 5.560000e-04], [3 x float] [float 6.129770e-01, float 3.864860e-01, float 5.370000e-04], [3 x float] [float 6.177790e-01, float 3.817060e-01, float 5.160000e-04], [3 x float] [float f0x3F1F5979, float 3.770470e-01, float 4.930000e-04], [3 x float] [float f0x3F20857F, float 3.724910e-01, float 4.720000e-04], [3 x float] [float 6.315210e-01, float 3.680260e-01, float 4.530000e-04], [3 x float] [float 6.359000e-01, float 3.636650e-01, float 4.350000e-04], [3 x float] [float f0x3F23E143, float 3.594280e-01, float 4.160000e-04], [3 x float] [float f0x3F24EF13, float 3.553310e-01, float 3.960000e-04], [3 x float] [float f0x3F25F299, float 3.513950e-01, float 3.720000e-04], [3 x float] [float 6.520280e-01, float 3.476280e-01, float 3.440000e-04], [3 x float] [float 6.556690e-01, float 3.440180e-01, float 3.130000e-04], [3 x float] [float 6.591660e-01, float 3.405530e-01, float 2.810000e-04], [3 x float] [float f0x3F299B6F, float 3.372210e-01, float 2.510000e-04], [3 x float] [float 6.657640e-01, float 3.340110e-01, float 2.260000e-04], [3 x float] [float 6.688740e-01, float 3.309190e-01, float 2.070000e-04], [3 x float] [float 6.718590e-01, float 3.279470e-01, float 1.940000e-04], [3 x float] [float f0x3F2CBA73, float 3.250950e-01, float 1.850000e-04], [3 x float] [float 6.774590e-01, float 3.223620e-01, float 1.790000e-04], [3 x float] [float f0x3F2E19A8, float 3.197470e-01, float 1.740000e-04], [3 x float] [float 6.825820e-01, float 3.172490e-01, float 1.700000e-04], [3 x float] [float 6.849710e-01, float 3.148630e-01, float 1.670000e-04], [3 x float] [float 6.872500e-01, float 3.125860e-01, float 1.640000e-04], [3 x float] [float 6.894260e-01, float 3.104140e-01, float 1.600000e-04], [3 x float] [float 6.915040e-01, float 3.083420e-01, float 1.540000e-04], [3 x float] [float 6.934900e-01, float 3.063660e-01, float 1.450000e-04], [3 x float] [float f0x3F320503, float 3.044790e-01, float 1.330000e-04], [3 x float] [float 6.972060e-01, float 3.026750e-01, float 1.190000e-04], [3 x float] [float 6.989440e-01, float 3.009500e-01, float 1.060000e-04], [3 x float] [float 7.006060e-01, float 2.993010e-01, float 9.300000e-05], [3 x float] [float 7.021930e-01, float 2.977250e-01, float f0x38AE1049], [3 x float] [float 7.037090e-01, float 2.962170e-01, float 7.400000e-05], [3 x float] [float 7.051630e-01, float 2.947700e-01, float 6.700000e-05], [3 x float] [float 7.065630e-01, float 2.933760e-01, float 6.100000e-05], [3 x float] [float f0x3F353A1D, float 2.920270e-01, float 5.500000e-05], [3 x float] [float 7.092310e-01, float 2.907190e-01, float 5.000000e-05], [3 x float] [float 7.105000e-01, float 2.894530e-01, float 4.700000e-05], [3 x float] [float f0x3F36338B, float 2.882320e-01, float 4.400000e-05], [3 x float] [float 7.129010e-01, float 2.870570e-01, float 4.100000e-05], [3 x float] [float f0x3F36CACD, float 2.859290e-01, float 4.000000e-05], [3 x float] [float f0x3F3711E8, float 2.848450e-01, float 3.800000e-05], [3 x float] [float 7.161590e-01, float 2.838040e-01, float 3.600000e-05], [3 x float] [float f0x3F3797BB, float 2.828060e-01, float 3.500000e-05], [3 x float] [float f0x3F37D673, float 2.818500e-01, float 3.400000e-05], [3 x float] [float 7.190330e-01, float 2.809350e-01, float 3.200000e-05], [3 x float] [float f0x3F384C27, float 2.800580e-01, float 3.000000e-05], [3 x float] [float 7.207530e-01, float 2.792190e-01, float 2.800000e-05], [3 x float] [float 7.215550e-01, float 2.784200e-01, float 2.600000e-05], [3 x float] [float 7.223150e-01, float 2.776620e-01, float 2.300000e-05], [3 x float] [float 7.230320e-01, float 2.769480e-01, float 2.000000e-05], [3 x float] [float 7.237020e-01, float 2.762820e-01, float 1.600000e-05], [3 x float] [float f0x3F396D8F, float 2.756600e-01, float 1.200000e-05], [3 x float] [float 7.249140e-01, float 2.750780e-01, float 7.000000e-06], [3 x float] [float 7.254670e-01, float 2.745300e-01, float 3.000000e-06], [3 x float] [float 7.259920e-01, float 2.740080e-01, float 0.000000e+00], [3 x float] [float 7.264950e-01, float 2.735050e-01, float 0.000000e+00], [3 x float] [float 7.269750e-01, float 2.730250e-01, float 0.000000e+00], [3 x float] [float 7.274320e-01, float 2.725680e-01, float 0.000000e+00], [3 x float] [float 7.278640e-01, float 2.721360e-01, float 0.000000e+00], [3 x float] [float 7.282720e-01, float 2.717280e-01, float 0.000000e+00], [3 x float] [float f0x3F3A8933, float 2.713440e-01, float 0.000000e+00], [3 x float] [float 7.290200e-01, float 2.709800e-01, float 0.000000e+00], [3 x float] [float f0x3F3AB767, float 2.706390e-01, float 0.000000e+00], [3 x float] [float f0x3F3ACC2D, float 2.703220e-01, float 0.000000e+00], [3 x float] [float 7.299690e-01, float 2.700310e-01, float 0.000000e+00], [3 x float] [float 7.302340e-01, float 2.697660e-01, float 0.000000e+00], [3 x float] [float f0x3F3B0058, float 2.695260e-01, float 0.000000e+00], [3 x float] [float 7.306930e-01, float 2.693070e-01, float 0.000000e+00], [3 x float] [float f0x3F3B1C00, float 2.691040e-01, float 0.000000e+00], [3 x float] [float 7.310890e-01, float 2.689110e-01, float 0.000000e+00], [3 x float] [float 7.312800e-01, float 2.687200e-01, float 0.000000e+00], [3 x float] [float 7.314670e-01, float 2.685330e-01, float 0.000000e+00], [3 x float] [float 7.316500e-01, float 2.683500e-01, float 0.000000e+00], [3 x float] [float 7.318260e-01, float 2.681740e-01, float 0.000000e+00], [3 x float] [float 7.319930e-01, float 2.680070e-01, float 0.000000e+00], [3 x float] [float 7.321500e-01, float 2.678500e-01, float 0.000000e+00], [3 x float] [float f0x3F3B7803, float 2.677000e-01, float 0.000000e+00], [3 x float] [float 7.324430e-01, float 2.675570e-01, float 0.000000e+00], [3 x float] [float 7.325810e-01, float 2.674190e-01, float 0.000000e+00], [3 x float] [float 7.327190e-01, float 2.672810e-01, float 0.000000e+00], [3 x float] [float 7.328590e-01, float 2.671410e-01, float 0.000000e+00], [3 x float] [float f0x3F3BA5E3, float 2.670000e-01, float 0.000000e+00], [3 x float] [float 7.331420e-01, float 2.668580e-01, float 0.000000e+00], [3 x float] [float 7.332810e-01, float 2.667190e-01, float 0.000000e+00], [3 x float] [float f0x3F3BC137, float 2.665830e-01, float 0.000000e+00], [3 x float] [float 7.335510e-01, float 2.664490e-01, float 0.000000e+00], [3 x float] [float 7.336830e-01, float 2.663170e-01, float 0.000000e+00], [3 x float] [float f0x3F3BDB2B, float 2.661870e-01, float 0.000000e+00], [3 x float] [float 7.339360e-01, float 2.660640e-01, float 0.000000e+00], [3 x float] [float f0x3F3BEA81, float 2.659530e-01, float 0.000000e+00], [3 x float] [float 7.341430e-01, float 2.658570e-01, float 0.000000e+00], [3 x float] [float f0x3F3BF5E8, float 2.657790e-01, float 0.000000e+00], [3 x float] [float 7.342860e-01, float 2.657140e-01, float 0.000000e+00], [3 x float] [float 7.343410e-01, float 2.656590e-01, float 0.000000e+00], [3 x float] [float 7.343900e-01, float 2.656100e-01, float 0.000000e+00], [3 x float] [float 7.344380e-01, float 2.655620e-01, float 0.000000e+00], [3 x float] [float f0x3F3C0703, float 2.655180e-01, float 0.000000e+00], [3 x float] [float f0x3F3C09B3, float 2.654770e-01, float 0.000000e+00], [3 x float] [float 7.345600e-01, float 2.654400e-01, float 0.000000e+00], [3 x float] [float 7.345920e-01, float 2.654080e-01, float 0.000000e+00], [3 x float] [float f0x3F3C101F, float 2.653790e-01, float 0.000000e+00], [3 x float] [float 7.346490e-01, float 2.653510e-01, float 0.000000e+00], [3 x float] [float 7.346730e-01, float 2.653270e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00], [3 x float] [float 7.346900e-01, float 2.653100e-01, float 0.000000e+00]], align 16
@.str.3 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"libavfilter/vf_ciescope.c\00", align 1
@ciescope_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @ciescope_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"set color system\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"NTSC 1953 Y'I'O' (ITU-R BT.470 System M)\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"470m\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"ebu\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"EBU Y'U'V' (PAL/SECAM) (ITU-R BT.470 System B, G)\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"470bg\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"smpte\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"SMPTE-C RGB\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"240m\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"SMPTE-240M Y'PbPr\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"apple\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Apple RGB\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"widergb\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"Adobe Wide Gamut RGB\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"cie1931\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"CIE 1931 RGB\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"hdtv\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"ITU.BT-709 Y'CbCr\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"rec709\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"uhdtv\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"ITU-R.BT-2020\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"rec2020\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"dcip3\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"DCI-P3\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"cie\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"set cie system\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"xyy\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"CIE 1931 xyY\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"ucs\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"CIE 1960 UCS\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"luv\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"CIE 1976 Luv\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"gamuts\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"set what gamuts to draw\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"set ciescope size\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"intensity\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"set ciescope intensity\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"corrgamma\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"showwhite\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"fill with CIE colors\00", align 1
@ciescope_options = internal constant <{ { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 8, i32 2, %union.anon.2 { i64 7 }, double 0.000000e+00, double 9.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.10, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.10, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.13, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr @.str.13, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr @.str.16, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr @.str.18, i32 0, i32 11, %union.anon.2 { i64 3 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.19, ptr @.str.20, i32 0, i32 11, %union.anon.2 { i64 4 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.21, ptr @.str.22, i32 0, i32 11, %union.anon.2 { i64 5 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.23, ptr @.str.24, i32 0, i32 11, %union.anon.2 { i64 6 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.25, ptr @.str.26, i32 0, i32 11, %union.anon.2 { i64 7 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.27, ptr @.str.26, i32 0, i32 11, %union.anon.2 { i64 7 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.28, ptr @.str.29, i32 0, i32 11, %union.anon.2 { i64 8 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.30, ptr @.str.29, i32 0, i32 11, %union.anon.2 { i64 8 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.31, ptr @.str.32, i32 0, i32 11, %union.anon.2 { i64 9 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.33, ptr @.str.34, i32 28, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 2.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.33 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.35, ptr @.str.36, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.33 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.37, ptr @.str.38, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.33 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.39, ptr @.str.40, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.33 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.41, ptr @.str.42, i32 12, i32 1, %union.anon.2 zeroinitializer, double 0.000000e+00, double 4.095000e+03, i32 65552, [4 x i8] zeroinitializer, ptr @.str.41 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr null, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.41 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr null, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.41 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr null, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.41 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr null, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.41 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr null, i32 0, i32 11, %union.anon.2 { i64 4 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.41 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr null, i32 0, i32 11, %union.anon.2 { i64 8 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.41 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.19, ptr null, i32 0, i32 11, %union.anon.2 { i64 16 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.41 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.21, ptr null, i32 0, i32 11, %union.anon.2 { i64 32 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.41 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.23, ptr null, i32 0, i32 11, %union.anon.2 { i64 64 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.41 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.25, ptr null, i32 0, i32 11, %union.anon.2 { i64 128 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.41 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.27, ptr null, i32 0, i32 11, %union.anon.2 { i64 128 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.41 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.28, ptr null, i32 0, i32 11, %union.anon.2 { i64 256 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.41 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.30, ptr null, i32 0, i32 11, %union.anon.2 { i64 256 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.41 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.31, ptr null, i32 0, i32 11, %union.anon.2 { i64 512 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.41 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.43, ptr @.str.44, i32 16, i32 2, %union.anon.2 { i64 512 }, double 2.560000e+02, double 8.192000e+03, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.45, ptr @.str.44, i32 16, i32 2, %union.anon.2 { i64 512 }, double 2.560000e+02, double 8.192000e+03, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.46, ptr @.str.47, i32 32, i32 5, { double } { double 1.000000e-03 }, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.48, ptr @.str.47, i32 32, i32 5, { double } { double 1.000000e-03 }, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.49, ptr null, i32 36, i32 5, { double } { double 7.500000e-01 }, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.50, ptr null, i32 24, i32 18, %union.anon.2 { i64 1 }, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.51, ptr null, i32 20, i32 18, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.52, ptr null, i32 262192, i32 4, { double } { double 2.600000e+00 }, double 1.000000e-01, double 6.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.53, ptr @.str.54, i32 44, i32 18, %union.anon.2 { i64 1 }, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@in_pix_fmts = internal constant [6 x i32] [i32 2, i32 26, i32 35, i32 105, i32 99, i32 -1], align 16
@out_pix_fmts = internal constant [2 x i32] [i32 105, i32 -1], align 4

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 262272
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @query_formats(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = tail call ptr @ff_make_pixel_format_list(ptr noundef nonnull @in_pix_fmts) #10
  %i.b = load ptr, ptr %1, align 8, !tbaa !46
  %i.c = tail call i32 @ff_formats_ref(ptr noundef %i.a, ptr noundef %i.b) #10 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @ff_make_pixel_format_list(ptr noundef nonnull @out_pix_fmts) #10
  %i.f = load ptr, ptr %2, align 8, !tbaa !46
  %i.g = tail call i32 @ff_formats_ref(ptr noundef %i.e, ptr noundef %i.f) #10
  %. = tail call i32 @llvm.smin.i32(i32 %i.g, i32 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [4 x i16], align 8                ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.n = load float, ptr %i.m, align 8, !tbaa !63
  %i.o = fmul nsz float %i.n, 6.553500e+04
  %i.p = fptosi float %i.o to i32                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 5 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !32   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 44 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !33   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.u = tail call ptr @ff_get_video_buffer(ptr noundef %i.l, i32 noundef %i.r, i32 noundef %i.t) #10 ; 12 uses
  store ptr %i.u, ptr %i.c, align 8, !tbaa !59
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @av_frame_free(ptr noundef nonnull %i.b) #10
  br label %bb.bs

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.w = load i64, ptr %i.v, align 8, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  store i64 %i.w, ptr %i.x, align 8, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.z = load i64, ptr %i.y, align 8, !tbaa !70
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 408
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !70
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !71
  %.not117 = icmp eq i32 %i.ac, 0
  br i1 %.not117, label %bb.d, label %bb.ak

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %i.j, align 8, !tbaa !60
  %.val121 = load ptr, ptr %i.h, align 8, !tbaa !19 ; 11 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !62 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val121, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !34 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val.val, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.val, i64 44
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !33
  %i.aj = tail call ptr @ff_get_video_buffer(ptr noundef %.val.val, i32 noundef %i.ag, i32 noundef %i.ai) #10 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val121, i64 262272 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !72
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %draw_background.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !73 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !35
  %i.ap = sdiv i32 %i.ao, 2                       ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val121, i64 28 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !74 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.as = add nsw i32 %i.ae, -1                   ; 2 uses
  %i.at = sitofp nsz i32 %i.as to float           ; 14 uses
  %switch.i.i = icmp ult i32 %i.ar, 3
  store i64 -1, ptr %i.a, align 8
  br i1 %switch.i.i, label %.split.preheader.i.i, label %bb.l

.split.preheader.i.i:                             ; preds = %bb.e
  switch i32 %i.ar, label %bb.h [
    i32 2, label %bb.g
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %.split.preheader.i.i
  %i.au = fmul nnan nsz float %i.at, f0x3E848E6C
  %i.av = tail call nsz float @llvm.fmuladd.f32(float %i.at, float f0xBC3FDDEF, float %i.at)
  br label %.split.peel.next.i.i

bb.g:                                             ; preds = %.split.preheader.i.i
  %i.aw = fmul nnan nsz float %i.at, f0x3E848E6C
  %i.ax = tail call nsz float @llvm.fmuladd.f32(float %i.at, float f0xBC8FE672, float %i.at)
  br label %.split.peel.next.i.i

bb.h:                                             ; preds = %.split.preheader.i.i
  %i.ay = fmul nnan nsz float %i.at, 1.755600e-01
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.at, float -5.294000e-03, float %i.at)
  br label %.split.peel.next.i.i

.split.peel.next.i.i:                             ; preds = %bb.h, %bb.g, %bb.f
  %.034.in.peel.i.i = phi float [ %i.aw, %bb.g ], [ %i.au, %bb.f ], [ %i.ay, %bb.h ]
  %.sink38.i.peel.i.i = phi float [ %i.ax, %bb.g ], [ %i.av, %bb.f ], [ %i.az, %bb.h ]
  %.034.peel.i.i = fptosi float %.034.in.peel.i.i to i32 ; 2 uses
  %i.ba = fptosi float %.sink38.i.peel.i.i to i32 ; 2 uses
  br label %.split.i.i

.split.i.i:                                       ; preds = %bb.m, %.split.peel.next.i.i
  %indvars.iv.i.i = phi i64 [ 361, %.split.peel.next.i.i ], [ %indvars.iv.next.i.i, %bb.m ] ; 2 uses
  %.02641.i.i = phi i32 [ %i.ba, %.split.peel.next.i.i ], [ %i.cn, %bb.m ]
  %.02740.i.i = phi i32 [ %.034.peel.i.i, %.split.peel.next.i.i ], [ %.034.i.i, %bb.m ]
  %i.bb = getelementptr [12 x i8], ptr @spectral_chromaticity, i64 %indvars.iv.i.i ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -4320
  %i.bd = load <2 x float>, ptr %i.bc, align 4, !tbaa !36 ; 3 uses
  %i.be = getelementptr i8, ptr %i.bb, i64 -4312
  %i.bf = load float, ptr %i.be, align 4, !tbaa !36
  %shift = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd nsz <2 x float> %i.bd, %shift
  %i.bg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bh = fadd nsz float %i.bg, %i.bf
  %i.bi = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fdiv nsz <2 x float> %i.bd, %i.bj       ; 8 uses
  switch i32 %i.ar, label %bb.k [
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.i:                                             ; preds = %.split.i.i
  %i.bl = extractelement <2 x float> %i.bk, i64 1
  %i.bm = fmul nsz float %i.bl, 1.200000e+01
  %i.bn = extractelement <2 x float> %i.bk, i64 0
  %i.bo = tail call nsz float @llvm.fmuladd.f32(float %i.bn, float -2.000000e+00, float %i.bm)
  %i.bp = fadd nsz float %i.bo, 3.000000e+00
  %i.bq = fdiv nsz float 1.000000e+00, %i.bp      ; 2 uses
  %i.br = fmul nsz <2 x float> %i.bk, <float 4.000000e+00, float 9.000000e+00>
  %i.bs = fneg nsz float %i.bq
  %i.bt = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.bs, i64 1
  %i.bv = fmul nsz <2 x float> %i.br, %i.bu
  br label %bb.m

bb.j:                                             ; preds = %.split.i.i
  %i.bw = extractelement <2 x float> %i.bk, i64 1
  %i.bx = fmul nsz float %i.bw, 1.200000e+01
  %i.by = extractelement <2 x float> %i.bk, i64 0
  %i.bz = tail call nsz float @llvm.fmuladd.f32(float %i.by, float -2.000000e+00, float %i.bx)
  %i.ca = fadd nsz float %i.bz, 3.000000e+00
  %i.cb = fdiv nsz float 1.000000e+00, %i.ca      ; 2 uses
  %i.cc = fmul nsz <2 x float> %i.bk, <float 4.000000e+00, float 6.000000e+00>
  %i.cd = fneg nsz float %i.cb
  %i.ce = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %i.cd, i64 1
  %i.cg = fmul nsz <2 x float> %i.cc, %i.cf
  br label %bb.m

bb.k:                                             ; preds = %.split.i.i
  %i.ch = fneg nsz <2 x float> %i.bk
  %i.ci = shufflevector <2 x float> %i.bk, <2 x float> %i.ch, <2 x i32> <i32 0, i32 3>
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 974) #10
  tail call void @abort() #11
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.cj = phi <2 x float> [ %i.bv, %bb.i ], [ %i.cg, %bb.j ], [ %i.ci, %bb.k ] ; 2 uses
  %i.ck = extractelement <2 x float> %i.cj, i64 1
  %i.cl = tail call nsz float @llvm.fmuladd.f32(float %i.ck, float %i.at, float %i.at)
  %i.cm = extractelement <2 x float> %i.cj, i64 0
  %.034.in.i.i = fmul nsz float %i.cm, %i.at
  %.034.i.i = fptosi float %.034.in.i.i to i32    ; 3 uses
  %i.cn = fptosi float %i.cl to i32               ; 3 uses
  call fastcc void @draw_line(ptr noundef %i.am, i32 noundef range(i32 -1073741824, 1073741824) %i.ap, i32 noundef %.02740.i.i, i32 noundef %.02641.i.i, i32 noundef %.034.i.i, i32 noundef %i.cn, ptr noundef %i.a)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 831
  br i1 %exitcond.not.i.i, label %tongue_outline.exit.i, label %.split.i.i, !llvm.loop !47

tongue_outline.exit.i:                            ; preds = %bb.m
  call fastcc void @draw_line(ptr noundef %i.am, i32 noundef range(i32 -1073741824, 1073741824) %i.ap, i32 noundef %.034.i.i, i32 noundef %i.cn, i32 noundef %.034.peel.i.i, i32 noundef %i.ba, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.co = getelementptr inbounds nuw i8, ptr %.val121, i64 44
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !76
  %.not.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %tongue_outline.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.val121, i64 262196
  %i.cr = load i32, ptr %i.aq, align 4, !tbaa !74 ; 4 uses
  %i.cs = icmp sgt i32 %i.ae, 0
  br i1 %i.cs, label %.lr.ph136.i.i, label %.loopexit

.lr.ph136.i.i:                                    ; preds = %bb.n
  %i.ct = getelementptr inbounds nuw i8, ptr %.val121, i64 36
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !77
  %i.cv = getelementptr inbounds nuw i8, ptr %.val121, i64 24
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !78
  %i.cx = load ptr, ptr %i.ak, align 8, !tbaa !72
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !35
  %i.da = sdiv i32 %i.cz, 2
  %wide.trip.count.i.i.i = zext nneg i32 %i.ae to i64 ; 8 uses
  %i.db = uitofp nneg i32 %i.as to float
  %i.dc = getelementptr inbounds nuw i8, ptr %.val121, i64 262212
  %i.dd = getelementptr inbounds nuw i8, ptr %.val121, i64 262220
  %i.de = getelementptr inbounds nuw i8, ptr %.val121, i64 262224
  %i.df = getelementptr inbounds nuw i8, ptr %.val121, i64 262228
  %i.dg = fmul nsz float %i.cu, 6.553500e+04
  %i.dh = fptosi float %i.dg to i32
  %i.di = sitofp nsz i32 %i.dh to float           ; 2 uses
  %.not70.i.i = icmp eq i32 %i.cw, 0              ; 4 uses
  %switch.i26.i = icmp ult i32 %i.cr, 3
  %i.dj = sext i32 %i.da to i64                   ; 3 uses
  br i1 %switch.i26.i, label %.lr.ph.i.us.i.i.preheader, label %.lr.ph.i.i.i

.lr.ph.i.us.i.i.preheader:                        ; preds = %.lr.ph136.i.i
  %2 = shl nsw i64 %i.dj, 1
  %broadcast.splatinsert249 = insertelement <8 x float> poison, float %i.at, i64 0
  %broadcast.splat250 = shufflevector <8 x float> %broadcast.splatinsert249, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert251 = insertelement <8 x float> poison, float %i.di, i64 0
  %broadcast.splat252 = shufflevector <8 x float> %broadcast.splatinsert251, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dk = icmp eq i32 %i.cr, 1                    ; 3 uses
  %i.dl = add nsw i32 %i.cr, -1
  %i.dm = icmp ult i32 %i.dl, 2                   ; 3 uses
  br label %.lr.ph.i.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph.i.us.i.i.preheader, %find_tongue.exit.thread.us.i.i
  %indvars.iv156.i.i = phi i64 [ %indvars.iv.next157.i.i, %find_tongue.exit.thread.us.i.i ], [ 0, %.lr.ph.i.us.i.i.preheader ] ; 4 uses
  %3 = mul i64 %2, %indvars.iv156.i.i             ; 4 uses
  %i.dn = mul nsw i64 %indvars.iv156.i.i, %i.dj
  %invariant.gep.i.us.i.i = getelementptr [2 x i8], ptr %i.am, i64 %i.dn ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.us.i.i
  %indvars.iv.i.us.i.i = phi i64 [ 0, %.lr.ph.i.us.i.i ], [ %indvars.iv.next.i.us.i.i, %bb.p ] ; 13 uses
  %.idx.i.us.i.i = shl nuw nsw i64 %indvars.iv.i.us.i.i, 3
  %gep.i.us.i.i = getelementptr i8, ptr %invariant.gep.i.us.i.i, i64 %.idx.i.us.i.i
  %i.do = load i16, ptr %gep.i.us.i.i, align 2, !tbaa !39
  %i.dp = icmp eq i16 %i.do, 0
  br i1 %i.dp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.us.i.i = add nuw nsw i64 %indvars.iv.i.us.i.i, 1 ; 2 uses
  %exitcond.not.i.us.i.i = icmp eq i64 %indvars.iv.next.i.us.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.us.i.i, label %find_tongue.exit.thread.us.i.i, label %bb.o, !llvm.loop !48

bb.q:                                             ; preds = %bb.o
  %indvars148.le.i.i = trunc i64 %indvars.iv.i.us.i.i to i32 ; 2 uses
  %smin.i.us.i.i = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %indvars148.le.i.i)
  %i.dq = add nsw i32 %smin.i.us.i.i, -1          ; 2 uses
  %.not27.not.i.us.i.i214 = icmp samesign ult i64 %indvars.iv.i.us.i.i, %wide.trip.count.i.i.i
  br i1 %.not27.not.i.us.i.i214, label %.lr.ph217, label %find_tongue.exit.us.i.i

bb.r:                                             ; preds = %.lr.ph217
  %.not27.not.i.us.i.i = icmp sgt i64 %indvars.iv.next33.i.us.i.i, %indvars.iv.i.us.i.i
  br i1 %.not27.not.i.us.i.i, label %.lr.ph217, label %find_tongue.exit.us.i.i, !llvm.loop !49

.lr.ph217:                                        ; preds = %bb.q, %bb.r
  %indvars.iv32.i.us.i.i215 = phi i64 [ %indvars.iv.next33.i.us.i.i, %bb.r ], [ %wide.trip.count.i.i.i, %bb.q ]
  %indvars.iv.next33.i.us.i.i = add nsw i64 %indvars.iv32.i.us.i.i215, -1 ; 4 uses
  %.idx38.i.us.i.i = shl nuw nsw i64 %indvars.iv.next33.i.us.i.i, 3
  %gep44.i.us.i.i = getelementptr i8, ptr %invariant.gep.i.us.i.i, i64 %.idx38.i.us.i.i
  %i.dr = load i16, ptr %gep44.i.us.i.i, align 2, !tbaa !39
  %i.ds = icmp eq i16 %i.dr, 0
  br i1 %i.ds, label %bb.r, label %.critedge2.split.loop.exit41.i.us.i.i, !llvm.loop !49

.critedge2.split.loop.exit41.i.us.i.i:            ; preds = %.lr.ph217
  %i.dt = trunc nuw nsw i64 %indvars.iv.next33.i.us.i.i to i32
  br label %find_tongue.exit.us.i.i

find_tongue.exit.us.i.i:                          ; preds = %bb.r, %bb.q, %.critedge2.split.loop.exit41.i.us.i.i
  %.0108.us.i.i = phi i32 [ %i.dt, %.critedge2.split.loop.exit41.i.us.i.i ], [ %i.dq, %bb.q ], [ %i.dq, %bb.r ] ; 2 uses
  %.not68132.us.i.i = icmp slt i32 %.0108.us.i.i, %indvars148.le.i.i
  br i1 %.not68132.us.i.i, label %find_tongue.exit.thread.us.i.i, label %.lr.ph.us.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.af
  %indvars.iv151.i.i = phi i64 [ %indvars.iv.next152.i.i, %bb.af ], [ %indvars.iv151.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.du = trunc nuw nsw i64 %indvars.iv151.i.i to i32
  %i.dv = sitofp nsz i32 %i.du to float
  %i.dw = fdiv nsz float %i.dv, %i.at             ; 7 uses
  switch i32 %i.cr, label %bb.s [
    i32 2, label %bb.u
    i32 1, label %bb.t
  ]

bb.s:                                             ; preds = %scalar.ph
  %i.dx = fadd nsz float %i.hq, %i.dw
  %i.dy = insertelement <2 x float> %i.lf, float %i.dw, i64 0
  br label %bb.v

bb.t:                                             ; preds = %scalar.ph
  %i.dz = fmul nsz float %i.dw, 3.000000e+00
  %i.ea = tail call nsz float @llvm.fmuladd.f32(float %i.dw, float 2.000000e+00, float %i.hr)
  %i.eb = fadd nsz float %i.ea, 4.000000e+00
  %i.ec = insertelement <2 x float> %i.ld, float %i.dz, i64 0
  %i.ed = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fdiv nsz <2 x float> %i.ec, %i.ee       ; 3 uses
  %i.eg = extractelement <2 x float> %i.ef, i64 1 ; 2 uses
  %i.eh = extractelement <2 x float> %i.ef, i64 0 ; 2 uses
  %i.ei = fadd nsz float %i.eh, %i.eg
  br label %bb.v

bb.u:                                             ; preds = %scalar.ph
  %i.ej = fmul nsz float %i.dw, 9.000000e+00
  %i.ek = tail call nsz float @llvm.fmuladd.f32(float %i.dw, float 6.000000e+00, float %i.ht)
  %i.el = fadd nsz float %i.ek, 1.200000e+01
  %i.em = insertelement <2 x float> %i.le, float %i.ej, i64 0
  %i.en = insertelement <2 x float> poison, float %i.el, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = fdiv nsz <2 x float> %i.em, %i.eo       ; 3 uses
  %i.eq = extractelement <2 x float> %i.ep, i64 1 ; 2 uses
  %i.er = extractelement <2 x float> %i.ep, i64 0 ; 2 uses
  %i.es = fadd nsz float %i.er, %i.eq
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.0107.us.i.i = phi nsz float [ %i.er, %bb.u ], [ %i.eh, %bb.t ], [ %i.dw, %bb.s ]
  %.0106.us.i.i = phi nsz float [ %i.eq, %bb.u ], [ %i.eg, %bb.t ], [ %i.hq, %bb.s ]
  %.pn.us.i.i = phi float [ %i.es, %bb.u ], [ %i.ei, %bb.t ], [ %i.dx, %bb.s ]
  %i.et = phi <2 x float> [ %i.ep, %bb.u ], [ %i.ef, %bb.t ], [ %i.dy, %bb.s ] ; 2 uses
  %.061.us.i.i = fsub nsz float 1.000000e+00, %.pn.us.i.i ; 2 uses
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ev = fmul nsz <2 x float> %i.li, %i.eu
  %i.ew = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lj, <2 x float> %i.ew, <2 x float> %i.ev)
  %i.ey = insertelement <2 x float> poison, float %.061.us.i.i, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lk, <2 x float> %i.ez, <2 x float> %i.ex) ; 4 uses
  %i.fb = fmul nsz float %i.hy, %.0106.us.i.i
  %i.fc = tail call nsz float @llvm.fmuladd.f32(float %i.hx, float %.0107.us.i.i, float %i.fb)
  %i.fd = tail call nsz float @llvm.fmuladd.f32(float %i.hz, float %.061.us.i.i, float %i.fc) ; 4 uses
  %i.fe = extractelement <2 x float> %i.fa, i64 0 ; 2 uses
  %i.ff = fcmp nsz ogt float %i.fe, 0.000000e+00
  %i.fg = select nsz i1 %i.ff, float 0.000000e+00, float %i.fe ; 2 uses
  %i.fh = extractelement <2 x float> %i.fa, i64 1 ; 2 uses
  %i.fi = fcmp nsz olt float %i.fg, %i.fh
  %i.fj = select nsz i1 %i.fi, float %i.fg, float %i.fh ; 2 uses
  %i.fk = fcmp nsz olt float %i.fj, %i.fd
  %i.fl = select nsz i1 %i.fk, float %i.fj, float %i.fd ; 3 uses
  %i.fm = fcmp nsz olt float %i.fl, 0.000000e+00  ; 3 uses
  %i.fn = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = fsub nsz <2 x float> %i.fa, %i.fo
  %i.fq = fsub nsz float %i.fd, %i.fl
  %.2124.us.i.i = select i1 %i.fm, float %i.fq, float %i.fd ; 4 uses
  %i.fr = select i1 %i.fm, float %i.di, float 6.553500e+04 ; 2 uses
  %i.fs = select i1 %i.fm, <2 x float> %i.fp, <2 x float> %i.fa ; 4 uses
  %i.ft = extractelement <2 x float> %i.fs, i64 0 ; 2 uses
  %i.fu = extractelement <2 x float> %i.fs, i64 1 ; 2 uses
  %i.fv = fcmp nsz ogt float %i.ft, %i.fu
  %i.fw = select nsz i1 %i.fv, float %i.ft, float %i.fu ; 2 uses
  %i.fx = fcmp nsz ogt float %i.fw, %.2124.us.i.i
  %i.fy = select nsz i1 %i.fx, float %i.fw, float %.2124.us.i.i ; 3 uses
  %i.fz = fcmp nsz ogt float %i.fy, 0.000000e+00  ; 2 uses
  %i.ga = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = fdiv nsz <2 x float> %i.fs, %i.gb
  %i.gd = fdiv nsz float %.2124.us.i.i, %i.fy
  %i.ge = insertelement <2 x i1> poison, i1 %i.fz, i64 0
  %i.gf = shufflevector <2 x i1> %i.ge, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.gg = select <2 x i1> %i.gf, <2 x float> %i.gc, <2 x float> %i.fs ; 3 uses
  %.099.us.i.i = select nsz i1 %i.fz, float %i.gd, float %.2124.us.i.i ; 3 uses
  br i1 %.not70.i.i, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gh = extractelement <2 x float> %i.gg, i64 0 ; 2 uses
  %i.gi = fpext nsz float %i.gh to double         ; 2 uses
  %i.gj = fcmp nsz olt float %i.gh, 1.800000e-02
  br i1 %i.gj, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gk = tail call nsz double @llvm.pow.f64(double %i.gi, double 4.500000e-01)
  %i.gl = tail call nsz double @llvm.fmuladd.f64(double %i.gk, double 1.099000e+00, double -9.900000e-02)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gm = fmul nnan nsz double %i.gi, f0x40120E1AF262875F
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink1.i.i.ph.us.i.i = phi double [ %i.gl, %bb.x ], [ %i.gm, %bb.y ]
  %i.gn = extractelement <2 x float> %i.gg, i64 1 ; 2 uses
  %i.go = fcmp nsz olt float %i.gn, 1.800000e-02
  %i.gp = fpext nsz float %i.gn to double         ; 2 uses
  br i1 %i.go, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gq = tail call nsz double @llvm.pow.f64(double %i.gp, double 4.500000e-01)
  %i.gr = tail call nsz double @llvm.fmuladd.f64(double %i.gq, double 1.099000e+00, double -9.900000e-02)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.gs = fmul nnan nsz double %i.gp, f0x40120E1AF262875F
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sink1.i8.i.ph.us.i.i = phi double [ %i.gr, %bb.aa ], [ %i.gs, %bb.ab ]
  %i.gt = fcmp nsz olt float %.099.us.i.i, 1.800000e-02
  %i.gu = fpext nsz float %.099.us.i.i to double  ; 2 uses
  br i1 %i.gt, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gv = tail call nsz double @llvm.pow.f64(double %i.gu, double 4.500000e-01)
  %i.gw = tail call nsz double @llvm.fmuladd.f64(double %i.gv, double 1.099000e+00, double -9.900000e-02)
  br label %gamma_correct_rgb.exit.us.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.gx = fmul nnan nsz double %i.gu, f0x40120E1AF262875F
  br label %gamma_correct_rgb.exit.us.i.i

gamma_correct_rgb.exit.us.i.i:                    ; preds = %bb.ae, %bb.ad
  %.sink1.i10.i.us.i.i = phi double [ %i.gx, %bb.ae ], [ %i.gw, %bb.ad ]
  %i.gy = insertelement <2 x double> poison, double %.sink1.i.i.ph.us.i.i, i64 0
  %i.gz = insertelement <2 x double> %i.gy, double %.sink1.i8.i.ph.us.i.i, i64 1
  %i.ha = fptrunc <2 x double> %i.gz to <2 x float>
  %i.hb = fptrunc nsz double %.sink1.i10.i.us.i.i to float
  br label %bb.af

bb.af:                                            ; preds = %gamma_correct_rgb.exit.us.i.i, %bb.v
  %.1.us.i.i = phi nsz float [ %.099.us.i.i, %bb.v ], [ %i.hb, %gamma_correct_rgb.exit.us.i.i ]
  %i.hc = phi <2 x float> [ %i.gg, %bb.v ], [ %i.ha, %gamma_correct_rgb.exit.us.i.i ]
  %i.hd = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = fmul nsz <2 x float> %i.he, %i.hc
  %i.hg = fmul nsz float %i.fr, %.1.us.i.i
  %i.hh = fptosi float %i.hg to i32
  %.idx.i.i = shl i64 %indvars.iv151.i.i, 3
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i.us.i.i, i64 %.idx.i.i ; 3 uses
  %i.hi = fptosi <2 x float> %i.hf to <2 x i32>
  %i.hj = trunc <2 x i32> %i.hi to <2 x i16>
  store <2 x i16> %i.hj, ptr %gep.i.i, align 2, !tbaa !39
  %i.hk = trunc i32 %i.hh to i16
  %i.hl = getelementptr i8, ptr %gep.i.i, i64 4
  store i16 %i.hk, ptr %i.hl, align 2, !tbaa !39
  %i.hm = getelementptr i8, ptr %gep.i.i, i64 6
  store i16 -1, ptr %i.hm, align 2, !tbaa !39
  %indvars.iv.next152.i.i = add nuw nsw i64 %indvars.iv151.i.i, 1 ; 2 uses
  %exitcond155.not.i.i = icmp eq i64 %indvars.iv.next152.i.i, %wide.trip.count154.i.i
  br i1 %exitcond155.not.i.i, label %find_tongue.exit.thread.us.i.i, label %scalar.ph, !llvm.loop !50

find_tongue.exit.thread.us.i.i:                   ; preds = %bb.p, %bb.af, %middle.block, %find_tongue.exit.us.i.i
  %indvars.iv.next157.i.i = add nuw nsw i64 %indvars.iv156.i.i, 1 ; 2 uses
  %exitcond160.not.i.i = icmp eq i64 %indvars.iv.next157.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond160.not.i.i, label %.loopexit, label %.lr.ph.i.us.i.i, !llvm.loop !51

.lr.ph.us.i.i:                                    ; preds = %find_tongue.exit.us.i.i
  %i.hn = trunc nuw nsw i64 %indvars.iv156.i.i to i32
  %i.ho = uitofp nsz nneg i32 %i.hn to float
  %i.hp = fdiv nsz float %i.ho, %i.db
  %i.hq = fsub nsz float 1.000000e+00, %i.hp      ; 8 uses
  %i.hr = fmul nsz float %i.hq, -8.000000e+00     ; 2 uses
  %i.hs = fmul nsz float %i.hq, 2.000000e+00      ; 2 uses
  %i.ht = fmul nsz float %i.hq, -1.600000e+01     ; 2 uses
  %i.hu = fmul nsz float %i.hq, 4.000000e+00      ; 2 uses
  %i.hv = load <4 x float>, ptr %i.cq, align 4, !tbaa !36 ; 7 uses
  %i.hw = load <2 x float>, ptr %i.dc, align 4, !tbaa !36 ; 4 uses
  %i.hx = load float, ptr %i.dd, align 4, !tbaa !36 ; 2 uses
  %i.hy = load float, ptr %i.de, align 8, !tbaa !36 ; 2 uses
  %i.hz = load float, ptr %i.df, align 4, !tbaa !36 ; 2 uses
  %i.ia = add i32 %.0108.us.i.i, 1
  %wide.trip.count154.i.i = zext i32 %i.ia to i64 ; 3 uses
  %i.ib = sub nsw i64 %wide.trip.count154.i.i, %indvars.iv.i.us.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.ib, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us.i.i
  %4 = xor i64 %indvars.iv.i.us.i.i, -1
  %5 = add nsw i64 %wide.trip.count154.i.i, %4    ; 2 uses
  %6 = shl nuw nsw i64 %indvars.iv.i.us.i.i, 3    ; 4 uses
  %7 = getelementptr i8, ptr %i.am, i64 %6
  %scevgep = getelementptr i8, ptr %7, i64 %3     ; 2 uses
  %mul.result = shl i64 %5, 3                     ; 4 uses
  %mul.overflow = icmp ugt i64 %5, 2305843009213693951
  %8 = getelementptr i8, ptr %scevgep, i64 %mul.result
  %9 = icmp ult ptr %8, %scevgep
  %10 = getelementptr i8, ptr %i.am, i64 %6
  %11 = getelementptr i8, ptr %10, i64 %3
  %scevgep218 = getelementptr i8, ptr %11, i64 2  ; 2 uses
  %12 = getelementptr i8, ptr %scevgep218, i64 %mul.result
  %13 = icmp ult ptr %12, %scevgep218
  %14 = getelementptr i8, ptr %i.am, i64 %6
  %15 = getelementptr i8, ptr %14, i64 %3
  %scevgep219 = getelementptr i8, ptr %15, i64 4  ; 2 uses
  %16 = getelementptr i8, ptr %scevgep219, i64 %mul.result
  %17 = icmp ult ptr %16, %scevgep219
  %18 = or i1 %17, %mul.overflow
  %19 = getelementptr i8, ptr %i.am, i64 %6
  %20 = getelementptr i8, ptr %19, i64 %3
  %scevgep220 = getelementptr i8, ptr %20, i64 6  ; 2 uses
  %21 = getelementptr i8, ptr %scevgep220, i64 %mul.result
  %22 = icmp ult ptr %21, %scevgep220
  %23 = or i1 %13, %9
  %24 = or i1 %23, %18
  %25 = or i1 %22, %24
  br i1 %25, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.ib, -8                      ; 3 uses
  %i.ic = add i64 %indvars.iv.i.us.i.i, %n.vec
  %broadcast.splatinsert221 = insertelement <8 x float> poison, float %i.hq, i64 0
  %broadcast.splat222 = shufflevector <8 x float> %broadcast.splatinsert221, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert223 = insertelement <8 x float> poison, float %i.hr, i64 0
  %broadcast.splat224 = shufflevector <8 x float> %broadcast.splatinsert223, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert225 = insertelement <8 x float> poison, float %i.hs, i64 0
  %broadcast.splat226 = shufflevector <8 x float> %broadcast.splatinsert225, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x float> poison, float %i.ht, i64 0
  %broadcast.splat228 = shufflevector <8 x float> %broadcast.splatinsert227, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert229 = insertelement <8 x float> poison, float %i.hu, i64 0
  %broadcast.splat230 = shufflevector <8 x float> %broadcast.splatinsert229, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat232 = shufflevector <4 x float> %i.hv, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat234 = shufflevector <4 x float> %i.hv, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat236 = shufflevector <4 x float> %i.hv, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat238 = shufflevector <4 x float> %i.hv, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat240 = shufflevector <2 x float> %i.hw, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat242 = shufflevector <2 x float> %i.hw, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert243 = insertelement <8 x float> poison, float %i.hx, i64 0
  %broadcast.splat244 = shufflevector <8 x float> %broadcast.splatinsert243, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert245 = insertelement <8 x float> poison, float %i.hy, i64 0
  %broadcast.splat246 = shufflevector <8 x float> %broadcast.splatinsert245, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert247 = insertelement <8 x float> poison, float %i.hz, i64 0
  %broadcast.splat248 = shufflevector <8 x float> %broadcast.splatinsert247, <8 x float> poison, <8 x i32> zeroinitializer
  %i.id = trunc i64 %indvars.iv.i.us.i.i to i32
  %broadcast.splatinsert253 = insertelement <8 x i32> poison, i32 %i.id, i64 0
  %broadcast.splat254 = shufflevector <8 x i32> %broadcast.splatinsert253, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat254, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ie = add nuw i64 %indvars.iv.i.us.i.i, %index
  %i.if = sitofp nsz <8 x i32> %vec.ind to <8 x float>
  %i.ig = fdiv nsz <8 x float> %i.if, %broadcast.splat250 ; 6 uses
  %i.ih = fmul nsz <8 x float> %i.ig, splat (float 3.000000e+00)
  %i.ii = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ig, <8 x float> splat (float 2.000000e+00), <8 x float> %broadcast.splat224)
  %i.ij = fadd nsz <8 x float> %i.ii, splat (float 4.000000e+00) ; 2 uses
  %i.ik = fdiv nsz <8 x float> %i.ih, %i.ij       ; 2 uses
  %i.il = fdiv nsz <8 x float> %broadcast.splat226, %i.ij ; 2 uses
  %i.im = fadd nsz <8 x float> %i.ik, %i.il
  %i.in = fmul nsz <8 x float> %i.ig, splat (float 9.000000e+00)
  %i.io = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ig, <8 x float> splat (float 6.000000e+00), <8 x float> %broadcast.splat228)
  %i.ip = fadd nsz <8 x float> %i.io, splat (float 1.200000e+01) ; 2 uses
  %i.iq = fdiv nsz <8 x float> %i.in, %i.ip       ; 2 uses
  %i.ir = fdiv nsz <8 x float> %broadcast.splat230, %i.ip ; 2 uses
  %i.is = fadd nsz <8 x float> %i.iq, %i.ir
  %i.it = fadd nsz <8 x float> %broadcast.splat222, %i.ig
  %predphi = select nsz i1 %i.dk, <8 x float> %i.ik, <8 x float> %i.iq
  %predphi255.a = select nsz i1 %i.dm, <8 x float> %predphi, <8 x float> %i.ig ; 3 uses
  %predphi256.a = select nsz i1 %i.dk, <8 x float> %i.il, <8 x float> %i.ir
  %predphi257.a = select nsz i1 %i.dm, <8 x float> %predphi256.a, <8 x float> %broadcast.splat222 ; 3 uses
  %predphi258.a = select i1 %i.dk, <8 x float> %i.im, <8 x float> %i.is
  %predphi259.a = select i1 %i.dm, <8 x float> %predphi258.a, <8 x float> %i.it
  %i.iu = fsub nsz <8 x float> splat (float 1.000000e+00), %predphi259.a ; 3 uses
  %i.iv = fmul nsz <8 x float> %broadcast.splat234, %predphi257.a
  %i.iw = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat232, <8 x float> %predphi255.a, <8 x float> %i.iv)
  %i.ix = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat236, <8 x float> %i.iu, <8 x float> %i.iw) ; 4 uses
  %i.iy = fmul nsz <8 x float> %broadcast.splat240, %predphi257.a
  %i.iz = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat238, <8 x float> %predphi255.a, <8 x float> %i.iy)
  %i.ja = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat242, <8 x float> %i.iu, <8 x float> %i.iz) ; 4 uses
  %i.jb = fmul nsz <8 x float> %broadcast.splat246, %predphi257.a
  %i.jc = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat244, <8 x float> %predphi255.a, <8 x float> %i.jb)
  %i.jd = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat248, <8 x float> %i.iu, <8 x float> %i.jc) ; 4 uses
  %i.je = fcmp nsz ogt <8 x float> %i.ix, zeroinitializer
  %i.jf = select nsz <8 x i1> %i.je, <8 x float> zeroinitializer, <8 x float> %i.ix ; 2 uses
  %i.jg = fcmp nsz olt <8 x float> %i.jf, %i.ja
  %i.jh = select nsz <8 x i1> %i.jg, <8 x float> %i.jf, <8 x float> %i.ja ; 2 uses
  %i.ji = fcmp nsz olt <8 x float> %i.jh, %i.jd
  %i.jj = select nsz <8 x i1> %i.ji, <8 x float> %i.jh, <8 x float> %i.jd ; 4 uses
  %i.jk = fcmp nsz olt <8 x float> %i.jj, zeroinitializer ; 4 uses
  %i.jl = fsub nsz <8 x float> %i.ix, %i.jj
  %i.jm = fsub nsz <8 x float> %i.ja, %i.jj
  %i.jn = fsub nsz <8 x float> %i.jd, %i.jj
  %predphi260.a = select <8 x i1> %i.jk, <8 x float> %i.jn, <8 x float> %i.jd ; 4 uses
  %predphi261.a = select <8 x i1> %i.jk, <8 x float> %i.jm, <8 x float> %i.ja ; 4 uses
  %predphi262.a = select <8 x i1> %i.jk, <8 x float> %i.jl, <8 x float> %i.ix ; 4 uses
  %predphi263.a = select <8 x i1> %i.jk, <8 x float> %broadcast.splat252, <8 x float> splat (float 6.553500e+04) ; 2 uses
  %i.jo = fcmp nsz ogt <8 x float> %predphi262.a, %predphi261.a
  %i.jp = select nsz <8 x i1> %i.jo, <8 x float> %predphi262.a, <8 x float> %predphi261.a ; 2 uses
  %i.jq = fcmp nsz ogt <8 x float> %i.jp, %predphi260.a
  %i.jr = select nsz <8 x i1> %i.jq, <8 x float> %i.jp, <8 x float> %predphi260.a ; 4 uses
  %i.js = fcmp nsz ogt <8 x float> %i.jr, zeroinitializer ; 3 uses
  %i.jt = fdiv nsz <8 x float> %predphi262.a, %i.jr
  %i.ju = fdiv nsz <8 x float> %predphi261.a, %i.jr
  %i.jv = fdiv nsz <8 x float> %predphi260.a, %i.jr
  %i.jw = select nsz <8 x i1> %i.js, <8 x float> %i.jt, <8 x float> %predphi262.a ; 3 uses
  %i.jx = select nsz <8 x i1> %i.js, <8 x float> %i.ju, <8 x float> %predphi261.a ; 3 uses
  %i.jy = select nsz <8 x i1> %i.js, <8 x float> %i.jv, <8 x float> %predphi260.a ; 3 uses
  %i.jz = fpext nsz <8 x float> %i.jw to <8 x double> ; 2 uses
  %i.ka = fcmp nsz olt <8 x float> %i.jw, splat (float 1.800000e-02)
  %i.kb = tail call nsz <8 x double> @llvm.pow.v8f64(<8 x double> %i.jz, <8 x double> splat (double 4.500000e-01))
  %i.kc = tail call nsz <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.kb, <8 x double> splat (double 1.099000e+00), <8 x double> splat (double -9.900000e-02))
  %i.kd = fmul nnan nsz <8 x double> %i.jz, splat (double f0x40120E1AF262875F)
  %predphi264.a = select <8 x i1> %i.ka, <8 x double> %i.kd, <8 x double> %i.kc
  %i.ke = fcmp nsz olt <8 x float> %i.jx, splat (float 1.800000e-02)
  %i.kf = fpext nsz <8 x float> %i.jx to <8 x double> ; 2 uses
  %i.kg = tail call nsz <8 x double> @llvm.pow.v8f64(<8 x double> %i.kf, <8 x double> splat (double 4.500000e-01))
  %i.kh = tail call nsz <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.kg, <8 x double> splat (double 1.099000e+00), <8 x double> splat (double -9.900000e-02))
  %i.ki = fmul nnan nsz <8 x double> %i.kf, splat (double f0x40120E1AF262875F)
  %predphi265.a = select <8 x i1> %i.ke, <8 x double> %i.ki, <8 x double> %i.kh
  %i.kj = fcmp nsz olt <8 x float> %i.jy, splat (float 1.800000e-02)
  %i.kk = fpext nsz <8 x float> %i.jy to <8 x double> ; 2 uses
  %i.kl = tail call nsz <8 x double> @llvm.pow.v8f64(<8 x double> %i.kk, <8 x double> splat (double 4.500000e-01))
  %i.km = tail call nsz <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.kl, <8 x double> splat (double 1.099000e+00), <8 x double> splat (double -9.900000e-02))
  %i.kn = fmul nnan nsz <8 x double> %i.kk, splat (double f0x40120E1AF262875F)
  %predphi266.a = select <8 x i1> %i.kj, <8 x double> %i.kn, <8 x double> %i.km
  %i.ko = fptrunc <8 x double> %predphi264.a to <8 x float>
  %i.kp = fptrunc <8 x double> %predphi265.a to <8 x float>
  %i.kq = fptrunc nsz <8 x double> %predphi266.a to <8 x float>
  %predphi267 = select nsz i1 %.not70.i.i, <8 x float> %i.jw, <8 x float> %i.ko
  %predphi268 = select nsz i1 %.not70.i.i, <8 x float> %i.jx, <8 x float> %i.kp
  %predphi269 = select nsz i1 %.not70.i.i, <8 x float> %i.jy, <8 x float> %i.kq
  %i.kr = fmul nsz <8 x float> %predphi263.a, %predphi269
  %i.ks = fptosi <8 x float> %i.kr to <8 x i32>
  %i.kt = shl i64 %i.ie, 3
  %i.ku = getelementptr i8, ptr %invariant.gep.i.us.i.i, i64 %i.kt
  %i.kv = trunc <8 x i32> %i.ks to <8 x i16>
  %i.kw = shufflevector <8 x float> %predphi263.a, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kx = shufflevector <8 x float> %predphi267, <8 x float> %predphi268, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ky = fmul nsz <16 x float> %i.kw, %i.kx
  %i.kz = fptosi <16 x float> %i.ky to <16 x i32>
  %i.la = trunc <16 x i32> %i.kz to <16 x i16>
  %i.lb = shufflevector <8 x i16> %i.kv, <8 x i16> splat (i16 -1), <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x i16> %i.la, <16 x i16> %i.lb, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec, ptr %i.ku, align 2, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.lc = icmp eq i64 %index.next, %n.vec
  br i1 %i.lc, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ib, %n.vec
  br i1 %cmp.n, label %find_tongue.exit.thread.us.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph.us.i.i, %middle.block
  %indvars.iv151.i.i.ph = phi i64 [ %indvars.iv.i.us.i.i, %vector.scevcheck ], [ %indvars.iv.i.us.i.i, %.lr.ph.us.i.i ], [ %i.ic, %middle.block ]
  %i.ld = insertelement <2 x float> poison, float %i.hs, i64 1
  %i.le = insertelement <2 x float> poison, float %i.hu, i64 1
  %i.lf = insertelement <2 x float> poison, float %i.hq, i64 1
  %i.lg = shufflevector <4 x float> %i.hv, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.lh = shufflevector <2 x float> %i.hw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.li = shufflevector <4 x float> %i.hv, <4 x float> %i.lh, <2 x i32> <i32 1, i32 4>
  %i.lj = shufflevector <4 x float> %i.hv, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.lk = shufflevector <2 x float> %i.lg, <2 x float> %i.hw, <2 x i32> <i32 0, i32 3>
  br label %scalar.ph

.lr.ph.i.i.i:                                     ; preds = %.lr.ph136.i.i, %find_tongue.exit.thread.i.i
  %indvars.iv.i27.i = phi i64 [ %indvars.iv.next.i28.i, %find_tongue.exit.thread.i.i ], [ 0, %.lr.ph136.i.i ] ; 2 uses
  %i.ll = mul nsw i64 %indvars.iv.i27.i, %i.dj
  %invariant.gep.i.i.i = getelementptr [2 x i8], ptr %i.am, i64 %i.ll ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ah ] ; 5 uses
  %.idx.i.i.i = shl nuw nsw i64 %indvars.iv.i.i.i, 3
  %gep.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %.idx.i.i.i
  %i.lm = load i16, ptr %gep.i.i.i, align 2, !tbaa !39
  %i.ln = icmp eq i16 %i.lm, 0
  br i1 %i.ln, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %find_tongue.exit.thread.i.i, label %bb.ag, !llvm.loop !48

bb.ai:                                            ; preds = %bb.ag
  %indvars146.le.i.i = trunc i64 %indvars.iv.i.i.i to i32 ; 2 uses
  %smin.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %indvars146.le.i.i)
  %i.lo = add nsw i32 %smin.i.i.i, -1             ; 2 uses
  %.not27.not.i.i.i210 = icmp samesign ult i64 %indvars.iv.i.i.i, %wide.trip.count.i.i.i
  br i1 %.not27.not.i.i.i210, label %.lr.ph213, label %find_tongue.exit.i.i

bb.aj:                                            ; preds = %.lr.ph213
  %.not27.not.i.i.i = icmp sgt i64 %indvars.iv.next33.i.i.i, %indvars.iv.i.i.i
  br i1 %.not27.not.i.i.i, label %.lr.ph213, label %find_tongue.exit.i.i, !llvm.loop !49

.lr.ph213:                                        ; preds = %bb.ai, %bb.aj
  %indvars.iv32.i.i.i211 = phi i64 [ %indvars.iv.next33.i.i.i, %bb.aj ], [ %wide.trip.count.i.i.i, %bb.ai ]
  %indvars.iv.next33.i.i.i = add nsw i64 %indvars.iv32.i.i.i211, -1 ; 4 uses
  %.idx38.i.i.i = shl nuw nsw i64 %indvars.iv.next33.i.i.i, 3
  %gep44.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %.idx38.i.i.i
  %i.lp = load i16, ptr %gep44.i.i.i, align 2, !tbaa !39
  %i.lq = icmp eq i16 %i.lp, 0
  br i1 %i.lq, label %bb.aj, label %.critedge2.split.loop.exit41.i.i.i, !llvm.loop !49

.critedge2.split.loop.exit41.i.i.i:               ; preds = %.lr.ph213
  %i.lr = trunc nuw nsw i64 %indvars.iv.next33.i.i.i to i32
  br label %find_tongue.exit.i.i

find_tongue.exit.i.i:                             ; preds = %bb.aj, %bb.ai, %.critedge2.split.loop.exit41.i.i.i
  %.0108.i.i = phi i32 [ %i.lr, %.critedge2.split.loop.exit41.i.i.i ], [ %i.lo, %bb.ai ], [ %i.lo, %bb.aj ]
  %.not68132.i.i = icmp slt i32 %.0108.i.i, %indvars146.le.i.i
  br i1 %.not68132.i.i, label %find_tongue.exit.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %find_tongue.exit.i.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1169) #10
  tail call void @abort() #11
  unreachable

find_tongue.exit.thread.i.i:                      ; preds = %bb.ah, %find_tongue.exit.i.i
  %indvars.iv.next.i28.i = add nuw nsw i64 %indvars.iv.i27.i, 1 ; 2 uses
  %exitcond.not.i29.i = icmp eq i64 %indvars.iv.next.i28.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i29.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !51

draw_background.exit:                             ; preds = %bb.d
  call void @av_frame_free(ptr noundef nonnull %i.c) #10
  br label %bb.bs

.loopexit:                                        ; preds = %find_tongue.exit.thread.i.i, %find_tongue.exit.thread.us.i.i, %tongue_outline.exit.i, %bb.n
  store i32 1, ptr %i.ab, align 8, !tbaa !71
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %bb.c
  %i.ls = load i32, ptr %i.s, align 4, !tbaa !33  ; 2 uses
  %i.lt = icmp sgt i32 %i.ls, 0
  br i1 %i.lt, label %.lr.ph, label %.preheader137

.lr.ph:                                           ; preds = %bb.ak
  %i.lu = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  br label %bb.al

.preheader137:                                    ; preds = %bb.al, %bb.ak
  %i.lv = phi i32 [ %i.ls, %bb.ak ], [ %i.mt, %bb.al ]
  %i.lw = load ptr, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 108
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !79
  %i.lz = icmp sgt i32 %i.ly, 0
  br i1 %i.lz, label %.lr.ph147, label %.preheader

.lr.ph147:                                        ; preds = %.preheader137
  %i.ma = add nsw i32 %i.r, -1
  %i.mb = add nsw i32 %i.t, -1
  %i.mc = getelementptr inbounds nuw i8, ptr %i.i, i64 262280
  %i.md = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.me = sitofp nsz i32 %i.ma to float
  %i.mf = sitofp nsz i32 %i.mb to float           ; 2 uses
  %i.mg = fneg nsz float %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.mi = insertelement <2 x i32> poison, i32 %i.p, i64 0
  %i.mj = shufflevector <2 x i32> %i.mi, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.am

bb.al:                                            ; preds = %.lr.ph, %bb.al
  %.0143 = phi i32 [ 0, %.lr.ph ], [ %i.ms, %bb.al ] ; 2 uses
  %i.mk = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.ml = load i32, ptr %i.lu, align 8, !tbaa !35
  %i.mm = mul nsw i32 %i.ml, %.0143
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds i8, ptr %i.mk, i64 %i.mn
  %i.mp = load i32, ptr %i.q, align 8, !tbaa !32
  %i.mq = shl nsw i32 %i.mp, 3
  %i.mr = sext i32 %i.mq to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.mo, i8 0, i64 %i.mr, i1 false)
  %i.ms = add nuw nsw i32 %.0143, 1               ; 2 uses
  %i.mt = load i32, ptr %i.s, align 4, !tbaa !33  ; 2 uses
  %i.mu = icmp slt i32 %i.ms, %i.mt
  br i1 %i.mu, label %bb.al, label %.preheader137, !llvm.loop !53

.preheader.loopexit:                              ; preds = %._crit_edge
  %.pre173 = load i32, ptr %i.s, align 4, !tbaa !33
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader137
  %i.mv = phi i32 [ %.pre173, %.preheader.loopexit ], [ %i.lv, %.preheader137 ] ; 8 uses
  %i.mw = icmp sgt i32 %i.mv, 0
  %.pre174.pre = load ptr, ptr %i.u, align 8, !tbaa !73 ; 10 uses
  br i1 %i.mw, label %.lr.ph153, label %._crit_edge154.split

.lr.ph153:                                        ; preds = %.preheader
  %i.mx = getelementptr inbounds nuw i8, ptr %i.i, i64 262272
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !72 ; 2 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !73
  %i.na = load i32, ptr %i.q, align 8, !tbaa !32  ; 2 uses
  %i.nb = icmp sgt i32 %i.na, 0
  br i1 %i.nb, label %.lr.ph150.preheader, label %._crit_edge154.split

.lr.ph150.preheader:                              ; preds = %.lr.ph153
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 64
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !35
  %i.ne = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !35
  %i.ng = sext i32 %i.nf to i64
  %i.nh = sext i32 %i.nd to i64
  %wide.trip.count163 = zext nneg i32 %i.mv to i64
  %wide.trip.count = zext nneg i32 %i.na to i64
  br label %.lr.ph150

bb.am:                                            ; preds = %.lr.ph147, %._crit_edge
  %i.ni = phi ptr [ %i.lw, %.lr.ph147 ], [ %i.pr, %._crit_edge ] ; 4 uses
  %.1146 = phi i32 [ 0, %.lr.ph147 ], [ %i.ps, %._crit_edge ] ; 2 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !73
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 64
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !35
  %i.nm = sext i32 %i.nl to i64
  %i.nn = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.no = load i32, ptr %i.mh, align 8, !tbaa !35
  %i.np = sdiv i32 %i.no, 2
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ni, i64 104
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !80
  %i.ns = icmp sgt i32 %i.nr, 0
  br i1 %i.ns, label %.lr.ph145, label %._crit_edge

.lr.ph145:                                        ; preds = %bb.am, %bb.ar
  %.0108144 = phi i32 [ %i.pm, %bb.ar ], [ 0, %bb.am ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.nt = load ptr, ptr %i.mc, align 8, !tbaa !42
  call void %i.nt(ptr noundef %i.g, ptr noundef %i.nj, i64 noundef %i.nm, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %.0108144, i32 noundef %.1146) #10
  %i.nu = load i32, ptr %i.md, align 4, !tbaa !74
  %.pre = load float, ptr %i.d, align 4, !tbaa !36 ; 5 uses
  %.pre172 = load float, ptr %i.e, align 4, !tbaa !36 ; 5 uses
  switch i32 %i.nu, label %.lr.ph145._crit_edge [
    i32 2, label %bb.an
    i32 1, label %bb.ao
  ]

bb.an:                                            ; preds = %.lr.ph145
  %i.nv = fmul nsz float %.pre172, 1.200000e+01
  %i.nw = call nsz float @llvm.fmuladd.f32(float %.pre, float -2.000000e+00, float %i.nv)
  %i.nx = fadd nsz float %i.nw, 3.000000e+00
  %i.ny = fdiv nsz float 1.000000e+00, %i.nx      ; 2 uses
  %i.nz = fmul nsz float %.pre, 4.000000e+00
  %i.oa = fmul nsz float %i.nz, %i.ny
  %i.ob = fmul nsz float %.pre172, 9.000000e+00
  %i.oc = fmul nsz float %i.ob, %i.ny
  br label %.lr.ph145._crit_edge

bb.ao:                                            ; preds = %.lr.ph145
  %i.od = fmul nsz float %.pre172, 1.200000e+01
  %i.oe = call nsz float @llvm.fmuladd.f32(float %.pre, float -2.000000e+00, float %i.od)
  %i.of = fadd nsz float %i.oe, 3.000000e+00
  %i.og = fdiv nsz float 1.000000e+00, %i.of      ; 2 uses
  %i.oh = fmul nsz float %.pre, 4.000000e+00
  %i.oi = fmul nsz float %i.oh, %i.og
  %i.oj = fmul nsz float %.pre172, 6.000000e+00
  %i.ok = fmul nsz float %i.oj, %i.og
end_hunk_0
begin_hunk_1_@filter_rgba64:bb.a
  %i.i = load i16, ptr %i.h, align 2, !tbaa !39
  %i.j = uitofp i16 %i.i to float
  %i.k = fadd nnan nsz float %i.j, f0x3C23D70A
  %i.l = fmul nnan nsz float %i.k, f0x37800080    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.n = load <2 x i16>, ptr %i.m, align 2, !tbaa !39
  %i.o = uitofp <2 x i16> %i.n to <2 x float>     ; 2 uses
  %i.p = extractelement <2 x float> %i.o, i64 0
  %i.q = fadd nnan nsz float %i.p, f0x3C23D70A
  %i.r = fmul nnan nsz float %i.q, f0x37800080    ; 3 uses
  %i.s = extractelement <2 x float> %i.o, i64 1
  %i.t = fadd nnan nsz float %i.s, f0x3C23D70A
  %i.u = fmul nnan nsz float %i.t, f0x37800080    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 262232
  %i.w = load float, ptr %i.v, align 4, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 262236
  %i.y = load float, ptr %i.x, align 4, !tbaa !36
  %i.z = fmul nsz float %i.r, %i.y
  %i.aa = tail call nsz float @llvm.fmuladd.f32(float %i.w, float %i.l, float %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 262240
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !36
  %i.ad = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float %i.u, float %i.aa)
  store float %i.ad, ptr %3, align 4, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 262244
  %i.af = load float, ptr %i.ae, align 4, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 262248
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !36
  %i.ai = fmul nsz float %i.r, %i.ah
  %i.aj = tail call nsz float @llvm.fmuladd.f32(float %i.af, float %i.l, float %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 262252
  %i.al = load float, ptr %i.ak, align 4, !tbaa !36
  %i.am = tail call nsz float @llvm.fmuladd.f32(float %i.al, float %i.u, float %i.aj) ; 2 uses
  store float %i.am, ptr %4, align 4, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 262256
  %i.ao = load float, ptr %i.an, align 4, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 262260
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !36
  %i.ar = fmul nsz float %i.r, %i.aq
  %i.as = tail call nsz float @llvm.fmuladd.f32(float %i.ao, float %i.l, float %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 262264
  %i.au = load float, ptr %i.at, align 4, !tbaa !36
  %i.av = tail call nsz float @llvm.fmuladd.f32(float %i.au, float %i.u, float %i.as)
  %i.aw = load float, ptr %3, align 4, !tbaa !36  ; 2 uses
  %i.ax = fadd nsz float %i.am, %i.aw
  %i.ay = fadd nsz float %i.av, %i.ax
  %i.az = fdiv nsz float 1.000000e+00, %i.ay      ; 2 uses
  %i.ba = fmul nsz float %i.aw, %i.az
  store float %i.ba, ptr %3, align 4, !tbaa !36
  %i.bb = load float, ptr %4, align 4, !tbaa !36
  %i.bc = fmul nsz float %i.bb, %i.az
  store float %i.bc, ptr %4, align 4, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @filter_xyz(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5, i32 noundef %6) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sext i32 %6 to i64
  %i.d = mul nsw i64 %2, %i.c
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = mul nsw i32 %5, 6
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.j = load i16, ptr %i.h, align 2, !tbaa !39
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !36 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !39
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !36 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.t = load i16, ptr %i.s, align 2, !tbaa !39
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !36
  %i.x = fadd nsz float %i.m, %i.r
  %i.y = fadd nsz float %i.x, %i.w                ; 2 uses
  %i.z = fcmp nsz oeq float %i.y, 0.000000e+00
  %spec.store.select = select i1 %i.z, float 1.000000e+00, float %i.y ; 2 uses
  %i.aa = fdiv nsz float %i.m, %spec.store.select
  store float %i.aa, ptr %3, align 4, !tbaa !36
  %i.ab = fdiv nsz float %i.r, %spec.store.select
  store float %i.ab, ptr %4, align 4, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @config_output(ptr nofree noundef captures(none) initializes((40, 56)) %0) #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.e, ptr %i.f, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.e, ptr %i.g, align 4, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.h, align 8, !tbaa !35
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !35
  ret i32 0
}

declare ptr @av_default_item_name(ptr noundef) #3

declare i32 @ff_formats_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ff_make_pixel_format_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.pow.v8f64(<8 x double>, <8 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.pow.v4f64(<4 x double>, <4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!21 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!22 = !{!"AVRational", !6, i64 0, !6, i64 4}
!23 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!24 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!25 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!26 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!27 = !{!"AVFilterFormatsConfig", !25, i64 0, !25, i64 8, !26, i64 16, !25, i64 24, !25, i64 32, !25, i64 40}
!28 = !{!"AVFilterLink", !21, i64 0, !13, i64 8, !21, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !22, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !23, i64 72, !22, i64 96, !24, i64 104, !6, i64 112, !6, i64 116, !27, i64 120, !27, i64 168}
!29 = !{!28, !21, i64 16}
!30 = !{!"float", !5, i64 0}
!31 = !{!"CiescopeContext", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !30, i64 32, !30, i64 36, !6, i64 40, !6, i64 44, !5, i64 48, !30, i64 262192, !5, i64 262196, !5, i64 262232, !20, i64 262272, !9, i64 262280}
!32 = !{!28, !6, i64 40}
!33 = !{!28, !6, i64 44}
!34 = !{!31, !6, i64 16}
!35 = !{!6, !6, i64 0}
!36 = !{!30, !30, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"short", !5, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = !{!31, !9, i64 262280}
!43 = !{!31, !6, i64 8}
!44 = !{!5, !5, i64 0}
!45 = !{!"p1 _ZTS21AVFilterFormatsConfig", !9, i64 0}
!46 = !{!45, !45, i64 0}
!47 = distinct !{!47, !37, !75}
!48 = distinct !{!48, !37}
!49 = distinct !{!49, !37}
!50 = distinct !{!50, !37, !40}
!51 = distinct !{!51, !37}
!52 = distinct !{!52, !37, !40, !41}
!53 = distinct !{!53, !37}
!54 = distinct !{!54, !37}
!55 = distinct !{!55, !37}
!56 = distinct !{!56, !37}
!57 = distinct !{!57, !37}
!58 = distinct !{!58, !37}
!59 = !{!20, !20, i64 0}
!60 = !{!18, !15, i64 56}
!61 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!31, !30, i64 32}
!64 = !{!"p2 omnipotent char", !14, i64 0}
!65 = !{!"long", !5, i64 0}
!66 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!67 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!68 = !{!"AVFrame", !5, i64 0, !5, i64 64, !64, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !22, i64 124, !65, i64 136, !65, i64 144, !22, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !66, i64 248, !6, i64 256, !24, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !65, i64 304, !67, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !65, i64 344, !65, i64 352, !65, i64 360, !65, i64 368, !9, i64 376, !23, i64 384, !65, i64 408, !6, i64 416}
!69 = !{!68, !65, i64 136}
!70 = !{!68, !65, i64 408}
!71 = !{!31, !6, i64 40}
!72 = !{!31, !20, i64 262272}
!73 = !{!12, !12, i64 0}
!74 = !{!31, !6, i64 28}
!75 = !{!"llvm.loop.peeled.count", i32 1}
!76 = !{!31, !6, i64 44}
!77 = !{!31, !30, i64 36}
!78 = !{!31, !6, i64 24}
!79 = !{!68, !6, i64 108}
!80 = !{!68, !6, i64 104}
!81 = !{!31, !6, i64 20}
!82 = !{!"ColorSystem", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !30, i64 16, !30, i64 20, !30, i64 24, !30, i64 28, !30, i64 32}
!83 = !{!82, !30, i64 24}
!84 = !{!82, !30, i64 28}
!85 = !{!31, !6, i64 12}
!86 = !{!82, !30, i64 4}
!87 = !{!82, !30, i64 0}
!88 = !{!82, !30, i64 8}
!89 = !{!82, !30, i64 12}
!90 = distinct !{!90, !37, !40, !41}
!91 = !{!28, !6, i64 36}
!92 = !{!31, !30, i64 262192}
!93 = !{!28, !21, i64 0}
end_hunk_1
