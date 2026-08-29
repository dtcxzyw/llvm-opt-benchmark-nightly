Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/evrcdec?download=true
inline.NumInlined: 69
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 29
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%union.anon.2 = type { i64 }
%struct.PfCoeff = type { float, float, float, float }

@.str = private unnamed_addr constant [5 x i8] c"evrc\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"EVRC (Enhanced Variable Rate Codec)\00", align 1
@ff_evrc_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86087, i32 1026, i8 0, [3 x i8] zeroinitializer, ptr @evrcdec_class, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 2888, ptr null, ptr null, ptr null, ptr @evrc_decode_init, %union.anon { ptr @evrc_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@evrcdec_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @options, i32 3998052, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"postfilter\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"enable postfilter\00", align 1
@options = internal constant [2 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.3, ptr @.str.4, i32 8, i32 18, %union.anon.2 { i64 1 }, double 0.000000e+00, double 1.000000e+00, i32 10, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [30 x i8] c"bitrate cannot be determined.\00", align 1
@subframe_sizes = internal unnamed_addr constant [3 x i8] c"556", align 1
@evrc_energy_quant = internal unnamed_addr constant [256 x [3 x float]] [[3 x float] [float -2.464000e-02, float -4.005000e-03, float -1.107000e-01], [3 x float] [float 8.734000e-01, float 1.004000e+00, float f0x3F7E353F], [3 x float] [float 4.222000e-01, float 3.894000e-01, float 5.020000e-01], [3 x float] [float 1.450000e+00, float 1.328000e+00, float 1.278000e+00], [3 x float] [float 1.957000e-01, float 2.169000e-01, float 2.735000e-01], [3 x float] [float 1.142000e+00, float 1.240000e+00, float 1.157000e+00], [3 x float] [float 7.881000e-01, float f0x3F2D844D, float 4.185000e-01], [3 x float] [float 1.504000e+00, float 1.468000e+00, float 1.534000e+00], [3 x float] [float 3.173000e-01, float 2.693000e-01, float -9.526000e-02], [3 x float] [float 1.141000e+00, float 1.154000e+00, float 1.044000e+00], [3 x float] [float 5.147000e-01, float 5.784000e-01, float 8.802000e-01], [3 x float] [float 1.502000e+00, float 1.407000e+00, float 1.409000e+00], [3 x float] [float 3.163000e-01, float 3.592000e-01, float 2.830000e-01], [3 x float] [float 1.217000e+00, float 1.213000e+00, float 1.216000e+00], [3 x float] [float 1.023000e+00, float 1.139000e+00, float -9.526000e-02], [3 x float] [float 1.619000e+00, float 1.655000e+00, float 1.642000e+00], [3 x float] [float 1.437000e-01, float 1.505000e-01, float 6.838000e-02], [3 x float] [float f0x3F7AB9F5, float 1.021000e+00, float 1.117000e+00], [3 x float] [float 4.701000e-01, float f0x3F24816F, float 5.519000e-01], [3 x float] [float 1.366000e+00, float 1.397000e+00, float 1.406000e+00], [3 x float] [float 2.918000e-01, float 3.022000e-01, float 2.420000e-01], [3 x float] [float 1.309000e+00, float 1.241000e+00, float 1.220000e+00], [3 x float] [float 7.989000e-01, float f0x3F43F141, float f0x3F3D35A8], [3 x float] [float 1.612000e+00, float 1.502000e+00, float 1.447000e+00], [3 x float] [float 2.594000e-01, float 1.948000e-01, float 2.555000e-01], [3 x float] [float 1.091000e+00, float 1.150000e+00, float 1.272000e+00], [3 x float] [float 3.423000e-01, float 4.150000e-01, float 1.294000e+00], [3 x float] [float 1.729000e+00, float 1.377000e+00, float 1.065000e+00], [3 x float] [float 4.103000e-01, float 3.287000e-01, float 3.228000e-01], [3 x float] [float 1.144000e+00, float 1.281000e+00, float 1.416000e+00], [3 x float] [float 1.047000e+00, float 1.117000e+00, float f0x3F1E69AD], [3 x float] [float 1.914000e+00, float 1.777000e+00, float 1.516000e+00], [3 x float] [float -2.117000e-02, float 2.159000e-01, float 2.351000e-01], [3 x float] [float 1.093000e+00, float 1.088000e+00, float 1.026000e+00], [3 x float] [float 5.567000e-01, float 5.092000e-01, float 4.654000e-01], [3 x float] [float 1.510000e+00, float 1.449000e+00, float 1.201000e+00], [3 x float] [float 2.362000e-01, float 3.426000e-01, float 2.549000e-01], [3 x float] [float 1.340000e+00, float 1.225000e+00, float 1.117000e+00], [3 x float] [float 1.203000e+00, float 3.819000e-01, float 2.269000e-01], [3 x float] [float 1.373000e+00, float 1.404000e+00, float 1.830000e+00], [3 x float] [float 2.570000e-01, float 2.668000e-01, float 1.636000e-01], [3 x float] [float 1.219000e+00, float 1.098000e+00, float 1.122000e+00], [3 x float] [float f0x3F32D0E5, float 8.456000e-01, float 1.069000e+00], [3 x float] [float 1.550000e+00, float 1.501000e+00, float 1.388000e+00], [3 x float] [float 2.870000e-01, float 3.060000e-01, float 3.599000e-01], [3 x float] [float 1.178000e+00, float 1.345000e+00, float 1.302000e+00], [3 x float] [float 1.270000e+00, float 1.215000e+00, float 1.812000e-01], [3 x float] [float 1.725000e+00, float 1.777000e+00, float 1.693000e+00], [3 x float] [float 2.074000e-01, float 2.104000e-01, float 1.539000e-01], [3 x float] [float 1.105000e+00, float 1.034000e+00, float 1.104000e+00], [3 x float] [float f0x3F2B15B5, float 6.646000e-01, float 6.639000e-01], [3 x float] [float 1.403000e+00, float 1.462000e+00, float 1.435000e+00], [3 x float] [float 3.389000e-01, float 3.754000e-01, float 2.150000e-01], [3 x float] [float 1.288000e+00, float 1.325000e+00, float 1.257000e+00], [3 x float] [float f0x3F64AF4F, float 8.253000e-01, float 8.133000e-01], [3 x float] [float 1.555000e+00, float 1.579000e+00, float 1.565000e+00], [3 x float] [float 3.264000e-01, float 2.434000e-01, float 2.852000e-01], [3 x float] [float 1.242000e+00, float 1.180000e+00, float 1.202000e+00], [3 x float] [float 1.314000e-01, float 1.698000e-01, float 1.646000e+00], [3 x float] [float 1.797000e+00, float 1.597000e+00, float 1.241000e+00], [3 x float] [float 4.721000e-01, float 5.346000e-01, float 3.066000e-01], [3 x float] [float 1.274000e+00, float 1.401000e+00, float 1.351000e+00], [3 x float] [float 1.455000e+00, float 1.386000e+00, float 6.430000e-01], [3 x float] [float 1.828000e+00, float 1.867000e+00, float 1.825000e+00], [3 x float] [float -3.265000e-01, float -2.956000e-01, float -2.462000e-01], [3 x float] [float 1.035000e+00, float 1.020000e+00, float 1.003000e+00], [3 x float] [float 3.702000e-01, float 4.307000e-01, float f0x3F350B0F], [3 x float] [float 1.424000e+00, float 1.345000e+00, float 1.352000e+00], [3 x float] [float 2.267000e-01, float 2.680000e-01, float 3.037000e-01], [3 x float] [float 1.235000e+00, float 1.249000e+00, float 1.146000e+00], [3 x float] [float 9.944000e-01, float 6.485000e-01, float 5.248000e-01], [3 x float] [float 1.539000e+00, float 1.492000e+00, float 1.612000e+00], [3 x float] [float 3.815000e-01, float 3.360000e-01, float -9.526000e-02], [3 x float] [float 1.163000e+00, float 1.144000e+00, float 1.117000e+00], [3 x float] [float f0x3F2C63F1, float 7.656000e-01, float 1.014000e+00], [3 x float] [float 1.568000e+00, float 1.438000e+00, float 1.455000e+00], [3 x float] [float 3.409000e-01, float 3.317000e-01, float 3.856000e-01], [3 x float] [float 1.180000e+00, float 1.284000e+00, float 1.284000e+00], [3 x float] [float 1.244000e+00, float 1.214000e+00, float -9.526000e-02], [3 x float] [float 1.753000e+00, float 1.598000e+00, float 1.744000e+00], [3 x float] [float 1.548000e-01, float 1.388000e-01, float 2.020000e-01], [3 x float] [float 1.027000e+00, float 1.133000e+00, float 1.093000e+00], [3 x float] [float 3.906000e-01, float 7.505000e-01, float 5.705000e-01], [3 x float] [float 1.420000e+00, float 1.357000e+00, float 1.543000e+00], [3 x float] [float 3.252000e-01, float 3.136000e-01, float 2.804000e-01], [3 x float] [float 1.351000e+00, float 1.309000e+00, float 1.224000e+00], [3 x float] [float f0x3F60CB29, float 8.095000e-01, float 7.109000e-01], [3 x float] [float 1.614000e+00, float 1.580000e+00, float 1.433000e+00], [3 x float] [float 3.222000e-01, float 2.298000e-01, float 2.157000e-01], [3 x float] [float 1.216000e+00, float 1.077000e+00, float 1.247000e+00], [3 x float] [float 1.363000e+00, float 1.280000e+00, float 1.317000e+00], [3 x float] [float 1.751000e+00, float 1.457000e+00, float 1.182000e+00], [3 x float] [float 4.428000e-01, float 4.082000e-01, float 3.181000e-01], [3 x float] [float 1.157000e+00, float 1.227000e+00, float 1.604000e+00], [3 x float] [float 1.286000e+00, float 1.268000e+00, float f0x3F511340], [3 x float] [float 1.994000e+00, float 2.018000e+00, float 1.307000e+00], [3 x float] [float 2.671000e-02, float 2.594000e-01, float 3.397000e-01], [3 x float] [float 1.164000e+00, float 1.080000e+00, float f0x3F6E9E1B], [3 x float] [float 5.998000e-01, float 6.076000e-01, float 5.081000e-01], [3 x float] [float 1.442000e+00, float 1.442000e+00, float 1.375000e+00], [3 x float] [float 2.390000e-01, float 3.554000e-01, float 3.426000e-01], [3 x float] [float 1.287000e+00, float 1.307000e+00, float 1.144000e+00], [3 x float] [float 1.200000e+00, float f0x3F3FDF3B, float 3.967000e-01], [3 x float] [float 1.561000e+00, float 1.517000e+00, float 1.898000e+00], [3 x float] [float 3.598000e-01, float 3.463000e-01, float 1.200000e-01], [3 x float] [float 1.298000e+00, float 1.125000e+00, float 1.062000e+00], [3 x float] [float 7.577000e-01, float 1.013000e+00, float 1.194000e+00], [3 x float] [float 1.537000e+00, float 1.513000e+00, float 1.464000e+00], [3 x float] [float 4.041000e-01, float 4.038000e-01, float 3.897000e-01], [3 x float] [float 1.293000e+00, float 1.219000e+00, float 1.378000e+00], [3 x float] [float 1.250000e+00, float 1.391000e+00, float 2.451000e-01], [3 x float] [float 1.558000e+00, float 1.764000e+00, float 1.728000e+00], [3 x float] [float 2.700000e-01, float 1.894000e-01, float 1.924000e-01], [3 x float] [float 1.111000e+00, float 1.112000e+00, float 1.173000e+00], [3 x float] [float 7.579000e-01, float 8.342000e-01, float 4.781000e-01], [3 x float] [float 1.464000e+00, float 1.477000e+00, float 1.469000e+00], [3 x float] [float 4.001000e-01, float 3.104000e-01, float 2.217000e-01], [3 x float] [float 1.346000e+00, float 1.421000e+00, float 1.312000e+00], [3 x float] [float 1.071000e+00, float 8.967000e-01, float 7.511000e-01], [3 x float] [float 1.616000e+00, float 1.551000e+00, float 1.574000e+00], [3 x float] [float 3.329000e-01, float 2.785000e-01, float 3.140000e-01], [3 x float] [float 1.281000e+00, float 1.209000e+00, float 1.239000e+00], [3 x float] [float 2.805000e-01, float 2.687000e-01, float 1.646000e+00], [3 x float] [float 1.814000e+00, float 1.514000e+00, float 1.510000e+00], [3 x float] [float f0x3F1F837B, float 4.200000e-01, float 3.701000e-01], [3 x float] [float 1.255000e+00, float 1.429000e+00, float 1.454000e+00], [3 x float] [float 1.642000e+00, float 1.581000e+00, float 7.112000e-01], [3 x float] [float 1.844000e+00, float 1.963000e+00, float 1.895000e+00], [3 x float] [float -4.208000e-02, float -1.491000e-01, float f0xBD9C725C], [3 x float] [float 1.046000e+00, float 9.598000e-01, float f0x3F6AE7D5], [3 x float] [float 4.478000e-01, float 4.605000e-01, float 5.111000e-01], [3 x float] [float 1.521000e+00, float 1.292000e+00, float 1.342000e+00], [3 x float] [float 2.220000e-01, float 2.549000e-01, float 2.510000e-01], [3 x float] [float 1.186000e+00, float 1.254000e+00, float 1.171000e+00], [3 x float] [float 8.999000e-01, float 4.960000e-01, float 4.943000e-01], [3 x float] [float 1.423000e+00, float 1.484000e+00, float 1.620000e+00], [3 x float] [float 2.796000e-01, float 2.778000e-01, float -2.820000e-01], [3 x float] [float 1.170000e+00, float 1.181000e+00, float 1.076000e+00], [3 x float] [float 4.068000e-01, float 8.541000e-01, float 9.352000e-01], [3 x float] [float 1.584000e+00, float 1.416000e+00, float 1.387000e+00], [3 x float] [float 3.325000e-01, float 3.655000e-01, float 3.340000e-01], [3 x float] [float 1.224000e+00, float 1.257000e+00, float 1.245000e+00], [3 x float] [float 1.061000e+00, float 1.138000e+00, float -9.526000e-02], [3 x float] [float 1.681000e+00, float 1.704000e+00, float 1.673000e+00], [3 x float] [float 1.932000e-01, float 1.489000e-01, float 1.258000e-01], [3 x float] [float 1.023000e+00, float 1.088000e+00, float 1.145000e+00], [3 x float] [float 5.190000e-01, float 6.873000e-01, float 5.172000e-01], [3 x float] [float 1.380000e+00, float 1.405000e+00, float 1.474000e+00], [3 x float] [float 3.393000e-01, float 3.100000e-01, float 2.231000e-01], [3 x float] [float 1.354000e+00, float 1.249000e+00, float 1.270000e+00], [3 x float] [float f0x3F3C7E28, float f0x3F59CE07, float f0x3F531F8A], [3 x float] [float 1.612000e+00, float 1.537000e+00, float 1.509000e+00], [3 x float] [float 2.952000e-01, float 2.053000e-01, float 2.590000e-01], [3 x float] [float 1.138000e+00, float 1.219000e+00, float 1.262000e+00], [3 x float] [float 1.345000e+00, float 1.289000e+00, float 1.338000e+00], [3 x float] [float 1.437000e+00, float 1.360000e+00, float 1.442000e+00], [3 x float] [float 4.826000e-01, float 3.298000e-01, float 3.842000e-01], [3 x float] [float 1.219000e+00, float 1.311000e+00, float 1.413000e+00], [3 x float] [float 1.212000e+00, float 1.186000e+00, float 6.357000e-01], [3 x float] [float 1.873000e+00, float 1.939000e+00, float 1.674000e+00], [3 x float] [float 1.260000e+00, float 1.306000e+00, float 1.368000e+00], [3 x float] [float 1.146000e+00, float 1.077000e+00, float 1.025000e+00], [3 x float] [float 6.029000e-01, float 5.039000e-01, float 5.781000e-01], [3 x float] [float 1.514000e+00, float 1.420000e+00, float 1.324000e+00], [3 x float] [float 2.652000e-01, float 3.192000e-01, float 3.042000e-01], [3 x float] [float 1.368000e+00, float 1.198000e+00, float 1.200000e+00], [3 x float] [float 1.234000e+00, float 4.910000e-01, float 3.464000e-02], [3 x float] [float 1.347000e+00, float 1.560000e+00, float 1.861000e+00], [3 x float] [float 2.766000e-01, float 2.887000e-01, float 2.029000e-01], [3 x float] [float 1.257000e+00, float 1.105000e+00, float 1.145000e+00], [3 x float] [float 1.351000e+00, float 1.353000e+00, float 1.406000e+00], [3 x float] [float 1.506000e+00, float 1.580000e+00, float 1.362000e+00], [3 x float] [float 2.794000e-01, float 3.868000e-01, float 4.277000e-01], [3 x float] [float 1.234000e+00, float 1.334000e+00, float 1.336000e+00], [3 x float] [float 1.280000e+00, float 1.252000e+00, float 1.805000e-01], [3 x float] [float 1.387000e+00, float 1.396000e+00, float 1.434000e+00], [3 x float] [float 2.902000e-01, float 1.170000e-01, float 1.698000e-01], [3 x float] [float 1.134000e+00, float 1.077000e+00, float 1.117000e+00], [3 x float] [float f0x3F32D773, float 7.177000e-01, float f0x3F3C91D1], [3 x float] [float 1.370000e+00, float 1.491000e+00, float 1.495000e+00], [3 x float] [float 4.031000e-01, float 5.144000e-01, float 1.751000e-01], [3 x float] [float 1.333000e+00, float 1.377000e+00, float 1.257000e+00], [3 x float] [float f0x3F6BD3C3, float 8.934000e-01, float f0x3F63C361], [3 x float] [float 1.589000e+00, float 1.614000e+00, float 1.523000e+00], [3 x float] [float 3.152000e-01, float 2.164000e-01, float 3.230000e-01], [3 x float] [float 1.300000e+00, float 1.145000e+00, float 1.212000e+00], [3 x float] [float 1.269000e+00, float 1.245000e+00, float 1.497000e+00], [3 x float] [float 1.763000e+00, float 1.716000e+00, float 1.311000e+00], [3 x float] [float 4.702000e-01, float 5.422000e-01, float 4.306000e-01], [3 x float] [float 1.342000e+00, float 1.433000e+00, float 1.423000e+00], [3 x float] [float 1.472000e+00, float 1.404000e+00, float 8.371000e-01], [3 x float] [float 1.936000e+00, float 1.883000e+00, float 1.838000e+00], [3 x float] [float 1.266000e+00, float 1.295000e+00, float 1.302000e+00], [3 x float] [float 1.074000e+00, float 1.002000e+00, float 1.023000e+00], [3 x float] [float 5.206000e-01, float 4.045000e-01, float 6.549000e-01], [3 x float] [float 1.457000e+00, float 1.378000e+00, float 1.363000e+00], [3 x float] [float 2.715000e-01, float 2.629000e-01, float 2.841000e-01], [3 x float] [float 1.264000e+00, float 1.271000e+00, float 1.175000e+00], [3 x float] [float 1.337000e+00, float 1.305000e+00, float 1.306000e+00], [3 x float] [float 1.555000e+00, float 1.571000e+00, float 1.657000e+00], [3 x float] [float 3.341000e-01, float 4.147000e-01, float -3.648000e-01], [3 x float] [float 1.188000e+00, float 1.185000e+00, float 1.161000e+00], [3 x float] [float 6.198000e-01, float f0x3F388659, float 1.157000e+00], [3 x float] [float 1.582000e+00, float 1.465000e+00, float 1.513000e+00], [3 x float] [float 3.839000e-01, float 3.651000e-01, float 3.814000e-01], [3 x float] [float 1.214000e+00, float 1.256000e+00, float 1.292000e+00], [3 x float] [float 1.361000e+00, float 1.363000e+00, float 1.312000e+00], [3 x float] [float 1.793000e+00, float 1.693000e+00, float 1.669000e+00], [3 x float] [float 1.889000e-01, float 1.275000e-01, float 2.534000e-01], [3 x float] [float 1.066000e+00, float 1.174000e+00, float 1.133000e+00], [3 x float] [float 4.999000e-01, float f0x3F521965, float 5.813000e-01], [3 x float] [float 1.478000e+00, float 1.416000e+00, float 1.497000e+00], [3 x float] [float 3.814000e-01, float 3.138000e-01, float 2.889000e-01], [3 x float] [float 1.396000e+00, float 1.265000e+00, float 1.233000e+00], [3 x float] [float 9.458000e-01, float 9.161000e-01, float 5.875000e-01], [3 x float] [float 1.672000e+00, float 1.632000e+00, float 1.553000e+00], [3 x float] [float 3.505000e-01, float 2.525000e-01, float 2.364000e-01], [3 x float] [float 1.211000e+00, float 1.138000e+00, float 1.235000e+00], [3 x float] [float 1.391000e+00, float 1.231000e+00, float 1.355000e+00], [3 x float] [float 1.783000e+00, float 1.510000e+00, float 1.199000e+00], [3 x float] [float 4.227000e-01, float 4.548000e-01, float 3.671000e-01], [3 x float] [float 1.281000e+00, float 1.254000e+00, float 1.661000e+00], [3 x float] [float 1.338000e+00, float 1.379000e+00, float 9.531000e-01], [3 x float] [float 2.148000e+00, float 1.965000e+00, float 1.584000e+00], [3 x float] [float 9.324000e-02, float 3.575000e-01, float 3.522000e-01], [3 x float] [float 1.212000e+00, float 1.086000e+00, float 1.044000e+00], [3 x float] [float 6.128000e-01, float 6.136000e-01, float 6.060000e-01], [3 x float] [float 1.484000e+00, float 1.507000e+00, float 1.396000e+00], [3 x float] [float 2.820000e-01, float 3.848000e-01, float 3.156000e-01], [3 x float] [float 1.368000e+00, float 1.287000e+00, float 1.128000e+00], [3 x float] [float 1.369000e+00, float 1.352000e+00, float 1.358000e+00], [3 x float] [float 1.381000e+00, float 1.765000e+00, float 2.113000e+00], [3 x float] [float 1.314000e+00, float 1.345000e+00, float 1.334000e+00], [3 x float] [float 1.290000e+00, float 1.172000e+00, float 1.119000e+00], [3 x float] [float 1.304000e+00, float 1.377000e+00, float 1.427000e+00], [3 x float] [float 1.490000e+00, float 1.540000e+00, float 1.536000e+00], [3 x float] [float 3.994000e-01, float 4.402000e-01, float 4.173000e-01], [3 x float] [float 1.323000e+00, float 1.307000e+00, float 1.392000e+00], [3 x float] [float 1.400000e+00, float 1.388000e+00, float 1.369000e+00], [3 x float] [float 1.669000e+00, float 1.818000e+00, float 1.834000e+00], [3 x float] [float 2.742000e-01, float 2.235000e-01, float 1.986000e-01], [3 x float] [float 1.137000e+00, float 1.139000e+00, float 1.201000e+00], [3 x float] [float 1.324000e+00, float 1.385000e+00, float 1.349000e+00], [3 x float] [float 1.455000e+00, float 1.574000e+00, float 1.454000e+00], [3 x float] [float 5.019000e-01, float 3.255000e-01, float 2.555000e-01], [3 x float] [float 1.388000e+00, float 1.438000e+00, float 1.300000e+00], [3 x float] [float 1.394000e+00, float 1.349000e+00, float 1.411000e+00], [3 x float] [float 1.639000e+00, float 1.580000e+00, float 1.681000e+00], [3 x float] [float 3.920000e-01, float 2.498000e-01, float 3.523000e-01], [3 x float] [float 1.301000e+00, float 1.221000e+00, float 1.285000e+00], [3 x float] [float 1.318000e+00, float 1.342000e+00, float 1.494000e+00], [3 x float] [float 1.910000e+00, float 1.680000e+00, float 1.470000e+00], [3 x float] [float 6.082000e-01, float 5.270000e-01, float 4.173000e-01], [3 x float] [float 1.255000e+00, float 1.477000e+00, float 1.503000e+00], [3 x float] [float 1.807000e+00, float 1.742000e+00, float 6.553000e-01], [3 x float] [float 2.000000e+00, float 2.072000e+00, float 2.051000e+00]], align 16
@pitch_gain_vq = internal unnamed_addr constant [8 x float] [float 0.000000e+00, float 3.000000e-01, float 5.500000e-01, float f0x3F333333, float 8.000000e-01, float f0x3F666666, float 1.000000e+00, float 1.200000e+00], align 16
@postfilter_coeffs = internal constant [5 x %struct.PfCoeff] [%struct.PfCoeff zeroinitializer, %struct.PfCoeff { float 0.000000e+00, float 0.000000e+00, float 5.700000e-01, float 5.700000e-01 }, %struct.PfCoeff zeroinitializer, %struct.PfCoeff { float 3.500000e-01, float 5.000000e-01, float 5.000000e-01, float 7.500000e-01 }, %struct.PfCoeff { float 2.000000e-01, float 5.000000e-01, float 5.700000e-01, float 7.500000e-01 }], align 16
@.str.7 = private unnamed_addr constant [15 x i8] c"frame erasure\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Claimed bitrate and buffer size mismatch.\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Buffer is too small for the claimed bitrate.\0A\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"Bitrate byte is missing, guessing the bitrate from packet size.\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Frame #%ld, %s\0A\00", align 1
@evrc_lspq_codebooks = internal unnamed_addr constant [5 x ptr] [ptr null, ptr @evrc_lspq_quant_codebooks, ptr null, ptr @evrc_lspq_half_codebooks, ptr @evrc_lspq_full_codebooks], align 16
@evrc_lspq_nb_codebooks = internal unnamed_addr constant [5 x i8] c"\00\02\00\03\04", align 1
@evrc_lspq_codebooks_row_sizes = internal unnamed_addr constant [5 x ptr] [ptr null, ptr @evrc_lspq_quant_codebooks_row_sizes, ptr null, ptr @evrc_lspq_half_codebooks_row_sizes, ptr @evrc_lspq_full_codebooks_row_sizes], align 16
@evrc_lspq_quant_codebooks = internal constant [2 x ptr] [ptr @evrc_lspq_quant_codebook1, ptr @evrc_lspq_quant_codebook2], align 16
@evrc_lspq_half_codebooks = internal constant [3 x ptr] [ptr @evrc_lspq_half_codebook1, ptr @evrc_lspq_half_codebook2, ptr @evrc_lspq_half_codebook3], align 16
@evrc_lspq_full_codebooks = internal constant [4 x ptr] [ptr @evrc_lspq_full_codebook1, ptr @evrc_lspq_full_codebook2, ptr @evrc_lspq_full_codebook3, ptr @evrc_lspq_full_codebook4], align 16
@evrc_lspq_quant_codebook1 = internal constant [16 x [5 x float]] [[5 x float] [float f0x3D2C67AE, float f0x3D8E48E5, float f0x3DE4BD74, float f0x3E153788, float f0x3E55F345], [5 x float] [float f0x3D610DA8, float f0x3DC9333D, float f0x3DE17101, float f0x3E22B8B9, float f0x3E5269FB], [5 x float] [float f0x3D3917A7, float f0x3D9A0229, float f0x3DE9F378, float f0x3E1E68F7, float f0x3E4A34CE], [5 x float] [float f0x3D4AA64B, float 7.966750e-02, float f0x3E00BB0B, float f0x3E2D83B9, float f0x3E54BD3E], [5 x float] [float f0x3D2B2B57, float f0x3D81F716, float f0x3DF72739, float f0x3E224FD4, float f0x3E50F73E], [5 x float] [float f0x3D412A0B, float f0x3DA20EAC, float f0x3DF98295, float f0x3E2041A9, float f0x3E64724C], [5 x float] [float f0x3D5F6540, float f0x3DA48AE5, float f0x3E0495C9, float f0x3E1B8197, float f0x3E4E8EF3], [5 x float] [float f0x3D64C527, float f0x3DC0BF49, float f0x3E0F862B, float f0x3E365834, float f0x3E6B1070], [5 x float] [float f0x3D3A22FF, float f0x3D969CE1, float f0x3DF47BB4, float f0x3E1E205B, float f0x3E57266D], [5 x float] [float f0x3D816379, float f0x3DC308BA, float f0x3DFD3C1F, float f0x3E34F783, float f0x3E5EA7E3], [5 x float] [float f0x3D582080, float f0x3DACC073, float f0x3DED582F, float f0x3E21B2F6, float f0x3E544C9E], [5 x float] [float f0x3D54712D, float f0x3DA68F94, float f0x3E0CDD23, float f0x3E3BA053, float f0x3E5D9825], [5 x float] [float f0x3D35F141, float f0x3D8D0E0E, float f0x3E064CD8, float f0x3E268A01, float 2.165910e-01], [5 x float] [float f0x3D4A410B, float f0x3DA7B20A, float f0x3E05CECC, float f0x3E2C4197, float f0x3E6CE9D9], [5 x float] [float f0x3D6501A7, float f0x3DB9EC98, float f0x3E08B134, float f0x3E26E579, float f0x3E56A560], [5 x float] [float f0x3D7B67B8, float f0x3DC9F040, float f0x3E177BD5, float f0x3E4575BA, float f0x3E6D1F66]], align 16
@evrc_lspq_quant_codebook2 = internal constant [16 x [5 x float]] [[5 x float] [float f0x3E895565, float f0x3E9C98C2, float f0x3E9F48F5, float f0x3EBC8915, float f0x3ED0C3EB], [5 x float] [float f0x3E7A0A5C, float f0x3E9453C7, float f0x3EA6C713, float f0x3EC7CA3D, float f0x3ED3B0D1], [5 x float] [float f0x3E6F0535, float f0x3E9A0038, float 3.289390e-01, float f0x3EC569DD, float f0x3ED24541], [5 x float] [float f0x3E84A357, float f0x3E985AE9, float f0x3EAF1631, float f0x3EC54794, float f0x3ED36E7B], [5 x float] [float f0x3E78BBF5, float f0x3E959FFB, float f0x3EA784DD, float f0x3EC179AA, float f0x3ECE812D], [5 x float] [float f0x3E7CA9E9, float f0x3E985118, float f0x3EAC311F, float f0x3EC9DC86, float f0x3ED85DA8], [5 x float] [float f0x3E5AE815, float f0x3EA9ADCF, float f0x3EAE6D33, float f0x3EC3B271, float f0x3ED19B98], [5 x float] [float f0x3E889177, float f0x3E9DA73B, float f0x3EB03A9E, float f0x3ECACF98, float f0x3ED9062D], [5 x float] [float f0x3E85BDE0, float f0x3E9C1F30, float f0x3EA8F223, float f0x3EC50D6C, float f0x3ED7295A], [5 x float] [float f0x3E7F89B2, float f0x3E966397, float f0x3EAAEB6B, float f0x3EC1CBA1, float f0x3ED59373], [5 x float] [float f0x3E776315, float f0x3E9A7CE6, float f0x3EAEBC93, float f0x3EC4C11A, float f0x3ED517B5], [5 x float] [float f0x3E84315C, float f0x3EA27D8D, float f0x3EB2B5D0, float f0x3EC68084, float f0x3ED4BE32], [5 x float] [float f0x3E7A5FBF, float f0x3E9D0C4F, float f0x3EABED17, float f0x3EC1C373, float f0x3ECFA6EF], [5 x float] [float f0x3E80D6FE, float f0x3E9FDF56, float f0x3EAD4CFB, float f0x3ECA8479, float f0x3ED91256], [5 x float] [float f0x3E695959, float f0x3EA2B5A1, float f0x3EAD3829, float f0x3ECD069E, float f0x3ED2DEBD], [5 x float] [float f0x3E8ED4F9, float f0x3EA52E6A, float f0x3EB691CD, float f0x3ECDDBCF, float f0x3ED8EFCB]], align 16
@evrc_lspq_half_codebook1 = internal constant [128 x [3 x float]] [[3 x float] [float f0x3C5D8E0A, float f0x3C952937, float f0x3D215BAD], [3 x float] [float f0x3CBBEB2D, float f0x3D129151, float f0x3DD7C341], [3 x float] [float f0x3CAB4CCF, float f0x3CF92AC7, float f0x3DB71442], [3 x float] [float 1.889090e-02, float f0x3D1CC355, float f0x3E0D20CB], [3 x float] [float f0x3CA80DC7, float f0x3CE9DDBD, float f0x3D9780D8], [3 x float] [float f0x3D404FBA, float f0x3D8C16F9, float f0x3DDF7C4E], [3 x float] [float f0x3D014092, float f0x3D691EA7, float f0x3DAF8680], [3 x float] [float f0x3D1C21D2, float f0x3D9F4A51, float f0x3E452755], [3 x float] [float f0x3CB130CD, float f0x3CEFF375, float 6.250420e-02], [3 x float] [float f0x3CFF1C41, float f0x3D756205, float f0x3DD2A89F], [3 x float] [float f0x3CF80D9E, float f0x3D5B241D, float f0x3D9FEF00], [3 x float] [float f0x3D854B16, float f0x3DB9AD3F, float f0x3E124785], [3 x float] [float f0x3D061420, float f0x3D4E7325, float f0x3D804E3D], [3 x float] [float f0x3D580A14, float f0x3D7F01A5, float f0x3DFA431F], [3 x float] [float f0x3D0EE290, float f0x3D8386F3, float f0x3DBB9A12], [3 x float] [float f0x3D4849BC, float f0x3DD728A9, float f0x3E2CDD6F], [3 x float] [float f0x3CC128F9, float f0x3D037EED, float f0x3D65BE95], [3 x float] [float f0x3CE32021, float f0x3D479733, float f0x3DCF4EA1], [3 x float] [float f0x3CE0BEF3, float f0x3D25DFC1, float f0x3DBF790E], [3 x float] [float f0x3D338D62, float f0x3D771888, float f0x3E1C0EF9], [3 x float] [float f0x3CDC5C53, float f0x3D3982AD, float f0x3D851441], [3 x float] [float f0x3D5360B4, float f0x3D792A27, float f0x3DDED258], [3 x float] [float f0x3D2C0F00, float f0x3D7A9C9C, float 8.544740e-02], [3 x float] [float f0x3D922017, float f0x3DD0D6C1, float 1.746410e-01], [3 x float] [float f0x3CECAC1F, float f0x3D298F4F, float f0x3D576B8D], [3 x float] [float f0x3D019538, float f0x3D87E431, float f0x3DFFE5EA], [3 x float] [float f0x3D303F20, float f0x3D528B3F, float f0x3DA33358], [3 x float] [float f0x3D69DEA0, float f0x3DDE1827, float f0x3E13888F], [3 x float] [float f0x3D0AC9FA, float f0x3D4EBE8B, float f0x3D9574BA], [3 x float] [float f0x3D85FE5D, float f0x3DA1FE89, float f0x3DECB046], [3 x float] [float f0x3D1DDE96, float f0x3D9624E3, float f0x3DD1869A], [3 x float] [float f0x3D86B8F3, float f0x3DD2C261, float f0x3E58F59D], [3 x float] [float f0x3C7D8192, float f0x3CA79347, float f0x3D5FB0F7], [3 x float] [float f0x3CBABC9F, float f0x3D202285, float f0x3DF49EF7], [3 x float] [float f0x3CFB6753, float f0x3D3A2DFF, float f0x3DA80594], [3 x float] [float f0x3CB91AAB, float f0x3D443D75, float f0x3E2FF7FB], [3 x float] [float f0x3CDE1347, float f0x3D248D73, float f0x3D8FC0F9], [3 x float] [float f0x3D4B1348, float f0x3DA2661D, float f0x3DD6C228], [3 x float] [float f0x3CFAC0F4, float f0x3D6709EB, float f0x3DC2798E], [3 x float] [float f0x3D81E3A2, float f0x3DBAB501, float f0x3E3D2865], [3 x float] [float f0x3CC75899, float f0x3D209001, float f0x3D814FDF], [3 x float] [float f0x3D0A7320, float f0x3D875763, float f0x3DE36481], [3 x float] [float f0x3D10173C, float f0x3D6D5235, float f0x3D939996], [3 x float] [float f0x3D84ED20, float f0x3DB15287, float f0x3E1E5C3D], [3 x float] [float f0x3CEF2723, float f0x3D536FF9, float f0x3D8E3884], [3 x float] [float f0x3D73843C, float f0x3D936BC9, float f0x3E027E31], [3 x float] [float f0x3D59DC8E, float f0x3D82B31F, float f0x3DCA631C], [3 x float] [float f0x3DB1D374, float f0x3E1085C9, float f0x3E445477], [3 x float] [float f0x3CCCCAF1, float 3.625560e-02, float f0x3D4E534B], [3 x float] [float f0x3CE7375B, float f0x3D5F0E8B, float f0x3DE6BC1F], [3 x float] [float f0x3D148744, float f0x3D3C0951, float f0x3DC13260], [3 x float] [float f0x3D69A894, float f0x3D98D7A3, float f0x3E22FA19], [3 x float] [float f0x3CDFA19F, float f0x3D3B08B1, float f0x3D9A1E3A], [3 x float] [float f0x3D52114A, float f0x3DAE4F91, float f0x3DFD1BB1], [3 x float] [float 4.914520e-02, float f0x3D731737, float 9.226860e-02], [3 x float] [float f0x3D90C92A, float f0x3DD7F735, float f0x3E45397F], [3 x float] [float f0x3CE5FA23, float f0x3D2B6BDF, float f0x3D70802B], [3 x float] [float 4.644490e-02, float f0x3D90BB5F, float f0x3E011038], [3 x float] [float f0x3D2B660E, float f0x3D811D7E, float f0x3D9CE95E], [3 x float] [float f0x3DAC86E2, float f0x3DE800DB, float f0x3E1322B7], [3 x float] [float f0x3D2B0E2C, float f0x3D6528FD, float f0x3D9161C8], [3 x float] [float f0x3D6364E4, float f0x3DC29601, float f0x3E02CAEB], [3 x float] [float f0x3D720C14, float 7.367300e-02, float f0x3DC5D2DC], [3 x float] [float f0x3DA09758, float f0x3E10D3A5, float f0x3E5EA59D], [3 x float] [float f0x3CAC6F11, float f0x3CEF1DFD, float f0x3D3C6E3F], [3 x float] [float f0x3D1572B0, float 4.623870e-02, float f0x3DDB39F9], [3 x float] [float f0x3CDC146F, float f0x3D20F27D, float f0x3DAC460E], [3 x float] [float f0x3CDF901B, float f0x3D62D6AB, float f0x3E10FBF7], [3 x float] [float f0x3CCB8D57, float f0x3D14CC6D, float f0x3D9C2556], [3 x float] [float f0x3D57376A, float f0x3D9EE125, float f0x3DEAA29C], [3 x float] [float f0x3D2702CA, float f0x3D5D271D, float f0x3DB9E280], [3 x float] [float f0x3D6AB7F2, float f0x3D9CD623, float f0x3E37E38D], [3 x float] [float f0x3CC98CBD, float f0x3D0BD743, float f0x3D8B0EAC], [3 x float] [float f0x3D2734FA, float f0x3D80FACF, float f0x3DCBD0AF], [3 x float] [float f0x3D1CE316, float f0x3D62734F, float f0x3DA1CBC4], [3 x float] [float f0x3D944C49, float f0x3DD0B2F9, float f0x3E1681D5], [3 x float] [float f0x3D19267C, float f0x3D40B3B7, float f0x3D861453], [3 x float] [float f0x3D5805A4, float f0x3D89C88B, float f0x3E0F0863], [3 x float] [float f0x3D2609A4, float f0x3D906691, float f0x3DBD93B2], [3 x float] [float f0x3D35A082, float f0x3DE2082F, float f0x3E4C6D73], [3 x float] [float f0x3CD0D4C1, float f0x3D0E60EB, float f0x3D782D6F], [3 x float] [float f0x3D325DDE, float f0x3D5A0EFD, float f0x3DDDDA01], [3 x float] [float f0x3CE50C55, float f0x3D493F23, float f0x3DB519FA], [3 x float] [float f0x3D4C0086, float f0x3DB493FD, float f0x3E1C4279], [3 x float] [float f0x3D02CDE2, float f0x3D3D4DF7, float f0x3D8C548D], [3 x float] [float f0x3D6DAB3C, float f0x3D8C2363, float f0x3DEBB1D5], [3 x float] [float f0x3D31BA34, float f0x3D8D6E0D, float f0x3DAD0D84], [3 x float] [float f0x3D977D24, float f0x3DF4345F, float f0x3E3598AB], [3 x float] [float f0x3D029132, float f0x3D3C4AC5, float f0x3D6A719F], [3 x float] [float f0x3D38AD8C, float f0x3D680AD0, float f0x3E072C89], [3 x float] [float f0x3D3C0BD0, float f0x3D5F7841, float f0x3DB06B64], [3 x float] [float f0x3D9882FB, float f0x3DE9180D, float f0x3E2572C3], [3 x float] [float f0x3D22D1E6, float f0x3D4AE635, float f0x3D93FA06], [3 x float] [float f0x3D8A7F62, float f0x3DAA31DB, float f0x3E030FD7], [3 x float] [float f0x3D6C090A, float f0x3D8E6721, float f0x3DD7110A], [3 x float] [float f0x3D8C5A2A, float f0x3DF95CB1, float f0x3E61EBED], [3 x float] [float f0x3CB2FAAD, float f0x3CF50C4D, float 5.162080e-02], [3 x float] [float f0x3D153C26, float f0x3D497073, float f0x3DFC78C3], [3 x float] [float f0x3D1F95B4, float 4.766350e-02, float f0x3DB07AC4], [3 x float] [float f0x3D29D5A6, float f0x3D8CE761, float f0x3E2D6BB3], [3 x float] [float f0x3D096D42, float f0x3D2B2319, float f0x3D96F862], [3 x float] [float f0x3D6DA8F8, float f0x3DB23D87, float f0x3DE7414A], [3 x float] [float f0x3D44B524, float f0x3D6942FD, float f0x3DCE5902], [3 x float] [float f0x3D754C66, float f0x3DAFB4E3, float f0x3E4E38E1], [3 x float] [float 2.993100e-02, float f0x3D21B8C3, float f0x3D8460B9], [3 x float] [float f0x3D1F2E74, float f0x3DA55D4D, float f0x3DEC95A3], [3 x float] [float 3.494440e-02, float 6.289110e-02, float 8.049820e-02], [3 x float] [float f0x3D8D11E5, float f0x3DCB3FF9, float f0x3E243E21], [3 x float] [float f0x3D153116, float f0x3D5ABBAF, float 6.701520e-02], [3 x float] [float f0x3D6EFFA6, float f0x3DA0D397, float f0x3E11260D], [3 x float] [float f0x3D47420A, float f0x3D94D5F1, float f0x3DC23710], [3 x float] [float f0x3D6FD5A6, float f0x3E0B8F8A, float f0x3E4B6837], [3 x float] [float f0x3CD5B849, float f0x3D18F28B, float f0x3D647F25], [3 x float] [float f0x3D3BCDAC, float f0x3D6595FF, float f0x3DF1842B], [3 x float] [float f0x3D2FA314, float f0x3D52D64F, float 9.753090e-02], [3 x float] [float f0x3D829536, float f0x3DB2E755, float f0x3E2C5FFD], [3 x float] [float f0x3D1A4CE6, float f0x3D3BAF6F, float f0x3DA114BA], [3 x float] [float f0x3D8A47A4, float f0x3DB80DA7, float f0x3DF4917C], [3 x float] [float f0x3D5FCB7E, float f0x3D888FD5, float f0x3DB70D96], [3 x float] [float f0x3D9E5400, float f0x3DF95A61, float f0x3E4C5E7F], [3 x float] [float f0x3D01474B, float f0x3D390469, float f0x3D80284B], [3 x float] [float f0x3D1B263E, float f0x3DA48DD5, float f0x3E0E4BF9], [3 x float] [float f0x3D503376, float f0x3D7D6FA7, float f0x3DAA3866], [3 x float] [float f0x3DB79088, float f0x3E03D807, float f0x3E28D957], [3 x float] [float f0x3D41F270, float f0x3D6BD113, float f0x3D9CB9E8], [3 x float] [float f0x3D92D222, float f0x3DCABB0B, float f0x3E053343], [3 x float] [float f0x3D80D60B, float f0x3DA1F395, float f0x3DD74478], [3 x float] [float f0x3DB45B6A, float f0x3E292BCE, float f0x3E5A54D1]], align 16
@evrc_lspq_half_codebook2 = internal constant [128 x [3 x float]] [[3 x float] [float f0x3DC7DE11, float f0x3DFD5735, float f0x3E2D8126], [3 x float] [float f0x3DC2770D, float f0x3E4DE861, float f0x3E684CBE], [3 x float] [float f0x3DB86BF5, float f0x3E18BEAD, float f0x3E67F836], [3 x float] [float f0x3E2E63D5, float f0x3E49F4CB, float f0x3E7FF967], [3 x float] [float f0x3DDEC4B7, float f0x3E1B9EA9, float f0x3E33538A], [3 x float] [float f0x3E0567D7, float f0x3E5A58BF, float f0x3E6B286A], [3 x float] [float f0x3DFFD501, float f0x3E3FD817, float 2.047120e-01], [3 x float] [float f0x3E4D7C7D, float f0x3E6A756D, float f0x3E89F186], [3 x float] [float f0x3DB7FCC1, float f0x3E00573B, float f0x3E5797A6], [3 x float] [float f0x3DC51841, float f0x3E542887, float f0x3E822328], [3 x float] [float f0x3DD8766D, float f0x3E372623, float f0x3E4CEC86], [3 x float] [float f0x3E1FCB4D, float f0x3E60D7EF, float f0x3E95085C], [3 x float] [float f0x3E0CB08F, float f0x3E23D54B, float f0x3E475F0E], [3 x float] [float f0x3DDBAC71, float f0x3E737F79, float f0x3E8A9E8A], [3 x float] [float f0x3E12686B, float f0x3E4E6341, float f0x3E5FB652], [3 x float] [float f0x3E5B69B9, float f0x3E8B340A, float f0x3E9A36EA], [3 x float] [float f0x3DE2C5FF, float f0x3E08E591, float f0x3E1E981E], [3 x float] [float f0x3DDA7493, float f0x3E34EB4B, float f0x3E868D94], [3 x float] [float f0x3DBBAB49, float f0x3E32C877, float f0x3E6097DE], [3 x float] [float f0x3E3C749F, float f0x3E696F69, float f0x3E7DB560], [3 x float] [float f0x3DE273C3, float f0x3E22010F, float f0x3E48B7A6], [3 x float] [float f0x3E08BF99, float f0x3E6DD819, float f0x3E80EF9F], [3 x float] [float f0x3E1FAA19, float f0x3E363641, float f0x3E5F54BA], [3 x float] [float f0x3E44DFD3, float f0x3E7F8033, float f0x3E946F48], [3 x float] [float f0x3DE8E037, float f0x3E0D2E6F, float f0x3E4FCCDA], [3 x float] [float f0x3DD209AF, float f0x3E3D4179, float f0x3E95969A], [3 x float] [float f0x3E0BDFB9, float f0x3E227EF5, float f0x3E773172], [3 x float] [float f0x3E30F61B, float f0x3E7F4965, float f0x3E99D5B6], [3 x float] [float f0x3E0C27F5, float f0x3E210619, float f0x3E57F99E], [3 x float] [float f0x3E0411F9, float f0x3E7B0D49, float f0x3E8909E4], [3 x float] [float f0x3E2AD0D5, float f0x3E4188B3, float f0x3E6CE5F2], [3 x float] [float f0x3E6DD28B, float f0x3E86C1A2, float f0x3EA22DB4], [3 x float] [float f0x3DBD599F, float f0x3DF5B6BD, float f0x3E43DA42], [3 x float] [float f0x3DE7993F, float f0x3E5576F1, float f0x3E6ADF7A], [3 x float] [float f0x3DCE4467, float f0x3E100BD1, float f0x3E8420D4], [3 x float] [float f0x3E2B04C5, float f0x3E5F570F, float f0x3E867286], [3 x float] [float f0x3E007FBA, float f0x3E269769, float f0x3E3CD5C6], [3 x float] [float f0x3E1C1077, float f0x3E541A57, float f0x3E7D8640], [3 x float] [float f0x3E0CBD63, float f0x3E3896B3, float f0x3E5EEC72], [3 x float] [float f0x3E54D78D, float f0x3E7F30C7, float f0x3E8A272C], [3 x float] [float f0x3DBF8A6B, float f0x3E18C731, float f0x3E51904E], [3 x float] [float f0x3DE55EC7, float f0x3E66A37F, float f0x3E7CEE5E], [3 x float] [float f0x3DDFE08D, float f0x3E46769F, float f0x3E5AEEF6], [3 x float] [float f0x3E335249, float f0x3E814A56, float f0x3E8CD7A6], [3 x float] [float f0x3E0C346D, float f0x3E35B2FB, float f0x3E4AAE76], [3 x float] [float f0x3E0C183F, float f0x3E731FD9, float f0x3E91C928], [3 x float] [float f0x3E249E37, float f0x3E4DA735, float f0x3E5F518A], [3 x float] [float f0x3E6F51BD, float f0x3E8861FC, float f0x3E956714], [3 x float] [float f0x3DF40FF9, float f0x3E0F0E59, float f0x3E403A86], [3 x float] [float f0x3E0631F5, float f0x3E46586B, float 2.604270e-01], [3 x float] [float f0x3DDDBB1D, float f0x3E2928D3, float f0x3E754586], [3 x float] [float f0x3E50125B, float f0x3E675D65, float f0x3E7F6390], [3 x float] [float f0x3DFDA15D, float f0x3E154B2F, float f0x3E5CCF96], [3 x float] [float f0x3E2F55F5, float f0x3E73C491, float f0x3E841562], [3 x float] [float f0x3E2AEE15, float f0x3E412195, float f0x3E5830F2], [3 x float] [float f0x3E57ACF7, float f0x3E865EE4, float f0x3E90F626], [3 x float] [float f0x3DD892D5, float f0x3E0B8EAF, float f0x3E6154D6], [3 x float] [float f0x3DC74261, float f0x3E6F1329, float f0x3E979C40], [3 x float] [float f0x3E098583, float f0x3E469C41, float f0x3E74E36E], [3 x float] [float f0x3E282BBB, float f0x3E8A4652, float f0x3E9699D8], [3 x float] [float f0x3E122FBF, float f0x3E28FE81, float f0x3E657A92], [3 x float] [float f0x3E15EDB1, float f0x3E7DE498, float f0x3E99F66A], [3 x float] [float f0x3E32F935, float f0x3E609D17, float f0x3E73E0FE], [3 x float] [float f0x3E71FB8B, float f0x3E94D2A8, float f0x3EA7F10E], [3 x float] [float f0x3DE9A0E7, float f0x3E0843DF, float f0x3E31567E], [3 x float] [float f0x3DE89A73, float f0x3E42DFE9, float f0x3E777B46], [3 x float] [float f0x3DAFF501, float f0x3E27DAB5, float f0x3E73A51A], [3 x float] [float f0x3E458C05, float f0x3E5C3E8F, float f0x3E74DE01], [3 x float] [float f0x3E0C963B, float f0x3E233FDD, float f0x3E38091A], [3 x float] [float f0x3E0FCE4B, float f0x3E636C27, float f0x3E76BE6A], [3 x float] [float f0x3E0FC1A7, float f0x3E4226CF, float f0x3E52922A], [3 x float] [float f0x3E58C6B5, float f0x3E724199, float f0x3E8FFFDC], [3 x float] [float f0x3DB8EFC3, float f0x3E02358D, float f0x3E6F2C6E], [3 x float] [float f0x3DE18593, float f0x3E565A2F, float f0x3E8BB132], [3 x float] [float f0x3DEF05DF, float f0x3E361F5B, float f0x3E6427FA], [3 x float] [float f0x3E3A0D59, float f0x3E6DD6EB, float f0x3E8CCBA6], [3 x float] [float f0x3E16121D, float f0x3E2D8AC7, float f0x3E42CFD6], [3 x float] [float f0x3DDFAB7B, float f0x3E86CE34, float f0x3E93B510], [3 x float] [float f0x3E196923, float f0x3E586A39, float f0x3E6A649E], [3 x float] [float f0x3E4A6395, float f0x3E910384, float f0x3EA13840], [3 x float] [float f0x3DFEF78D, float f0x3E159AB5, float f0x3E2A1CBA], [3 x float] [float f0x3E0A1D9D, float f0x3E3B6C3B, float f0x3E941D98], [3 x float] [float f0x3DBF15C1, float f0x3E3C6097, float 2.385430e-01], [3 x float] [float f0x3E4578F7, float f0x3E7556A5, float f0x3E844FD4], [3 x float] [float f0x3DFD892D, float f0x3E2987AB, float f0x3E556902], [3 x float] [float f0x3E1AC595, float f0x3E7175D9, float f0x3E84C06E], [3 x float] [float f0x3E1A4605, float f0x3E429D21, float f0x3E69D7E2], [3 x float] [float f0x3E4AEFF3, float f0x3E837A88, float f0x3E9E320E], [3 x float] [float f0x3E0392E4, float f0x3E18A97B, float f0x3E4B2336], [3 x float] [float f0x3DBC89BB, float f0x3E595329, float f0x3E95FD64], [3 x float] [float f0x3E111951, float f0x3E307E45, float f0x3E84541A], [3 x float] [float f0x3E49747F, float f0x3E6B3907, float f0x3E977080], [3 x float] [float f0x3E16977B, float f0x3E2CF8DD, float f0x3E545722], [3 x float] [float f0x3E0B94D1, float f0x3E854F9E, float f0x3E90B1EA], [3 x float] [float f0x3E3962D5, float f0x3E4EAB83, float f0x3E7499B2], [3 x float] [float f0x3E7B36CF, float f0x3E8F7428, float f0x3E9FB87A], [3 x float] [float f0x3DD54309, float f0x3E083BCF, float f0x3E426406], [3 x float] [float f0x3DFC83BD, float f0x3E56A6E9, float f0x3E7DC2BF], [3 x float] [float f0x3DFE0917, float f0x3E23A9C9, float f0x3E8488C8], [3 x float] [float f0x3E3F89BD, float f0x3E59967B, float f0x3E84EE1C], [3 x float] [float f0x3DFE7991, float f0x3E31F07D, float f0x3E457A7A], [3 x float] [float f0x3E22BB5B, float f0x3E66CC97, float f0x3E791FA4], [3 x float] [float f0x3E1D1A6F, float f0x3E446923, float f0x3E564582], [3 x float] [float f0x3E689B2D, float f0x3E809AD1, float f0x3E8B9246], [3 x float] [float f0x3DE11ED1, float f0x3E20DEE5, float f0x3E614E3A], [3 x float] [float f0x3E07F819, float f0x3E60C0CF, float f0x3E88B804], [3 x float] [float f0x3E01E6EF, float f0x3E4B9BBF, float f0x3E5F28A6], [3 x float] [float f0x3E44024D, float f0x3E813DC0, float f0x3E8B9924], [3 x float] [float f0x3E1F0119, float f0x3E37E21F, float f0x3E4D979A], [3 x float] [float f0x3DF0BCDF, float f0x3E7DD199, float f0x3E9DD6CA], [3 x float] [float f0x3E29AF17, float f0x3E57633D, float f0x3E6AB33A], [3 x float] [float f0x3E671C91, float f0x3E91A1E2, float f0x3E9FCC5E], [3 x float] [float f0x3E049C7B, float f0x3E17FB6D, float f0x3E388136], [3 x float] [float f0x3E1E7771, float f0x3E4A7E93, float f0x3E88D846], [3 x float] [float f0x3E03AD29, float f0x3E34681B, float f0x3E75A9E2], [3 x float] [float f0x3E5C15C3, float f0x3E735671, float 2.587940e-01], [3 x float] [float f0x3E0366ED, float f0x3E2329A3, float f0x3E6810CE], [3 x float] [float f0x3E1F7C49, float f0x3E7DAFB1, float f0x3E8C25EC], [3 x float] [float f0x3E33F5A1, float f0x3E4AB405, float f0x3E605FEE], [3 x float] [float f0x3E5FDF97, float f0x3E7BB567, float f0x3E99D878], [3 x float] [float f0x3DF1116D, float f0x3E150153, float f0x3E73C1EE], [3 x float] [float f0x3DF1AD99, float f0x3E652569, float f0x3E969E1E], [3 x float] [float f0x3E1AFB49, float f0x3E40AC71, float f0x3E7EB68F], [3 x float] [float f0x3E41DB0F, float f0x3E8A0676, float 2.937860e-01], [3 x float] [float f0x3E197E3B, float f0x3E32B9E5, float 2.374300e-01], [3 x float] [float f0x3E0F2151, float f0x3E8B1D7E, float f0x3E9D9D24], [3 x float] [float f0x3E3C5C45, float f0x3E54B3CF, float f0x3E6829DA], [3 x float] [float f0x3E8254A9, float f0x3E97E152, float f0x3EA64C60]], align 16
@evrc_lspq_half_codebook3 = internal constant [256 x [4 x float]] [[4 x float] [float f0x3E729727, float f0x3E83201C, float f0x3EA24806, float f0x3ED0A688], [4 x float] [float f0x3E985EA0, float f0x3EA59F7E, float f0x3EB2017A, float f0x3EBFC52E], [4 x float] [float f0x3E8C252E, float f0x3E98BA74, float f0x3EA8EBCA, float f0x3EC4671A], [4 x float] [float f0x3E9D9E76, float f0x3EAA6984, float f0x3EC7579E, float 4.055760e-01], [4 x float] [float f0x3E6F6A37, float f0x3E854596, float f0x3EBC158E, float f0x3ECF0BFA], [4 x float] [float f0x3E9853B6, float f0x3EA1766A, float f0x3EC53072, float f0x3ECDECC8], [4 x float] [float f0x3E923CA0, float f0x3E9F2AB8, float f0x3EBAE436, float f0x3EC506B4], [4 x float] [float f0x3EABA8B8, float f0x3EB5DFB0, float f0x3EC38B2A, float f0x3ECC208A], [4 x float] [float f0x3E4D126D, float f0x3E8041D6, float f0x3EBDA4D6, float f0x3EDD30C4], [4 x float] [float f0x3E9DAFD4, float f0x3EAAE39A, float f0x3EB765DE, float f0x3EC1BBEA], [4 x float] [float f0x3E852A02, float f0x3EA6AA98, float f0x3EB6B81A, float f0x3EC4FC5A], [4 x float] [float f0x3E9A4B62, float f0x3EAEC7F8, float f0x3ECCF3B2, float f0x3ED5AD38], [4 x float] [float f0x3E88BED6, float f0x3E9868C6, float f0x3EBD4996, float f0x3EC73D42], [4 x float] [float f0x3E8B9B62, float f0x3EB30C6A, float f0x3EC8AA6E, float f0x3ED01178], [4 x float] [float f0x3E817266, float f0x3EB30390, float 3.845510e-01, float 4.059310e-01], [4 x float] [float f0x3EAF9424, float f0x3EBFA0D8, float f0x3ECF9986, float f0x3ED7385E], [4 x float] [float f0x3E813BB8, float f0x3E8F8D6C, float f0x3EA49356, float f0x3EC6E134], [4 x float] [float f0x3E980C7A, float f0x3EA26494, float f0x3EBB0E2E, float f0x3ECE3386], [4 x float] [float f0x3E9055E0, float f0x3E9A5B7A, float f0x3EAB2E0A, float f0x3ED0B556], [4 x float] [float f0x3EA75BE4, float f0x3EB1C146, float f0x3EC00252, float f0x3ECF8CF8], [4 x float] [float f0x3E720B47, float f0x3EA20490, float f0x3EB289BA, float f0x3EC3997E], [4 x float] [float f0x3E935CD4, float 3.136270e-01, float f0x3ECF6D2A, float f0x3ED8C538], [4 x float] [float f0x3E8E14CE, float f0x3E9A8B46, float f0x3EBE97AA, float f0x3ED6A310], [4 x float] [float f0x3EA8713A, float f0x3EB94B1A, float f0x3ECDD4FA, float f0x3ED6A54A], [4 x float] [float f0x3E665C09, float f0x3E8C9D24, float f0x3EC10842, float f0x3ECA1998], [4 x float] [float f0x3E9A22A2, float f0x3EAE5434, float f0x3EBFF156, float f0x3ECE18B2], [4 x float] [float f0x3E851158, float f0x3EA921AA, float f0x3EB7096E, float f0x3ED13B9E], [4 x float] [float f0x3E9A17AC, float f0x3EB6807E, float f0x3ECF3F42, float f0x3ED85318], [4 x float] [float f0x3E624879, float f0x3EA2095C, float f0x3ECDB166, float f0x3ED76AAE], [4 x float] [float 2.797550e-01, float f0x3EA95B7C, float f0x3ED282A2, float f0x3EDD8928], [4 x float] [float f0x3E874B5E, float f0x3EA21ACA, float f0x3EC48B7E, float f0x3EDF9504], [4 x float] [float f0x3EB052BA, float f0x3EC54EA6, float f0x3ED992FA, float f0x3EE2142E], [4 x float] [float f0x3E60C18B, float f0x3E72228A, float 3.424660e-01, float 4.249900e-01], [4 x float] [float f0x3E953AEA, float f0x3EA50226, float f0x3EBEE690, float f0x3EC88480], [4 x float] [float f0x3E8CB198, float f0x3EA2110C, float f0x3EB0D74C, float f0x3EBFC5B4], [4 x float] [float f0x3E9F04CC, float f0x3EABA7D8, float f0x3EC669F8, float f0x3ED89D72], [4 x float] [float f0x3E64918F, float f0x3E98D4AE, float f0x3EBCA25C, float f0x3EC7CA18], [4 x float] [float f0x3E940224, float f0x3EA72CAE, float f0x3EC0AB88, float f0x3ED1B106], [4 x float] [float f0x3E8714BE, float f0x3E9E3244, float f0x3EC34DD0, float f0x3ECF2FB2], [4 x float] [float f0x3EB1B3A2, float f0x3EBAC6C8, float f0x3EC605DC, float f0x3ECF1C28], [4 x float] [float f0x3E5FB211, float f0x3E8D1D4A, float f0x3EB9B544, float 4.182790e-01], [4 x float] [float f0x3EA14D4A, float f0x3EAE7F12, float f0x3EC1DB6C, float f0x3ECAEA08], [4 x float] [float f0x3E8F3878, float f0x3EA99AE0, float f0x3EB859F4, float f0x3EC32970], [4 x float] [float f0x3EA31FDC, float f0x3EAD1424, float f0x3ED169DC, float f0x3EDC5056], [4 x float] [float f0x3E8744D2, float f0x3E94D306, float 3.685950e-01, float f0x3EDD1C54], [4 x float] [float f0x3E8B9834, float f0x3EBA1E9E, float f0x3ECB0484, float f0x3ED71632], [4 x float] [float f0x3E67FA5B, float f0x3EB33A6C, float f0x3EC9A6E8, float 4.125970e-01], [4 x float] [float f0x3EB4C37A, float f0x3EBD6768, float f0x3ED1BE70, float f0x3EDA4F70], [4 x float] [float f0x3E85860E, float f0x3E920220, float f0x3EB11F7C, float f0x3ECB8536], [4 x float] [float f0x3E9A2B80, float f0x3EA80A14, float f0x3EB64E8C, float f0x3ED254E0], [4 x float] [float f0x3E93820E, float f0x3E9E7E9A, float f0x3EB000E4, float f0x3ED988F0], [4 x float] [float f0x3E9EF876, float f0x3EB3ED92, float f0x3EC99554, float f0x3ED4C30A], [4 x float] [float f0x3E63A4C7, float f0x3EA75218, float f0x3EC186D0, float f0x3ECC19E4], [4 x float] [float f0x3E9B17BE, float f0x3EA543AC, float f0x3ECC0FE8, float f0x3ED9D9C6], [4 x float] [float f0x3E8DE4E0, float f0x3EA3D612, float f0x3EC1467C, float f0x3EDBBD26], [4 x float] [float f0x3EAD6E40, float f0x3EB76152, float f0x3ED11804, float f0x3ED9DA88], [4 x float] [float f0x3E5FF9C5, float f0x3E919AE8, float f0x3EC9C168, float f0x3ED52B6E], [4 x float] [float f0x3E9A1D74, float f0x3EB02D0C, float f0x3EBCEF5C, float f0x3ED486D8], [4 x float] [float f0x3E8FC2E2, float f0x3EAA8602, float f0x3EC0E240, float f0x3ECB88A4], [4 x float] [float f0x3EA0F842, float f0x3EB9B10A, float f0x3ED8EB24, float f0x3EE2409E], [4 x float] [float f0x3E886C9C, float f0x3E9DF584, float f0x3ECB78F4, float f0x3ED5BC08], [4 x float] [float f0x3E96A45A, float f0x3EAF0E18, float f0x3ED350F0, float f0x3EDEA9C2], [4 x float] [float f0x3E931914, float f0x3EAA34DE, float f0x3EC1F980, float f0x3EE06036], [4 x float] [float f0x3EB6DBEC, float f0x3ECBD9EE, float f0x3EDC18AC, float f0x3EE373F0], [4 x float] [float f0x3E6B2EF7, float f0x3E808583, float f0x3EAE9DA8, float f0x3ECF0A6A], [4 x float] [float f0x3E96C51C, float f0x3EAB7DDC, float f0x3EB887A0, float f0x3EC47214], [4 x float] [float f0x3E9395A2, float f0x3E9F9A1E, float f0x3EA9D1F8, float f0x3EBAEF00], [4 x float] [float f0x3EA656E2, float f0x3EB0F9EA, float f0x3EC6D018, float f0x3ECFD952], [4 x float] [float f0x3E806CB0, float f0x3E8E24AC, float f0x3EBDD970, float f0x3EC7ECE4], [4 x float] [float f0x3E9648B2, float f0x3EA81974, float f0x3EC8C2F0, float f0x3ED1A546], [4 x float] [float f0x3E91352C, float f0x3E9B96E6, float f0x3EC1CB54, float f0x3ECB6C4A], [4 x float] [float f0x3EAB0744, float f0x3EB4A71A, float f0x3ECB675C, float f0x3ED42204], [4 x float] [float f0x3E6337A1, float f0x3E80F615, float f0x3EBE528C, float 4.317910e-01], [4 x float] [float f0x3EA05BF0, float f0x3EAEAE8C, float f0x3EBB2348, float f0x3EC6F248], [4 x float] [float f0x3E8AEBD6, float f0x3EADA6DE, float f0x3EB9A8DC, float f0x3ECA9DE8], [4 x float] [float f0x3E9D7736, float f0x3EB20FEA, float f0x3ECD5660, float f0x3EDD93B2], [4 x float] [float f0x3E84CE6E, float f0x3E9311A0, float f0x3EC60CEC, float f0x3ECFE4D4], [4 x float] [float f0x3E922B1E, float 3.440950e-01, float f0x3ECDD990, float f0x3ED6BD66], [4 x float] [float f0x3E881480, float f0x3EAE1F8A, float f0x3EBD2300, float f0x3EDAA3E6], [4 x float] [float f0x3EB51D88, float f0x3EC4D85E, float f0x3ED2D09C, float f0x3EDA3480], [4 x float] [float f0x3E79B823, float f0x3E896532, float f0x3EAF3518, float f0x3ECC0296], [4 x float] [float f0x3E961722, float f0x3EAB64E6, float f0x3EB9311C, float f0x3ECBFD44], [4 x float] [float f0x3E952AE8, float f0x3EA055E0, float f0x3EAC4D20, float f0x3EC686FC], [4 x float] [float f0x3E9C7F0C, float f0x3EB9CEA0, float f0x3EC6BC0C, float f0x3ECFA35A], [4 x float] [float f0x3E5EB64F, float f0x3E9F9A3A, float f0x3EC08114, float f0x3EDBA598], [4 x float] [float f0x3E951184, float f0x3EA8A49E, float f0x3ECECC08, float f0x3ED83C0E], [4 x float] [float f0x3E94AA56, float f0x3E9E7AD8, float f0x3EC20B88, float f0x3ED3CEF6], [4 x float] [float f0x3EA8BCBA, float f0x3EC13B30, float f0x3ED02BE4, float f0x3ED9777C], [4 x float] [float f0x3E7C606D, float f0x3E8B0E46, float f0x3EBB90B0, float f0x3EDC8BC2], [4 x float] [float f0x3EA0D2BA, float f0x3EAC8CD2, float f0x3EC2C510, float f0x3ED27BA0], [4 x float] [float f0x3E8D9A60, float f0x3EA79694, float f0x3EB7BA70, float f0x3EDB9F44], [4 x float] [float f0x3EA2654C, float f0x3EB7CB3C, float f0x3ECF3D78, float f0x3EE17902], [4 x float] [float f0x3E789ABB, float f0x3EAB7F32, float f0x3ECB3C2C, float f0x3ED39E78], [4 x float] [float f0x3E93EA1C, float f0x3EA6C0FE, float f0x3ED8810C, float f0x3EE33456], [4 x float] [float f0x3E8E1F66, float f0x3EA6A530, float f0x3EC73DF8, float f0x3EE1D4B2], [4 x float] [float f0x3EB7DF52, float f0x3EC80910, float f0x3ED78E90, float f0x3EDF1530], [4 x float] [float f0x3E6174DF, float f0x3E7DAA1F, float f0x3EB5718A, float f0x3ED9CDC8], [4 x float] [float f0x3E9CB22A, float f0x3EA7E5C0, float f0x3EBBE67A, float f0x3EC9508A], [4 x float] [float f0x3E8AA708, float f0x3EA2371A, float f0x3EB0F8DE, float f0x3ED2CCA6], [4 x float] [float f0x3EA57904, float f0x3EB0E08A, float f0x3EC79116, float f0x3ED7D820], [4 x float] [float f0x3E7C0B1B, float 3.123920e-01, float f0x3EBE8F82, float f0x3ECAABE6], [4 x float] [float f0x3E9B931C, float f0x3EA611D4, float f0x3EC580AA, float 4.141550e-01], [4 x float] [float f0x3E8FE91E, float f0x3EA320A6, float f0x3EC57382, float f0x3ECE2F2C], [4 x float] [float f0x3EB50032, float f0x3EBED2DE, float f0x3ECAE332, float f0x3ED37E8E], [4 x float] [float f0x3E563E11, float f0x3E972C9C, float f0x3EC2B88E, float f0x3EDCD080], [4 x float] [float f0x3EA68F82, float f0x3EB18750, float f0x3EBDCF8A, float f0x3EC83722], [4 x float] [float f0x3E92A290, float f0x3EAFE71A, float f0x3EBD4B1A, float f0x3EC79CC2], [4 x float] [float f0x3EA7D4B4, float f0x3EB1DA32, float f0x3ECF991E, float f0x3ED960BC], [4 x float] [float f0x3E81906C, float f0x3E9AF5C4, float f0x3EC3AB26, float f0x3EDC1BA2], [4 x float] [float f0x3E96BE04, float f0x3EBDD258, float f0x3ECA778A, float f0x3ED6CAA4], [4 x float] [float f0x3E86974E, float f0x3EB0ACEA, float f0x3ECEEB8E, float f0x3ED8038C], [4 x float] [float f0x3EBAE99A, float f0x3EC3CE8A, float f0x3ED3AC6A, float f0x3EDCCBB6], [4 x float] [float f0x3E7EC26A, float f0x3E90932A, float f0x3EBB4682, float f0x3ED26C1C], [4 x float] [float f0x3E9D54F4, float f0x3EA7D932, float f0x3EC15D4E, float f0x3EDF585A], [4 x float] [float f0x3E98DA8A, float f0x3EA42944, float f0x3EB37DDE, float f0x3EDAF10A], [4 x float] [float 3.162580e-01, float f0x3EB9CE88, float f0x3EC6C572, float f0x3ED9E968], [4 x float] [float f0x3E74D0D4, float f0x3EA9A186, float f0x3EBD9A4E, float f0x3ED4FD6A], [4 x float] [float f0x3E9B8342, float f0x3EAA658E, float f0x3ED20A0A, float f0x3EDB0230], [4 x float] [float f0x3E978DA4, float f0x3EA355E8, float f0x3EC31A9E, float f0x3EDA99D8], [4 x float] [float f0x3EAA3E9C, float 3.625170e-01, float f0x3ED8BCC2, float f0x3EE1CA1E], [4 x float] [float f0x3E70C594, float f0x3E8CA98E, float f0x3ED2FAEA, float f0x3EDEF714], [4 x float] [float f0x3E989D20, float f0x3EB5EEF6, float f0x3EC217CA, float f0x3ED4A4AA], [4 x float] [float f0x3E911DB6, float f0x3EB0C690, float f0x3EBDA1F6, float f0x3ED1DE86], [4 x float] [float f0x3EA5ADFE, float f0x3EBB1764, float f0x3ED35C3E, float f0x3EDCAF1C], [4 x float] [float f0x3E8DA1F8, float f0x3E99DC3E, float f0x3ECDF1FE, float f0x3EDA7066], [4 x float] [float f0x3E96CA66, float f0x3EB90F16, float f0x3ED6DA6E, float f0x3EDFBE5C], [4 x float] [float f0x3E94E4B0, float f0x3EAEF1E8, float f0x3EC91A5E, float f0x3EE31128], [4 x float] [float f0x3EB80228, float f0x3ECED724, float f0x3EE1B646, float f0x3EE7F35E], [4 x float] [float f0x3E64A791, float f0x3E74EEE0, float f0x3EA5C4EC, float f0x3ED7E7AE], [4 x float] [float f0x3E96ED26, float f0x3EA33996, float f0x3EB4D8F8, float f0x3EC8A7F4], [4 x float] [float f0x3E849FDC, float f0x3E9ED7D8, float f0x3EAFE848, float f0x3ECA45DC], [4 x float] [float f0x3EA208F8, float f0x3EAD55B0, float f0x3EC9626C, float f0x3ED3108A], [4 x float] [float f0x3E75DEED, float f0x3E91BB2E, float 3.602810e-01, float f0x3EC28BEC], [4 x float] [float f0x3E980478, float f0x3EA1B052, float f0x3ECA38C4, float f0x3ED48B9A], [4 x float] [float f0x3E92246A, float f0x3E9C1EAC, float f0x3EB954C0, float f0x3ECFC0BA], [4 x float] [float f0x3EACC09E, float f0x3EB69DBC, float f0x3EC5330C, float f0x3ED28710], [4 x float] [float f0x3E65642B, float f0x3E852DF2, float f0x3ECA1FA0, float f0x3ED6D3F6], [4 x float] [float f0x3E99EE86, float f0x3EAEEB86, float f0x3EBD8DF0, float f0x3EC76F2C], [4 x float] [float f0x3E882A14, float f0x3EA66B88, float f0x3EBFA97C, float f0x3EC8E198], [4 x float] [float f0x3EA1CE98, float f0x3EAE54E0, float f0x3ECE0184, float f0x3ED749B6], [4 x float] [float f0x3E8A28AA, float f0x3E96D0E2, float f0x3EB984DC, float f0x3ED015B0], [4 x float] [float f0x3E8ECBA0, float f0x3EB83BC6, float f0x3EC398E4, float f0x3ED23736], [4 x float] [float f0x3E858272, float f0x3EA98470, float f0x3EC7143C, float f0x3ECF9BF2], [4 x float] [float f0x3EAFCE7E, float f0x3EC3EA50, float f0x3ED455BC, float f0x3EDCF9C0], [4 x float] [float f0x3E7DF337, float f0x3E8BFA30, float f0x3EA98DDC, float f0x3ED67FBA], [4 x float] [float f0x3E9B6EC8, float f0x3EA680F0, float f0x3EBDF1AC, float f0x3ED42EEC], [4 x float] [float f0x3E8DC56E, float f0x3E99DB12, float f0x3EB556D8, float f0x3EDB8C98], [4 x float] [float f0x3EA5B62E, float f0x3EB839EE, float f0x3EC76FE0, float f0x3ED18E4A], [4 x float] [float f0x3E74A97D, float f0x3E9EADBC, float f0x3EB5346C, float f0x3ED55118], [4 x float] [float f0x3E8FF5BE, float f0x3E9D734C, float f0x3ED520AC, float f0x3EE08632], [4 x float] [float f0x3E93E548, float f0x3E9E9F86, float f0x3EBC5634, float f0x3EDF400E], [4 x float] [float f0x3EAD45D8, float f0x3EBDC3CA, float f0x3ED4B5DC, float f0x3EDCF218], [4 x float] [float f0x3E770CF7, float f0x3E8C17A4, float f0x3EC773B4, float f0x3ED33862], [4 x float] [float f0x3E989994, float f0x3EAE247C, float f0x3EC5B9E0, float f0x3ED3E10C], [4 x float] [float f0x3E909B82, float f0x3EA9C726, float f0x3EB74418, float f0x3ED300C4], [4 x float] [float f0x3E9B8E52, float f0x3EBDBDCA, float f0x3ECFC1BC, float f0x3EDCEFCE], [4 x float] [float f0x3E74D0CB, float f0x3E9F8F14, float f0x3ED3EF64, float f0x3EDEE02C], [4 x float] [float f0x3E88C38A, float f0x3EAF127C, float f0x3ED5B6B0, float f0x3EE0DCD6], [4 x float] [float f0x3E893054, float f0x3EAAAC0E, float f0x3EC5E0E4, float f0x3EDFFB16], [4 x float] [float f0x3EAE5774, float f0x3EC8212A, float f0x3EDEF7E8, float f0x3EE5F0B0], [4 x float] [float f0x3E571C8D, float f0x3E6E1AE6, float f0x3EB93B6A, float f0x3EDCDAF0], [4 x float] [float f0x3E96CA00, float f0x3EAADC02, float f0x3EC3BA06, float f0x3ECC1A66], [4 x float] [float f0x3E8FA0FE, float f0x3EA6DD0C, float f0x3EB38802, float f0x3EC926C6], [4 x float] [float f0x3EA3D6FE, float f0x3EAFF620, float f0x3EC83A66, float f0x3EE00024], [4 x float] [float f0x3E61DFFD, float f0x3E9B36BA, float f0x3EC376C6, float f0x3ECF1912], [4 x float] [float f0x3E927EAE, float f0x3EA8D48A, float f0x3EC6B56A, float f0x3ED93700], [4 x float] [float f0x3E8A2428, float f0x3EA691F4, float f0x3EC2208A, float f0x3ED48D00], [4 x float] [float f0x3EAB72A0, float f0x3EBD0F70, float f0x3ECA1BC6, float f0x3ED2E776], [4 x float] [float f0x3E541497, float f0x3E8BA9C2, float f0x3EC1D376, float f0x3EDE8144], [4 x float] [float f0x3E9CE924, float f0x3EB1821A, float f0x3EC636FE, float f0x3ECE9F32], [4 x float] [float f0x3E8A50EA, float f0x3EB17CB4, float f0x3EC16176, float f0x3ECAF976], [4 x float] [float f0x3EA332AA, float f0x3EAE3210, float f0x3ED479C6, float f0x3EE2169C], [4 x float] [float f0x3E846648, float f0x3EA0F51E, float f0x3EBAEC42, float f0x3ED7DDF2], [4 x float] [float 2.827130e-01, float f0x3EB55176, float f0x3ED04102, float f0x3EDBC900], [4 x float] [float f0x3E8108FF, float f0x3EB7DCA0, float f0x3ECA4AEE, float f0x3ED6178C], [4 x float] [float f0x3EB5B644, float f0x3EBFF9D4, float 4.189660e-01, float f0x3EDF4E52], [4 x float] [float f0x3E879942, float f0x3E95FC78, float f0x3EA7CF0A, float f0x3ED14CFC], [4 x float] [float f0x3E9D9496, float f0x3EABD1F4, float f0x3EB9738A, float f0x3ED9CD46], [4 x float] [float f0x3E93B1DC, float f0x3EA1D4AE, float f0x3EB8D3A2, float f0x3ED6CF72], [4 x float] [float f0x3EA25EA8, float f0x3EB627C6, float f0x3ECFC62A, float f0x3ED912FC], [4 x float] [float f0x3E7D0514, float f0x3EAD2688, float f0x3EBE6462, float f0x3ECABCC6], [4 x float] [float f0x3E9DAFC8, float f0x3EAA5694, float f0x3ECD12D2, float f0x3EE06568], [4 x float] [float f0x3E8F18A2, float f0x3EA1E2CE, float f0x3ECB62BE, float f0x3EDE971C], [4 x float] [float f0x3EB0610E, float f0x3EBB786E, float f0x3ED26946, float f0x3EE22A0E], [4 x float] [float f0x3E71664B, float f0x3E96D424, float f0x3ECBD02A, float f0x3ED56B30], [4 x float] [float f0x3EA0C9A6, float f0x3EB45D00, float f0x3EC21E7E, float f0x3ED26A8A], [4 x float] [float f0x3E90E5B4, float f0x3EAD2032, float f0x3EC6FC12, float f0x3ECFF892], [4 x float] [float f0x3EA5B238, float f0x3EB3531A, float f0x3EDB2E8E, float f0x3EE4ACBC], [4 x float] [float f0x3E85C2D6, float f0x3EA66298, float f0x3ECCE8EA, float f0x3ED9C3C6], [4 x float] [float f0x3E9C4E40, float f0x3EAF3024, float f0x3ED954CE, float f0x3EE33DD0], [4 x float] [float f0x3E9322CA, float f0x3EAA3D86, float f0x3EC9E2C6, float f0x3EE29468], [4 x float] [float f0x3EBF86CE, float f0x3ECDD666, float f0x3EDCA352, float f0x3EE368F2], [4 x float] [float 2.345040e-01, float f0x3E832F16, float f0x3EAEB6DA, float f0x3ED89964], [4 x float] [float f0x3E9C6986, float 3.291570e-01, float f0x3EB49662, float f0x3EC8EDC6], [4 x float] [float f0x3E9009A4, float f0x3E9B4922, float f0x3EB2A65A, float f0x3EC94CC6], [4 x float] [float f0x3EA4CF38, float f0x3EB36A3E, float f0x3ECB6D32, float f0x3ED44140], [4 x float] [float f0x3E756FE0, float f0x3E95BC34, float f0x3EC20416, float f0x3ECB06B2], [4 x float] [float f0x3E9D5760, float f0x3EA88374, float f0x3ECC025E, float f0x3ED510BC], [4 x float] [float f0x3E920F82, float f0x3E9E17B2, float f0x3EC92C5A, float f0x3ED4312C], [4 x float] [float f0x3EB05B46, float f0x3EB97286, float f0x3ECB94D2, float f0x3ED5E27E], [4 x float] [float f0x3E6DA72F, float f0x3E891E20, float f0x3EC19322, float f0x3EDE7EC4], [4 x float] [float f0x3E9C06B6, float f0x3EB427B0, float f0x3EC07F8E, float f0x3ECA63EE], [4 x float] [float f0x3E8623AC, float f0x3EB14216, float f0x3EBE1AA2, float f0x3ED32B32], [4 x float] [float f0x3E9F4600, float f0x3EB3BBA2, float f0x3ED508CE, float f0x3EDE61D4], [4 x float] [float f0x3E8CCA3C, float f0x3E97E014, float f0x3EC66916, float f0x3ED18866], [4 x float] [float f0x3E94F5F8, float f0x3EB57B34, float f0x3EC96F42, float f0x3ED10240], [4 x float] [float f0x3E8B32CA, float f0x3EB0E6CA, float f0x3EC6354A, float f0x3ED85DCC], [4 x float] [float f0x3EB9FB5E, float f0x3EC38C9E, float f0x3ECEE826, float f0x3ED634AE], [4 x float] [float f0x3E7BAB53, float f0x3E8BBAC6, float f0x3EB256BA, float f0x3ED9AED0], [4 x float] [float 3.141390e-01, float f0x3EACFD9A, float f0x3EBAFADE, float f0x3ECF1096], [4 x float] [float f0x3E96911A, float f0x3EA24560, float f0x3EAFA3E2, float f0x3ECFF052], [4 x float] [float f0x3EA116DA, float f0x3EBEACF8, float f0x3ECD2366, float f0x3ED5FB08], [4 x float] [float f0x3E6FA16E, float f0x3EA0C58E, float f0x3EC4190A, float f0x3EDEA1EE], [4 x float] [float f0x3E96576A, float 3.205300e-01, float f0x3ED25946, float f0x3EDF6EEC], [4 x float] [float f0x3E943A1C, float f0x3E9FA808, float f0x3EC5CA9E, float f0x3EE0A6A0], [4 x float] [float f0x3EA71314, float f0x3EC2FFD8, float f0x3ED6E5BA, float f0x3EE0A9CE], [4 x float] [float f0x3E806A1B, float f0x3E90E7BE, float f0x3EC3B5EE, float f0x3EDE5548], [4 x float] [float f0x3EA35330, float f0x3EB090DA, float f0x3EBED13E, float f0x3ED89C3E], [4 x float] [float f0x3E93A68E, float f0x3EAC59C0, float f0x3EBD4EDE, float f0x3ED9A126], [4 x float] [float f0x3E9CBA26, float f0x3EC382C0, float f0x3ED61F1E, float f0x3EDDA0EC], [4 x float] [float f0x3E6F830A, float f0x3EB091BA, float f0x3ED308CE, float f0x3EDBC23A], [4 x float] [float f0x3E926C16, float f0x3EAF9116, float f0x3ED9A866, float f0x3EE37B40], [4 x float] [float f0x3E8F49A8, float f0x3EAD75CC, float f0x3EC8BF6A, float f0x3EE18E98], [4 x float] [float f0x3EBAA0F8, float f0x3EC3B014, float f0x3EDC12C2, float f0x3EE4424E], [4 x float] [float f0x3E700489, float f0x3E83C6F8, float f0x3EB8192C, float f0x3EDC3492], [4 x float] [float f0x3E9C2D24, float f0x3EA7B9CC, float f0x3EC1B144, float f0x3ECD534C], [4 x float] [float f0x3E8E1772, float f0x3EA2E1FA, float f0x3EBC4F88, float f0x3ECD970C], [4 x float] [float f0x3EAA83AA, float f0x3EB62E2A, float f0x3EC66CD0, float f0x3ED968EE], [4 x float] [float 2.450210e-01, float f0x3EA007F4, float f0x3EC84480, float f0x3ED1495C], [4 x float] [float f0x3E981822, float f0x3EAE34D8, float f0x3EC92CB8, float f0x3EDB98BE], [4 x float] [float f0x3E8E40F4, float f0x3EA668FE, float f0x3ECB7CC8, float f0x3ED4F396], [4 x float] [float f0x3EB2ED1C, float f0x3EBDA026, float f0x3ECA7CB0, float f0x3EDD2510], [4 x float] [float f0x3E6D0A8F, float f0x3E950104, float f0x3EC17D5C, float f0x3EDD5126], [4 x float] [float f0x3EA37920, float f0x3EB51460, float f0x3EC31030, float f0x3ECBB220], [4 x float] [float f0x3E945226, float f0x3EB35606, float f0x3EC2EF00, float f0x3ECBC2A4], [4 x float] [float f0x3EA87106, float f0x3EB43A0E, float f0x3ED33AB4, float f0x3EE00CD6], [4 x float] [float f0x3E8D73B0, float f0x3E9AC2C4, float f0x3EC37140, float f0x3EDEB6E4], [4 x float] [float f0x3E8F2B4E, float f0x3EBF5930, float f0x3ED322C4, float f0x3EDC7B0E], [4 x float] [float f0x3E81C340, float f0x3EBB5C7E, float f0x3ED472A0, float f0x3EDD9092], [4 x float] [float f0x3EC09120, float f0x3ECA500E, float f0x3ED56534, float f0x3EDDB544], [4 x float] [float f0x3E868FCC, float f0x3E939832, float f0x3EB1DE0C, float f0x3ED92E76], [4 x float] [float f0x3E9A96BE, float f0x3EAFF33A, float f0x3EC10A40, float f0x3EDE500C], [4 x float] [float f0x3E987DBC, float f0x3EA5A130, float f0x3EBA9EC0, float f0x3EDDFA60], [4 x float] [float f0x3EA9DE58, float f0x3EBA88CC, float f0x3ECBE694, float f0x3EDEC296], [4 x float] [float f0x3E7F06E4, float f0x3EA7DEAE, float 3.835870e-01, float f0x3EDF0178], [4 x float] [float f0x3E9BFB88, float f0x3EA7C486, float f0x3ED643A0, float f0x3EE1FC66], [4 x float] [float f0x3E980B42, float f0x3EA5D614, float f0x3EC7EADC, float f0x3EE13CAA], [4 x float] [float f0x3EB016C6, float f0x3EBBF498, float f0x3EDBEA78, float 4.452150e-01], [4 x float] [float f0x3E84D008, float f0x3E954CF2, float f0x3ECF09E8, float f0x3EDCE232], [4 x float] [float f0x3E9856D6, float f0x3EB713EA, float f0x3EC729F0, float f0x3EDC29E0], [4 x float] [float f0x3E91717C, float f0x3EB2FB70, float f0x3EC3180C, float f0x3EDC0350], [4 x float] [float f0x3EA6C448, float f0x3EBFEFBC, float f0x3EDD29C4, float f0x3EE5034E], [4 x float] [float f0x3E87D5CA, float f0x3EA12662, float f0x3ED55A28, float f0x3EDFE518], [4 x float] [float f0x3E99CDD8, float f0x3EB552CA, float f0x3EDB6958, float f0x3EEBB136], [4 x float] [float f0x3E989D92, float f0x3EB2D818, float f0x3ECD0510, float f0x3EE57C3E], [4 x float] [float f0x3EC04B86, float f0x3ED5541C, float f0x3EE25FC0, float f0x3EE7CC0C]], align 16
@evrc_lspq_full_codebook1 = internal constant [64 x [2 x float]] [[2 x float] [float f0x3C68ADF5, float f0x3C9ED3EC], [2 x float] [float f0x3CEEEF1E, float f0x3D857A6D], [2 x float] [float f0x3CA952B2, float f0x3D4BCD77], [2 x float] [float f0x3D21AD5F, float f0x3DC3C21E], [2 x float] [float f0x3CB9F7F6, float f0x3D22753B], [2 x float] [float f0x3D5CB02D, float f0x3D80AF85], [2 x float] [float f0x3CEDFF9E, float f0x3D6AE11A], [2 x float] [float f0x3D379DA1, float f0x3DEC444A], [2 x float] [float f0x3C9F03F4, float f0x3D0E1605], [2 x float] [float f0x3D333383, float f0x3D8A496B], [2 x float] [float f0x3D119C99, float f0x3D4A60C1], [2 x float] [float f0x3D8F3342, float f0x3DB19E70], [2 x float] [float f0x3CE3A3B1, float f0x3D3EC545], [2 x float] [float 5.791110e-02, float f0x3D8A2574], [2 x float] [float f0x3D426C2B, float f0x3D616426], [2 x float] [float f0x3DA19106, float f0x3DFAC36B], [2 x float] [float f0x3CB5A131, float f0x3CF7E9DC], [2 x float] [float f0x3D0AE8D4, float f0x3D92FC5C], [2 x float] [float f0x3D023F94, float f0x3D4C6389], [2 x float] [float 6.115560e-02, float f0x3DB2DD48], [2 x float] [float f0x3CDB242E, float f0x3D2280C5], [2 x float] [float 4.441010e-02, float f0x3DA95088], [2 x float] [float f0x3D1F67B3, float f0x3D67BF45], [2 x float] [float f0x3D77B9F1, float f0x3DD61778], [2 x float] [float f0x3CDC7E3C, float f0x3D124BDF], [2 x float] [float f0x3D2864C3, float f0x3D962F3E], [2 x float] [float f0x3D29069D, float f0x3D46B943], [2 x float] [float f0x3D930E7A, float f0x3DD9809E], [2 x float] [float f0x3D0A75D7, float f0x3D2DCB1F], [2 x float] [float f0x3D7268A4, float 7.974680e-02], [2 x float] [float f0x3D408E63, float f0x3D80BAD8], [2 x float] [float f0x3DC0EC8E, float f0x3E052CA8], [2 x float] [float f0x3C9F1FFA, float f0x3CDF6C1E], [2 x float] [float f0x3D17E485, float f0x3D882BD0], [2 x float] [float f0x3CE57CDA, float f0x3D5358F1], [2 x float] [float f0x3D5AEA4D, float f0x3DBDA00C], [2 x float] [float f0x3CD0DCD2, float f0x3D314B11], [2 x float] [float f0x3D620ACB, float f0x3D96C528], [2 x float] [float f0x3D0B33F9, float f0x3D77F15C], [2 x float] [float f0x3D7D3518, float f0x3E09CFAC], [2 x float] [float f0x3CC10F68, float 3.552420e-02], [2 x float] [float f0x3D5139B5, float f0x3D8B2CA6], [2 x float] [float f0x3D1D1137, float f0x3D5669BF], [2 x float] [float f0x3D986D7C, float f0x3DC5DBE6], [2 x float] [float f0x3D027EB4, float f0x3D3D491F], [2 x float] [float f0x3D7D8166, float f0x3D962A76], [2 x float] [float f0x3D34ED89, float f0x3D6D41D0], [2 x float] [float f0x3DA2874C, float f0x3E1090CD], [2 x float] [float f0x3CCAAE1E, float f0x3D048F00], [2 x float] [float f0x3D09DB49, float f0x3DA4CADE], [2 x float] [float f0x3D0A6BF7, float f0x3D5F38FF], [2 x float] [float 6.536490e-02, float f0x3DC320E6], [2 x float] [float f0x3CF052EC, float f0x3D2F7A27], [2 x float] [float f0x3D58373B, float f0x3DA72642], [2 x float] [float f0x3D24230D, float f0x3D7D312B], [2 x float] [float f0x3D8A69EE, float f0x3DF0047F], [2 x float] [float f0x3CF84554, float f0x3D1E7AE1], [2 x float] [float f0x3D45E15D, float 7.423830e-02], [2 x float] [float f0x3D333843, float f0x3D5627FD], [2 x float] [float 8.323100e-02, float f0x3DE109CC], [2 x float] [float f0x3D19D895, float f0x3D39A345], [2 x float] [float f0x3D8730F1, float f0x3DA3582C], [2 x float] [float f0x3D4E1EF9, float f0x3D71BC79], [2 x float] [float f0x3DB3A30C, float f0x3E271A9C]], align 16
@evrc_lspq_full_codebook2 = internal constant [64 x [2 x float]] [[2 x float] [float f0x3D55CB6D, float f0x3DABB6B3], [2 x float] [float f0x3DD8D482, float f0x3E03C867], [2 x float] [float f0x3D6097ED, float f0x3E090E1A], [2 x float] [float f0x3DF13099, float f0x3E46B1B5], [2 x float] [float f0x3D5B94BF, float f0x3DE42505], [2 x float] [float f0x3DF5BD28, float f0x3E17039B], [2 x float] [float f0x3DA3EAA0, float f0x3E126E85], [2 x float] [float f0x3E280651, float f0x3E56DB89], [2 x float] [float f0x3D556D05, float f0x3DCBD2AF], [2 x float] [float f0x3DB1AD8C, float f0x3E3E6E01], [2 x float] [float f0x3D9F3310, float f0x3E06A9BB], [2 x float] [float f0x3E24660B, float f0x3E3A4BEF], [2 x float] [float f0x3D9802F2, float f0x3DE22CD9], [2 x float] [float f0x3DF2F6F4, float f0x3E33839D], [2 x float] [float f0x3D877CAE, float f0x3E286377], [2 x float] [float f0x3E4988C9, float 2.166820e-01], [2 x float] [float f0x3D77F02D, float f0x3DC19EA3], [2 x float] [float f0x3DD9A4D0, float f0x3E1790F7], [2 x float] [float f0x3D70A26E, float f0x3E17451D], [2 x float] [float f0x3E0A0D54, float f0x3E4E5AB9], [2 x float] [float f0x3D871B31, float f0x3DEE7BF9], [2 x float] [float f0x3E0778E9, float f0x3E1CF217], [2 x float] [float f0x3DBDC7B6, float f0x3E163F35], [2 x float] [float f0x3E3796A1, float f0x3E60FA99], [2 x float] [float f0x3D90AEC5, float f0x3DCCC8D7], [2 x float] [float f0x3DDA1CEE, float f0x3E37C005], [2 x float] [float f0x3DB41202, float f0x3E004B6B], [2 x float] [float f0x3E1D53DB, float f0x3E4A99E7], [2 x float] [float f0x3DB5F353, float f0x3DE65465], [2 x float] [float f0x3E17D879, float f0x3E2B8995], [2 x float] [float f0x3DA73BB0, float f0x3E2D562B], [2 x float] [float f0x3E54CC49, float f0x3E6C940F], [2 x float] [float f0x3D7BDFDF, float f0x3DAB4447], [2 x float] [float f0x3DEA70F4, float f0x3E0C100D], [2 x float] [float f0x3D8CB965, float f0x3E0D69D7], [2 x float] [float f0x3DE253CF, float f0x3E5C8577], [2 x float] [float f0x3D63985D, float f0x3DFA5A6D], [2 x float] [float f0x3DF6E6E6, float f0x3E24F02D], [2 x float] [float f0x3DAA71DA, float f0x3E1F34F7], [2 x float] [float f0x3E25848F, float f0x3E69BF4F], [2 x float] [float f0x3D80D9B3, float f0x3DD98EE3], [2 x float] [float f0x3DA9D146, float f0x3E53BCB3], [2 x float] [float f0x3DB532BE, float f0x3E0B0F25], [2 x float] [float f0x3E2DD8C5, float f0x3E466CAD], [2 x float] [float f0x3D9F30CB, float f0x3DF65927], [2 x float] [float f0x3E05C898, float f0x3E3CC17B], [2 x float] [float f0x3D8DB590, float 1.842180e-01], [2 x float] [float f0x3E50CC3B, float f0x3E7FB555], [2 x float] [float f0x3D90EE61, float f0x3DB8F8F7], [2 x float] [float f0x3DDE2656, float f0x3E25DA8D], [2 x float] [float f0x3D92D17E, float f0x3E1AB82B], [2 x float] [float f0x3E0E1C39, float f0x3E600D93], [2 x float] [float f0x3D8A6CFF, float f0x3E01C836], [2 x float] [float f0x3E089D3F, float f0x3E2CE419], [2 x float] [float f0x3DC4FB34, float f0x3E2289C7], [2 x float] [float f0x3E3EF617, float f0x3E723D07], [2 x float] [float f0x3DA8A458, float f0x3DD12773], [2 x float] [float f0x3DCD7D4C, float f0x3E4798B7], [2 x float] [float f0x3DCBFA24, float f0x3E0BB305], [2 x float] [float f0x3E3AD3C5, float f0x3E508AFD], [2 x float] [float f0x3DC87A11, float f0x3DF81B1E], [2 x float] [float f0x3E14F1AB, float f0x3E3C02D3], [2 x float] [float f0x3DC44786, float f0x3E3053D9], [2 x float] [float f0x3E64A7AB, float f0x3E7C5529]], align 16
@evrc_lspq_full_codebook3 = internal constant [512 x [3 x float]] [[3 x float] [float f0x3E0BB333, float f0x3E2CB312, float f0x3E5199CA], [3 x float] [float f0x3E3E2CC3, float f0x3E6A3F0E, float f0x3E8100A5], [3 x float] [float f0x3DFB69B2, float f0x3E3E69DC, float f0x3E8F13A3], [3 x float] [float f0x3E492F07, float f0x3E876A81, float f0x3E94219B], [3 x float] [float f0x3E00AB60, float f0x3E1A2458, float f0x3E8D62C9], [3 x float] [float f0x3E490347, float 2.417000e-01, float f0x3E9392F9], [3 x float] [float f0x3E0F7637, float f0x3E63B3CE, float f0x3E8CA119], [3 x float] [float f0x3E851878, float f0x3E8D0091, float f0x3E9F383D], [3 x float] [float f0x3E22414B, float 1.885910e-01, float f0x3E5450BA], [3 x float] [float f0x3E484F9F, float f0x3E62B150, float f0x3E92F4AB], [3 x float] [float f0x3E2D7DA3, float f0x3E4E7412, float f0x3E8D2483], [3 x float] [float f0x3E597DBF, float f0x3E874BDD, float f0x3EA2CCA3], [3 x float] [float f0x3E3B5B33, float f0x3E4C5632, float f0x3E6B0C3B], [3 x float] [float f0x3E5C5D93, float f0x3E865A87, float f0x3E909B05], [3 x float] [float f0x3E15EB13, float f0x3E72A768, float f0x3E9483AD], [3 x float] [float f0x3E7B3A0D, float f0x3E9B51C1, float f0x3EAF3CB9], [3 x float] [float f0x3E0CC749, float f0x3E221340, float f0x3E74F55C], [3 x float] [float f0x3E4ED8D5, float f0x3E616294, float f0x3E8A020D], [3 x float] [float f0x3DF26180, float f0x3E6BBB3A, float f0x3E912E19], [3 x float] [float f0x3E66EE85, float f0x3E8B6741, float f0x3E9CB599], [3 x float] [float f0x3E0AEAD5, float f0x3E443BB2, float f0x3E88259F], [3 x float] [float f0x3E486E41, float f0x3E6D7E0E, float f0x3EA0F5E7], [3 x float] [float f0x3E2C07ED, float f0x3E692BD8, float f0x3E8DCC1B], [3 x float] [float f0x3E80165B, float f0x3E9A6EDD, float f0x3EA46527], [3 x float] [float f0x3E08B235, float f0x3E4E0D6E, float f0x3E6F81E8], [3 x float] [float f0x3E536591, float f0x3E746EDE, float f0x3E8E1C5D], [3 x float] [float f0x3E375891, float f0x3E4879A8, float f0x3E8FB239], [3 x float] [float f0x3E53246D, float f0x3E873245, float f0x3EAA8BE1], [3 x float] [float f0x3E3363C5, float f0x3E43C11C, float f0x3E83DC53], [3 x float] [float f0x3E69E155, float f0x3E7B2F0C, float f0x3E9E32BB], [3 x float] [float f0x3E393351, float f0x3E796CCA, float f0x3E97E007], [3 x float] [float f0x3E8D63EC, float f0x3E9DD3BD, float f0x3EB192BB], [3 x float] [float f0x3E0C6811, float f0x3E386110, float f0x3E6241A0], [3 x float] [float f0x3E39B915, float f0x3E68366C, float f0x3E8A70E9], [3 x float] [float f0x3E00409F, float f0x3E37EAE2, float f0x3E9EE9A9], [3 x float] [float f0x3E43490D, float f0x3E9351E7, float f0x3EA07FF5], [3 x float] [float f0x3E059E25, float f0x3E244926, float f0x3E99B98B], [3 x float] [float f0x3E4A0DE5, float f0x3E83440B, float f0x3E8E942F], [3 x float] [float f0x3E226745, float f0x3E73141C, float f0x3E869C2F], [3 x float] [float f0x3E860E0C, float f0x3E8E30F3, float f0x3EA9AAEF], [3 x float] [float f0x3E2819C1, float f0x3E3E4D3E, float f0x3E714548], [3 x float] [float f0x3E568389, float f0x3E62C486, float f0x3E959531], [3 x float] [float f0x3E2ACFAD, float f0x3E5AC4E8, float f0x3E8A9609], [3 x float] [float f0x3E6B59AD, float f0x3E93A5D7, float f0x3E9CCB45], [3 x float] [float f0x3E3A86A5, float f0x3E4DA468, float f0x3E75EEF6], [3 x float] [float f0x3E6657E9, float f0x3E8A250D, float f0x3E95328B], [3 x float] [float f0x3E27E009, float f0x3E802CB7, float f0x3E8E7E5B], [3 x float] [float 2.567280e-01, float f0x3E9717D7, float f0x3EB4E35B], [3 x float] [float f0x3E0F9587, float f0x3E34ED9E, float f0x3E7CB222], [3 x float] [float f0x3E5C7553, float f0x3E6AB79A, float f0x3E87502F], [3 x float] [float f0x3DF7D03E, float f0x3E5F92E8, float f0x3EA509EB], [3 x float] [float f0x3E822C2A, float f0x3E8C47EB, float f0x3E97AFB7], [3 x float] [float f0x3E243C13, float f0x3E3C2C58, float f0x3E902DB5], [3 x float] [float f0x3E405713, float f0x3E731E52, float f0x3EA8D899], [3 x float] [float f0x3E360E27, float f0x3E6824F6, float f0x3E9ACA05], [3 x float] [float f0x3E8CDAFC, float f0x3E9663DB, float f0x3E9FEF75], [3 x float] [float f0x3E2E32FF, float f0x3E3DAD7C, float f0x3E7C0833], [3 x float] [float f0x3E6313AF, float f0x3E75AB8E, float f0x3E92E37F], [3 x float] [float f0x3E47C407, float f0x3E555686, float f0x3E93A293], [3 x float] [float f0x3E733CC7, float f0x3E8CCD63, float f0x3EADF86F], [3 x float] [float f0x3E40E3E3, float f0x3E5146DA, float f0x3E83C6A9], [3 x float] [float f0x3E7D2F25, float f0x3E85670D, float f0x3E9AB1C5], [3 x float] [float f0x3E2AF36B, float f0x3E7CD698, float f0x3EA34621], [3 x float] [float f0x3E8E6590, float f0x3EA042FF, float f0x3EBB0C71], [3 x float] [float f0x3E14B2DB, float f0x3E26F6F6, float f0x3E664F7E], [3 x float] [float f0x3E52A10F, float f0x3E6221A6, float f0x3E817156], [3 x float] [float f0x3DF810BB, float f0x3E49164C, float f0x3E99A9AF], [3 x float] [float f0x3E5CBD8B, float f0x3E88043D, float f0x3E99311F], [3 x float] [float f0x3DDF81C2, float f0x3E36C164, float f0x3E939F19], [3 x float] [float f0x3E50648B, float f0x3E761DC4, float f0x3E97B5E9], [3 x float] [float f0x3E1CC6B7, float f0x3E66D346, float f0x3E91D709], [3 x float] [float f0x3E801E99, float f0x3E8E3389, float f0x3EA65185], [3 x float] [float f0x3E2A4CE3, float f0x3E46D564, float f0x3E58B6F2], [3 x float] [float f0x3E4E1ED3, float f0x3E677CD8, float f0x3E962467], [3 x float] [float f0x3E191B73, float f0x3E5B57B2, float f0x3E915AA7], [3 x float] [float f0x3E632903, float f0x3E9209DD, float f0x3EA3E1DF], [3 x float] [float f0x3E421F7B, float f0x3E538916, float f0x3E6BDC3E], [3 x float] [float f0x3E6CCC2F, float f0x3E7CC9FC, float f0x3E9466C5], [3 x float] [float f0x3E0E74AB, float f0x3E84B48B, float f0x3E989605], [3 x float] [float f0x3E7A6181, float f0x3E90BA4D, float f0x3EB8F6D9], [3 x float] [float f0x3DFAF184, float f0x3E2C8F24, float f0x3E8AB0B1], [3 x float] [float f0x3E51471D, float f0x3E6BED8C, float f0x3E8B2871], [3 x float] [float f0x3E121141, float f0x3E63BE4A, float f0x3E958885], [3 x float] [float f0x3E787795, float f0x3E8E0B39, float f0x3E982225], [3 x float] [float f0x3E1BB2A1, float f0x3E49A5AE, float f0x3E85A387], [3 x float] [float f0x3E5F1AA1, float f0x3E7BBD94, float f0x3E9DC457], [3 x float] [float f0x3E42AC01, float f0x3E6CA540, float f0x3E8F7383], [3 x float] [float f0x3E823578, float f0x3E9691A1, float f0x3EADE67F], [3 x float] [float f0x3E207599, float f0x3E559A92, float f0x3E697BA8], [3 x float] [float f0x3E667DA9, float f0x3E8001E6, float f0x3E8D70A9], [3 x float] [float f0x3E367F0D, float f0x3E4AFC58, float f0x3E9BBFF5], [3 x float] [float f0x3E5592A5, float f0x3E95B4D9, float f0x3EB18E0D], [3 x float] [float f0x3E2F2849, float f0x3E505240, float f0x3E867951], [3 x float] [float f0x3E6BCD55, float f0x3E8483BB, float f0x3E9FBCB3], [3 x float] [float f0x3E3DC815, float f0x3E7BA890, float 3.105540e-01], [3 x float] [float f0x3E942E0E, float f0x3E9F47ED, float f0x3EB16553], [3 x float] [float f0x3E19F0BD, float f0x3E2B8F24, float f0x3E75F27E], [3 x float] [float f0x3E384A7D, float f0x3E72DC54, float f0x3E8594A5], [3 x float] [float f0x3E197685, float f0x3E4AA3B2, float f0x3E9DA73D], [3 x float] [float f0x3E57DBDD, float f0x3E938C57, float f0x3EA8D4A1], [3 x float] [float f0x3E06DF49, float f0x3E29E362, float 3.228980e-01], [3 x float] [float f0x3E5BFCED, float f0x3E8171E7, float f0x3E985817], [3 x float] [float f0x3E3C2BB1, float f0x3E733964, float 2.746100e-01], [3 x float] [float f0x3E82DAC0, float f0x3E8D065F, float f0x3EB129C7], [3 x float] [float f0x3E3B0BCD, float f0x3E4C421A, float f0x3E5D3CA5], [3 x float] [float f0x3E564319, float f0x3E63BE96, float f0x3E9AD1ED], [3 x float] [float f0x3E3C81A1, float f0x3E586650, float f0x3E90A8D5], [3 x float] [float f0x3E76F58D, float f0x3E98151B, float f0x3EA1C809], [3 x float] [float f0x3E498729, float f0x3E58E644, float f0x3E77727D], [3 x float] [float f0x3E789699, float f0x3E846575, float f0x3E961EE3], [3 x float] [float f0x3E22B81D, float f0x3E87B82D, float f0x3E946B53], [3 x float] [float f0x3E842084, float f0x3EA34747, float f0x3EB218FB], [3 x float] [float f0x3E185637, float f0x3E2ADBC2, float f0x3E889D9B], [3 x float] [float f0x3E5D1FF7, float f0x3E6B74F2, float f0x3E8D5553], [3 x float] [float f0x3E0DBB7B, float f0x3E7506B8, float f0x3EA7EBFF], [3 x float] [float f0x3E799D9B, float f0x3E93AA47, float f0x3E9CB26B], [3 x float] [float f0x3E2E3DAB, float f0x3E428BC4, float f0x3E8FFBF5], [3 x float] [float f0x3E606037, float f0x3E841945, float f0x3EA73471], [3 x float] [float f0x3E44C687, float f0x3E64FB1E, float f0x3E98ECFD], [3 x float] [float f0x3E8C0E26, float f0x3E9FC8B3, float f0x3EA95A3D], [3 x float] [float f0x3E2659D7, float f0x3E51D968, float f0x3E81B57B], [3 x float] [float f0x3E653A53, float f0x3E73600C, float 3.032020e-01], [3 x float] [float f0x3E469C37, float f0x3E596E7E, float f0x3E9D7967], [3 x float] [float f0x3E6B6E3B, float f0x3E985C8B, float f0x3EACCCB3], [3 x float] [float f0x3E41E123, float f0x3E510C36, float f0x3E8EA5F1], [3 x float] [float f0x3E781E6D, float f0x3E8BDC09, float f0x3EA17715], [3 x float] [float f0x3E1EBADB, float f0x3E938135, float f0x3EAC07B9], [3 x float] [float f0x3E8C2486, float f0x3EA99513, float f0x3EB99EB9], [3 x float] [float f0x3E1C0BF5, float f0x3E30C312, float f0x3E4328E4], [3 x float] [float f0x3E49B74B, float f0x3E67BDBE, float f0x3E7C1B32], [3 x float] [float f0x3DF6E59E, float f0x3E535298, float f0x3E8FF96B], [3 x float] [float f0x3E465BC3, float f0x3E8B368B, float f0x3E9A484F], [3 x float] [float f0x3E0BFB63, float f0x3E1DCA98, float f0x3E90842B], [3 x float] [float f0x3E4A08CB, float f0x3E81DF3D, float f0x3E94A42D], [3 x float] [float f0x3E12E82B, float f0x3E79B9D2, float f0x3E8D12C1], [3 x float] [float f0x3E845722, float f0x3E8BEB57, float f0x3EA469B9], [3 x float] [float f0x3E1E1CA7, float f0x3E4671D0, float f0x3E5D10BC], [3 x float] [float f0x3E52EC47, float f0x3E65A8E0, float f0x3E924B83], [3 x float] [float f0x3E32B963, float f0x3E557C66, float f0x3E8F30B7], [3 x float] [float f0x3E6018CB, float f0x3E8B8353, float f0x3EA77913], [3 x float] [float f0x3E35DF53, float f0x3E5A1A1A, float f0x3E74DBC8], [3 x float] [float f0x3E6AA9E7, float f0x3E84B165, float f0x3E9128D5], [3 x float] [float f0x3E21212F, float f0x3E75B86A, float f0x3E9BC861], [3 x float] [float f0x3E7B8231, float f0x3EA236D3, float f0x3EAF91D1], [3 x float] [float f0x3E126255, float f0x3E25CA84, float f0x3E81E64F], [3 x float] [float f0x3E573CC9, float f0x3E643230, float f0x3E8ACE1D], [3 x float] [float f0x3E01E361, float f0x3E5DE8FA, float f0x3E9870AD], [3 x float] [float f0x3E6C8B4D, float f0x3E8F6A77, float f0x3E997341], [3 x float] [float f0x3E1CA6E9, float f0x3E46A71E, float f0x3E8BB8FB], [3 x float] [float f0x3E59F829, float f0x3E7757AA, float f0x3EA20EBF], [3 x float] [float f0x3E2F432D, float f0x3E63CF18, float f0x3E966B2F], [3 x float] [float f0x3E81049A, float f0x3E9BC74F, float f0x3EA99C37], [3 x float] [float f0x3E0862AD, float f0x3E54EA4A, float f0x3E82BED2], [3 x float] [float f0x3E59224D, float f0x3E780090, float f0x3E93EB31], [3 x float] [float f0x3E3D0B0D, float f0x3E4DF898, float f0x3E929DE1], [3 x float] [float f0x3E5F868D, float f0x3E8DB27F, float f0x3EB06CFD], [3 x float] [float f0x3E3BF7B9, float f0x3E4C4418, float f0x3E863963], [3 x float] [float f0x3E6EB9C5, float f0x3E7F9655, float f0x3EA1B627], [3 x float] [float f0x3E4274E1, float f0x3E7CCCC4, float f0x3E9821BF], [3 x float] [float f0x3E8CCFBE, float f0x3EA51D73, float f0x3EB1A70F], [3 x float] [float f0x3E11B87D, float f0x3E455050, float f0x3E5D57F6], [3 x float] [float f0x3E485F55, float f0x3E639A64, float f0x3E8D9CDD], [3 x float] [float f0x3E087075, float f0x3E4A89EE, float f0x3EA552E1], [3 x float] [float f0x3E3D4D49, float f0x3E981E4D, float f0x3EA6F741], [3 x float] [float f0x3E19CEFD, float f0x3E350626, float f0x3E95443B], [3 x float] [float f0x3E500519, float f0x3E84EC69, float f0x3E992AFB], [3 x float] [float f0x3E2975F1, float f0x3E740FF0, float f0x3E933267], [3 x float] [float f0x3E8AC9DA, float f0x3E943F2D, float f0x3EA39843], [3 x float] [float f0x3E2CA50D, float f0x3E4B98EE, float f0x3E6BE03E], [3 x float] [float f0x3E5AF171, float f0x3E70195E, float f0x3E94F8A9], [3 x float] [float f0x3E32CBC5, float f0x3E5E785C, float f0x3E9245B5], [3 x float] [float f0x3E69FCD1, float f0x3E97A641, float f0x3EA210D5], [3 x float] [float f0x3E3FAA2D, float f0x3E61D730, float f0x3E7570F6], [3 x float] [float f0x3E6A60C5, float f0x3E86F45F, float f0x3E9A47DB], [3 x float] [float f0x3E362AA5, float f0x3E8429CF, float f0x3E901F27], [3 x float] [float f0x3E84DEF8, float f0x3E9D49E5, float f0x3EB29513], [3 x float] [float f0x3E14B5B7, float f0x3E370152, float f0x3E84B428], [3 x float] [float f0x3E6051DF, float f0x3E73F0DE, float f0x3E855B37], [3 x float] [float f0x3E131937, float f0x3E56CB88, float f0x3EA1B47F], [3 x float] [float f0x3E8010B5, float f0x3E8EF0FD, float f0x3E9C3D17], [3 x float] [float f0x3E188FE7, float f0x3E4E0E64, float f0x3E90A991], [3 x float] [float f0x3E55639B, float f0x3E714226, float f0x3EB0D389], [3 x float] [float f0x3E3E4A4F, float f0x3E62ED06, float f0x3E9F1DB9], [3 x float] [float f0x3E8FD2BE, float f0x3E9747D1, float f0x3EA6A7DD], [3 x float] [float f0x3E311E57, float f0x3E49CED8, float f0x3E7BB349], [3 x float] [float f0x3E60C37B, float f0x3E7AA43A, float f0x3E965123], [3 x float] [float f0x3E3C52CB, float f0x3E5C2A16, float f0x3E99C573], [3 x float] [float f0x3E7B3A0D, float f0x3E898551, float f0x3EB2585B], [3 x float] [float f0x3E45969F, float f0x3E539586, float f0x3E88E051], [3 x float] [float f0x3E827B1E, float f0x3E898B7B, float f0x3E9B6AA1], [3 x float] [float f0x3E3518FB, float f0x3E84C707, float f0x3EA1E511], [3 x float] [float f0x3E94F4AA, float f0x3EA19AE1, float f0x3EBCC955], [3 x float] [float 1.571170e-01, float f0x3E31B7DA, float f0x3E6A39E8], [3 x float] [float f0x3E599C07, float f0x3E6C0882, float f0x3E8122B7], [3 x float] [float f0x3E11F13F, float f0x3E4ED3D4, float f0x3E9605B3], [3 x float] [float f0x3E5C13E7, float f0x3E8E5E8B, float f0x3EA0DBAF], [3 x float] [float f0x3E0B35C3, float f0x3E3966B8, float f0x3E8D0B1D], [3 x float] [float f0x3E4B2DBF, float f0x3E777956, float f0x3E9C3FB1], [3 x float] [float f0x3E235883, float f0x3E6D2356, float f0x3E97404D], [3 x float] [float f0x3E843344, float f0x3E931F4B, float 3.203520e-01], [3 x float] [float f0x3E33096F, float f0x3E458330, float 2.112500e-01], [3 x float] [float f0x3E4F0543, float f0x3E68796C, float f0x3E9C19C3], [3 x float] [float f0x3E2D99D3, float f0x3E58E8FA, float f0x3E983EF7], [3 x float] [float f0x3E6B8DF7, float f0x3E95400F, float f0x3EA736BB], [3 x float] [float f0x3E47BA2B, float f0x3E58CA4A, float f0x3E692BB2], [3 x float] [float f0x3E73A31B, float f0x3E813C19, float f0x3E9872F9], [3 x float] [float f0x3E1D7407, float f0x3E7C7564, float f0x3EA12965], [3 x float] [float f0x3E71BDD5, float f0x3E9B6D63, float f0x3EBDC27D], [3 x float] [float f0x3E0DFCF9, float f0x3E2BFB14, float f0x3E8C0A31], [3 x float] [float f0x3E5AF001, float f0x3E68B8BC, float f0x3E9292CD], [3 x float] [float f0x3E001523, float f0x3E79F4EE, float f0x3E9AE7AD], [3 x float] [float f0x3E715F3D, float f0x3E8FFA9B, float f0x3E9E28A1], [3 x float] [float f0x3E1B54FD, float f0x3E57F056, float 2.638130e-01], [3 x float] [float f0x3E620729, float f0x3E816C1B, float f0x3EA200FB], [3 x float] [float f0x3E3D5CE9, float f0x3E752BC4, float f0x3E91FB5B], [3 x float] [float f0x3E84E38C, float f0x3E9E9F67, float f0x3EA72103], [3 x float] [float f0x3E26D751, float f0x3E612DB2, float f0x3E71D0F2], [3 x float] [float f0x3E6FD09D, float f0x3E7FF168, float f0x3E8E1AE9], [3 x float] [float f0x3E2EF899, float f0x3E4B0CF4, float f0x3EA49031], [3 x float] [float f0x3E6D1FDD, float f0x3E8CCEC7, float f0x3EBD4AAD], [3 x float] [float f0x3E38528D, float f0x3E53A970, float f0x3E8ADB5F], [3 x float] [float f0x3E73CA01, float f0x3E820D1B, float f0x3EA5CCBB], [3 x float] [float f0x3E4BED85, float f0x3E823031, float f0x3E9D6DFB], [3 x float] [float f0x3E9329D8, float f0x3EA66C4F, float f0x3EB2803B], [3 x float] [float f0x3E14C599, float f0x3E43F3A8, float f0x3E7FAF1A], [3 x float] [float f0x3E4754C5, float f0x3E7699D8, float f0x3E8DFA9D], [3 x float] [float f0x3E1CD39D, float f0x3E470A6A, float f0x3EA7B4B1], [3 x float] [float f0x3E50FBE1, float f0x3E98E189, float f0x3EA49909], [3 x float] [float f0x3E1FC101, float f0x3E395B66, float f0x3E9A13B7], [3 x float] [float f0x3E580689, float f0x3E82F453, float f0x3E9DBD77], [3 x float] [float f0x3E3DE50D, float f0x3E7EFF72, float f0x3E8C4DA3], [3 x float] [float f0x3E8C8A68, float f0x3E9431BD, float f0x3EAD7687], [3 x float] [float f0x3E353041, float f0x3E4724F6, float f0x3E636839], [3 x float] [float f0x3E5D9211, float f0x3E6C4600, float f0x3E9B7D29], [3 x float] [float f0x3E423C61, float f0x3E5BD008, float f0x3E93AF1D], [3 x float] [float f0x3E769B71, float f0x3E98A609, float f0x3EA79E25], [3 x float] [float f0x3E4EA179, float f0x3E60B558, float f0x3E751241], [3 x float] [float f0x3E7EC8B5, float f0x3E881F93, float f0x3E963637], [3 x float] [float f0x3E3A6581, float f0x3E895BDF, float f0x3E96860B], [3 x float] [float f0x3E8353CA, float f0x3EA3D501, float f0x3EB9AEFF], [3 x float] [float f0x3E229C47, float f0x3E33A4E2, float f0x3E88E753], [3 x float] [float f0x3E65A43B, float f0x3E72592A, float f0x3E8E26B7], [3 x float] [float f0x3E18C8C7, float f0x3E6805FC, float f0x3EB0C557], [3 x float] [float f0x3E8055F4, float f0x3E95A3BD, float f0x3EA08CCF], [3 x float] [float f0x3E21E3FF, float f0x3E4F0BBC, float f0x3E98F0BD], [3 x float] [float f0x3E6A5007, float f0x3E7E85D1, float f0x3EB07FFD], [3 x float] [float f0x3E407BBF, float f0x3E6FBA62, float f0x3E9BC4C5], [3 x float] [float f0x3E9241A6, float f0x3EA137B5, float f0x3EAC8249], [3 x float] [float f0x3E269597, float f0x3E5F0C38, float f0x3E83CEC1], [3 x float] [float f0x3E656D4F, float f0x3E7CA95D, float f0x3E9A01EB], [3 x float] [float f0x3E4E2FE3, float f0x3E5F868A, float f0x3EA0464B], [3 x float] [float f0x3E73BDBF, float f0x3E98A105, float f0x3EB4FE73], [3 x float] [float 1.988300e-01, float f0x3E59FC76, float f0x3E8BC425], [3 x float] [float f0x3E8050CE, float 2.676600e-01, float f0x3EA4273D], [3 x float] [float f0x3E2F00E3, float f0x3E89E5AB, float f0x3EAB3A2D], [3 x float] [float f0x3E9C2780, float f0x3EAC21F9, float f0x3EBB0021], [3 x float] [float f0x3E172AC1, float f0x3E399F94, float f0x3E519EF4], [3 x float] [float f0x3E4666C1, float f0x3E624700, float f0x3E860765], [3 x float] [float f0x3E07428D, float f0x3E47872E, float f0x3E912D27], [3 x float] [float f0x3E54B9A5, float f0x3E8A8BAB, float f0x3E95A3BB], [3 x float] [float f0x3E02CC8D, float f0x3E2AE6CA, float f0x3E915A35], [3 x float] [float f0x3E523CA1, float f0x3E7DC142, float f0x3E913851], [3 x float] [float f0x3E1DE9B9, float f0x3E666A18, float f0x3E8A4831], [3 x float] [float f0x3E88FF7A, float f0x3E91A067, float f0x3E9E6121], [3 x float] [float f0x3E2CE635, float f0x3E3F7E1E, float f0x3E4F4AA4], [3 x float] [float f0x3E4F4CB9, float f0x3E5DEF46, float f0x3E960E7B], [3 x float] [float f0x3E278C55, float f0x3E5CCA90, float f0x3E90CA3B], [3 x float] [float f0x3E66EBE9, float 2.662830e-01, float f0x3EA2C207], [3 x float] [float f0x3E41A621, float f0x3E528B48, float f0x3E6371BE], [3 x float] [float f0x3E628CC9, float f0x3E854495, float f0x3E95C7F1], [3 x float] [float f0x3E1F4C01, float f0x3E7CC676, float f0x3E944CD9], [3 x float] [float f0x3E7E5E2F, float f0x3E9C4F37, float f0x3EB5EC11], [3 x float] [float f0x3E022C4F, float f0x3E21D8D6, float f0x3E8221D5], [3 x float] [float f0x3E51EB37, float f0x3E60BE8A, float f0x3E8E82D9], [3 x float] [float f0x3E088067, float f0x3E6B1FF0, float f0x3E92EABD], [3 x float] [float f0x3E7275AF, float f0x3E892C93, float f0x3E9DD071], [3 x float] [float f0x3E103BEB, float f0x3E504BF0, float f0x3E8BE85B], [3 x float] [float f0x3E54AB2F, float f0x3E702604, float f0x3EA62FC7], [3 x float] [float f0x3E356F1B, float f0x3E6B1B0E, float f0x3E912C0B], [3 x float] [float f0x3E85D362, float f0x3E9A31AB, float f0x3EA4B6CB], [3 x float] [float f0x3E18297B, float f0x3E54C230, float f0x3E7CDF72], [3 x float] [float f0x3E5B7A97, float f0x3E7E03C8, float f0x3E8B658D], [3 x float] [float f0x3E349D07, float f0x3E499F9A, float f0x3E95A6A1], [3 x float] [float f0x3E4AF33B, float f0x3E8D0C27, float f0x3EB2B50D], [3 x float] [float f0x3E34617F, float f0x3E45E30E, float f0x3E8A0243], [3 x float] [float f0x3E72A7E7, float f0x3E8008A0, float f0x3E9D179F], [3 x float] [float f0x3E344943, float f0x3E821138, float f0x3E9B6D1B], [3 x float] [float f0x3E90DF34, float f0x3E9A80F3, float f0x3EB539C3], [3 x float] [float f0x3E14D79B, float f0x3E3C164E, float f0x3E706252], [3 x float] [float f0x3E467EAF, float f0x3E6C2BBA, float f0x3E891F69], [3 x float] [float f0x3E0E4B43, float f0x3E3F3E38, float f0x3EA05061], [3 x float] [float f0x3E4CBE3F, float f0x3E8E24D5, float f0x3EA66C79], [3 x float] [float f0x3E1265B3, float f0x3E2F6C1C, float f0x3E9B2493], [3 x float] [float f0x3E54BA3B, float f0x3E84733F, float f0x3E93D943], [3 x float] [float f0x3E2FE64B, float f0x3E760312, float f0x3E8BEBF3], [3 x float] [float f0x3E8AC6A0, float f0x3E9201ED, float f0x3EA7A11F], [3 x float] [float f0x3E2DEE5F, float f0x3E400C00, float f0x3E65DF52], [3 x float] [float f0x3E5C6327, float f0x3E68CBC0, float f0x3E970B65], [3 x float] [float f0x3E33CF9B, float f0x3E5F2AC2, float f0x3E8CBD05], [3 x float] [float f0x3E704C23, float f0x3E943D65, float f0x3EA20B8D], [3 x float] [float 1.899470e-01, float f0x3E51DF6A, float f0x3E7CE1D1], [3 x float] [float f0x3E72FE33, float f0x3E8960CF, float f0x3E94D493], [3 x float] [float f0x3E2E0AD3, float f0x3E81B962, float 2.925330e-01], [3 x float] [float f0x3E8A93EE, float f0x3E982389, float f0x3EB65DBF], [3 x float] [float f0x3E1C335D, float f0x3E2E38E8, float f0x3E816269], [3 x float] [float f0x3E6060C9, float f0x3E718FF4, float f0x3E8A1B3F], [3 x float] [float f0x3E11A8D9, float f0x3E5F6BCA, float f0x3EA80C33], [3 x float] [float f0x3E85DFC4, float f0x3E8E5961, float f0x3E9AD103], [3 x float] [float f0x3E1D35ED, float f0x3E434E22, float f0x3E95EC9D], [3 x float] [float f0x3E564345, float f0x3E7FCDD9, float f0x3EA64045], [3 x float] [float f0x3E336171, float f0x3E745FD0, float f0x3E9CDF81], [3 x float] [float f0x3E8BE358, float 3.039550e-01, float f0x3EA41A65], [3 x float] [float f0x3E27D871, float f0x3E42298A, float f0x3E833627], [3 x float] [float f0x3E686691, float f0x3E75E214, float f0x3E95E083], [3 x float] [float f0x3E484261, float f0x3E590B0C, float f0x3E98417F], [3 x float] [float f0x3E76D4A5, float 2.884970e-01, float f0x3EAC365F], [3 x float] [float f0x3E47A089, float f0x3E5680B0, float f0x3E833B05], [3 x float] [float f0x3E7DD578, float f0x3E86D6A7, float f0x3E9F5EE5], [3 x float] [float f0x3E2D4011, float f0x3E71867C, float f0x3EAC28E1], [3 x float] [float f0x3E926ECC, float f0x3EA69DF1, float f0x3EB81E75], [3 x float] [float f0x3E200241, float f0x3E34F224, float f0x3E5B89F4], [3 x float] [float f0x3E560345, float f0x3E65580C, float f0x3E8592F3], [3 x float] [float f0x3E0B0615, float f0x3E50774A, float f0x3E9C6AEB], [3 x float] [float f0x3E603769, float f0x3E8F15D7, float f0x3E99519F], [3 x float] [float f0x3E094845, float f0x3E369CB2, float f0x3E94911D], [3 x float] [float f0x3E5A6AE5, float f0x3E75CAD2, float f0x3E99C6F1], [3 x float] [float f0x3E285181, float f0x3E67DF8C, float f0x3E930819], [3 x float] [float f0x3E8060F1, float f0x3E8FC6A7, float f0x3EABB2E9], [3 x float] [float f0x3E2793BD, float 1.971080e-01, float f0x3E627920], [3 x float] [float f0x3E55228D, float f0x3E6C6922, float f0x3E979F47], [3 x float] [float f0x3E22EE8D, float f0x3E5F6CFC, float f0x3E974FF7], [3 x float] [float f0x3E75A405, float f0x3E904C2F, float f0x3EA6EF73], [3 x float] [float f0x3E41F0B1, float f0x3E551F48, float f0x3E742B4C], [3 x float] [float f0x3E6E966D, float f0x3E84EABF, float f0x3E963C31], [3 x float] [float f0x3E246989, float f0x3E82A4F7, float f0x3E9B1229], [3 x float] [float f0x3E81CBF8, float f0x3E97910B, float f0x3EBC4601], [3 x float] [float f0x3E053F53, float f0x3E3308FE, float f0x3E855E6D], [3 x float] [float f0x3E573FB7, float f0x3E6F2D2E, float f0x3E90ED7D], [3 x float] [float f0x3E1C05B3, float f0x3E66BF34, float f0x3E9B8151], [3 x float] [float f0x3E7654FF, float f0x3E8DEC23, float f0x3E9C9DDD], [3 x float] [float f0x3E27A887, float f0x3E477440, float f0x3E89DB9B], [3 x float] [float f0x3E67205F, float f0x3E76AF32, float f0x3EA2D8D7], [3 x float] [float f0x3E44AA17, float f0x3E6B5FDA, float f0x3E94642B], [3 x float] [float f0x3E868870, float f0x3E9BCC2F, float f0x3EABDE53], [3 x float] [float f0x3E2A0E8F, float f0x3E53C868, float f0x3E75772F], [3 x float] [float f0x3E654A1F, float f0x3E800E02, float f0x3E921259], [3 x float] [float f0x3E40EC8B, float f0x3E50AF4E, float f0x3E9B2835], [3 x float] [float f0x3E6C3C5B, float f0x3E92F773, float f0x3EB31959], [3 x float] [float f0x3E3A64DB, float f0x3E5B3616, float f0x3E86E58B], [3 x float] [float f0x3E72FE2F, float f0x3E87B169, float f0x3EA2B8B7], [3 x float] [float f0x3E41D247, float f0x3E8481B9, float f0x3E9C176B], [3 x float] [float f0x3E98303E, float f0x3EA261E3, float f0x3EB6922B], [3 x float] [float f0x3E2269FF, float f0x3E36F296, float f0x3E77B9B6], [3 x float] [float f0x3E47908F, float f0x3E777F1E, float f0x3E863C05], [3 x float] [float f0x3E21EB5F, float f0x3E58D5CC, float f0x3E9F698D], [3 x float] [float f0x3E5E1BBF, float f0x3E98FBE5, float f0x3EA45955], [3 x float] [float f0x3E18DAF7, float f0x3E3329CC, float f0x3EA17383], [3 x float] [float f0x3E62F0F3, float f0x3E8329E7, float f0x3E9B992B], [3 x float] [float f0x3E3433FF, float f0x3E79597E, float f0x3E92549B], [3 x float] [float f0x3E877864, float f0x3E923281, float f0x3EB0B1F7], [3 x float] [float f0x3E3875DB, float f0x3E5234C0, float f0x3E639713], [3 x float] [float f0x3E57DAF7, float f0x3E67BF3C, float f0x3EA0FC91], [3 x float] [float f0x3E377367, float f0x3E56775E, float f0x3E9628E9], [3 x float] [float f0x3E7FB658, float f0x3E951FB9, float f0x3EA781D1], [3 x float] [float f0x3E4B7813, float f0x3E5D140A, float f0x3E7FF592], [3 x float] [float f0x3E7680FB, float f0x3E879B6F, float f0x3E996A5B], [3 x float] [float f0x3E2F5C17, float f0x3E894D13, float f0x3E9B6DE3], [3 x float] [float f0x3E8A0330, float f0x3EA1D7F1, float f0x3EB6906F], [3 x float] [float f0x3E1A2DA5, float f0x3E3C9C88, float f0x3E898FBF], [3 x float] [float f0x3E5E25D5, float f0x3E7697F0, float f0x3E8ED183], [3 x float] [float f0x3E0AA629, float f0x3E856B99, float f0x3EAA4B2F], [3 x float] [float f0x3E832638, float f0x3E935D85, float f0x3E9CC087], [3 x float] [float f0x3E2A6475, float f0x3E41404A, float f0x3E960735], [3 x float] [float f0x3E6AB719, float f0x3E85EBE7, float f0x3EA7AD4D], [3 x float] [float f0x3E4B0669, float f0x3E6E8FD2, float f0x3E992821], [3 x float] [float f0x3E92F7BA, float f0x3E9D3CB5, float f0x3EA7939D], [3 x float] [float f0x3E341EC9, float f0x3E58FBF2, float f0x3E80AEB5], [3 x float] [float f0x3E6DA315, float f0x3E7A7E3E, float f0x3E9950AF], [3 x float] [float f0x3E435BD9, float f0x3E592E20, float f0x3EA66E2B], [3 x float] [float f0x3E6D1685, float f0x3EA0DA61, float f0x3EAF7B13], [3 x float] [float f0x3E47C841, float f0x3E569568, float f0x3E8F1875], [3 x float] [float f0x3E762FA1, float f0x3E8A09A3, float f0x3EA7F1A5], [3 x float] [float f0x3E2FEC91, float f0x3E9080DB, float f0x3EA126D1], [3 x float] [float f0x3E89DA52, float f0x3EAD4AF5, float f0x3EC286ED], [3 x float] [float f0x3E23C5E7, float f0x3E363CEC, float f0x3E4DA366], [3 x float] [float f0x3E4ED3C5, float f0x3E6C3460, float f0x3E8377CB], [3 x float] [float f0x3E093DA9, float f0x3E580652, float f0x3E91C297], [3 x float] [float f0x3E509A1D, float f0x3E90EC55, float f0x3E9B4B5F], [3 x float] [float f0x3E13FF61, float f0x3E28AE7A, float f0x3E91F5ED], [3 x float] [float f0x3E533C89, float f0x3E7E9DDA, float f0x3E97BF85], [3 x float] [float f0x3E21EEF9, float f0x3E6FF0FC, float 2.796500e-01], [3 x float] [float f0x3E87AD82, float f0x3E8F4F25, float f0x3EA32215], [3 x float] [float f0x3E2A88CD, float f0x3E3CB3BE, float f0x3E5BB256], [3 x float] [float f0x3E4FECD5, float f0x3E70C0CE, float f0x3E93D7D3], [3 x float] [float f0x3E2C7701, float f0x3E50D744, float f0x3E93306F], [3 x float] [float f0x3E6D49D9, float f0x3E8C550D, float f0x3EA6464F], [3 x float] [float f0x3E3DCE05, float f0x3E5B4078, float f0x3E6A86F2], [3 x float] [float f0x3E784D59, float f0x3E8574A3, float f0x3E90E959], [3 x float] [float f0x3E2B9571, float f0x3E77D60E, float 2.994620e-01], [3 x float] [float f0x3E748A95, float f0x3EA35479, float f0x3EB78249], [3 x float] [float f0x3E0D37D3, float f0x3E1E80B2, float f0x3E87FE31], [3 x float] [float f0x3E58156F, float f0x3E65FF76, float f0x3E8F5639], [3 x float] [float f0x3E0CDF1F, float f0x3E668818, float f0x3E9E5E41], [3 x float] [float f0x3E6ABDDB, float f0x3E8D63A9, float f0x3EA16761], [3 x float] [float f0x3E2456D3, float f0x3E4826FC, float f0x3E90FB97], [3 x float] [float f0x3E5FBFF3, float f0x3E73E9F8, float f0x3EA92257], [3 x float] [float f0x3E3A5BEF, float f0x3E6E9E9E, float f0x3E962847], [3 x float] [float f0x3E8254AE, float f0x3EA0F845, float f0x3EAC3B9B], [3 x float] [float f0x3E138DD7, float f0x3E68145C, float f0x3E804DFF], [3 x float] [float f0x3E5C5A3F, float f0x3E80B9C3, float f0x3E91F149], [3 x float] [float f0x3E402DB7, float f0x3E515DAA, float f0x3E969D51], [3 x float] [float f0x3E6C06D7, float f0x3E897299, float f0x3EB469D9], [3 x float] [float f0x3E3D766F, float f0x3E4BDA62, float f0x3E8B3A7B], [3 x float] [float f0x3E78641B, float f0x3E82C25E, float f0x3E9F6FBB], [3 x float] [float f0x3E47D99F, float f0x3E7F149C, float f0x3E991653], [3 x float] [float f0x3E913B1E, float f0x3EA11349, float f0x3EB613BF], [3 x float] [float f0x3E1B2033, float f0x3E4A79AE, float f0x3E6E0BF4], [3 x float] [float f0x3E4CD4A3, float f0x3E6B9FAA, float f0x3E9059A5], [3 x float] [float f0x3E0E0A57, float f0x3E446B94, float f0x3EB10A21], [3 x float] [float f0x3E494C5F, float f0x3E9C0393, float f0x3EAE5D05], [3 x float] [float f0x3E0D784F, float f0x3E411174, float f0x3E9952FB], [3 x float] [float f0x3E529A3B, float f0x3E89ADE7, float f0x3E9C6F5F], [3 x float] [float f0x3E30962B, float f0x3E6F29EE, float f0x3E96560B], [3 x float] [float f0x3E8A5080, float f0x3E98E947, float f0x3EA8388B], [3 x float] [float f0x3E33B37F, float f0x3E43F448, float f0x3E713D48], [3 x float] [float f0x3E61D78B, float 2.347740e-01, float f0x3E973E5D], [3 x float] [float f0x3E3E1BA7, float f0x3E63AF7E, float f0x3E8F4CF1], [3 x float] [float f0x3E6AF6C3, float f0x3E9BED7F, float f0x3EA63D05], [3 x float] [float f0x3E3F62EB, float f0x3E5CA402, float f0x3E80F360], [3 x float] [float f0x3E708C63, float f0x3E8ADD01, float f0x3E998BCB], [3 x float] [float f0x3E3D95FB, float 2.560710e-01, float f0x3E962A47], [3 x float] [float f0x3E871BC4, float f0x3E9D3FCF, float f0x3EB99FB7], [3 x float] [float f0x3E24DC91, float f0x3E373B7C, float f0x3E82F94F], [3 x float] [float f0x3E671651, float f0x3E7995B0, float 2.686250e-01], [3 x float] [float f0x3E1ECC49, float f0x3E6BECFA, float f0x3EA45AD7], [3 x float] [float f0x3E80E6C0, float f0x3E8F2EBB, float f0x3EA0DF1B], [3 x float] [float f0x3E20C1AD, float f0x3E547236, float f0x3E947239], [3 x float] [float f0x3E5EB2F1, float f0x3E84EDC1, float f0x3EAE6ADD], [3 x float] [float f0x3E350E15, float f0x3E6CA218, float f0x3EA2978D], [3 x float] [float f0x3E90DF2A, float f0x3E998533, float f0x3EAC740D], [3 x float] [float f0x3E3A6E05, float f0x3E4B811E, float f0x3E810390], [3 x float] [float f0x3E674B91, float f0x3E8143A3, float f0x3E9632CF], [3 x float] [float f0x3E4D9E81, float f0x3E5F0384, float f0x3E9ABB47], [3 x float] [float f0x3E7D5CA7, float f0x3E92E24F, float f0x3EB2158B], [3 x float] [float f0x3E4DF489, float f0x3E5BE69C, float f0x3E864835], [3 x float] [float f0x3E82077C, float 2.694780e-01, float f0x3E9FD001], [3 x float] [float f0x3E439EA5, float f0x3E82F01D, float f0x3EAA4541], [3 x float] [float f0x3E9504FE, float f0x3EA9B4EB, float f0x3EBCB7A1], [3 x float] [float f0x3E2100E1, float f0x3E3DD2B8, float f0x3E66C51E], [3 x float] [float f0x3E550B69, float f0x3E741240, float f0x3E8746EB], [3 x float] [float f0x3E165F69, float f0x3E5A1CB2, float f0x3E99B2D7], [3 x float] [float f0x3E5FE0B1, float f0x3E949D75, float f0x3E9E3B3F], [3 x float] [float f0x3E1325E1, float f0x3E40529E, float f0x3E914A49], [3 x float] [float f0x3E544DCD, float f0x3E7AF888, float f0x3E9E2F89], [3 x float] [float f0x3E282B69, float f0x3E694B64, float f0x3E9E292D], [3 x float] [float f0x3E861A58, float f0x3E9529B1, float f0x3EA9BE09], [3 x float] [float f0x3E2EBE95, float f0x3E4F0262, float f0x3E5F0E42], [3 x float] [float f0x3E54C881, float f0x3E705676, float f0x3E9D12C3], [3 x float] [float f0x3E303FE9, float f0x3E5B31DC, float f0x3E9ECC37], [3 x float] [float f0x3E6A9D6D, float f0x3E8FD8A9, float f0x3EAAE477], [3 x float] [float f0x3E495755, float f0x3E5DDA4C, float f0x3E6EE0E1], [3 x float] [float f0x3E737F05, float f0x3E8497E3, float f0x3E9BF5BD], [3 x float] [float f0x3E1EE809, float f0x3E86AC35, float f0x3EA34C81], [3 x float] [float f0x3E7F5FC9, float f0x3EA24A01, float f0x3EC16A15], [3 x float] [float f0x3E1AFF0F, float f0x3E3335FE, float f0x3E8E763D], [3 x float] [float f0x3E6115EF, float f0x3E6DEFD6, float f0x3E91F019], [3 x float] [float f0x3E120DC3, float f0x3E766098, float f0x3E9BB649], [3 x float] [float f0x3E78975B, float f0x3E914945, float f0x3EA186C1], [3 x float] [float f0x3E213F27, float f0x3E548130, float f0x3E8D2543], [3 x float] [float f0x3E6A3FB3, float f0x3E7F1207, float f0x3EA801E3], [3 x float] [float f0x3E437423, float f0x3E73D718, float f0x3E96FC6B], [3 x float] [float f0x3E88642C, float f0x3EA0EEBD, float f0x3EAD6617], [3 x float] [float f0x3E2EBD5B, float f0x3E676750, float f0x3E7D4F30], [3 x float] [float f0x3E721E0F, float f0x3E8189AB, float f0x3E9391A1], [3 x float] [float f0x3E3DDFBB, float f0x3E51CE62, float f0x3EA11469], [3 x float] [float f0x3E5E989B, float f0x3E96CFB9, float f0x3EBC5459], [3 x float] [float f0x3E4116EB, float f0x3E5C56A6, float f0x3E8BC69F], [3 x float] [float f0x3E7AFC0D, float f0x3E85009F, float f0x3EA4CE2F], [3 x float] [float f0x3E4B34F3, float f0x3E85B6DB, float f0x3EA25AA7], [3 x float] [float f0x3E991858, float f0x3EA86E25, float f0x3EB69EEB], [3 x float] [float f0x3E220BF7, float f0x3E44D192, float f0x3E7BF6EA], [3 x float] [float f0x3E4F3E1B, float f0x3E7DEAC2, float f0x3E8B22C5], [3 x float] [float f0x3E259783, float f0x3E5AD64C, float f0x3EA79EF9], [3 x float] [float f0x3E5B90D7, float f0x3E9C715F, float f0x3EAADD8D], [3 x float] [float f0x3E25B423, float f0x3E427470, float f0x3E9EFA0F], [3 x float] [float f0x3E60B3EB, float f0x3E87B1F5, float f0x3E9E5B1B], [3 x float] [float f0x3E40D2BF, float f0x3E7F9FD6, float f0x3E922CFF], [3 x float] [float f0x3E89E504, float f0x3E99804F, float f0x3EAEF63F], [3 x float] [float 1.724060e-01, float f0x3E580A6C, float f0x3E693D62], [3 x float] [float f0x3E61917B, float f0x3E6FA1D4, float f0x3EA02D5D], [3 x float] [float f0x3E3BA7CB, float f0x3E636436, float f0x3E9504D1], [3 x float] [float f0x3E785A1B, float f0x3E9E7A67, float f0x3EA928D5], [3 x float] [float f0x3E54871F, float f0x3E660DF6, float f0x3E7A4946], [3 x float] [float f0x3E7BC241, float 2.702860e-01, float f0x3E9C3A47], [3 x float] [float f0x3E3D46D7, float f0x3E8B5045, float f0x3EA00413], [3 x float] [float f0x3E8C6AD6, float f0x3EA47B33, float f0x3EBFD333], [3 x float] [float f0x3E2A6B89, float f0x3E3CEB60, float f0x3E895BBF], [3 x float] [float f0x3E69E7E5, float f0x3E78DBA8, float f0x3E8FF777], [3 x float] [float f0x3E23EEF9, float f0x3E818319, float f0x3EABF0E7], [3 x float] [float 2.621100e-01, float f0x3E975683, float f0x3EA06FF3], [3 x float] [float f0x3E2BBA45, float f0x3E4E5FB2, float f0x3E9A85BD], [3 x float] [float f0x3E7387DD, float f0x3E8510ED, float f0x3EAD2CA1], [3 x float] [float f0x3E49F06D, float f0x3E7B61F8, float f0x3EA2C331], [3 x float] [float f0x3E98CF22, float f0x3EA36F77, float f0x3EAE93D9], [3 x float] [float f0x3E2F4DD5, float f0x3E65B632, float f0x3E868559], [3 x float] [float f0x3E6C2975, float f0x3E81B1E1, float f0x3E9A37C7], [3 x float] [float f0x3E51BAD1, float f0x3E6334EC, float f0x3EA6E517], [3 x float] [float f0x3E6456D7, float f0x3E9CD87B, float f0x3EB39133], [3 x float] [float f0x3E4DAD09, float f0x3E5C8750, float f0x3E917B41], [3 x float] [float f0x3E807CBC, float f0x3E8849F5, float f0x3EAAAE3D], [3 x float] [float f0x3E33D32D, float f0x3E966BD1, float f0x3EAE3F55], [3 x float] [float f0x3E955F9C, float f0x3EAE6373, float f0x3EC3467D]], align 16
@evrc_lspq_full_codebook4 = internal constant [128 x [3 x float]] [[3 x float] [float f0x3E8E0F70, float f0x3EA24A2A, float f0x3ECA7EC2], [3 x float] [float f0x3EAC51A6, float f0x3EB8667E, float 3.814730e-01], [3 x float] [float f0x3E9EFB14, float f0x3EA9D8D4, float f0x3EBBD5A6], [3 x float] [float f0x3EACC8FE, float f0x3ECB28C0, float f0x3ED3205E], [3 x float] [float f0x3E8F2FA6, float f0x3EBBA886, float f0x3EC547CE], [3 x float] [float f0x3EA1CFDC, float f0x3EC56E96, float f0x3ECD77D2], [3 x float] [float f0x3E9EB322, float f0x3EAFD388, float f0x3ED9783E], [3 x float] [float f0x3EB55F6C, float f0x3ED14108, float f0x3ED82666], [3 x float] [float f0x3E975736, float f0x3EAAE01E, float f0x3EC65C22], [3 x float] [float f0x3EAAB97C, float f0x3EC6218E, float f0x3ECD7E26], [3 x float] [float f0x3EA5965E, float f0x3EBB04A0, float f0x3EC5380E], [3 x float] [float f0x3EAF7A90, float f0x3ECE6F40, float f0x3ED6FFCE], [3 x float] [float f0x3E8E2C50, float 3.824950e-01, float f0x3ECEFD06], [3 x float] [float f0x3EA2F166, float f0x3ECABE96, float f0x3EDCDA52], [3 x float] [float f0x3E9B8010, float f0x3EC2B944, float f0x3EDFD536], [3 x float] [float f0x3EC1AF12, float f0x3ED06C70, float f0x3ED86966], [3 x float] [float f0x3E73D4D0, float f0x3EAF562C, float f0x3ED9686A], [3 x float] [float f0x3EB0F48A, float f0x3EBCC3C4, float f0x3ECD37EE], [3 x float] [float f0x3EA2A804, float f0x3EAF0DDE, float f0x3ECFAB0A], [3 x float] [float f0x3EBB94B6, float f0x3EC7303E, float f0x3ECFF37A], [3 x float] [float 2.993980e-01, float f0x3EB43C30, float f0x3ECCC6FE], [3 x float] [float f0x3EA66558, float f0x3EC7B1DC, float f0x3ED6C5EA], [3 x float] [float f0x3EA563A2, float f0x3EBC797A, float f0x3ECDDE72], [3 x float] [float f0x3EB982D4, float 4.169280e-01, float f0x3EDD9482], [3 x float] [float f0x3E8B9EDE, float 3.592050e-01, float f0x3EDA901A], [3 x float] [float f0x3EB16DAC, float f0x3EBD3E64, float f0x3ED4CC4E], [3 x float] [float f0x3EAB105A, float f0x3EB62312, float f0x3ECB22C2], [3 x float] [float f0x3EACC8BC, float f0x3ED21EFE, float f0x3EDA1AF2], [3 x float] [float 2.994690e-01, float f0x3EC2E454, float f0x3ED62956], [3 x float] [float f0x3EA48BAE, float f0x3ED2888C, float f0x3EDB8AB2], [3 x float] [float f0x3EA7DACC, float f0x3EBD1ACE, float f0x3EDE691A], [3 x float] [float f0x3EC2E70E, float f0x3EDA27FE, float f0x3EE2B0BA], [3 x float] [float f0x3E89B2FC, float f0x3EAF9638, float f0x3ECC1FFA], [3 x float] [float f0x3EAD1BD2, float f0x3EC0AF7C, float f0x3EC8B9E2], [3 x float] [float f0x3EA5AE0C, float f0x3EB28E52, float f0x3EBEBF22], [3 x float] [float f0x3EB1F22E, float f0x3EC92846, float f0x3ED7A396], [3 x float] [float f0x3E9BBDDA, float f0x3EB839E4, float f0x3EC36572], [3 x float] [float f0x3EA0E1A0, float f0x3ECDE12C, float f0x3ED7156A], [3 x float] [float f0x3E9A44DA, float f0x3EB9AEEE, float f0x3EDBC856], [3 x float] [float f0x3EBE58AC, float f0x3ECC21EE, float f0x3EDCE592], [3 x float] [float f0x3E8C973A, float f0x3EABD32C, float f0x3ED714AE], [3 x float] [float f0x3EB067A8, float f0x3EC7E94C, float f0x3ED0153E], [3 x float] [float f0x3EA685D6, float f0x3EC1B65E, float f0x3ECA129E], [3 x float] [float f0x3EB69F38, float f0x3EC7F956, float f0x3EDE21BA], [3 x float] [float f0x3E86E9A4, float f0x3ECA5F88, float f0x3ED8A2B6], [3 x float] [float f0x3EACCF82, float f0x3EC8FE14, float f0x3EE30766], [3 x float] [float f0x3EA10910, float f0x3EC30E52, float f0x3ED8690A], [3 x float] [float f0x3EC0A1E2, float f0x3ED5A82E, float f0x3EDCE72E], [3 x float] [float 2.618550e-01, float f0x3EBCBF2E, float f0x3ECEFB3E], [3 x float] [float f0x3EB60E9A, float f0x3EC1887E, float f0x3ECAAF3E], [3 x float] [float f0x3EA7CDE8, float f0x3EB52ED0, float f0x3ED273EA], [3 x float] [float f0x3EB9D5FA, float 3.994670e-01, float f0x3ED45246], [3 x float] [float f0x3E9E6B1A, float f0x3EBF6232, float f0x3EC90C5E], [3 x float] [float f0x3EA97AF8, float f0x3ECD35DE, float f0x3EDD0F8E], [3 x float] [float f0x3EA5AB5E, float f0x3EBCBBB4, float f0x3ED5BCAE], [3 x float] [float f0x3EB2BF50, float f0x3EDA8AC8, float 4.439140e-01], [3 x float] [float f0x3E94589E, float f0x3EBA3EAA, float f0x3ED22E9A], [3 x float] [float f0x3EB5E81C, float f0x3EC7566E, float f0x3ED3AD6A], [3 x float] [float f0x3EAC525E, float f0x3EB86F14, float f0x3ED92DFE], [3 x float] [float f0x3EAE0BA8, float f0x3ED18670, float f0x3EE15FEA], [3 x float] [float f0x3E9A0E38, float f0x3ECCD76E, float f0x3ED5FE4A], [3 x float] [float f0x3EA254A6, float f0x3ED83626, float f0x3EE26BEA], [3 x float] [float f0x3EA798B0, float f0x3EC4C480, float f0x3EDC4ECA], [3 x float] [float f0x3ECC488A, float f0x3EDBE738, float f0x3EE30F2E], [3 x float] [float f0x3E7F16B9, float f0x3EA6C1BE, float f0x3ED2CE0C], [3 x float] [float f0x3EB11DA2, float f0x3EBCB632, float f0x3EC6E5F8], [3 x float] [float f0x3EA05E54, float f0x3EADAF7C, float f0x3EC6733C], [3 x float] [float f0x3EB3F1C6, float f0x3ECC2660, float f0x3ED347AC], [3 x float] [float f0x3E9643F2, float f0x3EC06406, float f0x3EC9FA58], [3 x float] [float f0x3EA62108, float f0x3EC9D4F6, float f0x3ED15914], [3 x float] [float f0x3EA01BA2, float f0x3EB7271C, float f0x3ED3FFD4], [3 x float] [float f0x3EBBA6D4, float f0x3ED0FBD4, float f0x3ED9084C], [3 x float] [float f0x3E99951A, float f0x3EA9FB0A, float f0x3ED0D30C], [3 x float] [float f0x3EAB7B50, float f0x3EC5B48A, float f0x3ED2B520], [3 x float] [float f0x3EAB6956, float f0x3EBB7E10, float f0x3EC964CC], [3 x float] [float f0x3EB21920, float f0x3ECFD598, float f0x3EDC6B74], [3 x float] [float f0x3E92686C, float f0x3ECA6292, float f0x3ED50D98], [3 x float] [float f0x3EA5D1F2, float f0x3ED01DB6, float f0x3EE28D1C], [3 x float] [float f0x3EA228B0, float f0x3EC4D6D8, float f0x3EE0FA7C], [3 x float] [float f0x3EC6071A, float f0x3ED2DAAC, float f0x3EDB0CBC], [3 x float] [float f0x3E73C940, float f0x3EB984F0, float f0x3EDCA314], [3 x float] [float f0x3EB161E6, float f0x3EC21728, float f0x3ED029A8], [3 x float] [float f0x3EA21654, float f0x3EB6830E, float f0x3ECADD20], [3 x float] [float f0x3EBBAB06, float f0x3EC77876, float f0x3ED79498], [3 x float] [float f0x3E9DD85E, float f0x3EBE1E38, float f0x3ED0D400], [3 x float] [float f0x3EAC413C, float f0x3EC87494, float f0x3ED89074], [3 x float] [float f0x3EA564EA, float f0x3EC2C9FE, float f0x3ED1B090], [3 x float] [float f0x3EBAFF2C, float f0x3EDB1712, float f0x3EE32B80], [3 x float] [float f0x3E8B4892, float f0x3EC0D14C, float f0x3EDE0C14], [3 x float] [float f0x3EB71FF8, float f0x3EC169F8, float f0x3ED17FE8], [3 x float] [float f0x3EAC498A, float f0x3EBA7A82, float f0x3ED189F0], [3 x float] [float f0x3EB237DC, float f0x3ED5D3D6, float f0x3EDDD778], [3 x float] [float f0x3E9B02A4, float f0x3ECABD34, float f0x3EDE1030], [3 x float] [float f0x3EA9D17A, float f0x3ED5CDFC, float f0x3EDF5AD4], [3 x float] [float f0x3EAAA4AC, float f0x3EC2F81A, float f0x3EE115F8], [3 x float] [float 3.881120e-01, float f0x3EDFB5C2, float f0x3EE6D318], [3 x float] [float f0x3E8315EC, float f0x3EB22F0C, float f0x3ED88950], [3 x float] [float 3.457740e-01, float f0x3EC37190, float f0x3ECB2898], [3 x float] [float f0x3EA6B828, float f0x3EB36692, float f0x3EC65034], [3 x float] [float f0x3EB6B76A, float f0x3ECC11FE, float f0x3ED8AAB0], [3 x float] [float f0x3E9A3A52, float f0x3EC618AC, float f0x3ECE8200], [3 x float] [float f0x3EA80700, float f0x3ECDDEC4, float f0x3ED6BA30], [3 x float] [float f0x3EA0F71E, float f0x3EBCF352, float f0x3EDE6670], [3 x float] [float f0x3EBEA0E0, float f0x3ED2C6BA, float f0x3EE18BAC], [3 x float] [float f0x3E94B9C2, float f0x3EB23D08, float f0x3EDA390C], [3 x float] [float f0x3EB05A48, float f0x3EC3ECD8, float f0x3ED5AB1C], [3 x float] [float f0x3EAB73AA, float f0x3EC0A1F6, float f0x3ECF1760], [3 x float] [float f0x3EB7D22C, float f0x3ECF37B6, float f0x3EDEA324], [3 x float] [float f0x3E8EE9DC, float f0x3ED27C90, float f0x3EDEE794], [3 x float] [float f0x3EB23D82, float f0x3ECC269C, float f0x3EE4D3AC], [3 x float] [float f0x3EA76F04, float f0x3EC7BC26, float f0x3EE2277C], [3 x float] [float f0x3EC81E96, float f0x3ED6F1DA, float f0x3EDECC70], [3 x float] [float f0x3E82B936, float f0x3EBDA5DA, float f0x3EDD47D4], [3 x float] [float 3.546520e-01, float f0x3EC6D38A, float f0x3ECE5044], [3 x float] [float f0x3EA4A9D4, float f0x3EB57FB0, float f0x3EDB4A1C], [3 x float] [float f0x3EC0156E, float 3.988340e-01, float f0x3ED40F10], [3 x float] [float f0x3E9FB862, float f0x3EC8699A, float f0x3ED33A14], [3 x float] [float f0x3EAF5FF0, float f0x3ECAF066, float f0x3EDD704C], [3 x float] [float f0x3EAAE08A, float f0x3EC0BA70, float 4.205370e-01], [3 x float] [float f0x3EB501C4, float f0x3EDBC42C, float f0x3EEB5DB4], [3 x float] [float f0x3E937716, float f0x3EC18936, float f0x3EDE36C8], [3 x float] [float f0x3EB61C24, float f0x3EC2F59A, float f0x3ED8A688], [3 x float] [float f0x3EB04FBA, float f0x3EBE8F04, float f0x3EDCCED0], [3 x float] [float f0x3EB53B0C, float f0x3ED40DA8, float f0x3EE2C934], [3 x float] [float f0x3E9C0AD8, float f0x3ED3357E, float f0x3EDE4D40], [3 x float] [float f0x3EABFCD6, float f0x3ED963F6, float f0x3EE48BB8], [3 x float] [float f0x3EAFFE74, float f0x3EC50014, float f0x3EDEDBE4], [3 x float] [float f0x3ED266E6, float f0x3EE19E94, float f0x3EE77B68]], align 16
@evrc_lspq_quant_codebooks_row_sizes = internal constant [2 x i8] c"\05\05", align 1
@evrc_lspq_half_codebooks_row_sizes = internal constant [3 x i8] c"\03\03\04", align 1
@evrc_lspq_full_codebooks_row_sizes = internal constant [4 x i8] c"\02\02\03\03", align 1
@interpolate_delay.d_interpolation_factors = internal unnamed_addr constant [5 x float] [float 0.000000e+00, float 3.313000e-01, float 6.625000e-01, float 1.000000e+00, float 1.000000e+00], align 16
@interpolate_lsp.lsp_interpolation_factors = internal unnamed_addr constant [3 x float] [float 1.667000e-01, float 5.000000e-01, float f0x3F555326], align 4
@estimation_delay = internal unnamed_addr constant [5 x float] [float 5.500000e+01, float 8.000000e+01, float 3.900000e+01, float 7.100000e+01, float 3.300000e+01], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @evrc_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.c) #9
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !29
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 4, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !30
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 348
  store <2 x i32> <i32 3, i32 1>, ptr %i.d, align 4, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !32
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 8000, ptr %i.e, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1808
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1040
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.j, i8 0, i64 512, i1 false), !tbaa !33
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader
  %index = phi i64 [ 0, %.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  store <4 x float> zeroinitializer, ptr %i.k, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, 128
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !34

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.m = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.n = uitofp nneg i32 %i.m to double
  %i.o = fmul nnan nsz double %i.n, 4.800000e-02
  %i.p = fptrunc nsz double %i.o to float
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store float %i.p, ptr %i.q, align 4, !tbaa !33
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.r, align 4, !tbaa !33
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 1, ptr %i.s, align 4, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1028
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 2876
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 2885
  store i8 0, ptr %i.v, align 1, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1036
  store float 0.000000e+00, ptr %i.w, align 4, !tbaa !45
  store <2 x float> <float 4.000000e+01, float 0.000000e+00>, ptr %i.t, align 4, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 2320
  br label %bb.e

bb.e:                                             ; preds = %middle.block, %bb.i
  %.252 = phi i32 [ 0, %middle.block ], [ %i.ax, %bb.i ] ; 2 uses
  %.04451 = phi i32 [ 0, %middle.block ], [ %i.ac, %bb.i ] ; 2 uses
  %i.y = add nsw i32 %.252, -4
  %i.z = sitofp i32 %i.y to float
  %i.aa = fmul nnan nsz float %i.z, 1.250000e-01
  %i.ab = sext i32 %.04451 to i64
  %i.ac = add i32 %.04451, 17                     ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.h
  %indvars.iv58 = phi i64 [ %i.ab, %bb.e ], [ %indvars.iv.next59, %bb.h ] ; 2 uses
  %.04350 = phi i32 [ -8, %bb.e ], [ %i.aw, %bb.h ] ; 2 uses
  %i.ad = sitofp nsz i32 %.04350 to float
  %i.ae = fsub nsz float %i.aa, %i.ad
  %i.af = fpext nsz float %i.ae to double         ; 2 uses
  %i.ag = fmul nnan nsz double %i.af, f0x40069E9565708EFC
  %i.ah = fptrunc nsz double %i.ag to float       ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv58
  %i.aj = fcmp nsz une float %i.ah, 0.000000e+00
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = fmul nnan nsz double %i.af, f0x400921FB54442D18
  %i.al = fptrunc nnan nsz double %i.ak to float
  %i.am = fmul nnan nsz float %i.al, f0x3DF0F0F1
  %i.an = fpext nsz float %i.am to double
  %i.ao = tail call nsz double @llvm.cos.f64(double %i.an)
  %i.ap = tail call nsz double @llvm.fmuladd.f64(double %i.ao, double 4.600000e-01, double 5.400000e-01)
  %i.aq = fpext nsz float %i.ah to double         ; 2 uses
  %i.ar = tail call nsz double @llvm.sin.f64(double %i.aq)
  %i.as = fmul nsz double %i.ar, %i.ap
  %i.at = fdiv nsz double %i.as, %i.aq
  %i.au = fmul nsz double %i.at, f0x3FECCCCCC0000000
  %i.av = fptrunc nsz double %i.au to float
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi float [ %i.av, %bb.g ], [ f0x3F666666, %bb.f ]
  store float %storemerge, ptr %i.ai, align 4, !tbaa !33
  %i.aw = add nsw i32 %.04350, 1
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next59 to i32
  %exitcond61.not = icmp eq i32 %i.ac, %lftr.wideiv
  br i1 %exitcond61.not, label %bb.i, label %bb.f, !llvm.loop !46

bb.i:                                             ; preds = %bb.h
  %i.ax = add nuw nsw i32 %.252, 1                ; 2 uses
  %exitcond62.not = icmp eq i32 %i.ax, 8
  br i1 %exitcond62.not, label %bb.j, label %bb.e, !llvm.loop !47

bb.j:                                             ; preds = %bb.i
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @evrc_decode_frame(ptr noundef %0, ptr noundef initializes((112, 116)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [10 x float], align 16            ; 4 uses
  %i.b = alloca [10 x float], align 16            ; 5 uses
  %i.c = alloca [60 x float], align 16            ; 4 uses
  %i.d = alloca [10 x float], align 16            ; 4 uses
  %i.e = alloca [10 x float], align 16            ; 9 uses
  %i.f = alloca [60 x float], align 16            ; 33 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9    ; 245 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !50   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 160, ptr %i.n, align 8, !tbaa !51
  %i.o = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #9 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.ce, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !56     ; 2 uses
  switch i32 %i.m, label %bb.q [
    i32 23, label %bb.f
    i32 11, label %bb.c
    i32 6, label %bb.d
    i32 3, label %bb.e
    i32 1, label %.thread.i
    i32 22, label %bb.p
    i32 10, label %bb.l
    i32 5, label %bb.m
    i32 2, label %bb.n
    i32 0, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  br label %bb.f

.thread.i:                                        ; preds = %bb.b
  %i.r = load i8, ptr %i.h, align 1, !tbaa !30
  %i.s = zext i8 %i.r to i32
  br label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i.ph.i = phi i32 [ 4, %bb.b ], [ 1, %bb.e ], [ 2, %bb.d ], [ 3, %bb.c ] ; 2 uses
  %i.t = load i8, ptr %i.h, align 1, !tbaa !30
  %i.u = zext i8 %i.t to i32                      ; 3 uses
  %i.v = icmp samesign ugt i32 %.0.i.ph.i, %i.u
  br i1 %i.v, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2886 ; 2 uses
  %i.y = load i8, ptr %i.x, align 2, !tbaa !57
  %.not.i = icmp eq i8 %i.y, 0
  br i1 %.not.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.8) #9
  store i8 1, ptr %i.x, align 2, !tbaa !57
  %.pre28.i = load i8, ptr %i.h, align 1, !tbaa !30
  %.pre31.i = zext i8 %.pre28.i to i32
  br label %bb.k

bb.i:                                             ; preds = %bb.f, %.thread.i
  %i.z = phi i32 [ %i.s, %.thread.i ], [ %i.u, %bb.f ]
  %.0.i.ph25.i = phi i32 [ 0, %.thread.i ], [ %.0.i.ph.i, %bb.f ] ; 2 uses
  %i.aa = icmp samesign ult i32 %.0.i.ph25.i, %i.z
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9) #9
  br label %bb.q

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.0.i = phi i32 [ %.0.i.ph25.i, %bb.i ], [ %.pre31.i, %bb.h ], [ %i.u, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.ac = add nsw i32 %i.m, -1
  br label %bb.r

bb.l:                                             ; preds = %bb.b
  br label %bb.p

bb.m:                                             ; preds = %bb.b
  br label %bb.p

bb.n:                                             ; preds = %bb.b
  br label %bb.p

bb.o:                                             ; preds = %bb.b
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.b
  %.0.i20.ph.i = phi i32 [ 4, %bb.b ], [ 1, %bb.n ], [ 2, %bb.m ], [ 3, %bb.l ], [ 0, %bb.o ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.10) #9
  br label %bb.r

bb.q:                                             ; preds = %bb.j, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  store i32 -1, ptr %i.ad, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !59
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.11, i64 noundef %i.af, ptr noundef nonnull @.str.6) #9
  br label %decode_lspf.exit.thread

bb.r:                                             ; preds = %bb.p, %bb.k
  %.0258 = phi ptr [ %i.h, %bb.p ], [ %i.ab, %bb.k ] ; 44 uses
  %.0257 = phi i32 [ %i.m, %bb.p ], [ %i.ac, %bb.k ]
  %.016.i = phi i32 [ %.0.i20.ph.i, %bb.p ], [ %.0.i, %bb.k ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 24 uses
  store i32 %.016.i, ptr %i.ag, align 8, !tbaa !58
  switch i32 %.016.i, label %bb.u [
    i32 2, label %decode_lspf.exit.thread
    i32 0, label %decode_lspf.exit.thread
    i32 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !39
  %i.aj = icmp eq i32 %i.ai, 4
  br i1 %i.aj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 2885
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !44
  %.not = icmp eq i8 %i.al, 0
  br i1 %.not, label %decode_lspf.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t, %bb.s
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.an = shl nuw nsw i32 %.0257, 3
  %.not348 = icmp eq ptr %.0258, null             ; 2 uses
  %.013.i.i = select i1 %.not348, i32 0, i32 %i.an ; 2 uses
  store ptr %.0258, ptr %i.am, align 8, !tbaa !60
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store i32 %.013.i.i, ptr %i.ao, align 4, !tbaa !61
  %i.ap = add nuw nsw i32 %.013.i.i, 8            ; 38 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !62
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 43 uses
  store i32 0, ptr %i.ar, align 8, !tbaa !63
  br i1 %.not348, label %bb.ce, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(46) %i.as, i8 0, i64 46, i1 false)
  switch i32 %.016.i, label %unpack_frame.exit [
    i32 4, label %bb.w
    i32 3, label %bb.x
    i32 1, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.at = load i8, ptr %.0258, align 1, !tbaa !30
  store i32 1, ptr %i.ar, align 8, !tbaa !63
  %i.au = lshr i8 %i.at, 7
  store i8 %i.au, ptr %i.as, align 8, !tbaa !64
  %i.av = load i32, ptr %.0258, align 1, !tbaa !30
  store i32 7, ptr %i.ar, align 8, !tbaa !63
  %i.aw = trunc i32 %i.av to i16
  %i.ax = lshr i16 %i.aw, 1
  %i.ay = and i16 %i.ax, 63
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 50
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !65
  %i.ba = load i32, ptr %.0258, align 1, !tbaa !30
  %i.bb = tail call i32 @llvm.bswap.i32(i32 %i.ba)
  %i.bc = lshr i32 %i.bb, 19
  %i.bd = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 13) ; 3 uses
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !63
  %i.be = trunc nuw nsw i32 %i.bc to i16
  %i.bf = and i16 %i.be, 63
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  store i16 %i.bf, ptr %i.bg, align 4, !tbaa !65
  %i.bh = getelementptr inbounds nuw i8, ptr %.0258, i64 1
  %i.bi = load i32, ptr %i.bh, align 1, !tbaa !30
  %i.bj = tail call i32 @llvm.bswap.i32(i32 %i.bi)
  %i.bk = and i32 %i.bd, 5
  %i.bl = shl i32 %i.bj, %i.bk
  %i.bm = lshr i32 %i.bl, 23
  %i.bn = add nuw nsw i32 %i.bd, 9
  %i.bo = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.bn) ; 4 uses
  store i32 %i.bo, ptr %i.ar, align 8, !tbaa !63
  %i.bp = trunc nuw nsw i32 %i.bm to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 54
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !65
  %i.br = lshr i32 %i.bo, 3
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.0258, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 1, !tbaa !30
  %i.bv = tail call i32 @llvm.bswap.i32(i32 %i.bu)
  %i.bw = and i32 %i.bo, 7
  %i.bx = shl i32 %i.bv, %i.bw
  %i.by = lshr i32 %i.bx, 25
  %i.bz = add nuw nsw i32 %i.bo, 7
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.bz) ; 4 uses
  store i32 %i.ca, ptr %i.ar, align 8, !tbaa !63
  %i.cb = trunc nuw nsw i32 %i.by to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i16 %i.cb, ptr %i.cc, align 8, !tbaa !65
  %i.cd = lshr i32 %i.ca, 3
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.0258, i64 %i.ce
end_hunk_0
begin_hunk_1_@evrc_decode_frame:bb.a
  %indvars.iv.next.i.lcssa = phi i64 [ %i.xa, %middle.block ], [ %indvars.iv.next.i.lcssa474.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.i.3, %scalar.ph ]
  %i.xx = trunc nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.ac
  %.1.lcssa.i = phi i32 [ %.045.i, %bb.ac ], [ %i.xx, %._crit_edge.loopexit.i ]
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count69.i
  br i1 %exitcond70.not.i, label %.preheader40.i, label %bb.ac, !llvm.loop !80

bb.ad:                                            ; preds = %.preheader40.i
  %i.xy = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.xz = load float, ptr %i.xy, align 8, !tbaa !33 ; 2 uses
  %i.ya = fcmp nsz ugt float %i.xz, %i.wg
  br i1 %i.ya, label %bb.ae, label %decode_lspf.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.yb = getelementptr inbounds nuw i8, ptr %i.j, i64 108
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !33 ; 2 uses
  %i.yd = fcmp nsz ugt float %i.yc, %i.xz
  br i1 %i.yd, label %bb.af, label %decode_lspf.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.ye = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.yf = load float, ptr %i.ye, align 8, !tbaa !33 ; 2 uses
  %i.yg = fcmp nsz ugt float %i.yf, %i.yc
  br i1 %i.yg, label %bb.ag, label %decode_lspf.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.yh = getelementptr inbounds nuw i8, ptr %i.j, i64 116
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !33 ; 2 uses
  %i.yj = fcmp nsz ugt float %i.yi, %i.yf
  br i1 %i.yj, label %bb.ah, label %decode_lspf.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.yk = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.yl = load float, ptr %i.yk, align 8, !tbaa !33 ; 2 uses
  %i.ym = fcmp nsz ugt float %i.yl, %i.yi
  br i1 %i.ym, label %bb.ai, label %decode_lspf.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.yn = getelementptr inbounds nuw i8, ptr %i.j, i64 124
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !33 ; 2 uses
  %i.yp = fcmp nsz ugt float %i.yo, %i.yl
  br i1 %i.yp, label %bb.aj, label %decode_lspf.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.yq = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.yr = load float, ptr %i.yq, align 8, !tbaa !33 ; 2 uses
  %i.ys = fcmp nsz ugt float %i.yr, %i.yo
  br i1 %i.ys, label %bb.ak, label %decode_lspf.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.yt = getelementptr inbounds nuw i8, ptr %i.j, i64 132
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !33
  %i.yv = fcmp nsz ole float %i.yu, %i.yr         ; 2 uses
  %brmerge.i = or i1 %.not.i200265, %i.yv
  br i1 %brmerge.i, label %decode_lspf.exit, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %bb.ak
  %i.yw = getelementptr inbounds [8 x i8], ptr @evrc_lspq_codebooks_row_sizes, i64 %i.wd
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !56
  %i.yy = tail call i32 @llvm.smax.i32(i32 %i.wc, i32 2)
  %smax.i = add nsw i32 %i.yy, -1
  %wide.trip.count78.i = zext nneg i32 %smax.i to i64
  br label %bb.am

bb.al:                                            ; preds = %bb.am
  %indvars.iv.next76.i = add nuw nsw i64 %indvars.iv75.i, 1 ; 2 uses
  %exitcond79.not.i = icmp eq i64 %indvars.iv.next76.i, %wide.trip.count78.i
  br i1 %exitcond79.not.i, label %decode_lspf.exit.thread267, label %bb.am, !llvm.loop !81

bb.am:                                            ; preds = %bb.al, %.lr.ph52.i
  %indvars.iv75.i = phi i64 [ 0, %.lr.ph52.i ], [ %indvars.iv.next76.i, %bb.al ] ; 2 uses
  %.251.i = phi i32 [ 0, %.lr.ph52.i ], [ %i.zc, %bb.al ]
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 %indvars.iv75.i
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !30
  %i.zb = zext i8 %i.za to i32
  %i.zc = add nuw nsw i32 %.251.i, %i.zb          ; 2 uses
  %i.zd = zext nneg i32 %i.zc to i64
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %i.zd ; 2 uses
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !33
  %i.zg = getelementptr i8, ptr %i.ze, i64 -4
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !33
  %i.zi = fsub nsz float %i.zf, %i.zh
  %i.zj = fpext nsz float %i.zi to double
  %i.zk = fcmp nsz ugt double %i.zj, f0x3F804C26BE3B06CF
  br i1 %i.zk, label %bb.al, label %decode_lspf.exit.thread

decode_lspf.exit:                                 ; preds = %bb.ak
  br i1 %i.yv, label %decode_lspf.exit.thread, label %decode_lspf.exit.thread267

decode_lspf.exit.thread267:                       ; preds = %bb.al, %decode_lspf.exit
  %.off = add i32 %i.sb, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.an, label %.preheader273

.preheader273:                                    ; preds = %decode_lspf.exit.thread267
  %i.zl = getelementptr inbounds nuw i8, ptr %i.j, i64 91
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !71  ; 2 uses
  %i.zn = zext i8 %i.zm to i64
  %i.zo = getelementptr inbounds nuw [12 x i8], ptr @evrc_energy_quant, i64 %i.zn ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.j, i64 2864
  %i.zq = load <2 x float>, ptr %i.zo, align 4, !tbaa !33
  %i.zr = fpext <2 x float> %i.zq to <2 x double>
  %i.zs = tail call nsz <2 x double> @llvm.pow.v2f64(<2 x double> splat (double 1.000000e+01), <2 x double> %i.zr)
  %i.zt = fptrunc <2 x double> %i.zs to <2 x float>
  store <2 x float> %i.zt, ptr %i.zp, align 8, !tbaa !33
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !33
  %i.zw = fpext nsz float %i.zv to double
  %i.zx = tail call nsz double @llvm.pow.f64(double 1.000000e+01, double %i.zw)
  %i.zy = fptrunc nsz double %i.zx to float
  %i.zz = getelementptr inbounds nuw i8, ptr %i.j, i64 2872
  store float %i.zy, ptr %i.zz, align 8, !tbaa !33
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.j, i64 2884
  store i8 %i.zm, ptr %i.aaa, align 4, !tbaa !82
  br label %bb.av

bb.an:                                            ; preds = %decode_lspf.exit.thread267
  %i.aab = getelementptr inbounds nuw i8, ptr %i.j, i64 58
  %i.aac = load i8, ptr %i.aab, align 2, !tbaa !83 ; 2 uses
  %i.aad = icmp ugt i8 %i.aac, 100
  br i1 %i.aad, label %decode_lspf.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %narrow = add nuw nsw i8 %i.aac, 20
  %i.aae = uitofp nneg i8 %narrow to float        ; 7 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.j, i64 1024 ; 2 uses
  store float %i.aae, ptr %i.aaf, align 8, !tbaa !84
  %i.aag = getelementptr inbounds nuw i8, ptr %i.j, i64 59
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !85 ; 2 uses
  %.not188 = icmp eq i8 %i.aah, 0
  br i1 %.not188, label %.thread269, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.aai = uitofp i8 %i.aah to float              ; 2 uses
  %i.aaj = fsub nsz float %i.aae, %i.aai
  %i.aak = fadd nsz float %i.aaj, 1.600000e+01
  %i.aal = fptosi float %i.aak to i32
  %i.aam = add i32 %i.aal, -121
  %or.cond = icmp ult i32 %i.aam, -101
  br i1 %or.cond, label %decode_lspf.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.aan = icmp eq i32 %i.sb, 4
  br i1 %i.aan, label %bb.ar, label %.thread269

bb.ar:                                            ; preds = %bb.aq
  %i.aao = getelementptr inbounds nuw i8, ptr %i.j, i64 2885
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !44
  %.not190 = icmp eq i8 %i.aap, 0
  br i1 %.not190, label %.thread269, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.j, i64 1040 ; 4 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.j, i64 1808
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.aaq, ptr noundef nonnull align 8 dereferenceable(512) %i.aar, i64 512, i1 false)
  %i.aas = getelementptr inbounds nuw i8, ptr %i.j, i64 1028 ; 4 uses
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !86 ; 3 uses
  %i.aau = fsub nsz float %i.aat, %i.aai
  %i.aav = fadd nsz float %i.aau, 1.600000e+01    ; 3 uses
  store float %i.aav, ptr %i.aas, align 4, !tbaa !86
  %i.aaw = fsub nsz float %i.aae, %i.aat
  %i.aax = tail call nsz float @llvm.fabs.f32(float %i.aaw)
  %i.aay = fcmp nsz ogt float %i.aax, 1.500000e+01
  %.0168 = select nsz i1 %i.aay, float %i.aae, float %i.aat ; 4 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.j, i64 1552 ; 9 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.j, i64 1032 ; 3 uses
  %i.abb = fpext nsz float %i.aav to double       ; 2 uses
  %i.abc = fmul nsz float %.0168, 0.000000e+00
  %i.abd = fadd nsz float %i.aav, %i.abc          ; 2 uses
  %i.abe = fmul nsz float %.0168, 3.313000e-01
  %i.abf = fpext nsz float %i.abe to double       ; 2 uses
  %i.abg = tail call nsz double @llvm.fmuladd.f64(double %i.abb, double f0x3FE565FD90000000, double %i.abf)
  %i.abh = fptrunc nsz double %i.abg to float     ; 5 uses
  %i.abi = load float, ptr %i.aba, align 8, !tbaa !87 ; 2 uses
  %i.abj = fsub nsz float %i.abh, %i.abd
  %i.abk = fmul nsz float %i.abj, f0x3C9A90E8
  br label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %bb.as, %.lr.ph.i202
  %indvars.iv.i203 = phi i64 [ %indvars.iv.next.i204, %.lr.ph.i202 ], [ 0, %bb.as ] ; 2 uses
  %i.abl = phi float [ %i.abp, %.lr.ph.i202 ], [ 0.000000e+00, %bb.as ]
  %i.abm = tail call nsz float @llvm.fmuladd.f32(float %i.abl, float %i.abk, float %i.abd)
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %indvars.iv.i203
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.abn, float noundef %i.abm)
  %indvars.iv.next.i204 = add nuw nsw i64 %indvars.iv.i203, 1 ; 3 uses
  %i.abo = trunc nuw nsw i64 %indvars.iv.next.i204 to i32
  %i.abp = uitofp nneg i32 %i.abo to float
  %exitcond305.not.a = icmp eq i64 %indvars.iv.next.i204, 53
  br i1 %exitcond305.not.a, label %.lr.ph43.preheader.i, label %.lr.ph.i202, !llvm.loop !88

.lr.ph43.preheader.i:                             ; preds = %.lr.ph.i202
  %i.abq = fmul nsz float %.0168, 6.625000e-01
  %i.abr = fpext nsz float %i.abq to double       ; 3 uses
  %i.abs = tail call nsz double @llvm.fmuladd.f64(double %i.abb, double f0x3FD5999980000000, double %i.abr)
  %i.abt = fptrunc nsz double %i.abs to float
  %i.abu = fsub nsz float %i.abt, %i.abh
  %i.abv = fmul nsz float %i.abu, f0x3C9A90E8     ; 3 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.j, i64 1764 ; 2 uses
  %i.abx = fadd nsz float %i.abv, %i.abh
  %i.aby = getelementptr inbounds nuw i8, ptr %i.j, i64 1768 ; 3 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.j, i64 1772 ; 3 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.j, i64 1776 ; 3 uses
  %i.acb = insertelement <4 x float> poison, float %i.abv, i64 0
  %i.acc = shufflevector <4 x float> %i.acb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acd = insertelement <4 x float> poison, float %i.abh, i64 0
  %i.ace = shufflevector <4 x float> %i.acd, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acf = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acc, <4 x float> <float 0.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00>, <4 x float> %i.ace) ; 4 uses
  %i.acg = extractelement <4 x float> %i.acf, i64 0
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.abw, float noundef %i.acg)
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.aby, float noundef %i.abx)
  %i.ach = extractelement <4 x float> %i.acf, i64 1
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.abz, float noundef %i.ach)
  %i.aci = extractelement <4 x float> %i.acf, i64 2
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.aca, float noundef %i.aci)
  %i.acj = getelementptr inbounds nuw i8, ptr %i.j, i64 1780 ; 3 uses
  %i.ack = extractelement <4 x float> %i.acf, i64 3
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.acj, float noundef %i.ack)
  %i.acl = getelementptr inbounds nuw i8, ptr %i.j, i64 1784 ; 3 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.j, i64 1788 ; 3 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.j, i64 1792 ; 3 uses
  %i.aco = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acc, <4 x float> <float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00>, <4 x float> %i.ace) ; 4 uses
  %i.acp = extractelement <4 x float> %i.aco, i64 0
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.acl, float noundef %i.acp)
  %i.acq = extractelement <4 x float> %i.aco, i64 1
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.acm, float noundef %i.acq)
  %i.acr = extractelement <4 x float> %i.aco, i64 2
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.acn, float noundef %i.acr)
  %i.acs = getelementptr inbounds nuw i8, ptr %i.j, i64 1796 ; 3 uses
  %i.act = extractelement <4 x float> %i.aco, i64 3
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.acs, float noundef %i.act)
  %i.acu = tail call nsz float @llvm.fmuladd.f32(float %i.abv, float 9.000000e+00, float %i.abh)
  %i.acv = getelementptr inbounds nuw i8, ptr %i.j, i64 1800 ; 3 uses
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.acv, float noundef %i.acu)
  %i.acw = load <4 x float>, ptr %i.aaz, align 8, !tbaa !33
  %i.acx = insertelement <4 x float> poison, float %i.abi, i64 0
  %i.acy = shufflevector <4 x float> %i.acx, <4 x float> poison, <4 x i32> zeroinitializer ; 13 uses
  %i.acz = fmul nsz <4 x float> %i.acy, %i.acw
  store <4 x float> %i.acz, ptr %i.aaz, align 8, !tbaa !33
  %i.ada = getelementptr inbounds nuw i8, ptr %i.j, i64 1568 ; 6 uses
  %i.adb = load <4 x float>, ptr %i.ada, align 8, !tbaa !33
  %i.adc = fmul nsz <4 x float> %i.acy, %i.adb
  store <4 x float> %i.adc, ptr %i.ada, align 8, !tbaa !33
  %i.add = getelementptr inbounds nuw i8, ptr %i.j, i64 1584 ; 6 uses
  %i.ade = load <4 x float>, ptr %i.add, align 8, !tbaa !33
  %i.adf = fmul nsz <4 x float> %i.acy, %i.ade
  store <4 x float> %i.adf, ptr %i.add, align 8, !tbaa !33
  %i.adg = getelementptr inbounds nuw i8, ptr %i.j, i64 1600 ; 6 uses
  %i.adh = load <4 x float>, ptr %i.adg, align 8, !tbaa !33
  %i.adi = fmul nsz <4 x float> %i.acy, %i.adh
  store <4 x float> %i.adi, ptr %i.adg, align 8, !tbaa !33
  %i.adj = getelementptr inbounds nuw i8, ptr %i.j, i64 1616 ; 6 uses
  %i.adk = load <4 x float>, ptr %i.adj, align 8, !tbaa !33
  %i.adl = fmul nsz <4 x float> %i.acy, %i.adk
  store <4 x float> %i.adl, ptr %i.adj, align 8, !tbaa !33
  %i.adm = getelementptr inbounds nuw i8, ptr %i.j, i64 1632 ; 6 uses
  %i.adn = load <4 x float>, ptr %i.adm, align 8, !tbaa !33
  %i.ado = fmul nsz <4 x float> %i.acy, %i.adn
  store <4 x float> %i.ado, ptr %i.adm, align 8, !tbaa !33
  %i.adp = getelementptr inbounds nuw i8, ptr %i.j, i64 1648 ; 6 uses
  %i.adq = load <4 x float>, ptr %i.adp, align 8, !tbaa !33
  %i.adr = fmul nsz <4 x float> %i.acy, %i.adq
  store <4 x float> %i.adr, ptr %i.adp, align 8, !tbaa !33
  %i.ads = getelementptr inbounds nuw i8, ptr %i.j, i64 1664 ; 6 uses
  %i.adt = load <4 x float>, ptr %i.ads, align 8, !tbaa !33
  %i.adu = fmul nsz <4 x float> %i.acy, %i.adt
  store <4 x float> %i.adu, ptr %i.ads, align 8, !tbaa !33
  %i.adv = getelementptr inbounds nuw i8, ptr %i.j, i64 1680 ; 6 uses
  %i.adw = load <4 x float>, ptr %i.adv, align 8, !tbaa !33
  %i.adx = fmul nsz <4 x float> %i.acy, %i.adw
  store <4 x float> %i.adx, ptr %i.adv, align 8, !tbaa !33
  %i.ady = getelementptr inbounds nuw i8, ptr %i.j, i64 1696 ; 6 uses
  %i.adz = load <4 x float>, ptr %i.ady, align 8, !tbaa !33
  %i.aea = fmul nsz <4 x float> %i.acy, %i.adz
  store <4 x float> %i.aea, ptr %i.ady, align 8, !tbaa !33
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.j, i64 1712 ; 6 uses
  %i.aec = load <4 x float>, ptr %i.aeb, align 8, !tbaa !33
  %i.aed = fmul nsz <4 x float> %i.acy, %i.aec
  store <4 x float> %i.aed, ptr %i.aeb, align 8, !tbaa !33
  %i.aee = getelementptr inbounds nuw i8, ptr %i.j, i64 1728 ; 6 uses
  %i.aef = load <4 x float>, ptr %i.aee, align 8, !tbaa !33
  %i.aeg = fmul nsz <4 x float> %i.acy, %i.aef
  store <4 x float> %i.aeg, ptr %i.aee, align 8, !tbaa !33
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.j, i64 1744 ; 6 uses
  %i.aei = load <4 x float>, ptr %i.aeh, align 8, !tbaa !33
  %i.aej = fmul nsz <4 x float> %i.acy, %i.aei
  store <4 x float> %i.aej, ptr %i.aeh, align 8, !tbaa !33
  %i.aek = getelementptr inbounds nuw i8, ptr %i.j, i64 1760 ; 6 uses
  %i.ael = load float, ptr %i.aek, align 8, !tbaa !33
  %i.aem = fmul nsz float %i.abi, %i.ael
  store float %i.aem, ptr %i.aek, align 8, !tbaa !33
  %i.aen = getelementptr inbounds nuw i8, ptr %i.j, i64 1252 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.aaq, ptr noundef nonnull align 4 dereferenceable(512) %i.aen, i64 512, i1 false)
  %i.aeo = load float, ptr %i.aas, align 4, !tbaa !86
  %i.aep = fpext nsz float %i.aeo to double       ; 3 uses
  %i.aeq = tail call nsz double @llvm.fmuladd.f64(double %i.aep, double f0x3FE565FD90000000, double %i.abf)
  %i.aer = fptrunc nsz double %i.aeq to float     ; 2 uses
  %i.aes = tail call nsz double @llvm.fmuladd.f64(double %i.aep, double f0x3FD5999980000000, double %i.abr)
  %i.aet = fptrunc nsz double %i.aes to float     ; 5 uses
  %i.aeu = load float, ptr %i.aba, align 8, !tbaa !87 ; 2 uses
  %i.aev = fsub nsz float %i.aet, %i.aer
  %i.aew = fmul nsz float %i.aev, f0x3C9A90E8
  br label %.lr.ph.i202.1

.lr.ph.i202.1:                                    ; preds = %.lr.ph.i202.1, %.lr.ph43.preheader.i
  %indvars.iv.i203.1 = phi i64 [ %indvars.iv.next.i204.1, %.lr.ph.i202.1 ], [ 0, %.lr.ph43.preheader.i ] ; 2 uses
  %i.aex = phi float [ %i.afb, %.lr.ph.i202.1 ], [ 0.000000e+00, %.lr.ph43.preheader.i ]
  %i.aey = tail call nsz float @llvm.fmuladd.f32(float %i.aex, float %i.aew, float %i.aer)
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %indvars.iv.i203.1
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.aez, float noundef %i.aey)
  %indvars.iv.next.i204.1 = add nuw nsw i64 %indvars.iv.i203.1, 1 ; 3 uses
  %i.afa = trunc nuw nsw i64 %indvars.iv.next.i204.1 to i32
  %i.afb = uitofp nneg i32 %i.afa to float
  %exitcond299.not = icmp eq i64 %indvars.iv.next.i204.1, 53
  br i1 %exitcond299.not, label %.lr.ph43.preheader.i.1, label %.lr.ph.i202.1, !llvm.loop !88

.lr.ph43.preheader.i.1:                           ; preds = %.lr.ph.i202.1
  %i.afc = fpext nsz float %.0168 to double       ; 2 uses
  %i.afd = tail call nsz double @llvm.fmuladd.f64(double %i.aep, double 0.000000e+00, double %i.afc)
  %i.afe = fptrunc nsz double %i.afd to float
  %i.aff = fsub nsz float %i.afe, %i.aet
  %i.afg = fmul nsz float %i.aff, f0x3C9A90E8     ; 3 uses
  %i.afh = fadd nsz float %i.afg, %i.aet
  %i.afi = insertelement <4 x float> poison, float %i.afg, i64 0
  %i.afj = shufflevector <4 x float> %i.afi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afk = insertelement <4 x float> poison, float %i.aet, i64 0
  %i.afl = shufflevector <4 x float> %i.afk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afm = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.afj, <4 x float> <float 0.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00>, <4 x float> %i.afl) ; 4 uses
  %i.afn = extractelement <4 x float> %i.afm, i64 0
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.abw, float noundef %i.afn)
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.aby, float noundef %i.afh)
  %i.afo = extractelement <4 x float> %i.afm, i64 1
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.abz, float noundef %i.afo)
  %i.afp = extractelement <4 x float> %i.afm, i64 2
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.aca, float noundef %i.afp)
  %i.afq = extractelement <4 x float> %i.afm, i64 3
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.acj, float noundef %i.afq)
  %i.afr = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.afj, <4 x float> <float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00>, <4 x float> %i.afl) ; 4 uses
  %i.afs = extractelement <4 x float> %i.afr, i64 0
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.acl, float noundef %i.afs)
  %i.aft = extractelement <4 x float> %i.afr, i64 1
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.acm, float noundef %i.aft)
  %i.afu = extractelement <4 x float> %i.afr, i64 2
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.acn, float noundef %i.afu)
  %i.afv = extractelement <4 x float> %i.afr, i64 3
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.acs, float noundef %i.afv)
  %i.afw = tail call nsz float @llvm.fmuladd.f32(float %i.afg, float 9.000000e+00, float %i.aet)
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.acv, float noundef %i.afw)
  %i.afx = load <4 x float>, ptr %i.aaz, align 8, !tbaa !33
  %i.afy = insertelement <4 x float> poison, float %i.aeu, i64 0
  %i.afz = shufflevector <4 x float> %i.afy, <4 x float> poison, <4 x i32> zeroinitializer ; 13 uses
  %i.aga = fmul nsz <4 x float> %i.afz, %i.afx
  store <4 x float> %i.aga, ptr %i.aaz, align 8, !tbaa !33
  %i.agb = load <4 x float>, ptr %i.ada, align 8, !tbaa !33
  %i.agc = fmul nsz <4 x float> %i.afz, %i.agb
  store <4 x float> %i.agc, ptr %i.ada, align 8, !tbaa !33
  %i.agd = load <4 x float>, ptr %i.add, align 8, !tbaa !33
  %i.age = fmul nsz <4 x float> %i.afz, %i.agd
  store <4 x float> %i.age, ptr %i.add, align 8, !tbaa !33
  %i.agf = load <4 x float>, ptr %i.adg, align 8, !tbaa !33
  %i.agg = fmul nsz <4 x float> %i.afz, %i.agf
  store <4 x float> %i.agg, ptr %i.adg, align 8, !tbaa !33
  %i.agh = load <4 x float>, ptr %i.adj, align 8, !tbaa !33
  %i.agi = fmul nsz <4 x float> %i.afz, %i.agh
  store <4 x float> %i.agi, ptr %i.adj, align 8, !tbaa !33
  %i.agj = load <4 x float>, ptr %i.adm, align 8, !tbaa !33
  %i.agk = fmul nsz <4 x float> %i.afz, %i.agj
  store <4 x float> %i.agk, ptr %i.adm, align 8, !tbaa !33
  %i.agl = load <4 x float>, ptr %i.adp, align 8, !tbaa !33
  %i.agm = fmul nsz <4 x float> %i.afz, %i.agl
  store <4 x float> %i.agm, ptr %i.adp, align 8, !tbaa !33
  %i.agn = load <4 x float>, ptr %i.ads, align 8, !tbaa !33
  %i.ago = fmul nsz <4 x float> %i.afz, %i.agn
  store <4 x float> %i.ago, ptr %i.ads, align 8, !tbaa !33
  %i.agp = load <4 x float>, ptr %i.adv, align 8, !tbaa !33
  %i.agq = fmul nsz <4 x float> %i.afz, %i.agp
  store <4 x float> %i.agq, ptr %i.adv, align 8, !tbaa !33
  %i.agr = load <4 x float>, ptr %i.ady, align 8, !tbaa !33
  %i.ags = fmul nsz <4 x float> %i.afz, %i.agr
  store <4 x float> %i.ags, ptr %i.ady, align 8, !tbaa !33
  %i.agt = load <4 x float>, ptr %i.aeb, align 8, !tbaa !33
  %i.agu = fmul nsz <4 x float> %i.afz, %i.agt
  store <4 x float> %i.agu, ptr %i.aeb, align 8, !tbaa !33
  %i.agv = load <4 x float>, ptr %i.aee, align 8, !tbaa !33
  %i.agw = fmul nsz <4 x float> %i.afz, %i.agv
  store <4 x float> %i.agw, ptr %i.aee, align 8, !tbaa !33
  %i.agx = load <4 x float>, ptr %i.aeh, align 8, !tbaa !33
  %i.agy = fmul nsz <4 x float> %i.afz, %i.agx
  store <4 x float> %i.agy, ptr %i.aeh, align 8, !tbaa !33
  %i.agz = load float, ptr %i.aek, align 8, !tbaa !33
  %i.aha = fmul nsz float %i.aeu, %i.agz
  store float %i.aha, ptr %i.aek, align 8, !tbaa !33
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.aaq, ptr noundef nonnull align 4 dereferenceable(512) %i.aen, i64 512, i1 false)
  %i.ahb = load float, ptr %i.aas, align 4, !tbaa !86
  %i.ahc = fpext nsz float %i.ahb to double
  %i.ahd = insertelement <2 x double> poison, double %i.ahc, i64 0
  %i.ahe = shufflevector <2 x double> %i.ahd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahf = insertelement <2 x double> poison, double %i.abr, i64 0
  %i.ahg = insertelement <2 x double> %i.ahf, double %i.afc, i64 1
  %i.ahh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahe, <2 x double> <double f0x3FD5999980000000, double 0.000000e+00>, <2 x double> %i.ahg)
  %i.ahi = fptrunc <2 x double> %i.ahh to <2 x float> ; 4 uses
  %i.ahj = load float, ptr %i.aba, align 8, !tbaa !87 ; 2 uses
  %i.ahk = extractelement <2 x float> %i.ahi, i64 0 ; 2 uses
  %i.ahl = extractelement <2 x float> %i.ahi, i64 1 ; 5 uses
  %i.ahm = fsub nsz float %i.ahl, %i.ahk
  %i.ahn = fmul nsz float %i.ahm, f0x3C97B426
  br label %.lr.ph.i202.2

.lr.ph.i202.2:                                    ; preds = %.lr.ph.i202.2, %.lr.ph43.preheader.i.1
  %indvars.iv.i203.2 = phi i64 [ %indvars.iv.next.i204.2, %.lr.ph.i202.2 ], [ 0, %.lr.ph43.preheader.i.1 ] ; 2 uses
  %i.aho = phi float [ %i.ahs, %.lr.ph.i202.2 ], [ 0.000000e+00, %.lr.ph43.preheader.i.1 ]
  %i.ahp = tail call nsz float @llvm.fmuladd.f32(float %i.aho, float %i.ahn, float %i.ahk)
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %indvars.iv.i203.2
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.ahq, float noundef %i.ahp)
  %indvars.iv.next.i204.2 = add nuw nsw i64 %indvars.iv.i203.2, 1 ; 3 uses
  %i.ahr = trunc nuw nsw i64 %indvars.iv.next.i204.2 to i32
  %i.ahs = uitofp nneg i32 %i.ahr to float
  %exitcond.not = icmp eq i64 %indvars.iv.next.i204.2, 54
  br i1 %exitcond.not, label %.lr.ph43.preheader.i.2, label %.lr.ph.i202.2, !llvm.loop !88

.lr.ph43.preheader.i.2:                           ; preds = %.lr.ph.i202.2
  %i.aht = fsub nsz float %i.ahl, %i.ahl
  %i.ahu = fmul nsz float %i.aht, f0x3C97B426     ; 3 uses
  %i.ahv = fadd nsz float %i.ahu, %i.ahl
  %i.ahw = insertelement <4 x float> poison, float %i.ahu, i64 0
  %i.ahx = shufflevector <4 x float> %i.ahw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ahy = shufflevector <2 x float> %i.ahi, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ahz = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ahx, <4 x float> <float 0.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00>, <4 x float> %i.ahy) ; 4 uses
  %i.aia = extractelement <4 x float> %i.ahz, i64 0
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.aby, float noundef %i.aia)
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.abz, float noundef %i.ahv)
  %i.aib = extractelement <4 x float> %i.ahz, i64 1
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.aca, float noundef %i.aib)
  %i.aic = extractelement <4 x float> %i.ahz, i64 2
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.acj, float noundef %i.aic)
  %i.aid = extractelement <4 x float> %i.ahz, i64 3
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.acl, float noundef %i.aid)
  %i.aie = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ahx, <4 x float> <float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00>, <4 x float> %i.ahy) ; 4 uses
  %i.aif = extractelement <4 x float> %i.aie, i64 0
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.acm, float noundef %i.aif)
  %i.aig = extractelement <4 x float> %i.aie, i64 1
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.acn, float noundef %i.aig)
  %i.aih = extractelement <4 x float> %i.aie, i64 2
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.acs, float noundef %i.aih)
  %i.aii = extractelement <4 x float> %i.aie, i64 3
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.acv, float noundef %i.aii)
  %i.aij = tail call nsz float @llvm.fmuladd.f32(float %i.ahu, float 9.000000e+00, float %i.ahl)
  %i.aik = getelementptr inbounds nuw i8, ptr %i.j, i64 1804
  tail call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.aik, float noundef %i.aij)
  %i.ail = load <4 x float>, ptr %i.aaz, align 8, !tbaa !33
  %i.aim = insertelement <4 x float> poison, float %i.ahj, i64 0
  %i.ain = shufflevector <4 x float> %i.aim, <4 x float> poison, <4 x i32> zeroinitializer ; 13 uses
  %i.aio = fmul nsz <4 x float> %i.ain, %i.ail
  store <4 x float> %i.aio, ptr %i.aaz, align 8, !tbaa !33
  %i.aip = load <4 x float>, ptr %i.ada, align 8, !tbaa !33
  %i.aiq = fmul nsz <4 x float> %i.ain, %i.aip
  store <4 x float> %i.aiq, ptr %i.ada, align 8, !tbaa !33
  %i.air = load <4 x float>, ptr %i.add, align 8, !tbaa !33
  %i.ais = fmul nsz <4 x float> %i.ain, %i.air
  store <4 x float> %i.ais, ptr %i.add, align 8, !tbaa !33
  %i.ait = load <4 x float>, ptr %i.adg, align 8, !tbaa !33
  %i.aiu = fmul nsz <4 x float> %i.ain, %i.ait
  store <4 x float> %i.aiu, ptr %i.adg, align 8, !tbaa !33
  %i.aiv = load <4 x float>, ptr %i.adj, align 8, !tbaa !33
  %i.aiw = fmul nsz <4 x float> %i.ain, %i.aiv
  store <4 x float> %i.aiw, ptr %i.adj, align 8, !tbaa !33
  %i.aix = load <4 x float>, ptr %i.adm, align 8, !tbaa !33
  %i.aiy = fmul nsz <4 x float> %i.ain, %i.aix
  store <4 x float> %i.aiy, ptr %i.adm, align 8, !tbaa !33
  %i.aiz = load <4 x float>, ptr %i.adp, align 8, !tbaa !33
  %i.aja = fmul nsz <4 x float> %i.ain, %i.aiz
  store <4 x float> %i.aja, ptr %i.adp, align 8, !tbaa !33
  %i.ajb = load <4 x float>, ptr %i.ads, align 8, !tbaa !33
  %i.ajc = fmul nsz <4 x float> %i.ain, %i.ajb
  store <4 x float> %i.ajc, ptr %i.ads, align 8, !tbaa !33
  %i.ajd = load <4 x float>, ptr %i.adv, align 8, !tbaa !33
  %i.aje = fmul nsz <4 x float> %i.ain, %i.ajd
  store <4 x float> %i.aje, ptr %i.adv, align 8, !tbaa !33
  %i.ajf = load <4 x float>, ptr %i.ady, align 8, !tbaa !33
  %i.ajg = fmul nsz <4 x float> %i.ain, %i.ajf
  store <4 x float> %i.ajg, ptr %i.ady, align 8, !tbaa !33
  %i.ajh = load <4 x float>, ptr %i.aeb, align 8, !tbaa !33
  %i.aji = fmul nsz <4 x float> %i.ain, %i.ajh
  store <4 x float> %i.aji, ptr %i.aeb, align 8, !tbaa !33
  %i.ajj = load <4 x float>, ptr %i.aee, align 8, !tbaa !33
  %i.ajk = fmul nsz <4 x float> %i.ain, %i.ajj
  store <4 x float> %i.ajk, ptr %i.aee, align 8, !tbaa !33
  %i.ajl = load <4 x float>, ptr %i.aeh, align 8, !tbaa !33
  %i.ajm = fmul nsz <4 x float> %i.ain, %i.ajl
  store <4 x float> %i.ajm, ptr %i.aeh, align 8, !tbaa !33
  %i.ajn = load <2 x float>, ptr %i.aek, align 8, !tbaa !33
  %i.ajo = insertelement <2 x float> poison, float %i.ahj, i64 0
  %i.ajp = shufflevector <2 x float> %i.ajo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajq = fmul nsz <2 x float> %i.ajp, %i.ajn
  store <2 x float> %i.ajq, ptr %i.aek, align 8, !tbaa !33
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.j, i64 1256
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.aaq, ptr noundef nonnull align 8 dereferenceable(512) %i.ajr, i64 512, i1 false)
  %.pre = load float, ptr %i.aaf, align 8, !tbaa !84
  br label %.thread269

.thread269:                                       ; preds = %.lr.ph43.preheader.i.2, %bb.ao, %bb.ar, %bb.aq
  %i.ajs = phi float [ %i.aae, %bb.aq ], [ %i.aae, %bb.ar ], [ %i.aae, %bb.ao ], [ %.pre, %.lr.ph43.preheader.i.2 ] ; 2 uses
  %i.ajt = phi <2 x float> [ undef, %bb.aq ], [ undef, %bb.ar ], [ undef, %bb.ao ], [ %i.ahi, %.lr.ph43.preheader.i.2 ]
  %i.aju = getelementptr inbounds nuw i8, ptr %i.j, i64 1028 ; 2 uses
  %i.ajv = load float, ptr %i.aju, align 4, !tbaa !86
  %i.ajw = fsub nsz float %i.ajs, %i.ajv
  %i.ajx = tail call nsz float @llvm.fabs.f32(float %i.ajw)
  %i.ajy = fcmp nsz ogt float %i.ajx, 1.500000e+01
  br i1 %i.ajy, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.thread269
  store float %i.ajs, ptr %i.aju, align 4, !tbaa !86
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.thread269
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.j, i64 1032
  store <2 x float> zeroinitializer, ptr %i.ajz, align 8, !tbaa !33
  br label %bb.av

bb.av:                                            ; preds = %.preheader273, %bb.au
  %i.aka = phi <2 x float> [ %i.ajt, %bb.au ], [ splat (float 2.000000e+01), %.preheader273 ] ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.akc = getelementptr inbounds nuw i8, ptr %i.j, i64 1024
  %i.akd = getelementptr inbounds nuw i8, ptr %i.j, i64 1028
  %i.ake = getelementptr inbounds nuw i8, ptr %i.j, i64 2885
  %i.akf = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.aki = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  %i.akj = getelementptr inbounds nuw i8, ptr %i.j, i64 1032 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %i.j, i64 1552 ; 5 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.akm = getelementptr inbounds nuw i8, ptr %i.j, i64 2876 ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.j, i64 2864
  %i.ako = getelementptr inbounds nuw i8, ptr %i.j, i64 1040 ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  %i.akq = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.akr = extractelement <2 x float> %i.aka, i64 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.bp
  %indvars.iv314 = phi i64 [ 0, %bb.av ], [ %indvars.iv.next315, %bb.bp ] ; 8 uses
  %.0175285 = phi ptr [ %i.q, %bb.av ], [ %i.avn, %bb.bp ] ; 3 uses
  %.sroa.20.3282 = phi float [ %i.akr, %bb.av ], [ %.sroa.20.4, %bb.bp ]
  %i.aks = phi <2 x float> [ %i.aka, %bb.av ], [ %i.alx, %bb.bp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.f, i8 0, i64 240, i1 false)
  %i.akt = getelementptr inbounds nuw i8, ptr @subframe_sizes, i64 %indvars.iv314
  %i.aku = load i8, ptr %i.akt, align 1, !tbaa !30 ; 4 uses
  %i.akv = zext i8 %i.aku to i32                  ; 6 uses
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr @interpolate_lsp.lsp_interpolation_factors, i64 %indvars.iv314
  %i.akx = load float, ptr %i.akw, align 4, !tbaa !33 ; 2 uses
  %i.aky = fsub nsz float 1.000000e+00, %i.akx
  call void @ff_weighted_vector_sumf(ptr noundef nonnull %i.d, ptr noundef nonnull %i.akb, ptr noundef nonnull %i.we, float noundef %i.aky, float noundef %i.akx, i32 noundef 10) #9
  %i.akz = load i32, ptr %i.ag, align 8, !tbaa !58
  %.not191 = icmp eq i32 %i.akz, 1
  br i1 %.not191, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ala = load float, ptr %i.akc, align 8, !tbaa !84 ; 2 uses
  %i.alb = load float, ptr %i.akd, align 4, !tbaa !86
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr @interpolate_delay.d_interpolation_factors, i64 %indvars.iv314 ; 2 uses
  %i.ald = fpext nsz float %i.alb to double       ; 2 uses
  %i.ale = load <2 x float>, ptr %i.alc, align 4, !tbaa !33 ; 2 uses
  %i.alf = fpext <2 x float> %i.ale to <2 x double>
  %i.alg = fsub nsz <2 x double> splat (double 1.000000e+00), %i.alf
  %i.alh = insertelement <2 x float> poison, float %i.ala, i64 0
  %i.ali = shufflevector <2 x float> %i.alh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.alj = fmul nsz <2 x float> %i.ali, %i.ale
  %i.alk = fpext <2 x float> %i.alj to <2 x double>
  %i.all = insertelement <2 x double> poison, double %i.ald, i64 0
  %i.alm = shufflevector <2 x double> %i.all, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aln = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.alg, <2 x double> %i.alm, <2 x double> %i.alk)
  %i.alo = fptrunc <2 x double> %i.aln to <2 x float>
  %i.alp = getelementptr i8, ptr %i.alc, i64 8
  %i.alq = load float, ptr %i.alp, align 4, !tbaa !33 ; 2 uses
  %i.alr = fpext nsz float %i.alq to double
  %i.als = fsub nsz double 1.000000e+00, %i.alr
  %i.alt = fmul nsz float %i.ala, %i.alq
  %i.alu = fpext nsz float %i.alt to double
  %i.alv = call nsz double @llvm.fmuladd.f64(double %i.als, double %i.ald, double %i.alu)
  %i.alw = fptrunc nsz double %i.alv to float
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.sroa.20.4 = phi nsz float [ %.sroa.20.3282, %bb.aw ], [ %i.alw, %bb.ax ] ; 2 uses
  %i.alx = phi <2 x float> [ %i.aks, %bb.aw ], [ %i.alo, %bb.ax ] ; 3 uses
  %i.aly = extractelement <2 x float> %i.alx, i64 0 ; 3 uses
  %i.alz = extractelement <2 x float> %i.alx, i64 1 ; 4 uses
  %i.ama = fadd nsz float %i.alz, %i.aly
  %i.amb = fmul nsz float %i.ama, 5.000000e-01
  %i.amc = call i64 @llvm.lrint.i64.f32(float %i.amb) ; 2 uses
  %i.amd = trunc i64 %i.amc to i32                ; 2 uses
  call fastcc void @decode_predictor_coeffs(ptr noundef %i.d, ptr noundef %i.e)
  %i.ame = load i8, ptr %i.as, align 8, !tbaa !89
  %.not192 = icmp eq i8 %i.ame, 0
  br i1 %.not192, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.amf = load i8, ptr %i.ake, align 1, !tbaa !44
  %.not193 = icmp eq i8 %i.amf, 0
  br i1 %.not193, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.amg = load <4 x float>, ptr %i.e, align 16, !tbaa !33
  %i.amh = fmul nsz <4 x float> %i.amg, <float 7.500000e-01, float 5.625000e-01, float 4.218750e-01, float f0x3EA20000>
  store <4 x float> %i.amh, ptr %i.e, align 16, !tbaa !33
  %i.ami = load <4 x float>, ptr %i.akf, align 16, !tbaa !33
  %i.amj = fmul nsz <4 x float> %i.ami, <float f0x3E730000, float f0x3E364000, float f0x3E08B000, float f0x3DCD0800>
  store <4 x float> %i.amj, ptr %i.akf, align 16, !tbaa !33
  %i.amk = load <2 x float>, ptr %i.akg, align 16, !tbaa !33
  %i.aml = fmul nsz <2 x float> %i.amk, <float f0x3D99C600, float f0x3D66A900>
  store <2 x float> %i.aml, ptr %i.akg, align 16, !tbaa !33
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.amm = load i32, ptr %i.ag, align 8, !tbaa !58 ; 2 uses
  %.not194 = icmp eq i32 %i.amm, 1
  br i1 %.not194, label %.lr.ph281, label %bb.bc

.lr.ph281:                                        ; preds = %bb.bb
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.akn, i64 %indvars.iv314
  %umax311 = call i32 @llvm.umax.i32(i32 %i.akv, i32 1)
  %wide.trip.count312 = zext nneg i32 %umax311 to i64 ; 3 uses
  %.pre322 = load float, ptr %i.amn, align 4, !tbaa !33 ; 2 uses
  %n.vec356 = and i64 %wide.trip.count312, 248    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.pre322, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body357

vector.body357:                                   ; preds = %vector.body357, %.lr.ph281
  %index358 = phi i64 [ 0, %.lr.ph281 ], [ %index.next359, %vector.body357 ] ; 2 uses
  %i.amo = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index358 ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 1552
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amo, i64 1568
  store <4 x float> %broadcast.splat, ptr %i.amp, align 4, !tbaa !33
  store <4 x float> %broadcast.splat, ptr %i.amq, align 4, !tbaa !33
  %index.next359 = add nuw i64 %index358, 8       ; 2 uses
  %i.amr = icmp eq i64 %index.next359, %n.vec356
  br i1 %i.amr, label %middle.block360, label %vector.body357, !llvm.loop !90

middle.block360:                                  ; preds = %vector.body357
  %cmp.n361 = icmp eq i64 %n.vec356, %wide.trip.count312
  br i1 %cmp.n361, label %.loopexit, label %scalar.ph353

bb.bc:                                            ; preds = %bb.bb
  %i.ams = icmp eq i32 %i.amm, 3
  %i.amt = select nsz i1 %i.ams, double 5.000000e-01, double 2.500000e-01
  %i.amu = getelementptr inbounds nuw i8, ptr %i.akh, i64 %indvars.iv314
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !30
  %i.amw = zext i8 %i.amv to i32
  %i.amx = add nuw nsw i32 %i.amw, 1
  %i.amy = uitofp nneg i32 %i.amx to double
  %i.amz = fmul nnan nsz double %i.amt, %i.amy
  %i.ana = call nsz double @llvm.exp.f64(double %i.amz)
  %i.anb = fptrunc nsz double %i.ana to float     ; 3 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.aki, i64 %indvars.iv314
  %i.and = load i8, ptr %i.anc, align 1, !tbaa !30
  %i.ane = zext i8 %i.and to i64
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr @pitch_gain_vq, i64 %i.ane
  %i.ang = load float, ptr %i.anf, align 4, !tbaa !33 ; 5 uses
  %i.anh = insertelement <2 x float> poison, float %i.ang, i64 0
  %i.ani = insertelement <2 x float> %i.anh, float %i.anb, i64 1
  %i.anj = fdiv nsz <2 x float> %i.ani, splat (float 3.000000e+00)
  %i.ank = load <2 x float>, ptr %i.akj, align 8, !tbaa !33
  %i.anl = fadd nsz <2 x float> %i.ank, %i.anj
  store <2 x float> %i.anl, ptr %i.akj, align 8, !tbaa !33
  %i.anm = uitofp i8 %i.aku to float              ; 4 uses
  %i.ann = fdiv nsz float 1.000000e+00, %i.anm    ; 2 uses
  %i.ano = fsub nsz float %i.alz, %i.aly
  %i.anp = fmul nsz float %i.ann, %i.ano
  br label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %bb.bc, %.lr.ph.i211
  %indvars.iv.i212 = phi i64 [ %indvars.iv.next.i213, %.lr.ph.i211 ], [ 0, %bb.bc ] ; 2 uses
  %i.anq = phi float [ %i.anu, %.lr.ph.i211 ], [ 0.000000e+00, %bb.bc ]
  %i.anr = call nsz float @llvm.fmuladd.f32(float %i.anq, float %i.anp, float %i.aly)
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %i.akk, i64 %indvars.iv.i212
  call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.ans, float noundef %i.anr)
  %indvars.iv.next.i213 = add nuw nsw i64 %indvars.iv.i212, 1 ; 2 uses
  %i.ant = trunc nuw nsw i64 %indvars.iv.next.i213 to i32
  %i.anu = uitofp nneg i32 %i.ant to float        ; 2 uses
  %i.anv = fcmp nsz olt float %i.anu, %i.anm
  br i1 %i.anv, label %.lr.ph.i211, label %._crit_edge.i216, !llvm.loop !88

._crit_edge.i216:                                 ; preds = %.lr.ph.i211
  %i.anw = fsub nsz float %.sroa.20.4, %i.alz
  %i.anx = fmul nsz float %i.ann, %i.anw
  %i.any = add nuw nsw i32 %i.akv, 10
  %i.anz = uitofp nneg i32 %i.any to float
  %i.aoa = zext i8 %i.aku to i64                  ; 9 uses
  br label %.lr.ph41.i216

.lr.ph41.i216:                                    ; preds = %.lr.ph41.i216, %._crit_edge.i216
  %indvars.iv47.i217 = phi i64 [ %i.aoa, %._crit_edge.i216 ], [ %indvars.iv.next48.i218, %.lr.ph41.i216 ] ; 2 uses
  %4 = phi float [ %i.anm, %._crit_edge.i216 ], [ %9, %.lr.ph41.i216 ]
  %5 = fsub nsz float %4, %i.anm
  %6 = call nsz float @llvm.fmuladd.f32(float %5, float %i.anx, float %i.alz)
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.akk, i64 %indvars.iv47.i217
  call fastcc void @bl_intrp(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %7, float noundef %6)
  %indvars.iv.next48.i218 = add nuw nsw i64 %indvars.iv47.i217, 1 ; 2 uses
  %8 = trunc nuw nsw i64 %indvars.iv.next48.i218 to i32
  %9 = uitofp nneg i32 %8 to float                ; 2 uses
  %10 = fcmp nsz olt float %9, %i.anz
  br i1 %10, label %.lr.ph41.i216, label %vector.ph400, !llvm.loop !91

vector.ph400:                                     ; preds = %.lr.ph41.i216
  %n.vec401 = and i64 %i.aoa, 248                 ; 3 uses
  %broadcast.splatinsert402 = insertelement <4 x float> poison, float %i.ang, i64 0
  %broadcast.splat403 = shufflevector <4 x float> %broadcast.splatinsert402, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body404

vector.body404:                                   ; preds = %vector.body404, %vector.ph400
  %index405 = phi i64 [ 0, %vector.ph400 ], [ %index.next408, %vector.body404 ] ; 2 uses
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.akk, i64 %index405 ; 3 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 16 ; 2 uses
  %wide.load406 = load <4 x float>, ptr %i.aob, align 4, !tbaa !33
  %wide.load407 = load <4 x float>, ptr %i.aoc, align 4, !tbaa !33
  %i.aod = fmul nsz <4 x float> %broadcast.splat403, %wide.load406
  %i.aoe = fmul nsz <4 x float> %broadcast.splat403, %wide.load407
  store <4 x float> %i.aod, ptr %i.aob, align 4, !tbaa !33
  store <4 x float> %i.aoe, ptr %i.aoc, align 4, !tbaa !33
  %index.next408 = add nuw i64 %index405, 8       ; 2 uses
  %i.aof = icmp eq i64 %index.next408, %n.vec401
  br i1 %i.aof, label %middle.block409, label %vector.body404, !llvm.loop !92

middle.block409:                                  ; preds = %vector.body404
  %cmp.n410 = icmp eq i64 %n.vec401, %i.aoa
  br i1 %cmp.n410, label %acb_excitation.exit228, label %.lr.ph43.i220

.lr.ph43.i220:                                    ; preds = %middle.block409, %.lr.ph43.i220
  %indvars.iv50.i221 = phi i64 [ %indvars.iv.next51.i222, %.lr.ph43.i220 ], [ %n.vec401, %middle.block409 ] ; 2 uses
  %i.aog = getelementptr inbounds nuw [4 x i8], ptr %i.akk, i64 %indvars.iv50.i221 ; 2 uses
  %i.aoh = load float, ptr %i.aog, align 4, !tbaa !33
  %i.aoi = fmul nsz float %i.ang, %i.aoh
  store float %i.aoi, ptr %i.aog, align 4, !tbaa !33
  %indvars.iv.next51.i222 = add nuw nsw i64 %indvars.iv50.i221, 1 ; 2 uses
  %exitcond.not.i223 = icmp eq i64 %indvars.iv.next51.i222, %i.aoa
  br i1 %exitcond.not.i223, label %acb_excitation.exit228, label %.lr.ph43.i220, !llvm.loop !93

acb_excitation.exit228:                           ; preds = %.lr.ph43.i220, %middle.block409
  %i.aoj = getelementptr inbounds nuw [8 x i8], ptr %i.akl, i64 %indvars.iv314 ; 5 uses
  %.val = load i32, ptr %i.ag, align 8, !tbaa !58
  %i.aok = icmp eq i32 %.val, 4
  br i1 %i.aok, label %bb.bd, label %bb.bm

bb.bd:                                            ; preds = %acb_excitation.exit228
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aoj, i64 6
  %i.aom = load i16, ptr %i.aol, align 2, !tbaa !65
  %.fr.i.i = freeze i16 %i.aom                    ; 3 uses
  %i.aon = lshr i16 %.fr.i.i, 9
  %i.aoo = and i16 %i.aon, 3                      ; 6 uses
  %i.aop = zext nneg i16 %i.aoo to i32            ; 4 uses
  %i.aoq = load i16, ptr %i.aoj, align 2, !tbaa !65 ; 2 uses
  %i.aor = trunc i16 %i.aoq to i8
  %.lhs.trunc.i.i = and i8 %i.aor, 127            ; 2 uses
  %i.aos = udiv i8 %.lhs.trunc.i.i, 11            ; 2 uses
  %narrow45.i.i = mul nuw nsw i8 %i.aos, 5
  %i.aot = zext nneg i8 %narrow45.i.i to i32
  %i.aou = add nuw nsw i32 %i.aot, %i.aop
  %i.aov = urem i8 %.lhs.trunc.i.i, 11            ; 2 uses
  %narrow44.i.i = mul nuw nsw i8 %i.aov, 5
  %i.aow = zext nneg i8 %narrow44.i.i to i32
  %i.aox = add nuw nsw i32 %i.aow, %i.aop         ; 2 uses
  %i.aoy = and i16 %i.aoq, 128
  %.not36.i.i = icmp eq i16 %i.aoy, 0
  %i.aoz = select i1 %.not36.i.i, float 1.000000e+00, float -1.000000e+00 ; 3 uses
  %i.apa = zext nneg i32 %i.aou to i64
  %i.apb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.apa
  store float %i.aoz, ptr %i.apb, align 4, !tbaa !33
  %i.apc = icmp samesign ult i8 %i.aov, %i.aos
  br i1 %i.apc, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.apd = fneg nsz float %i.aoz
  %i.ape = zext nneg i32 %i.aox to i64
  %i.apf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ape
  store float %i.apd, ptr %i.apf, align 4, !tbaa !33
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.apg = zext nneg i32 %i.aox to i64
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.apg ; 2 uses
  %i.api = load float, ptr %i.aph, align 4, !tbaa !33
  %i.apj = fadd nsz float %i.aoz, %i.api
  store float %i.apj, ptr %i.aph, align 4, !tbaa !33
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aoj, i64 2
  %i.apl = load i16, ptr %i.apk, align 2, !tbaa !65 ; 2 uses
  %i.apm = trunc i16 %i.apl to i8
  %.lhs.trunc.1.i.i = and i8 %i.apm, 127          ; 2 uses
  %i.apn = udiv i8 %.lhs.trunc.1.i.i, 11          ; 2 uses
  %narrow45.1.i.i = mul nuw nsw i8 %i.apn, 5
  %i.apo = zext nneg i8 %narrow45.1.i.i to i32
  %narrow48.i.i = add nuw nsw i16 %i.aoo, 1
  %i.app = zext nneg i16 %narrow48.i.i to i32     ; 2 uses
  %i.apq = add nuw nsw i32 %i.apo, %i.app
  %i.apr = urem i8 %.lhs.trunc.1.i.i, 11          ; 2 uses
  %narrow44.1.i.i = mul nuw nsw i8 %i.apr, 5
  %i.aps = zext nneg i8 %narrow44.1.i.i to i32
  %i.apt = add nuw nsw i32 %i.aps, %i.app         ; 2 uses
  %i.apu = and i16 %i.apl, 128
  %.not36.1.i.i = icmp eq i16 %i.apu, 0
  %i.apv = select i1 %.not36.1.i.i, float 1.000000e+00, float -1.000000e+00 ; 3 uses
  %i.apw = zext nneg i32 %i.apq to i64
  %i.apx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.apw
  store float %i.apv, ptr %i.apx, align 4, !tbaa !33
  %i.apy = icmp samesign ult i8 %i.apr, %i.apn
  br i1 %i.apy, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.apz = zext nneg i32 %i.apt to i64
  %i.aqa = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.apz ; 2 uses
  %i.aqb = load float, ptr %i.aqa, align 4, !tbaa !33
  %i.aqc = fadd nsz float %i.apv, %i.aqb
  store float %i.aqc, ptr %i.aqa, align 4, !tbaa !33
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.aqd = fneg nsz float %i.apv
  %i.aqe = zext nneg i32 %i.apt to i64
  %i.aqf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.aqe
  store float %i.aqd, ptr %i.aqf, align 4, !tbaa !33
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aoj, i64 4
  %i.aqh = load i16, ptr %i.aqg, align 2, !tbaa !65 ; 2 uses
  %i.aqi = trunc i16 %i.aqh to i8
  %.lhs.trunc.2.i.i = and i8 %i.aqi, 127          ; 2 uses
  %i.aqj = udiv i8 %.lhs.trunc.2.i.i, 11          ; 2 uses
  %narrow45.2.i.i = mul nuw nsw i8 %i.aqj, 5
  %i.aqk = zext nneg i8 %narrow45.2.i.i to i32
  %narrow50.i.i = add nuw nsw i16 %i.aoo, 2
  %.cmp.not.i.i = icmp eq i16 %i.aoo, 3
  %i.aql = select i1 %.cmp.not.i.i, i16 0, i16 %narrow50.i.i
  %i.aqm = zext nneg i16 %i.aql to i32            ; 2 uses
  %i.aqn = add nuw nsw i32 %i.aqk, %i.aqm
  %i.aqo = urem i8 %.lhs.trunc.2.i.i, 11          ; 2 uses
  %narrow44.2.i.i = mul nuw nsw i8 %i.aqo, 5
  %i.aqp = zext nneg i8 %narrow44.2.i.i to i32
  %i.aqq = add nuw nsw i32 %i.aqp, %i.aqm         ; 2 uses
  %i.aqr = and i16 %i.aqh, 128
  %.not36.2.i.i = icmp eq i16 %i.aqr, 0
  %i.aqs = select i1 %.not36.2.i.i, float 1.000000e+00, float -1.000000e+00 ; 3 uses
  %i.aqt = zext nneg i32 %i.aqn to i64
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.aqt
  store float %i.aqs, ptr %i.aqu, align 4, !tbaa !33
  %i.aqv = icmp samesign ult i8 %i.aqo, %i.aqj
  br i1 %i.aqv, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.aqw = zext nneg i32 %i.aqq to i64
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.aqw ; 2 uses
  %i.aqy = load float, ptr %i.aqx, align 4, !tbaa !33
  %i.aqz = fadd nsz float %i.aqs, %i.aqy
  store float %i.aqz, ptr %i.aqx, align 4, !tbaa !33
  br label %decode_8_pulses_35bits.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.ara = fneg nsz float %i.aqs
  %i.arb = zext nneg i32 %i.aqq to i64
  %i.arc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.arb
  store float %i.ara, ptr %i.arc, align 4, !tbaa !33
  br label %decode_8_pulses_35bits.exit.i

decode_8_pulses_35bits.exit.i:                    ; preds = %bb.bl, %bb.bk
  %i.ard = trunc i16 %.fr.i.i to i8
  %.lhs.trunc39.i.i = and i8 %i.ard, 127          ; 2 uses
  %i.are = udiv i8 %.lhs.trunc39.i.i, 11
  %narrow.i.i = mul nuw nsw i8 %i.are, 5
  %i.arf = zext nneg i8 %narrow.i.i to i32
  %.cmp52.i.i = icmp samesign ult i16 %i.aoo, 2
  %.v.i.i = select i1 %.cmp52.i.i, i32 3, i32 -2
  %i.arg = add nsw i32 %.v.i.i, %i.aop
  %i.arh = add nuw nsw i32 %i.arg, %i.arf
  %i.ari = urem i8 %.lhs.trunc39.i.i, 11
  %narrow43.i.i = mul nuw nsw i8 %i.ari, 5
  %i.arj = zext nneg i8 %narrow43.i.i to i32
  %.urem53.i.i = add nsw i32 %i.aop, -1
  %.cmp54.i.i = icmp eq i16 %i.aoo, 0
  %i.ark = select i1 %.cmp54.i.i, i32 4, i32 %.urem53.i.i
  %i.arl = add nuw nsw i32 %i.ark, %i.arj
  %i.arm = insertelement <2 x i16> poison, i16 %.fr.i.i, i64 0
  %i.arn = shufflevector <2 x i16> %i.arm, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.aro = and <2 x i16> %i.arn, <i16 256, i16 128>
  %i.arp = zext nneg i32 %i.arh to i64
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.arp
  %i.arr = icmp eq <2 x i16> %i.aro, zeroinitializer
  %i.ars = select <2 x i1> %i.arr, <2 x float> splat (float 1.000000e+00), <2 x float> splat (float -1.000000e+00) ; 2 uses
  %i.art = extractelement <2 x float> %i.ars, i64 0
  store float %i.art, ptr %i.arq, align 4, !tbaa !33
  %i.aru = zext nneg i32 %i.arl to i64
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.aru
  %i.arw = extractelement <2 x float> %i.ars, i64 1
  store float %i.arw, ptr %i.arv, align 4, !tbaa !33
  br label %bb.bn

bb.bm:                                            ; preds = %acb_excitation.exit228
  %i.arx = load i16, ptr %i.aoj, align 2, !tbaa !65
  %i.ary = zext i16 %i.arx to i32                 ; 4 uses
  %i.arz = and i32 %i.ary, 512
  %.not.i15.i = icmp eq i32 %i.arz, 0
  %i.asa = select i1 %.not.i15.i, float 1.000000e+00, float -1.000000e+00 ; 3 uses
  %i.asb = and i32 %i.ary, 7
  %i.asc = mul nuw nsw i32 %i.asb, 7
  %i.asd = zext nneg i32 %i.asc to i64
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.asd
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 16 ; 2 uses
  %i.asg = load float, ptr %i.asf, align 4, !tbaa !33
  %i.ash = fadd nsz float %i.asg, %i.asa
  store float %i.ash, ptr %i.asf, align 4, !tbaa !33
  %i.asi = lshr i32 %i.ary, 3
  %i.asj = and i32 %i.asi, 7
  %i.ask = mul nuw nsw i32 %i.asj, 7
  %i.asl = zext nneg i32 %i.ask to i64
  %i.asm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.asl
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 8 ; 2 uses
  %i.aso = load float, ptr %i.asn, align 4, !tbaa !33
  %i.asp = fsub nsz float %i.aso, %i.asa
  store float %i.asp, ptr %i.asn, align 4, !tbaa !33
  %i.asq = lshr i32 %i.ary, 6
  %i.asr = and i32 %i.asq, 7
  %i.ass = mul nuw nsw i32 %i.asr, 7
  %i.ast = zext nneg i32 %i.ass to i64
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ast ; 2 uses
  %i.asv = load float, ptr %i.asu, align 4, !tbaa !33
  %i.asw = fadd nsz float %i.asa, %i.asv
end_hunk_1
begin_hunk_2_@evrc_decode_frame:bb.a
  %i.awc = getelementptr i8, ptr %i.j, i64 168
  %i.awd = getelementptr i8, ptr %i.j, i64 128
  %i.awe = load <2 x float>, ptr %i.awc, align 4, !tbaa !33
  %i.awf = fpext <2 x float> %i.awe to <2 x double>
  %i.awg = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.awf, <2 x double> splat (double 8.750000e-01), <2 x double> <double 5.400000e-02, double 6.000000e-02>)
  %i.awh = fptrunc <2 x double> %i.awg to <2 x float>
  store <2 x float> %i.awh, ptr %i.awd, align 4, !tbaa !33
  br label %.split131.us.i

.split.us.preheader.i:                            ; preds = %decode_lspf.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.avr, ptr noundef nonnull align 4 dereferenceable(40) %i.avq, i64 40, i1 false), !tbaa !33
  br label %.split131.us.i

.split131.us.i:                                   ; preds = %.split.us.preheader.i, %.split.preheader.i
  %i.awi = getelementptr inbounds nuw i8, ptr %i.j, i64 2885
  %i.awj = load i8, ptr %i.awi, align 1, !tbaa !44
  %.not.i235 = icmp eq i8 %i.awj, 0
  br i1 %.not.i235, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.split131.us.i
  %i.awk = getelementptr inbounds nuw i8, ptr %i.j, i64 1032 ; 2 uses
  %i.awl = load float, ptr %i.awk, align 8, !tbaa !87
  %i.awm = fmul nsz float %i.awl, 7.500000e-01
  store float %i.awm, ptr %i.awk, align 8, !tbaa !87
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.split131.us.i
  %i.awn = icmp eq i32 %i.avp, 4
  br i1 %i.awn, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.awo = getelementptr inbounds nuw i8, ptr %i.j, i64 1808
  %i.awp = getelementptr inbounds nuw i8, ptr %i.j, i64 1040
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.awo, ptr noundef nonnull align 8 dereferenceable(512) %i.awp, i64 512, i1 false)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.awq = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.awr = load i32, ptr %i.awq, align 4, !tbaa !39
  %.not112.i = icmp eq i32 %i.awr, 1              ; 2 uses
  %..i = select i1 %.not112.i, i32 1, i32 4
  store i32 %..i, ptr %i.avo, align 8, !tbaa !58
  br i1 %.not112.i, label %.preheader128.i, label %bb.bu

.preheader128.i:                                  ; preds = %bb.bt
  %i.aws = getelementptr inbounds nuw i8, ptr %i.j, i64 2884
  %i.awt = load i8, ptr %i.aws, align 4, !tbaa !82
  %i.awu = zext i8 %i.awt to i64
  %i.awv = getelementptr inbounds nuw [12 x i8], ptr @evrc_energy_quant, i64 %i.awu ; 3 uses
  %i.aww = load float, ptr %i.awv, align 4, !tbaa !33
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awv, i64 4
  %i.awy = load float, ptr %i.awx, align 4, !tbaa !33
  %i.awz = fadd nsz float %i.aww, %i.awy
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awv, i64 8
  %i.axb = load float, ptr %i.axa, align 4, !tbaa !33
  %i.axc = fadd nsz float %i.awz, %i.axb
  %i.axd = fdiv nsz float %i.axc, 3.000000e+00
  %i.axe = fpext nsz float %i.axd to double
  %i.axf = tail call nsz double @llvm.pow.f64(double 1.000000e+01, double %i.axe)
  %i.axg = fptrunc nsz double %i.axf to float     ; 3 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %i.j, i64 2864
  store float %i.axg, ptr %i.axh, align 4, !tbaa !33
  %i.axi = getelementptr inbounds nuw i8, ptr %i.j, i64 2868
  store float %i.axg, ptr %i.axi, align 4, !tbaa !33
  %i.axj = getelementptr inbounds nuw i8, ptr %i.j, i64 2872
  store float %i.axg, ptr %i.axj, align 4, !tbaa !33
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1024
  %.pre.i243 = load float, ptr %.phi.trans.insert.i, align 8, !tbaa !84
  %.phi.trans.insert181.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1028
  %.pre182.i = load float, ptr %.phi.trans.insert181.i, align 4, !tbaa !86
  br label %.loopexit127.i

bb.bu:                                            ; preds = %bb.bt
  %i.axk = getelementptr inbounds nuw i8, ptr %i.j, i64 1028
  %i.axl = load float, ptr %i.axk, align 4, !tbaa !86 ; 3 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.j, i64 1024
  store float %i.axl, ptr %i.axm, align 8, !tbaa !84
  br label %.loopexit127.i

.loopexit127.i:                                   ; preds = %bb.bu, %.preheader128.i
  %i.axn = phi float [ %.pre182.i, %.preheader128.i ], [ %i.axl, %bb.bu ]
  %i.axo = phi float [ %.pre.i243, %.preheader128.i ], [ %i.axl, %bb.bu ] ; 2 uses
  %i.axp = getelementptr inbounds nuw i8, ptr %i.j, i64 1024
  %i.axq = getelementptr inbounds nuw i8, ptr %i.j, i64 1028 ; 2 uses
  %i.axr = fsub nsz float %i.axo, %i.axn
  %i.axs = tail call nsz float @llvm.fabs.f32(float %i.axr)
  %i.axt = fcmp nsz ogt float %i.axs, 1.500000e+01
  br i1 %i.axt, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.loopexit127.i
  store float %i.axo, ptr %i.axq, align 4, !tbaa !86
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.loopexit127.i
  %i.axu = getelementptr inbounds nuw i8, ptr %i.j, i64 1032 ; 3 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %i.j, i64 1552 ; 5 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.j, i64 2320 ; 2 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %i.j, i64 2876 ; 7 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.j, i64 2864
  %i.axz = getelementptr inbounds nuw i8, ptr %i.j, i64 1040 ; 8 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %i.j, i64 1036
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  br label %bb.bx

bb.bx:                                            ; preds = %.thread.i241, %bb.bw
  %indvars.iv177.i = phi i64 [ 0, %bb.bw ], [ %indvars.iv.next178.i, %.thread.i241 ] ; 6 uses
  %.0109145.i = phi ptr [ %i.q, %bb.bw ], [ %i.blc, %.thread.i241 ] ; 2 uses
  %.sroa.15.1142.i = phi float [ 2.000000e+01, %bb.bw ], [ %.sroa.15.2.i, %.thread.i241 ]
  %i.ayc = phi <2 x float> [ splat (float 2.000000e+01), %bb.bw ], [ %i.azo, %.thread.i241 ]
  %i.ayd = getelementptr inbounds nuw i8, ptr @subframe_sizes, i64 %indvars.iv177.i
  %i.aye = load i8, ptr %i.ayd, align 1, !tbaa !30 ; 5 uses
  %i.ayf = zext i8 %i.aye to i32                  ; 4 uses
  %i.ayg = getelementptr inbounds nuw [4 x i8], ptr @interpolate_lsp.lsp_interpolation_factors, i64 %indvars.iv177.i
  %i.ayh = load float, ptr %i.ayg, align 4, !tbaa !33 ; 2 uses
  %i.ayi = fsub nsz float 1.000000e+00, %i.ayh
  call void @ff_weighted_vector_sumf(ptr noundef nonnull %i.a, ptr noundef nonnull %i.avq, ptr noundef nonnull %i.avr, float noundef %i.ayi, float noundef %i.ayh, i32 noundef 10) #9
  %i.ayj = load i32, ptr %i.avo, align 8, !tbaa !58
  %.not113.i = icmp eq i32 %i.ayj, 1
  br i1 %.not113.i, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ayk = load float, ptr %i.axu, align 8, !tbaa !87
  %i.ayl = fpext nsz float %i.ayk to double
  %i.aym = fcmp nsz olt double %i.ayl, 3.000000e-01
  br i1 %i.aym, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ayn = getelementptr inbounds nuw [4 x i8], ptr @estimation_delay, i64 %indvars.iv177.i ; 2 uses
  %i.ayo = load <2 x float>, ptr %i.ayn, align 4, !tbaa !33
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayn, i64 8
  %i.ayq = load float, ptr %i.ayp, align 4, !tbaa !33
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.ayr = load float, ptr %i.axp, align 8, !tbaa !84 ; 2 uses
  %i.ays = load float, ptr %i.axq, align 4, !tbaa !86
  %i.ayt = getelementptr inbounds nuw [4 x i8], ptr @interpolate_delay.d_interpolation_factors, i64 %indvars.iv177.i ; 2 uses
  %i.ayu = fpext nsz float %i.ays to double       ; 2 uses
  %i.ayv = load <2 x float>, ptr %i.ayt, align 4, !tbaa !33 ; 2 uses
  %i.ayw = fpext <2 x float> %i.ayv to <2 x double>
  %i.ayx = fsub nsz <2 x double> splat (double 1.000000e+00), %i.ayw
  %i.ayy = insertelement <2 x float> poison, float %i.ayr, i64 0
  %i.ayz = shufflevector <2 x float> %i.ayy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aza = fmul nsz <2 x float> %i.ayz, %i.ayv
  %i.azb = fpext <2 x float> %i.aza to <2 x double>
  %i.azc = insertelement <2 x double> poison, double %i.ayu, i64 0
  %i.azd = shufflevector <2 x double> %i.azc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aze = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ayx, <2 x double> %i.azd, <2 x double> %i.azb)
  %i.azf = fptrunc <2 x double> %i.aze to <2 x float>
  %i.azg = getelementptr i8, ptr %i.ayt, i64 8
  %i.azh = load float, ptr %i.azg, align 4, !tbaa !33 ; 2 uses
  %i.azi = fpext nsz float %i.azh to double
  %i.azj = fsub nsz double 1.000000e+00, %i.azi
  %i.azk = fmul nsz float %i.ayr, %i.azh
  %i.azl = fpext nsz float %i.azk to double
  %i.azm = call nsz double @llvm.fmuladd.f64(double %i.azj, double %i.ayu, double %i.azl)
  %i.azn = fptrunc nsz double %i.azm to float
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.bx
  %.sroa.15.2.i = phi nsz float [ %.sroa.15.1142.i, %bb.bx ], [ %i.ayq, %bb.bz ], [ %i.azn, %bb.ca ] ; 2 uses
  %i.azo = phi <2 x float> [ %i.ayc, %bb.bx ], [ %i.ayo, %bb.bz ], [ %i.azf, %bb.ca ] ; 3 uses
  %i.azp = extractelement <2 x float> %i.azo, i64 0 ; 3 uses
  %i.azq = extractelement <2 x float> %i.azo, i64 1 ; 4 uses
  %i.azr = fadd nsz float %i.azq, %i.azp
  %i.azs = fmul nsz float %i.azr, 5.000000e-01
  %i.azt = call i64 @llvm.lrint.i64.f32(float %i.azs)
  %i.azu = trunc i64 %i.azt to i32
  call fastcc void @decode_predictor_coeffs(ptr noundef %i.a, ptr noundef %i.b)
  %i.azv = load i32, ptr %i.avo, align 8, !tbaa !58
  %.not114.i = icmp eq i32 %i.azv, 1
  br i1 %.not114.i, label %.lr.ph137.i, label %bb.cc

.lr.ph137.i:                                      ; preds = %bb.cb
  %i.azw = getelementptr inbounds nuw [4 x i8], ptr %i.axy, i64 %indvars.iv177.i ; 2 uses
  %umax162.i = call i32 @llvm.umax.i32(i32 %i.ayf, i32 1)
  %wide.trip.count163.i = zext nneg i32 %umax162.i to i64 ; 6 uses
  %.pre183.i = load float, ptr %i.azw, align 4, !tbaa !33 ; 2 uses
  %n.vec427 = and i64 %wide.trip.count163.i, 248  ; 3 uses
  %broadcast.splatinsert428 = insertelement <4 x float> poison, float %.pre183.i, i64 0
  %broadcast.splat429 = shufflevector <4 x float> %broadcast.splatinsert428, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %.lr.ph137.i
  %index431 = phi i64 [ 0, %.lr.ph137.i ], [ %index.next432, %vector.body430 ] ; 2 uses
  %i.azx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index431 ; 2 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 1552
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azx, i64 1568
  store <4 x float> %broadcast.splat429, ptr %i.azy, align 4, !tbaa !33
  store <4 x float> %broadcast.splat429, ptr %i.azz, align 4, !tbaa !33
  %index.next432 = add nuw i64 %index431, 8       ; 2 uses
  %i.baa = icmp eq i64 %index.next432, %n.vec427
  br i1 %i.baa, label %middle.block433, label %vector.body430, !llvm.loop !106

middle.block433:                                  ; preds = %vector.body430
  %cmp.n434 = icmp eq i64 %n.vec427, %wide.trip.count163.i
  br i1 %cmp.n434, label %.lr.ph141.i, label %scalar.ph424

bb.cc:                                            ; preds = %bb.cb
  %i.bab = load float, ptr %i.axu, align 8, !tbaa !87 ; 2 uses
  %i.bac = uitofp i8 %i.aye to float              ; 4 uses
  %i.bad = fdiv nsz float 1.000000e+00, %i.bac    ; 2 uses
  %i.bae = fsub nsz float %i.azq, %i.azp
  %i.baf = fmul nsz float %i.bad, %i.bae
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.cc
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %bb.cc ] ; 2 uses
  %i.bag = phi float [ %i.bee, %.lr.ph.i.i ], [ 0.000000e+00, %bb.cc ]
  %i.bah = call nsz float @llvm.fmuladd.f32(float %i.bag, float %i.baf, float %i.azp) ; 2 uses
  %i.bai = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %indvars.iv.i.i ; 19 uses
  %i.baj = call i64 @llvm.lrint.i64.f32(float %i.bah) ; 2 uses
  %i.bak = trunc i64 %i.baj to i32
  %i.bal = sitofp nsz i32 %i.bak to float
  %i.bam = fsub nsz float %i.bal, %i.bah
  %i.ban = fpext nsz float %i.bam to double
  %i.bao = fadd nsz double %i.ban, 5.000000e-01
  %i.bap = call nsz double @llvm.fmuladd.f64(double %i.bao, double 8.000000e+00, double 5.000000e-01)
  %i.baq = fptosi double %i.bap to i16            ; 2 uses
  %i.bar = icmp eq i16 %i.baq, 8                  ; 2 uses
  %i.bas = sext i1 %i.bar to i64
  %spec.select.i117.i = add i64 %i.baj, %i.bas
  %spec.select18.i118.i = select i1 %i.bar, i16 0, i16 %i.baq
  %sext.i119.i = shl i64 %spec.select.i117.i, 32
  %i.bat = ashr exact i64 %sext.i119.i, 32
  %i.bau = sub nsw i64 0, %i.bat
  %i.bav = getelementptr inbounds [4 x i8], ptr %i.bai, i64 %i.bau ; 17 uses
  %i.baw = getelementptr inbounds i8, ptr %i.bav, i64 -32
  %i.bax = sext i16 %spec.select18.i118.i to i64
  store float 0.000000e+00, ptr %i.bai, align 4, !tbaa !33
  %.idx.i = mul nsw i64 %i.bax, 68
  %i.bay = getelementptr inbounds i8, ptr %i.axw, i64 %.idx.i ; 17 uses
  %i.baz = load float, ptr %i.bay, align 4, !tbaa !33
  %i.bba = load float, ptr %i.baw, align 4, !tbaa !33
  %i.bbb = fmul nsz float %i.baz, %i.bba          ; 2 uses
  store float %i.bbb, ptr %i.bai, align 4, !tbaa !33
  %i.bbc = getelementptr i8, ptr %i.bay, i64 4
  %i.bbd = load float, ptr %i.bbc, align 4, !tbaa !33
  %i.bbe = getelementptr inbounds i8, ptr %i.bav, i64 -28
  %i.bbf = load float, ptr %i.bbe, align 4, !tbaa !33
  %i.bbg = call nsz float @llvm.fmuladd.f32(float %i.bbd, float %i.bbf, float %i.bbb) ; 2 uses
  store float %i.bbg, ptr %i.bai, align 4, !tbaa !33
  %i.bbh = getelementptr i8, ptr %i.bay, i64 8
  %i.bbi = load float, ptr %i.bbh, align 4, !tbaa !33
  %i.bbj = getelementptr inbounds i8, ptr %i.bav, i64 -24
  %i.bbk = load float, ptr %i.bbj, align 4, !tbaa !33
  %i.bbl = call nsz float @llvm.fmuladd.f32(float %i.bbi, float %i.bbk, float %i.bbg) ; 2 uses
  store float %i.bbl, ptr %i.bai, align 4, !tbaa !33
  %i.bbm = getelementptr i8, ptr %i.bay, i64 12
  %i.bbn = load float, ptr %i.bbm, align 4, !tbaa !33
  %i.bbo = getelementptr inbounds i8, ptr %i.bav, i64 -20
  %i.bbp = load float, ptr %i.bbo, align 4, !tbaa !33
  %i.bbq = call nsz float @llvm.fmuladd.f32(float %i.bbn, float %i.bbp, float %i.bbl) ; 2 uses
  store float %i.bbq, ptr %i.bai, align 4, !tbaa !33
  %i.bbr = getelementptr i8, ptr %i.bay, i64 16
  %i.bbs = load float, ptr %i.bbr, align 4, !tbaa !33
  %i.bbt = getelementptr inbounds i8, ptr %i.bav, i64 -16
  %i.bbu = load float, ptr %i.bbt, align 4, !tbaa !33
  %i.bbv = call nsz float @llvm.fmuladd.f32(float %i.bbs, float %i.bbu, float %i.bbq) ; 2 uses
  store float %i.bbv, ptr %i.bai, align 4, !tbaa !33
  %i.bbw = getelementptr i8, ptr %i.bay, i64 20
  %i.bbx = load float, ptr %i.bbw, align 4, !tbaa !33
  %i.bby = getelementptr inbounds i8, ptr %i.bav, i64 -12
  %i.bbz = load float, ptr %i.bby, align 4, !tbaa !33
  %i.bca = call nsz float @llvm.fmuladd.f32(float %i.bbx, float %i.bbz, float %i.bbv) ; 2 uses
  store float %i.bca, ptr %i.bai, align 4, !tbaa !33
  %i.bcb = getelementptr i8, ptr %i.bay, i64 24
  %i.bcc = load float, ptr %i.bcb, align 4, !tbaa !33
  %i.bcd = getelementptr inbounds i8, ptr %i.bav, i64 -8
  %i.bce = load float, ptr %i.bcd, align 4, !tbaa !33
  %i.bcf = call nsz float @llvm.fmuladd.f32(float %i.bcc, float %i.bce, float %i.bca) ; 2 uses
  store float %i.bcf, ptr %i.bai, align 4, !tbaa !33
  %i.bcg = getelementptr i8, ptr %i.bay, i64 28
  %i.bch = load float, ptr %i.bcg, align 4, !tbaa !33
  %i.bci = getelementptr inbounds i8, ptr %i.bav, i64 -4
  %i.bcj = load float, ptr %i.bci, align 4, !tbaa !33
  %i.bck = call nsz float @llvm.fmuladd.f32(float %i.bch, float %i.bcj, float %i.bcf) ; 2 uses
  store float %i.bck, ptr %i.bai, align 4, !tbaa !33
  %i.bcl = getelementptr i8, ptr %i.bay, i64 32
  %i.bcm = load float, ptr %i.bcl, align 4, !tbaa !33
  %i.bcn = load float, ptr %i.bav, align 4, !tbaa !33
  %i.bco = call nsz float @llvm.fmuladd.f32(float %i.bcm, float %i.bcn, float %i.bck) ; 2 uses
  store float %i.bco, ptr %i.bai, align 4, !tbaa !33
  %i.bcp = getelementptr i8, ptr %i.bay, i64 36
  %i.bcq = load float, ptr %i.bcp, align 4, !tbaa !33
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bav, i64 4
  %i.bcs = load float, ptr %i.bcr, align 4, !tbaa !33
  %i.bct = call nsz float @llvm.fmuladd.f32(float %i.bcq, float %i.bcs, float %i.bco) ; 2 uses
  store float %i.bct, ptr %i.bai, align 4, !tbaa !33
  %i.bcu = getelementptr i8, ptr %i.bay, i64 40
  %i.bcv = load float, ptr %i.bcu, align 4, !tbaa !33
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bav, i64 8
  %i.bcx = load float, ptr %i.bcw, align 4, !tbaa !33
  %i.bcy = call nsz float @llvm.fmuladd.f32(float %i.bcv, float %i.bcx, float %i.bct) ; 2 uses
  store float %i.bcy, ptr %i.bai, align 4, !tbaa !33
  %i.bcz = getelementptr i8, ptr %i.bay, i64 44
  %i.bda = load float, ptr %i.bcz, align 4, !tbaa !33
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bav, i64 12
  %i.bdc = load float, ptr %i.bdb, align 4, !tbaa !33
  %i.bdd = call nsz float @llvm.fmuladd.f32(float %i.bda, float %i.bdc, float %i.bcy) ; 2 uses
  store float %i.bdd, ptr %i.bai, align 4, !tbaa !33
  %i.bde = getelementptr i8, ptr %i.bay, i64 48
  %i.bdf = load float, ptr %i.bde, align 4, !tbaa !33
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bav, i64 16
  %i.bdh = load float, ptr %i.bdg, align 4, !tbaa !33
  %i.bdi = call nsz float @llvm.fmuladd.f32(float %i.bdf, float %i.bdh, float %i.bdd) ; 2 uses
  store float %i.bdi, ptr %i.bai, align 4, !tbaa !33
  %i.bdj = getelementptr i8, ptr %i.bay, i64 52
  %i.bdk = load float, ptr %i.bdj, align 4, !tbaa !33
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bav, i64 20
  %i.bdm = load float, ptr %i.bdl, align 4, !tbaa !33
  %i.bdn = call nsz float @llvm.fmuladd.f32(float %i.bdk, float %i.bdm, float %i.bdi) ; 2 uses
  store float %i.bdn, ptr %i.bai, align 4, !tbaa !33
  %i.bdo = getelementptr i8, ptr %i.bay, i64 56
  %i.bdp = load float, ptr %i.bdo, align 4, !tbaa !33
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bav, i64 24
  %i.bdr = load float, ptr %i.bdq, align 4, !tbaa !33
  %i.bds = call nsz float @llvm.fmuladd.f32(float %i.bdp, float %i.bdr, float %i.bdn) ; 2 uses
  store float %i.bds, ptr %i.bai, align 4, !tbaa !33
  %i.bdt = getelementptr i8, ptr %i.bay, i64 60
  %i.bdu = load float, ptr %i.bdt, align 4, !tbaa !33
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bav, i64 28
  %i.bdw = load float, ptr %i.bdv, align 4, !tbaa !33
  %i.bdx = call nsz float @llvm.fmuladd.f32(float %i.bdu, float %i.bdw, float %i.bds) ; 2 uses
  store float %i.bdx, ptr %i.bai, align 4, !tbaa !33
  %i.bdy = getelementptr i8, ptr %i.bay, i64 64
  %i.bdz = load float, ptr %i.bdy, align 4, !tbaa !33
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bav, i64 32
  %i.beb = load float, ptr %i.bea, align 4, !tbaa !33
  %i.bec = call nsz float @llvm.fmuladd.f32(float %i.bdz, float %i.beb, float %i.bdx)
  store float %i.bec, ptr %i.bai, align 4, !tbaa !33
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bed = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.bee = uitofp nneg i32 %i.bed to float        ; 2 uses
  %i.bef = fcmp nsz olt float %i.bee, %i.bac
  br i1 %i.bef, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !88

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.beg = fsub nsz float %.sroa.15.2.i, %i.azq
  %i.beh = fmul nsz float %i.bad, %i.beg
  %i.bei = add nuw nsw i32 %i.ayf, 10
  %i.bej = uitofp nneg i32 %i.bei to float
  %i.bek = zext i8 %i.aye to i64                  ; 13 uses
  br label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %.lr.ph41.i.i, %._crit_edge.i.i
  %indvars.iv47.i.i = phi i64 [ %i.bek, %._crit_edge.i.i ], [ %indvars.iv.next48.i.i, %.lr.ph41.i.i ] ; 2 uses
  %i.bel = phi float [ %i.bac, %._crit_edge.i.i ], [ %i.bik, %.lr.ph41.i.i ]
  %i.bem = fsub nsz float %i.bel, %i.bac
  %i.ben = call nsz float @llvm.fmuladd.f32(float %i.bem, float %i.beh, float %i.azq) ; 2 uses
  %i.beo = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %indvars.iv47.i.i ; 19 uses
  %i.bep = call i64 @llvm.lrint.i64.f32(float %i.ben) ; 2 uses
  %i.beq = trunc i64 %i.bep to i32
  %i.ber = sitofp nsz i32 %i.beq to float
  %i.bes = fsub nsz float %i.ber, %i.ben
  %i.bet = fpext nsz float %i.bes to double
  %i.beu = fadd nsz double %i.bet, 5.000000e-01
  %i.bev = call nsz double @llvm.fmuladd.f64(double %i.beu, double 8.000000e+00, double 5.000000e-01)
  %i.bew = fptosi double %i.bev to i16            ; 2 uses
  %i.bex = icmp eq i16 %i.bew, 8                  ; 2 uses
  %i.bey = sext i1 %i.bex to i64
  %spec.select.i.i242 = add i64 %i.bep, %i.bey
  %spec.select18.i.i = select i1 %i.bex, i16 0, i16 %i.bew
  %sext.i.i = shl i64 %spec.select.i.i242, 32
  %i.bez = ashr exact i64 %sext.i.i, 32
  %i.bfa = sub nsw i64 0, %i.bez
  %i.bfb = getelementptr inbounds [4 x i8], ptr %i.beo, i64 %i.bfa ; 17 uses
  %i.bfc = getelementptr inbounds i8, ptr %i.bfb, i64 -32
  %i.bfd = sext i16 %spec.select18.i.i to i64
  store float 0.000000e+00, ptr %i.beo, align 4, !tbaa !33
  %.idx124.i = mul nsw i64 %i.bfd, 68
  %i.bfe = getelementptr inbounds i8, ptr %i.axw, i64 %.idx124.i ; 17 uses
  %i.bff = load float, ptr %i.bfe, align 4, !tbaa !33
  %i.bfg = load float, ptr %i.bfc, align 4, !tbaa !33
  %i.bfh = fmul nsz float %i.bff, %i.bfg          ; 2 uses
  store float %i.bfh, ptr %i.beo, align 4, !tbaa !33
  %i.bfi = getelementptr i8, ptr %i.bfe, i64 4
  %i.bfj = load float, ptr %i.bfi, align 4, !tbaa !33
  %i.bfk = getelementptr inbounds i8, ptr %i.bfb, i64 -28
  %i.bfl = load float, ptr %i.bfk, align 4, !tbaa !33
  %i.bfm = call nsz float @llvm.fmuladd.f32(float %i.bfj, float %i.bfl, float %i.bfh) ; 2 uses
  store float %i.bfm, ptr %i.beo, align 4, !tbaa !33
  %i.bfn = getelementptr i8, ptr %i.bfe, i64 8
  %i.bfo = load float, ptr %i.bfn, align 4, !tbaa !33
  %i.bfp = getelementptr inbounds i8, ptr %i.bfb, i64 -24
  %i.bfq = load float, ptr %i.bfp, align 4, !tbaa !33
  %i.bfr = call nsz float @llvm.fmuladd.f32(float %i.bfo, float %i.bfq, float %i.bfm) ; 2 uses
  store float %i.bfr, ptr %i.beo, align 4, !tbaa !33
  %i.bfs = getelementptr i8, ptr %i.bfe, i64 12
  %i.bft = load float, ptr %i.bfs, align 4, !tbaa !33
  %i.bfu = getelementptr inbounds i8, ptr %i.bfb, i64 -20
  %i.bfv = load float, ptr %i.bfu, align 4, !tbaa !33
  %i.bfw = call nsz float @llvm.fmuladd.f32(float %i.bft, float %i.bfv, float %i.bfr) ; 2 uses
  store float %i.bfw, ptr %i.beo, align 4, !tbaa !33
  %i.bfx = getelementptr i8, ptr %i.bfe, i64 16
  %i.bfy = load float, ptr %i.bfx, align 4, !tbaa !33
  %i.bfz = getelementptr inbounds i8, ptr %i.bfb, i64 -16
  %i.bga = load float, ptr %i.bfz, align 4, !tbaa !33
  %i.bgb = call nsz float @llvm.fmuladd.f32(float %i.bfy, float %i.bga, float %i.bfw) ; 2 uses
  store float %i.bgb, ptr %i.beo, align 4, !tbaa !33
  %i.bgc = getelementptr i8, ptr %i.bfe, i64 20
  %i.bgd = load float, ptr %i.bgc, align 4, !tbaa !33
  %i.bge = getelementptr inbounds i8, ptr %i.bfb, i64 -12
  %i.bgf = load float, ptr %i.bge, align 4, !tbaa !33
  %i.bgg = call nsz float @llvm.fmuladd.f32(float %i.bgd, float %i.bgf, float %i.bgb) ; 2 uses
  store float %i.bgg, ptr %i.beo, align 4, !tbaa !33
  %i.bgh = getelementptr i8, ptr %i.bfe, i64 24
  %i.bgi = load float, ptr %i.bgh, align 4, !tbaa !33
  %i.bgj = getelementptr inbounds i8, ptr %i.bfb, i64 -8
  %i.bgk = load float, ptr %i.bgj, align 4, !tbaa !33
  %i.bgl = call nsz float @llvm.fmuladd.f32(float %i.bgi, float %i.bgk, float %i.bgg) ; 2 uses
  store float %i.bgl, ptr %i.beo, align 4, !tbaa !33
  %i.bgm = getelementptr i8, ptr %i.bfe, i64 28
  %i.bgn = load float, ptr %i.bgm, align 4, !tbaa !33
  %i.bgo = getelementptr inbounds i8, ptr %i.bfb, i64 -4
  %i.bgp = load float, ptr %i.bgo, align 4, !tbaa !33
  %i.bgq = call nsz float @llvm.fmuladd.f32(float %i.bgn, float %i.bgp, float %i.bgl) ; 2 uses
  store float %i.bgq, ptr %i.beo, align 4, !tbaa !33
  %i.bgr = getelementptr i8, ptr %i.bfe, i64 32
  %i.bgs = load float, ptr %i.bgr, align 4, !tbaa !33
  %i.bgt = load float, ptr %i.bfb, align 4, !tbaa !33
  %i.bgu = call nsz float @llvm.fmuladd.f32(float %i.bgs, float %i.bgt, float %i.bgq) ; 2 uses
  store float %i.bgu, ptr %i.beo, align 4, !tbaa !33
  %i.bgv = getelementptr i8, ptr %i.bfe, i64 36
  %i.bgw = load float, ptr %i.bgv, align 4, !tbaa !33
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bfb, i64 4
  %i.bgy = load float, ptr %i.bgx, align 4, !tbaa !33
  %i.bgz = call nsz float @llvm.fmuladd.f32(float %i.bgw, float %i.bgy, float %i.bgu) ; 2 uses
  store float %i.bgz, ptr %i.beo, align 4, !tbaa !33
  %i.bha = getelementptr i8, ptr %i.bfe, i64 40
  %i.bhb = load float, ptr %i.bha, align 4, !tbaa !33
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 8
  %i.bhd = load float, ptr %i.bhc, align 4, !tbaa !33
  %i.bhe = call nsz float @llvm.fmuladd.f32(float %i.bhb, float %i.bhd, float %i.bgz) ; 2 uses
  store float %i.bhe, ptr %i.beo, align 4, !tbaa !33
  %i.bhf = getelementptr i8, ptr %i.bfe, i64 44
  %i.bhg = load float, ptr %i.bhf, align 4, !tbaa !33
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bfb, i64 12
  %i.bhi = load float, ptr %i.bhh, align 4, !tbaa !33
  %i.bhj = call nsz float @llvm.fmuladd.f32(float %i.bhg, float %i.bhi, float %i.bhe) ; 2 uses
  store float %i.bhj, ptr %i.beo, align 4, !tbaa !33
  %i.bhk = getelementptr i8, ptr %i.bfe, i64 48
  %i.bhl = load float, ptr %i.bhk, align 4, !tbaa !33
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bfb, i64 16
  %i.bhn = load float, ptr %i.bhm, align 4, !tbaa !33
  %i.bho = call nsz float @llvm.fmuladd.f32(float %i.bhl, float %i.bhn, float %i.bhj) ; 2 uses
  store float %i.bho, ptr %i.beo, align 4, !tbaa !33
  %i.bhp = getelementptr i8, ptr %i.bfe, i64 52
  %i.bhq = load float, ptr %i.bhp, align 4, !tbaa !33
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bfb, i64 20
  %i.bhs = load float, ptr %i.bhr, align 4, !tbaa !33
  %i.bht = call nsz float @llvm.fmuladd.f32(float %i.bhq, float %i.bhs, float %i.bho) ; 2 uses
  store float %i.bht, ptr %i.beo, align 4, !tbaa !33
  %i.bhu = getelementptr i8, ptr %i.bfe, i64 56
  %i.bhv = load float, ptr %i.bhu, align 4, !tbaa !33
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bfb, i64 24
  %i.bhx = load float, ptr %i.bhw, align 4, !tbaa !33
  %i.bhy = call nsz float @llvm.fmuladd.f32(float %i.bhv, float %i.bhx, float %i.bht) ; 2 uses
  store float %i.bhy, ptr %i.beo, align 4, !tbaa !33
  %i.bhz = getelementptr i8, ptr %i.bfe, i64 60
  %i.bia = load float, ptr %i.bhz, align 4, !tbaa !33
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bfb, i64 28
  %i.bic = load float, ptr %i.bib, align 4, !tbaa !33
  %i.bid = call nsz float @llvm.fmuladd.f32(float %i.bia, float %i.bic, float %i.bhy) ; 2 uses
  store float %i.bid, ptr %i.beo, align 4, !tbaa !33
  %i.bie = getelementptr i8, ptr %i.bfe, i64 64
  %i.bif = load float, ptr %i.bie, align 4, !tbaa !33
  %i.big = getelementptr inbounds nuw i8, ptr %i.bfb, i64 32
  %i.bih = load float, ptr %i.big, align 4, !tbaa !33
  %i.bii = call nsz float @llvm.fmuladd.f32(float %i.bif, float %i.bih, float %i.bid)
  store float %i.bii, ptr %i.beo, align 4, !tbaa !33
  %indvars.iv.next48.i.i = add nuw nsw i64 %indvars.iv47.i.i, 1 ; 2 uses
  %i.bij = trunc nuw nsw i64 %indvars.iv.next48.i.i to i32
  %i.bik = uitofp nneg i32 %i.bij to float        ; 2 uses
  %i.bil = fcmp nsz olt float %i.bik, %i.bej
  br i1 %i.bil, label %.lr.ph41.i.i, label %vector.ph448, !llvm.loop !91

vector.ph448:                                     ; preds = %.lr.ph41.i.i
  %n.vec449 = and i64 %i.bek, 248                 ; 3 uses
  %broadcast.splatinsert450 = insertelement <4 x float> poison, float %i.bab, i64 0
  %broadcast.splat451 = shufflevector <4 x float> %broadcast.splatinsert450, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body452

vector.body452:                                   ; preds = %vector.body452, %vector.ph448
  %index453 = phi i64 [ 0, %vector.ph448 ], [ %index.next456, %vector.body452 ] ; 2 uses
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %index453 ; 3 uses
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %wide.load454 = load <4 x float>, ptr %11, align 4, !tbaa !33
  %wide.load455 = load <4 x float>, ptr %12, align 4, !tbaa !33
  %13 = fmul nsz <4 x float> %broadcast.splat451, %wide.load454
  %14 = fmul nsz <4 x float> %broadcast.splat451, %wide.load455
  store <4 x float> %13, ptr %11, align 4, !tbaa !33
  store <4 x float> %14, ptr %12, align 4, !tbaa !33
  %index.next456 = add nuw i64 %index453, 8       ; 2 uses
  %15 = icmp eq i64 %index.next456, %n.vec449
  br i1 %15, label %middle.block457, label %vector.body452, !llvm.loop !107

middle.block457:                                  ; preds = %vector.body452
  %cmp.n458 = icmp eq i64 %n.vec449, %i.bek
  br i1 %cmp.n458, label %acb_excitation.exit.i.preheader, label %.lr.ph43.i.i

.lr.ph43.i.i:                                     ; preds = %middle.block457, %.lr.ph43.i.i
  %indvars.iv50.i.i = phi i64 [ %indvars.iv.next51.i.i, %.lr.ph43.i.i ], [ %n.vec449, %middle.block457 ] ; 2 uses
  %i.bim = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %indvars.iv50.i.i ; 2 uses
  %i.bin = load float, ptr %i.bim, align 4, !tbaa !33
  %i.bio = fmul nsz float %i.bab, %i.bin
  store float %i.bio, ptr %i.bim, align 4, !tbaa !33
  %indvars.iv.next51.i.i = add nuw nsw i64 %indvars.iv50.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next51.i.i, %i.bek
  br i1 %exitcond.not.i.i, label %acb_excitation.exit.i.preheader, label %.lr.ph43.i.i, !llvm.loop !108

acb_excitation.exit.i.preheader:                  ; preds = %.lr.ph43.i.i, %middle.block457
  %xtraiter478 = and i64 %i.bek, 3                ; 3 uses
  %i.bip = add i8 %i.aye, -1
  %i.biq = icmp ult i8 %i.bip, 3
  br i1 %i.biq, label %acb_excitation.exit.i.epil.preheader, label %acb_excitation.exit.i.preheader.new

acb_excitation.exit.i.preheader.new:              ; preds = %acb_excitation.exit.i.preheader
  %unroll_iter = and i64 %i.bek, 252
  br label %acb_excitation.exit.i

acb_excitation.exit.i:                            ; preds = %acb_excitation.exit.i, %acb_excitation.exit.i.preheader.new
  %indvars.iv.i238 = phi i64 [ 0, %acb_excitation.exit.i.preheader.new ], [ %indvars.iv.next.i239.3, %acb_excitation.exit.i ] ; 5 uses
  %niter = phi i64 [ 0, %acb_excitation.exit.i.preheader.new ], [ %niter.next.3, %acb_excitation.exit.i ]
  %i.bir = load float, ptr %i.axx, align 4, !tbaa !43
  %i.bis = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i238
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bis, i64 1552 ; 2 uses
  %i.biu = load float, ptr %i.bit, align 4, !tbaa !33
  %i.biv = fmul nsz float %i.bir, %i.biu
  store float %i.biv, ptr %i.bit, align 4, !tbaa !33
  %i.biw = load float, ptr %i.axx, align 4, !tbaa !43
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i238
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bix, i64 1556 ; 2 uses
  %i.biz = load float, ptr %i.biy, align 4, !tbaa !33
  %i.bja = fmul nsz float %i.biw, %i.biz
  store float %i.bja, ptr %i.biy, align 4, !tbaa !33
  %i.bjb = load float, ptr %i.axx, align 4, !tbaa !43
  %i.bjc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i238
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bjc, i64 1560 ; 2 uses
  %i.bje = load float, ptr %i.bjd, align 4, !tbaa !33
  %i.bjf = fmul nsz float %i.bjb, %i.bje
  store float %i.bjf, ptr %i.bjd, align 4, !tbaa !33
  %i.bjg = load float, ptr %i.axx, align 4, !tbaa !43
  %i.bjh = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i238
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjh, i64 1564 ; 2 uses
  %i.bjj = load float, ptr %i.bji, align 4, !tbaa !33
  %i.bjk = fmul nsz float %i.bjg, %i.bjj
  store float %i.bjk, ptr %i.bji, align 4, !tbaa !33
  %indvars.iv.next.i239.3 = add nuw nsw i64 %indvars.iv.i238, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %acb_excitation.exit.i, !llvm.loop !109

scalar.ph424:                                     ; preds = %middle.block433, %scalar.ph424
  %indvars.iv159.i = phi i64 [ %indvars.iv.next160.i, %scalar.ph424 ], [ %n.vec427, %middle.block433 ] ; 2 uses
  %i.bjl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv159.i
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjl, i64 1552
  store float %.pre183.i, ptr %i.bjm, align 4, !tbaa !33
  %indvars.iv.next160.i = add nuw nsw i64 %indvars.iv159.i, 1 ; 2 uses
  %exitcond164.not.i = icmp eq i64 %indvars.iv.next160.i, %wide.trip.count163.i
  br i1 %exitcond164.not.i, label %.lr.ph141.i, label %scalar.ph424, !llvm.loop !110

.lr.ph141.i:                                      ; preds = %scalar.ph424, %middle.block433
  %i.bjn = zext i8 %i.aye to i64                  ; 3 uses
  %i.bjo = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %i.bjn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.axz, ptr noundef nonnull align 4 dereferenceable(512) %i.bjo, i64 512, i1 false)
  %.pre184.i = load float, ptr %i.azw, align 4, !tbaa !33 ; 2 uses
  %n.vec415 = and i64 %wide.trip.count163.i, 248  ; 3 uses
  %broadcast.splatinsert416 = insertelement <4 x float> poison, float %.pre184.i, i64 0
  %broadcast.splat417 = shufflevector <4 x float> %broadcast.splatinsert416, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body418

vector.body418:                                   ; preds = %vector.body418, %.lr.ph141.i
  %index419 = phi i64 [ 0, %.lr.ph141.i ], [ %index.next420, %vector.body418 ] ; 2 uses
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %index419 ; 2 uses
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjp, i64 512
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjp, i64 528
  store <4 x float> %broadcast.splat417, ptr %i.bjq, align 4, !tbaa !33
  store <4 x float> %broadcast.splat417, ptr %i.bjr, align 4, !tbaa !33
  %index.next420 = add nuw i64 %index419, 8       ; 2 uses
  %i.bjs = icmp eq i64 %index.next420, %n.vec415
  br i1 %i.bjs, label %middle.block421, label %vector.body418, !llvm.loop !111

middle.block421:                                  ; preds = %vector.body418
  %cmp.n422 = icmp eq i64 %n.vec415, %wide.trip.count163.i
  br i1 %cmp.n422, label %.thread.i241, label %scalar.ph412

.unr-lcssa:                                       ; preds = %acb_excitation.exit.i
  %lcmp.mod479.not = icmp eq i64 %xtraiter478, 0
  br i1 %lcmp.mod479.not, label %.epilog-lcssa, label %acb_excitation.exit.i.epil.preheader

acb_excitation.exit.i.epil.preheader:             ; preds = %.unr-lcssa, %acb_excitation.exit.i.preheader
  %indvars.iv.i238.epil.init = phi i64 [ 0, %acb_excitation.exit.i.preheader ], [ %indvars.iv.next.i239.3, %.unr-lcssa ]
  %lcmp.mod480 = icmp ne i64 %xtraiter478, 0
  call void @llvm.assume(i1 %lcmp.mod480)
  br label %acb_excitation.exit.i.epil

acb_excitation.exit.i.epil:                       ; preds = %acb_excitation.exit.i.epil, %acb_excitation.exit.i.epil.preheader
  %indvars.iv.i238.epil = phi i64 [ %indvars.iv.next.i239.epil, %acb_excitation.exit.i.epil ], [ %indvars.iv.i238.epil.init, %acb_excitation.exit.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %acb_excitation.exit.i.epil ], [ 0, %acb_excitation.exit.i.epil.preheader ]
  %i.bjt = load float, ptr %i.axx, align 4, !tbaa !43
  %i.bju = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i238.epil
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bju, i64 1552 ; 2 uses
  %i.bjw = load float, ptr %i.bjv, align 4, !tbaa !33
  %i.bjx = fmul nsz float %i.bjt, %i.bjw
  store float %i.bjx, ptr %i.bjv, align 4, !tbaa !33
  %indvars.iv.next.i239.epil = add nuw nsw i64 %indvars.iv.i238.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter478
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %acb_excitation.exit.i.epil, !llvm.loop !112

.epilog-lcssa:                                    ; preds = %acb_excitation.exit.i.epil, %.unr-lcssa
  %i.bjy = load float, ptr %i.axx, align 4, !tbaa !43
  %i.bjz = fpext nsz float %i.bjy to double
  %i.bka = fadd nsz double %i.bjz, -5.000000e-02  ; 2 uses
  %i.bkb = fcmp nsz ogt double %i.bka, 0.000000e+00
  %i.bkc = fptrunc nsz double %i.bka to float
  %i.bkd = select i1 %i.bkb, float %i.bkc, float 0.000000e+00
  store float %i.bkd, ptr %i.axx, align 4, !tbaa !43
  %i.bke = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %i.bek
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.axz, ptr noundef nonnull align 4 dereferenceable(512) %i.bke, i64 512, i1 false)
  %i.bkf = load float, ptr %i.axu, align 8, !tbaa !87
  %i.bkg = fpext nsz float %i.bkf to double
  %i.bkh = fcmp nsz olt double %i.bkg, 4.000000e-01
  br i1 %i.bkh, label %.lr.ph139.preheader.i, label %.thread.i241

.lr.ph139.preheader.i:                            ; preds = %.epilog-lcssa
  %i.bki = load float, ptr %i.aya, align 4, !tbaa !45
  %i.bkj = fpext nsz float %i.bki to double
  %i.bkk = fmul nsz double %i.bkj, 1.000000e-01
  %i.bkl = fptrunc nsz double %i.bkk to float     ; 2 uses
  %n.vec439 = and i64 %i.bek, 248                 ; 3 uses
  %broadcast.splatinsert440 = insertelement <4 x float> poison, float %i.bkl, i64 0
  %broadcast.splat441 = shufflevector <4 x float> %broadcast.splatinsert440, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body442

vector.body442:                                   ; preds = %vector.body442, %.lr.ph139.preheader.i
  %index443 = phi i64 [ 0, %.lr.ph139.preheader.i ], [ %index.next446, %vector.body442 ] ; 2 uses
  %i.bkm = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %index443 ; 2 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bkm, i64 512 ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkm, i64 528 ; 2 uses
  %wide.load444 = load <4 x float>, ptr %i.bkn, align 4, !tbaa !33
  %wide.load445 = load <4 x float>, ptr %i.bko, align 4, !tbaa !33
  %i.bkp = fadd nsz <4 x float> %wide.load444, %broadcast.splat441
  %i.bkq = fadd nsz <4 x float> %wide.load445, %broadcast.splat441
  store <4 x float> %i.bkp, ptr %i.bkn, align 4, !tbaa !33
  store <4 x float> %i.bkq, ptr %i.bko, align 4, !tbaa !33
  %index.next446 = add nuw i64 %index443, 8       ; 2 uses
  %i.bkr = icmp eq i64 %index.next446, %n.vec439
  br i1 %i.bkr, label %middle.block447, label %vector.body442, !llvm.loop !113

middle.block447:                                  ; preds = %vector.body442
  %cmp.n448 = icmp eq i64 %n.vec439, %i.bek
  br i1 %cmp.n448, label %.thread.i241, label %.lr.ph139.i

.lr.ph139.i:                                      ; preds = %middle.block447, %.lr.ph139.i
  %indvars.iv165.i = phi i64 [ %indvars.iv.next166.i, %.lr.ph139.i ], [ %n.vec439, %middle.block447 ] ; 2 uses
  %i.bks = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %indvars.iv165.i
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bks, i64 512 ; 2 uses
  %i.bku = load float, ptr %i.bkt, align 4, !tbaa !33
  %i.bkv = fadd nsz float %i.bku, %i.bkl
  store float %i.bkv, ptr %i.bkt, align 4, !tbaa !33
  %indvars.iv.next166.i = add nuw nsw i64 %indvars.iv165.i, 1 ; 2 uses
  %exitcond170.not.i = icmp eq i64 %indvars.iv.next166.i, %i.bek
  br i1 %exitcond170.not.i, label %.thread.i241, label %.lr.ph139.i, !llvm.loop !114

scalar.ph412:                                     ; preds = %middle.block421, %scalar.ph412
  %indvars.iv171.i = phi i64 [ %indvars.iv.next172.i, %scalar.ph412 ], [ %n.vec415, %middle.block421 ] ; 2 uses
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %indvars.iv171.i
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bkw, i64 512
  store float %.pre184.i, ptr %i.bkx, align 4, !tbaa !33
  %indvars.iv.next172.i = add nuw nsw i64 %indvars.iv171.i, 1 ; 2 uses
  %exitcond176.not.i = icmp eq i64 %indvars.iv.next172.i, %wide.trip.count163.i
  br i1 %exitcond176.not.i, label %.thread.i241, label %scalar.ph412, !llvm.loop !115

.thread.i241:                                     ; preds = %.lr.ph139.i, %scalar.ph412, %middle.block447, %middle.block421, %.epilog-lcssa
  %i.bky = phi i64 [ %i.bjn, %middle.block421 ], [ %i.bek, %.epilog-lcssa ], [ %i.bek, %middle.block447 ], [ %i.bjn, %scalar.ph412 ], [ %i.bek, %.lr.ph139.i ]
  call fastcc void @synthesis_filter(ptr noundef nonnull %i.axv, ptr noundef %i.b, ptr noundef nonnull %i.ayb, i32 noundef %i.ayf, ptr noundef nonnull %i.c)
  %i.bkz = load i32, ptr %i.avo, align 8, !tbaa !58
  %i.bla = sext i32 %i.bkz to i64
  %i.blb = getelementptr inbounds [16 x i8], ptr @postfilter_coeffs, i64 %i.bla
  call fastcc void @postfilter(ptr noundef nonnull %i.j, ptr noundef %i.c, ptr noundef %i.b, ptr noundef %.0109145.i, i32 noundef %i.azu, ptr noundef nonnull %i.blb, i32 noundef %i.ayf)
  %i.blc = getelementptr inbounds nuw [4 x i8], ptr %.0109145.i, i64 %i.bky
  %indvars.iv.next178.i = add nuw nsw i64 %indvars.iv177.i, 1 ; 2 uses
  %exitcond180.not.i = icmp eq i64 %indvars.iv.next178.i, 3
  br i1 %exitcond180.not.i, label %frame_erasure.exit, label %bb.bx, !llvm.loop !116

frame_erasure.exit:                               ; preds = %.thread.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.loopexit272

.loopexit272:                                     ; preds = %bb.bp, %frame_erasure.exit
  %i.bld = phi ptr [ %i.avo, %frame_erasure.exit ], [ %i.ag, %bb.bp ]
  %.0170 = phi i8 [ 1, %frame_erasure.exit ], [ 0, %bb.bp ]
  %i.ble = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.blf = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ble, ptr noundef nonnull align 8 dereferenceable(40) %i.blf, i64 40, i1 false)
  %i.blg = getelementptr inbounds nuw i8, ptr %i.j, i64 2885
  store i8 %.0170, ptr %i.blg, align 1, !tbaa !44
  %i.blh = load i32, ptr %i.bld, align 8, !tbaa !58 ; 2 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  store i32 %i.blh, ptr %i.bli, align 4, !tbaa !39
  %.not197 = icmp eq i32 %i.blh, 1
  br i1 %.not197, label %vector.body466, label %bb.cd

bb.cd:                                            ; preds = %.loopexit272
  %i.blj = getelementptr inbounds nuw i8, ptr %i.j, i64 1024
  %i.blk = load float, ptr %i.blj, align 8, !tbaa !84
  %i.bll = getelementptr inbounds nuw i8, ptr %i.j, i64 1028
  store float %i.blk, ptr %i.bll, align 4, !tbaa !86
end_hunk_2
begin_hunk_3_@bl_intrp:bb.a
  %i.bx = getelementptr i8, ptr %i.bw, i64 40
  %i.by = load float, ptr %i.bx, align 4, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !33
  %i.cb = tail call nsz float @llvm.fmuladd.f32(float %i.by, float %i.ca, float %i.bv) ; 2 uses
  store float %i.cb, ptr %1, align 4, !tbaa !33
  %i.cc = getelementptr [4 x i8], ptr %i.q, i64 %i.p
  %i.cd = getelementptr i8, ptr %i.cc, i64 44
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !33
  %i.cf = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !33
  %i.ch = tail call nsz float @llvm.fmuladd.f32(float %i.ce, float %i.cg, float %i.cb) ; 2 uses
  store float %i.ch, ptr %1, align 4, !tbaa !33
  %i.ci = getelementptr [4 x i8], ptr %i.q, i64 %i.p
  %i.cj = getelementptr i8, ptr %i.ci, i64 48
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !33
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !33
  %i.cn = tail call nsz float @llvm.fmuladd.f32(float %i.ck, float %i.cm, float %i.ch) ; 2 uses
  store float %i.cn, ptr %1, align 4, !tbaa !33
  %i.co = getelementptr [4 x i8], ptr %i.q, i64 %i.p
  %i.cp = getelementptr i8, ptr %i.co, i64 52
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !33
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !33
  %i.ct = tail call nsz float @llvm.fmuladd.f32(float %i.cq, float %i.cs, float %i.cn) ; 2 uses
  store float %i.ct, ptr %1, align 4, !tbaa !33
  %i.cu = getelementptr [4 x i8], ptr %i.q, i64 %i.p
  %i.cv = getelementptr i8, ptr %i.cu, i64 56
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !33
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !33
  %i.cz = tail call nsz float @llvm.fmuladd.f32(float %i.cw, float %i.cy, float %i.ct) ; 2 uses
  store float %i.cz, ptr %1, align 4, !tbaa !33
  %i.da = getelementptr [4 x i8], ptr %i.q, i64 %i.p
  %i.db = getelementptr i8, ptr %i.da, i64 60
  %i.dc = load float, ptr %i.db, align 4, !tbaa !33
  %i.dd = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.de = load float, ptr %i.dd, align 4, !tbaa !33
  %i.df = tail call nsz float @llvm.fmuladd.f32(float %i.dc, float %i.de, float %i.cz) ; 2 uses
  store float %i.df, ptr %1, align 4, !tbaa !33
  %i.dg = getelementptr [4 x i8], ptr %i.q, i64 %i.p
  %i.dh = getelementptr i8, ptr %i.dg, i64 64
  %i.di = load float, ptr %i.dh, align 4, !tbaa !33
  %i.dj = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !33
  %i.dl = tail call nsz float @llvm.fmuladd.f32(float %i.di, float %i.dk, float %i.df)
  store float %i.dl, ptr %1, align 4, !tbaa !33
  ret void
}

declare void @ff_weighted_vector_sumf(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_acelp_lsf2lspd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.pow.v2f64(<2 x double>, <2 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!6, !6, i64 0}
!30 = !{!7, !7, i64 0}
!31 = !{!12, !12, i64 0}
!32 = !{!10, !6, i64 344}
!33 = !{!18, !18, i64 0}
!34 = distinct !{!34, !35, !36, !37}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = distinct !{!38, !35}
!39 = !{!40, !6, i64 44}
!40 = !{!"EVRCContext", !11, i64 0, !6, i64 8, !41, i64 16, !6, i64 40, !6, i64 44, !42, i64 48, !7, i64 96, !7, i64 136, !7, i64 176, !7, i64 216, !7, i64 256, !7, i64 296, !18, i64 1024, !18, i64 1028, !18, i64 1032, !18, i64 1036, !7, i64 1040, !7, i64 1808, !7, i64 2320, !7, i64 2864, !18, i64 2876, !18, i64 2880, !7, i64 2884, !7, i64 2885, !7, i64 2886}
!41 = !{!"GetBitContext", !16, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!42 = !{!"EVRCAFrame", !7, i64 0, !7, i64 2, !7, i64 10, !7, i64 11, !7, i64 12, !7, i64 16, !7, i64 40, !7, i64 43, !7, i64 44}
!43 = !{!40, !18, i64 2876}
!44 = !{!40, !7, i64 2885}
!45 = !{!40, !18, i64 1036}
!46 = distinct !{!46, !35}
!47 = distinct !{!47, !35}
!48 = !{!49, !16, i64 24}
!49 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!50 = !{!49, !6, i64 32}
!51 = !{!52, !6, i64 112}
!52 = !{!"AVFrame", !7, i64 0, !7, i64 64, !53, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !54, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !55, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!53 = !{!"p2 omnipotent char", !28, i64 0}
!54 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!55 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!56 = !{!16, !16, i64 0}
!57 = !{!40, !7, i64 2886}
!58 = !{!40, !6, i64 40}
!59 = !{!10, !15, i64 824}
!60 = !{!41, !16, i64 0}
!61 = !{!41, !6, i64 12}
!62 = !{!41, !6, i64 16}
!63 = !{!41, !6, i64 8}
!64 = !{!42, !7, i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"short", !7, i64 0}
!67 = !{!42, !7, i64 10}
!68 = !{!42, !7, i64 11}
!69 = !{!42, !7, i64 44}
!70 = !{!42, !7, i64 43}
!71 = !{!40, !7, i64 91}
!72 = !{!73, !73, i64 0}
!73 = !{!"p2 float", !28, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"p1 float", !12, i64 0}
!76 = distinct !{!76, !35, !36, !37}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = distinct !{!79, !35, !36}
!80 = distinct !{!80, !35}
!81 = distinct !{!81, !35}
!82 = !{!40, !7, i64 2884}
!83 = !{!40, !7, i64 58}
!84 = !{!40, !18, i64 1024}
!85 = !{!40, !7, i64 59}
!86 = !{!40, !18, i64 1028}
!87 = !{!40, !18, i64 1032}
!88 = distinct !{!88, !35}
!89 = !{!40, !7, i64 48}
!90 = distinct !{!90, !35, !36, !37}
!91 = distinct !{!91, !35}
!92 = distinct !{!92, !35, !36, !37}
!93 = distinct !{!93, !35, !37, !36}
!94 = !{!95}
!95 = distinct !{!95, !96}
!96 = distinct !{!96, !"LVerDomain"}
!97 = !{!98}
!98 = distinct !{!98, !96}
!99 = distinct !{!99, !35, !36, !37}
!100 = distinct !{!100, !35, !36}
!101 = distinct !{!101, !35, !36, !37}
!102 = distinct !{!102, !35, !37, !36}
!103 = distinct !{!103, !35, !37, !36}
!104 = !{!40, !6, i64 8}
!105 = distinct !{!105, !35}
!106 = distinct !{!106, !35, !36, !37}
!107 = distinct !{!107, !35, !36, !37}
!108 = distinct !{!108, !35, !37, !36}
!109 = distinct !{!109, !35}
!110 = distinct !{!110, !35, !37, !36}
!111 = distinct !{!111, !35, !36, !37}
!112 = distinct !{!112, !78}
!113 = distinct !{!113, !35, !36, !37}
!114 = distinct !{!114, !35, !37, !36}
!115 = distinct !{!115, !35, !37, !36}
!116 = distinct !{!116, !35}
!117 = !{!118, !118, i64 0}
!118 = !{!"double", !7, i64 0}
!119 = distinct !{!119, !35, !36, !37}
!120 = distinct !{!120, !35}
!121 = !{!122, !18, i64 0}
!122 = !{!"PfCoeff", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12}
!123 = !{!122, !18, i64 8}
!124 = !{!122, !18, i64 12}
!125 = distinct !{!125, !35}
!126 = distinct !{!126, !78}
!127 = !{!40, !18, i64 2880}
!128 = !{!129}
!129 = distinct !{!129, !130}
!130 = distinct !{!130, !"LVerDomain"}
!131 = distinct !{!131, !35, !36, !37}
!132 = !{!133}
!133 = distinct !{!133, !130}
!134 = distinct !{!134, !35, !36}
!135 = distinct !{!135, !35, !36, !37}
!136 = distinct !{!136, !35, !37, !36}
!137 = distinct !{!137, !35}
!138 = distinct !{!138, !78}
!139 = distinct !{!139, !35}
!140 = distinct !{!140, !78}
!141 = distinct !{!141, !35}
!142 = distinct !{!142, !35}
!143 = distinct !{!143, !78}
!144 = !{!122, !18, i64 4}
!145 = distinct !{!145, !35, !36, !37}
!146 = distinct !{!146, !35, !37, !36}
!147 = distinct !{!147, !35}
!148 = distinct !{!148, !35, !36, !37}
!149 = distinct !{!149, !35, !37, !36}
end_hunk_3
