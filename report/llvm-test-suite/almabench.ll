Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/almabench?download=true
inline.NumInlined: 3
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = internal unnamed_addr constant [8 x [3 x double]] [[3 x double] [double f0x3FD8C637FD3B6253, double 0.000000e+00, double 0.000000e+00], [3 x double] [double f0x3FE725849423E3E0, double 0.000000e+00, double 0.000000e+00], [3 x double] [double f0x3FF000011136AEF5, double 0.000000e+00, double 0.000000e+00], [3 x double] [double f0x3FF860FD96F0D223, double 3.000000e-10, double 0.000000e+00], [3 x double] [double f0x4014CF7737365089, double 1.913200e-06, double -3.900000e-09], [3 x double] [double f0x40231C1D0EBB7C0F, double -2.138960e-05, double 4.440000e-08], [3 x double] [double f0x403337EC14C35EFA, double -3.716000e-07, double f0x3E7A47A3038502A4], [3 x double] [double f0x403E1C425059FB17, double -1.663500e-06, double 6.860000e-08]], align 16
@dlm = internal unnamed_addr constant [8 x [3 x double]] [[3 x double] [double f0x406F88076B035926, double f0x41F40BBCADEE3CB4, double -1.927890e+00], [3 x double] [double f0x4066BF5A874FEAFA, double f0x41DF6432F5157881, double 5.938100e-01], [3 x double] [double f0x40591DDA6DBF7622, double f0x41D34FC2F3B56502, double -2.044110e+00], [3 x double] [double f0x407636ED90F7B482, double f0x41C4890A4B784DFD, double 9.426400e-01], [3 x double] [double f0x40412CFE90EA1D96, double f0x419A0C7E6F1EA0BA, double f0xC03E9A915379FA98], [3 x double] [double f0x404909E9B1DFE17D, double f0x4184FA9E14756430, double f0x4052E76ED677707A], [3 x double] [double f0x4073A0E14D09C902, double f0x416D6BA57E0EFDCA, double -1.750830e+00], [3 x double] [double f0x4073059422411D82, double f0x415E0127CD46B26C, double 2.110300e-01]], align 16
@e = internal unnamed_addr constant [8 x [3 x double]] [[3 x double] [double f0x3FCA52242A37D430, double f0x3F2ABF4B9459E7F4, double -2.834900e-06], [3 x double] [double f0x3F7BBCDE77820827, double f0xBF3F4DAC25FB4BC2, double 9.812700e-06], [3 x double] [double f0x3F911C1175CC9F7B, double f0xBF3B8C8FA536F731, double -1.267340e-05], [3 x double] [double f0x3FB7E91AD74BF5B0, double f0x3F4DA66143B5E407, double -8.064100e-06], [3 x double] [double f0x3FA8D4B857E48742, double f0x3F5ABE2B9A18B7B5, double -4.713660e-05], [3 x double] [double f0x3FAC70CE5FA41E66, double f0xBF6C6594A86FD58E, double -6.436390e-05], [3 x double] [double f0x3FA7BF479022D287, double f0xBF31E2FE6AE927D8, double 7.891300e-06], [3 x double] [double f0x3F835D88E0FE76D8, double 6.032630e-05, double 0.000000e+00]], align 16
@pi = internal unnamed_addr constant [8 x [3 x double]] [[3 x double] [double f0x40535D310DE9F882, double f0x40B6571DAB9F559B, double -4.830160e+00], [3 x double] [double f0x40607209DADFB507, double f0x4065EF9096BB98C8, double f0xC07F27B59DDC1E79], [3 x double] [double f0x4059BBFD82CD2461, double f0x40C6AE2D2BD3C361, double f0x404AA34C6E6D9BE5], [3 x double] [double f0x407500F6B7DFD5BE, double f0x40CF363AC3222920, double -6.232800e+01], [3 x double] [double f0x402CA993F265B897, double f0x40BE4EC06AD2DCB1, double f0x40703F599ED7C6FC], [3 x double] [double f0x405743A9C7642D26, double f0x40D3EADFA415F45E, double f0x4067C84DFCE3150E], [3 x double] [double f0x4065A02B58283528, double f0x40A91F1FF04577D9, double f0xC0410BE37DE939EB], [3 x double] [double f0x40480F65305B6785, double f0x40906AE060FE4799, double f0x403B65ACEEE0F3CB]], align 16
@dinc = internal unnamed_addr constant [8 x [3 x double]] [[3 x double] [double f0x401C051B1D92B7FE, double f0xC06AC83387160957, double 2.897700e-01], [3 x double] [double f0x400B28447E34386C, double f0xC03ED828A1DFB939, double f0xC0275B52007DD441], [3 x double] [double 0.000000e+00, double f0x407D5F90F51AC9B0, double -3.350530e+00], [3 x double] [double f0x3FFD987ACB2252BB, double f0xC072551355475A32, double -8.118300e+00], [3 x double] [double f0x3FF4DA2E7A10E830, double f0xC051E3C504816F00, double f0x4027E7EBAF102364], [3 x double] [double f0x4003E939471E778F, double f0x4056F686594AF4F1, double f0xC031A989374BC6A8], [3 x double] [double f0x3FE8BE07677D67B5, double f0xC04E5D15DF6555C5, double 1.257590e+00], [3 x double] [double f0x3FFC51B9CE9853F4, double f0x40203F251C193B3A, double 8.135000e-02]], align 16
@omega = internal unnamed_addr constant [8 x [3 x double]] [[3 x double] [double f0x40482A5AB400A313, double f0xC0B1A3379F01B867, double f0xC03FCC8605681ECD], [3 x double] [double f0x40532B83CFF8FC2B, double f0xC0C38C3DA31A4BDC, double f0xC049A9BEF49CF56F], [3 x double] [double f0x4065DBF10E4FF9E8, double f0xC0C0F3A29A804966, double f0x402EAF0ED3D859C9], [3 x double] [double f0x4048C76F992A88EB, double f0xC0C4BE7350092CCF, double f0xC06CD25F84CAD57C], [3 x double] [double f0x40591DB8D838BBB3, double f0x40B8DA091DBCA969, double f0x4074685935FC3B4F], [3 x double] [double f0x405C6A9797E1B38F, double f0xC0C20C1986983516, double f0xC0508F320D9945B7], [3 x double] [double f0x405280619982C872, double f0x40A4DA4CF80DC337, double f0x40623E1187E7C06E], [3 x double] [double f0x40607916FEBF632D, double f0xC06BBE2EDBB59DDC, double -7.872800e-01]], align 16
@kp = internal unnamed_addr constant [8 x [9 x double]] [[9 x double] [double 6.961300e+04, double 7.564500e+04, double 8.830600e+04, double 5.989900e+04, double 1.574600e+04, double 7.108700e+04, double 1.421730e+05, double 3.086000e+03, double 0.000000e+00], [9 x double] [double 2.186300e+04, double 3.279400e+04, double 2.693400e+04, double 1.093100e+04, double 2.625000e+04, double 4.372500e+04, double 5.386700e+04, double 2.893900e+04, double 0.000000e+00], [9 x double] [double 1.600200e+04, double 2.186300e+04, double 3.200400e+04, double 1.093100e+04, double 1.452900e+04, double 1.636800e+04, double 1.531800e+04, double 3.279400e+04, double 0.000000e+00], [9 x double] [double 6.345000e+03, double 7.818000e+03, double 1.563600e+04, double 7.077000e+03, double 8.184000e+03, double 1.416300e+04, double 1.107000e+03, double 4.872000e+03, double 0.000000e+00], [9 x double] [double 1.760000e+03, double 1.454000e+03, double 1.167000e+03, double 8.800000e+02, double 2.870000e+02, double 2.640000e+03, double 1.900000e+01, double 2.047000e+03, double 1.454000e+03], [9 x double] [double 5.740000e+02, double 0.000000e+00, double 8.800000e+02, double 2.870000e+02, double 1.900000e+01, double 1.760000e+03, double 1.167000e+03, double 3.060000e+02, double 5.740000e+02], [9 x double] [double 2.040000e+02, double 0.000000e+00, double 1.770000e+02, double 1.265000e+03, double 4.000000e+00, double 3.850000e+02, double 2.000000e+02, double 2.080000e+02, double 2.040000e+02], [9 x double] [double 0.000000e+00, double 1.020000e+02, double 1.060000e+02, double 4.000000e+00, double 9.800000e+01, double 1.367000e+03, double 4.870000e+02, double 2.040000e+02, double 0.000000e+00]], align 16
@kq = internal unnamed_addr constant [8 x [10 x double]] [[10 x double] [double 3.086000e+03, double 1.574600e+04, double 6.961300e+04, double 5.989900e+04, double 7.564500e+04, double 8.830600e+04, double 1.266100e+04, double 2.658000e+03, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 2.186300e+04, double 3.279400e+04, double 1.093100e+04, double 7.300000e+01, double 4.387000e+03, double 2.693400e+04, double 1.473000e+03, double 2.157000e+03, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 1.000000e+01, double 1.600200e+04, double 2.186300e+04, double 1.093100e+04, double 1.473000e+03, double 3.200400e+04, double 4.387000e+03, double 7.300000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 1.000000e+01, double 6.345000e+03, double 7.818000e+03, double 1.107000e+03, double 1.563600e+04, double 7.077000e+03, double 8.184000e+03, double 5.320000e+02, double 1.000000e+01, double 0.000000e+00], [10 x double] [double 1.900000e+01, double 1.760000e+03, double 1.454000e+03, double 2.870000e+02, double 1.167000e+03, double 8.800000e+02, double 5.740000e+02, double 2.640000e+03, double 1.900000e+01, double 1.454000e+03], [10 x double] [double 1.900000e+01, double 5.740000e+02, double 2.870000e+02, double 3.060000e+02, double 1.760000e+03, double 1.200000e+01, double 3.100000e+01, double 3.800000e+01, double 1.900000e+01, double 5.740000e+02], [10 x double] [double 4.000000e+00, double 2.040000e+02, double 1.770000e+02, double 8.000000e+00, double 3.100000e+01, double 2.000000e+02, double 1.265000e+03, double 1.020000e+02, double 4.000000e+00, double 2.040000e+02], [10 x double] [double 4.000000e+00, double 1.020000e+02, double 1.060000e+02, double 8.000000e+00, double 9.800000e+01, double 1.367000e+03, double 4.870000e+02, double 2.040000e+02, double 4.000000e+00, double 1.020000e+02]], align 16
@ca = internal unnamed_addr constant [8 x [9 x double]] [[9 x double] [double 4.000000e+00, double -1.300000e+01, double 1.100000e+01, double -9.000000e+00, double -9.000000e+00, double -3.000000e+00, double -1.000000e+00, double 4.000000e+00, double 0.000000e+00], [9 x double] [double -1.560000e+02, double 5.900000e+01, double -4.200000e+01, double 6.000000e+00, double 1.900000e+01, double -2.000000e+01, double -1.000000e+01, double -1.200000e+01, double 0.000000e+00], [9 x double] [double 6.400000e+01, double -1.520000e+02, double 6.200000e+01, double -8.000000e+00, double 3.200000e+01, double -4.100000e+01, double 1.900000e+01, double -1.100000e+01, double 0.000000e+00], [9 x double] [double 1.240000e+02, double 6.210000e+02, double -1.450000e+02, double 2.080000e+02, double 5.400000e+01, double -5.700000e+01, double 3.000000e+01, double 1.500000e+01, double 0.000000e+00], [9 x double] [double -2.343700e+04, double -2.634000e+03, double 6.601000e+03, double 6.259000e+03, double -1.507000e+03, double -1.821000e+03, double 2.620000e+03, double -2.115000e+03, double -1.489000e+03], [9 x double] [double 6.291100e+04, double -1.199190e+05, double 7.933600e+04, double 1.781400e+04, double -2.424100e+04, double 1.206800e+04, double 8.306000e+03, double -4.893000e+03, double 8.902000e+03], [9 x double] [double 3.890610e+05, double -2.621250e+05, double -4.408800e+04, double 8.387000e+03, double -2.297600e+04, double -2.093000e+03, double -6.150000e+02, double -9.720000e+03, double 6.633000e+03], [9 x double] [double -4.122350e+05, double -1.570460e+05, double -3.143000e+04, double 3.781700e+04, double -9.740000e+03, double -1.300000e+01, double -7.449000e+03, double 9.644000e+03, double 0.000000e+00]], align 16
@sa = internal unnamed_addr constant [8 x [9 x double]] [[9 x double] [double -2.900000e+01, double -1.000000e+00, double 9.000000e+00, double 6.000000e+00, double -6.000000e+00, double 5.000000e+00, double 4.000000e+00, double 0.000000e+00, double 0.000000e+00], [9 x double] [double -4.800000e+01, double -1.250000e+02, double -2.600000e+01, double -3.700000e+01, double 1.800000e+01, double -1.300000e+01, double -2.000000e+01, double -2.000000e+00, double 0.000000e+00], [9 x double] [double -1.500000e+02, double -4.600000e+01, double 6.800000e+01, double 5.400000e+01, double 1.400000e+01, double 2.400000e+01, double -2.800000e+01, double 2.200000e+01, double 0.000000e+00], [9 x double] [double -6.210000e+02, double 5.320000e+02, double -6.940000e+02, double -2.000000e+01, double 1.920000e+02, double -9.400000e+01, double 7.100000e+01, double -7.300000e+01, double 0.000000e+00], [9 x double] [double -1.461400e+04, double -1.982800e+04, double -5.869000e+03, double 1.881000e+03, double -4.372000e+03, double -2.255000e+03, double 7.820000e+02, double 9.300000e+02, double 9.130000e+02], [9 x double] [double 1.397370e+05, double 0.000000e+00, double 2.466700e+04, double 5.112300e+04, double -5.102000e+03, double 7.429000e+03, double -4.095000e+03, double -1.976000e+03, double -9.566000e+03], [9 x double] [double -1.380810e+05, double 0.000000e+00, double 3.720500e+04, double -4.903900e+04, double -4.190100e+04, double -3.387200e+04, double -2.703700e+04, double -1.247400e+04, double 1.879700e+04], [9 x double] [double 0.000000e+00, double 2.849200e+04, double 1.332360e+05, double 6.965400e+04, double 5.232200e+04, double -4.957700e+04, double -2.643000e+04, double -3.593000e+03, double 0.000000e+00]], align 16
@cl = internal unnamed_addr constant [8 x [10 x double]] [[10 x double] [double 2.100000e+01, double -9.500000e+01, double -1.570000e+02, double 4.100000e+01, double -5.000000e+00, double 4.200000e+01, double 2.300000e+01, double 3.000000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double -1.600000e+02, double -3.130000e+02, double -2.350000e+02, double 6.000000e+01, double -7.400000e+01, double -7.600000e+01, double -2.700000e+01, double 3.400000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double -3.250000e+02, double -3.220000e+02, double -7.900000e+01, double 2.320000e+02, double -5.200000e+01, double 9.700000e+01, double 5.500000e+01, double -4.100000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 2.268000e+03, double -9.790000e+02, double 8.020000e+02, double 6.020000e+02, double -6.680000e+02, double -3.300000e+01, double 3.450000e+02, double 2.010000e+02, double -5.500000e+01, double 0.000000e+00], [10 x double] [double 7.610000e+03, double -4.997000e+03, double -7.689000e+03, double -5.841000e+03, double -2.617000e+03, double 1.115000e+03, double -7.480000e+02, double -6.070000e+02, double 6.074000e+03, double 3.540000e+02], [10 x double] [double -1.854900e+04, double 3.012500e+04, double 2.001200e+04, double -7.300000e+02, double 8.240000e+02, double 2.300000e+01, double 1.289000e+03, double -3.520000e+02, double -1.476700e+04, double -2.062000e+03], [10 x double] [double -1.352450e+05, double -1.459400e+04, double 4.197000e+03, double -4.030000e+03, double -5.630000e+03, double -2.898000e+03, double 2.540000e+03, double -3.060000e+02, double 2.939000e+03, double 1.986000e+03], [10 x double] [double 8.994800e+04, double 2.103000e+03, double 8.963000e+03, double 2.695000e+03, double 3.682000e+03, double 1.648000e+03, double 8.660000e+02, double -1.540000e+02, double -1.963000e+03, double -2.830000e+02]], align 16
@sl = internal unnamed_addr constant [8 x [10 x double]] [[10 x double] [double -3.420000e+02, double 1.360000e+02, double -2.300000e+01, double 6.200000e+01, double 6.600000e+01, double -5.200000e+01, double -3.300000e+01, double 1.700000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 5.240000e+02, double -1.490000e+02, double -3.500000e+01, double 1.170000e+02, double 1.510000e+02, double 1.220000e+02, double -7.100000e+01, double -6.200000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double -1.050000e+02, double -1.370000e+02, double 2.580000e+02, double 3.500000e+01, double -1.160000e+02, double -8.800000e+01, double -1.120000e+02, double -8.000000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 8.540000e+02, double -2.050000e+02, double -9.360000e+02, double -2.400000e+02, double 1.400000e+02, double -3.410000e+02, double -9.700000e+01, double -2.320000e+02, double 5.360000e+02, double 0.000000e+00], [10 x double] [double -5.698000e+04, double 8.016000e+03, double 1.012000e+03, double 1.448000e+03, double -3.024000e+03, double -3.710000e+03, double 3.180000e+02, double 5.030000e+02, double 3.767000e+03, double 5.770000e+02], [10 x double] [double 1.386060e+05, double -1.347800e+04, double -4.964000e+03, double 1.441000e+03, double -1.319000e+03, double -1.482000e+03, double 4.270000e+02, double 1.236000e+03, double -9.167000e+03, double -1.918000e+03], [10 x double] [double 7.123400e+04, double -4.111600e+04, double 5.334000e+03, double -4.935000e+03, double -1.848000e+03, double 6.600000e+01, double 4.340000e+02, double -1.748000e+03, double 3.780000e+03, double -7.010000e+02], [10 x double] [double -4.764500e+04, double 1.164700e+04, double 2.166000e+03, double 3.194000e+03, double 6.790000e+02, double 0.000000e+00, double -2.440000e+02, double -4.190000e+02, double -2.531000e+03, double 4.800000e+01]], align 16
@amas = internal unnamed_addr constant [8 x double] [double 6.023600e+06, double f0x4118EF2E00000000, double f0x4114131200000000, double 3.098710e+06, double f0x40905D6B851EB852, double 3.498500e+03, double 2.286900e+04, double 1.931400e+04], align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"%f %f %f\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define dso_local double @anpm(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @fmod(double noundef %0, double noundef f0x401921FB54442D18) #7, !tbaa !7 ; 3 uses
  %i.b = tail call double @llvm.fabs.f64(double %i.a)
  %i.c = fcmp ult double %i.b, f0x400921FB54442D18
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp olt double %0, 0.000000e+00
  %i.e = select i1 %i.d, double f0xC01921FB54442D18, double f0x401921FB54442D18
  %i.f = fsub double %i.a, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi double [ %i.f, %bb.b ], [ %i.a, %bb.a ]
  ret double %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @planetpv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 48)) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !9
  %i.b = fadd double %i.a, f0xC142B42C80000000
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !9
  %i.e = fadd double %i.b, %i.d
  %i.f = fdiv double %i.e, 3.652500e+05           ; 15 uses
  %i.g = sext i32 %1 to i64                       ; 13 uses
  %i.h = getelementptr inbounds [24 x i8], ptr @a, i64 %i.g ; 3 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !9
  %i.n = getelementptr inbounds [24 x i8], ptr @dlm, i64 %i.g ; 3 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !9
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.f, double %i.q)
  %i.u = fmul double %i.f, %i.t
  %i.v = tail call double @llvm.fmuladd.f64(double %i.o, double 3.600000e+03, double %i.u)
  %i.w = fmul double %i.v, f0x3ED455A5B2FF8F9D
  %i.x = getelementptr inbounds [24 x i8], ptr @e, i64 %i.g ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load double, ptr %i.x, align 8, !tbaa !9
  %i.aa = getelementptr inbounds [24 x i8], ptr @pi, i64 %i.g ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load <2 x double>, ptr %i.y, align 8, !tbaa !9 ; 2 uses
  %i.ae = load <2 x double>, ptr %i.ac, align 8, !tbaa !9 ; 2 uses
  %i.af = shufflevector <2 x double> %i.ad, <2 x double> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.ag = insertelement <2 x double> poison, double %i.f, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = shufflevector <2 x double> %i.ad, <2 x double> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.ah, <2 x double> %i.ai) ; 2 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 0
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.f, double %i.z) ; 17 uses
  %i.am = extractelement <2 x double> %i.aj, i64 1
  %i.an = fmul double %i.f, %i.am
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.ab, double 3.600000e+03, double %i.an)
  %i.ap = fmul double %i.ao, f0x3ED455A5B2FF8F9D  ; 2 uses
  %i.aq = tail call double @fmod(double noundef %i.ap, double noundef f0x401921FB54442D18) #7, !tbaa !7 ; 3 uses
  %i.ar = tail call double @llvm.fabs.f64(double %i.aq)
  %i.as = fcmp ult double %i.ar, f0x400921FB54442D18
  br i1 %i.as, label %anpm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.at = fcmp olt double %i.ap, 0.000000e+00
  %i.au = select i1 %i.at, double f0xC01921FB54442D18, double f0x401921FB54442D18
  %i.av = fsub double %i.aq, %i.au
  br label %anpm.exit

anpm.exit:                                        ; preds = %bb.a, %bb.b
  %.0.i = phi double [ %i.av, %bb.b ], [ %i.aq, %bb.a ] ; 4 uses
  %i.aw = getelementptr inbounds [24 x i8], ptr @dinc, i64 %i.g ; 3 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !9
  %i.bc = getelementptr inbounds [24 x i8], ptr @omega, i64 %i.g ; 3 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load double, ptr %i.be, align 8, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !9
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.f, double %i.bf)
  %i.bj = fmul double %i.f, %i.bi
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bd, double 3.600000e+03, double %i.bj)
  %i.bl = fmul double %i.bk, f0x3ED455A5B2FF8F9D  ; 2 uses
  %i.bm = tail call double @fmod(double noundef %i.bl, double noundef f0x401921FB54442D18) #7, !tbaa !7 ; 3 uses
  %i.bn = tail call double @llvm.fabs.f64(double %i.bm)
  %i.bo = fcmp ult double %i.bn, f0x400921FB54442D18
  br i1 %i.bo, label %anpm.exit182, label %bb.c

bb.c:                                             ; preds = %anpm.exit
  %i.bp = fcmp olt double %i.bl, 0.000000e+00
  %i.bq = select i1 %i.bp, double f0xC01921FB54442D18, double f0x401921FB54442D18
  %i.br = fsub double %i.bm, %i.bq
  br label %anpm.exit182

anpm.exit182:                                     ; preds = %anpm.exit, %bb.c
  %.0.i181 = phi double [ %i.br, %bb.c ], [ %i.bm, %anpm.exit ] ; 2 uses
  %i.bs = fmul double %i.f, f0x3FD702A41F2E9970   ; 19 uses
  %i.bt = getelementptr inbounds [72 x i8], ptr @kp, i64 %i.g ; 9 uses
  %i.bu = getelementptr inbounds [80 x i8], ptr @kq, i64 %i.g ; 10 uses
  %i.bv = getelementptr inbounds [72 x i8], ptr @ca, i64 %i.g ; 5 uses
  %i.bw = getelementptr inbounds [72 x i8], ptr @sa, i64 %i.g ; 5 uses
  %i.bx = getelementptr inbounds [80 x i8], ptr @cl, i64 %i.g ; 9 uses
  %i.by = getelementptr inbounds [80 x i8], ptr @sl, i64 %i.g ; 9 uses
  %i.bz = load double, ptr %i.bt, align 8, !tbaa !9
  %i.ca = fmul double %i.bs, %i.bz                ; 2 uses
  %i.cb = load double, ptr %i.bu, align 16, !tbaa !9
  %i.cc = fmul double %i.bs, %i.cb                ; 2 uses
  %i.cd = tail call double @cos(double noundef %i.ca) #7, !tbaa !7
  %i.ce = tail call double @sin(double noundef %i.ca) #7, !tbaa !7
  %i.cf = tail call double @cos(double noundef %i.cc) #7, !tbaa !7
  %i.cg = tail call double @sin(double noundef %i.cc) #7, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !9
  %i.cj = fmul double %i.bs, %i.ci                ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !9
  %i.cm = fmul double %i.bs, %i.cl                ; 2 uses
  %i.cn = tail call double @cos(double noundef %i.cj) #7, !tbaa !7
  %i.co = load <2 x double>, ptr %i.bv, align 8, !tbaa !9
  %i.cp = load <2 x double>, ptr %i.bw, align 8, !tbaa !9
  %i.cq = tail call double @sin(double noundef %i.cj) #7, !tbaa !7
  %i.cr = tail call double @cos(double noundef %i.cm) #7, !tbaa !7
  %i.cs = tail call double @sin(double noundef %i.cm) #7, !tbaa !7
  %i.ct = load <2 x double>, ptr %i.bx, align 16, !tbaa !9
  %i.cu = load <2 x double>, ptr %i.by, align 16, !tbaa !9
  %i.cv = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.cs, i64 1
  %i.cx = fmul <2 x double> %i.cu, %i.cw
  %i.cy = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.cr, i64 1
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.cz, <2 x double> %i.cx) ; 2 uses
  %i.db = extractelement <2 x double> %i.da, i64 0
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.db, double f0x3E7AD7F29ABCAF48, double %i.w)
  %i.dd = extractelement <2 x double> %i.da, i64 1
  %i.de = tail call double @llvm.fmuladd.f64(double %i.dd, double f0x3E7AD7F29ABCAF48, double %i.dc)
  %i.df = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.dg = load double, ptr %i.df, align 8, !tbaa !9
  %i.dh = fmul double %i.bs, %i.dg                ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.dj = load double, ptr %i.di, align 16, !tbaa !9
  %i.dk = fmul double %i.bs, %i.dj                ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.dm = tail call double @cos(double noundef %i.dh) #7, !tbaa !7
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.do = tail call double @sin(double noundef %i.dh) #7, !tbaa !7
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %3 = load double, ptr %i.dp, align 16, !tbaa !9
  %i.dq = tail call double @cos(double noundef %i.dk) #7, !tbaa !7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ds = load double, ptr %i.dr, align 16, !tbaa !9
  %4 = tail call double @sin(double noundef %i.dk) #7, !tbaa !7
  %i.dt = fmul double %i.ds, %4
  %5 = tail call double @llvm.fmuladd.f64(double %3, double %i.dq, double %i.dt)
  %6 = tail call double @llvm.fmuladd.f64(double %5, double f0x3E7AD7F29ABCAF48, double %i.de)
  %7 = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %8 = load double, ptr %7, align 8, !tbaa !9
  %9 = fmul double %i.bs, %8                      ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %11 = load double, ptr %10, align 8, !tbaa !9
  %12 = fmul double %i.bs, %11                    ; 2 uses
  %i.du = tail call double @cos(double noundef %9) #7, !tbaa !7
  %i.dv = load <2 x double>, ptr %i.dl, align 8, !tbaa !9
  %i.dw = load <2 x double>, ptr %i.dn, align 8, !tbaa !9
  %13 = tail call double @sin(double noundef %9) #7, !tbaa !7
  %14 = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %15 = load double, ptr %14, align 8, !tbaa !9
  %16 = tail call double @cos(double noundef %12) #7, !tbaa !7
  %17 = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %18 = load double, ptr %17, align 8, !tbaa !9
  %19 = tail call double @sin(double noundef %12) #7, !tbaa !7
  %20 = fmul double %18, %19
  %21 = tail call double @llvm.fmuladd.f64(double %15, double %16, double %20)
  %i.dx = tail call double @llvm.fmuladd.f64(double %21, double f0x3E7AD7F29ABCAF48, double %6)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !9
  %i.ea = fmul double %i.bs, %i.dz                ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.ec = load double, ptr %i.eb, align 16, !tbaa !9
  %i.ed = fmul double %i.bs, %i.ec                ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.ef = tail call double @cos(double noundef %i.ea) #7, !tbaa !7
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.eh = tail call double @sin(double noundef %i.ea) #7, !tbaa !7
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %22 = load double, ptr %i.ei, align 16, !tbaa !9
  %i.ej = tail call double @cos(double noundef %i.ed) #7, !tbaa !7
  %i.ek = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.el = load double, ptr %i.ek, align 16, !tbaa !9
  %23 = tail call double @sin(double noundef %i.ed) #7, !tbaa !7
  %i.em = fmul double %i.el, %23
  %24 = tail call double @llvm.fmuladd.f64(double %22, double %i.ej, double %i.em)
  %25 = tail call double @llvm.fmuladd.f64(double %24, double f0x3E7AD7F29ABCAF48, double %i.dx)
  %26 = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %27 = load double, ptr %26, align 8, !tbaa !9
  %28 = fmul double %i.bs, %27                    ; 2 uses
  %29 = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %30 = load double, ptr %29, align 8, !tbaa !9
  %31 = fmul double %i.bs, %30                    ; 2 uses
  %i.en = tail call double @cos(double noundef %28) #7, !tbaa !7
  %i.eo = load <2 x double>, ptr %i.ee, align 8, !tbaa !9
  %i.ep = load <2 x double>, ptr %i.eg, align 8, !tbaa !9
  %32 = tail call double @sin(double noundef %28) #7, !tbaa !7
  %33 = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %34 = load double, ptr %33, align 8, !tbaa !9
  %35 = tail call double @cos(double noundef %31) #7, !tbaa !7
  %36 = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %37 = load double, ptr %36, align 8, !tbaa !9
  %38 = tail call double @sin(double noundef %31) #7, !tbaa !7
  %39 = fmul double %37, %38
  %40 = tail call double @llvm.fmuladd.f64(double %34, double %35, double %39)
  %i.eq = tail call double @llvm.fmuladd.f64(double %40, double f0x3E7AD7F29ABCAF48, double %25)
  %i.er = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.es = load double, ptr %i.er, align 8, !tbaa !9
  %i.et = fmul double %i.bs, %i.es                ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.ev = load double, ptr %i.eu, align 16, !tbaa !9
  %i.ew = fmul double %i.bs, %i.ev                ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.ey = tail call double @cos(double noundef %i.et) #7, !tbaa !7
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.fa = tail call double @sin(double noundef %i.et) #7, !tbaa !7
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %41 = load double, ptr %i.fb, align 16, !tbaa !9
  %i.fc = tail call double @cos(double noundef %i.ew) #7, !tbaa !7
  %i.fd = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.fe = load double, ptr %i.fd, align 16, !tbaa !9
  %42 = tail call double @sin(double noundef %i.ew) #7, !tbaa !7
  %i.ff = fmul double %i.fe, %42
  %43 = tail call double @llvm.fmuladd.f64(double %41, double %i.fc, double %i.ff)
  %44 = tail call double @llvm.fmuladd.f64(double %43, double f0x3E7AD7F29ABCAF48, double %i.eq)
  %45 = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %46 = load double, ptr %45, align 8, !tbaa !9
  %47 = fmul double %i.bs, %46                    ; 2 uses
  %48 = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %49 = load double, ptr %48, align 8, !tbaa !9
  %50 = fmul double %i.bs, %49                    ; 2 uses
  %i.fg = tail call double @cos(double noundef %47) #7, !tbaa !7
  %i.fh = load <2 x double>, ptr %i.ex, align 8, !tbaa !9
  %i.fi = load <2 x double>, ptr %i.ez, align 8, !tbaa !9
  %51 = tail call double @sin(double noundef %47) #7, !tbaa !7
  %52 = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %53 = load double, ptr %52, align 8, !tbaa !9
  %54 = tail call double @cos(double noundef %50) #7, !tbaa !7
  %55 = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %56 = load double, ptr %55, align 8, !tbaa !9
  %57 = tail call double @sin(double noundef %50) #7, !tbaa !7
  %58 = fmul double %56, %57
  %59 = tail call double @llvm.fmuladd.f64(double %53, double %54, double %58)
  %i.fj = tail call double @llvm.fmuladd.f64(double %59, double f0x3E7AD7F29ABCAF48, double %44)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !9
  %i.fm = fmul double %i.bs, %i.fl                ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !9
  %i.fp = tail call double @cos(double noundef %i.fm) #7, !tbaa !7
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !9
  %i.fs = tail call double @sin(double noundef %i.fm) #7, !tbaa !7
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.fu = load double, ptr %i.ft, align 16, !tbaa !9
  %i.fv = fmul double %i.bs, %i.fu                ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.fx = load double, ptr %i.fw, align 16, !tbaa !9
  %i.fy = tail call double @cos(double noundef %i.fv) #7, !tbaa !7
  %i.fz = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.ga = load double, ptr %i.fz, align 16, !tbaa !9
  %i.gb = tail call double @sin(double noundef %i.fv) #7, !tbaa !7
  %i.gc = fmul double %i.ga, %i.gb
  %i.gd = tail call double @llvm.fmuladd.f64(double %i.fx, double %i.fy, double %i.gc)
  %i.ge = fmul double %i.f, %i.gd
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.ge, double f0x3E7AD7F29ABCAF48, double %i.fj)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !9
  %i.gi = fmul double %i.bs, %i.gh                ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !9
  %i.gl = tail call double @cos(double noundef %i.gi) #7, !tbaa !7
  %i.gm = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !9
  %i.go = tail call double @sin(double noundef %i.gi) #7, !tbaa !7
  %i.gp = fmul double %i.gn, %i.go
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.gk, double %i.gl, double %i.gp)
  %i.gr = fmul double %i.f, %i.gq
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.gr, double f0x3E7AD7F29ABCAF48, double %i.gf)
  %i.gt = tail call double @fmod(double noundef %i.gs, double noundef f0x401921FB54442D18) #7, !tbaa !7
  %i.gu = fsub double %i.gt, %.0.i                ; 12 uses
  %i.gv = tail call double @sin(double noundef %i.gu) #7, !tbaa !7
  %i.gw = tail call double @llvm.fmuladd.f64(double %i.al, double %i.gv, double %i.gu) ; 4 uses
  %i.gx = fneg double %i.al                       ; 12 uses
  %i.gy = fsub double %i.gu, %i.gw
  %i.gz = tail call double @sin(double noundef %i.gw) #7, !tbaa !7
  %i.ha = tail call double @llvm.fmuladd.f64(double %i.al, double %i.gz, double %i.gy)
  %i.hb = tail call double @cos(double noundef %i.gw) #7, !tbaa !7
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.hb, double 1.000000e+00)
  %i.hd = fdiv double %i.ha, %i.hc                ; 2 uses
  %i.he = fadd double %i.gw, %i.hd                ; 5 uses
  %i.hf = tail call double @llvm.fabs.f64(double %i.hd)
  %i.hg = fcmp olt double %i.hf, f0x3D719799812DEA11
  br i1 %i.hg, label %bb.m, label %bb.d

bb.d:                                             ; preds = %anpm.exit182
  %i.hh = fsub double %i.gu, %i.he
  %i.hi = tail call double @sin(double noundef %i.he) #7, !tbaa !7
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.al, double %i.hi, double %i.hh)
  %i.hk = tail call double @cos(double noundef %i.he) #7, !tbaa !7
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.hk, double 1.000000e+00)
  %i.hm = fdiv double %i.hj, %i.hl                ; 2 uses
  %i.hn = fadd double %i.he, %i.hm                ; 5 uses
  %i.ho = tail call double @llvm.fabs.f64(double %i.hm)
  %i.hp = fcmp olt double %i.ho, f0x3D719799812DEA11
  br i1 %i.hp, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.hq = fsub double %i.gu, %i.hn
  %i.hr = tail call double @sin(double noundef %i.hn) #7, !tbaa !7
  %i.hs = tail call double @llvm.fmuladd.f64(double %i.al, double %i.hr, double %i.hq)
  %i.ht = tail call double @cos(double noundef %i.hn) #7, !tbaa !7
  %i.hu = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.ht, double 1.000000e+00)
  %i.hv = fdiv double %i.hs, %i.hu                ; 2 uses
  %i.hw = fadd double %i.hn, %i.hv                ; 5 uses
  %i.hx = tail call double @llvm.fabs.f64(double %i.hv)
  %i.hy = fcmp olt double %i.hx, f0x3D719799812DEA11
  br i1 %i.hy, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hz = fsub double %i.gu, %i.hw
  %i.ia = tail call double @sin(double noundef %i.hw) #7, !tbaa !7
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.al, double %i.ia, double %i.hz)
  %i.ic = tail call double @cos(double noundef %i.hw) #7, !tbaa !7
  %i.id = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.ic, double 1.000000e+00)
  %i.ie = fdiv double %i.ib, %i.id                ; 2 uses
  %i.if = fadd double %i.hw, %i.ie                ; 5 uses
  %i.ig = tail call double @llvm.fabs.f64(double %i.ie)
  %i.ih = fcmp olt double %i.ig, f0x3D719799812DEA11
  br i1 %i.ih, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ii = fsub double %i.gu, %i.if
  %i.ij = tail call double @sin(double noundef %i.if) #7, !tbaa !7
  %i.ik = tail call double @llvm.fmuladd.f64(double %i.al, double %i.ij, double %i.ii)
  %i.il = tail call double @cos(double noundef %i.if) #7, !tbaa !7
  %i.im = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.il, double 1.000000e+00)
  %i.in = fdiv double %i.ik, %i.im                ; 2 uses
  %i.io = fadd double %i.if, %i.in                ; 5 uses
  %i.ip = tail call double @llvm.fabs.f64(double %i.in)
  %i.iq = fcmp olt double %i.ip, f0x3D719799812DEA11
  br i1 %i.iq, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ir = fsub double %i.gu, %i.io
  %i.is = tail call double @sin(double noundef %i.io) #7, !tbaa !7
  %i.it = tail call double @llvm.fmuladd.f64(double %i.al, double %i.is, double %i.ir)
  %i.iu = tail call double @cos(double noundef %i.io) #7, !tbaa !7
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.iu, double 1.000000e+00)
  %i.iw = fdiv double %i.it, %i.iv                ; 2 uses
  %i.ix = fadd double %i.io, %i.iw                ; 5 uses
  %i.iy = tail call double @llvm.fabs.f64(double %i.iw)
  %i.iz = fcmp olt double %i.iy, f0x3D719799812DEA11
  br i1 %i.iz, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ja = fsub double %i.gu, %i.ix
  %i.jb = tail call double @sin(double noundef %i.ix) #7, !tbaa !7
  %i.jc = tail call double @llvm.fmuladd.f64(double %i.al, double %i.jb, double %i.ja)
  %i.jd = tail call double @cos(double noundef %i.ix) #7, !tbaa !7
  %i.je = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.jd, double 1.000000e+00)
  %i.jf = fdiv double %i.jc, %i.je                ; 2 uses
  %i.jg = fadd double %i.ix, %i.jf                ; 5 uses
  %i.jh = tail call double @llvm.fabs.f64(double %i.jf)
  %i.ji = fcmp olt double %i.jh, f0x3D719799812DEA11
  br i1 %i.ji, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.jj = fsub double %i.gu, %i.jg
  %i.jk = tail call double @sin(double noundef %i.jg) #7, !tbaa !7
  %i.jl = tail call double @llvm.fmuladd.f64(double %i.al, double %i.jk, double %i.jj)
  %i.jm = tail call double @cos(double noundef %i.jg) #7, !tbaa !7
  %i.jn = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.jm, double 1.000000e+00)
  %i.jo = fdiv double %i.jl, %i.jn                ; 2 uses
  %i.jp = fadd double %i.jg, %i.jo                ; 5 uses
  %i.jq = tail call double @llvm.fabs.f64(double %i.jo)
  %i.jr = fcmp olt double %i.jq, f0x3D719799812DEA11
  br i1 %i.jr, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.js = fsub double %i.gu, %i.jp
  %i.jt = tail call double @sin(double noundef %i.jp) #7, !tbaa !7
  %i.ju = tail call double @llvm.fmuladd.f64(double %i.al, double %i.jt, double %i.js)
  %i.jv = tail call double @cos(double noundef %i.jp) #7, !tbaa !7
  %i.jw = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.jv, double 1.000000e+00)
  %i.jx = fdiv double %i.ju, %i.jw                ; 2 uses
  %i.jy = fadd double %i.jp, %i.jx                ; 5 uses
  %i.jz = tail call double @llvm.fabs.f64(double %i.jx)
  %i.ka = fcmp olt double %i.jz, f0x3D719799812DEA11
  br i1 %i.ka, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.kb = fsub double %i.gu, %i.jy
  %i.kc = tail call double @sin(double noundef %i.jy) #7, !tbaa !7
  %i.kd = tail call double @llvm.fmuladd.f64(double %i.al, double %i.kc, double %i.kb)
  %i.ke = tail call double @cos(double noundef %i.jy) #7, !tbaa !7
  %i.kf = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.ke, double 1.000000e+00)
  %i.kg = fdiv double %i.kd, %i.kf
  %i.kh = fadd double %i.jy, %i.kg
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %anpm.exit182
  %.lcssa = phi double [ %i.jg, %bb.i ], [ %i.he, %anpm.exit182 ], [ %i.kh, %bb.l ], [ %i.hn, %bb.d ], [ %i.jy, %bb.k ], [ %i.hw, %bb.e ], [ %i.ix, %bb.h ], [ %i.if, %bb.f ], [ %i.jp, %bb.j ], [ %i.io, %bb.g ] ; 2 uses
  %i.ki = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.kj = insertelement <2 x double> %i.ki, double %51, i64 1
  %i.kk = fmul <2 x double> %i.fi, %i.kj
  %i.kl = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.km = insertelement <2 x double> %i.kl, double %i.fg, i64 1
  %i.kn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %i.km, <2 x double> %i.kk) ; 2 uses
  %i.ko = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.kp = insertelement <2 x double> %i.ko, double %32, i64 1
  %i.kq = fmul <2 x double> %i.ep, %i.kp
  %i.kr = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.ks = insertelement <2 x double> %i.kr, double %i.en, i64 1
  %i.kt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.ks, <2 x double> %i.kq) ; 2 uses
  %i.ku = insertelement <2 x double> poison, double %i.do, i64 0
  %i.kv = insertelement <2 x double> %i.ku, double %13, i64 1
  %i.kw = fmul <2 x double> %i.dw, %i.kv
  %i.kx = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.ky = insertelement <2 x double> %i.kx, double %i.du, i64 1
  %i.kz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.ky, <2 x double> %i.kw) ; 2 uses
  %i.la = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.lb = insertelement <2 x double> %i.la, double %i.cq, i64 1
  %i.lc = fmul <2 x double> %i.cp, %i.lb
  %i.ld = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.le = insertelement <2 x double> %i.ld, double %i.cn, i64 1
  %i.lf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.le, <2 x double> %i.lc) ; 2 uses
  %i.lg = tail call double @llvm.fmuladd.f64(double %i.m, double %i.f, double %i.k)
  %i.lh = tail call double @llvm.fmuladd.f64(double %i.lg, double %i.f, double %i.i)
  %i.li = extractelement <2 x double> %i.lf, i64 0
  %i.lj = tail call double @llvm.fmuladd.f64(double %i.li, double f0x3E7AD7F29ABCAF48, double %i.lh)
  %i.lk = extractelement <2 x double> %i.lf, i64 1
  %i.ll = tail call double @llvm.fmuladd.f64(double %i.lk, double f0x3E7AD7F29ABCAF48, double %i.lj)
  %i.lm = extractelement <2 x double> %i.kz, i64 0
  %i.ln = tail call double @llvm.fmuladd.f64(double %i.lm, double f0x3E7AD7F29ABCAF48, double %i.ll)
  %i.lo = extractelement <2 x double> %i.kz, i64 1
  %i.lp = tail call double @llvm.fmuladd.f64(double %i.lo, double f0x3E7AD7F29ABCAF48, double %i.ln)
  %i.lq = extractelement <2 x double> %i.kt, i64 0
  %i.lr = tail call double @llvm.fmuladd.f64(double %i.lq, double f0x3E7AD7F29ABCAF48, double %i.lp)
  %i.ls = extractelement <2 x double> %i.kt, i64 1
  %i.lt = tail call double @llvm.fmuladd.f64(double %i.ls, double f0x3E7AD7F29ABCAF48, double %i.lr)
  %i.lu = extractelement <2 x double> %i.kn, i64 0
  %i.lv = tail call double @llvm.fmuladd.f64(double %i.lu, double f0x3E7AD7F29ABCAF48, double %i.lt)
  %i.lw = extractelement <2 x double> %i.kn, i64 1
  %i.lx = tail call double @llvm.fmuladd.f64(double %i.lw, double f0x3E7AD7F29ABCAF48, double %i.lv)
  %i.ly = fmul double %i.fr, %i.fs
  %i.lz = tail call double @llvm.fmuladd.f64(double %i.fo, double %i.fp, double %i.ly)
  %i.ma = fmul double %i.f, %i.lz
  %i.mb = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.f, double %i.az)
  %i.mc = fmul double %i.f, %i.mb
  %i.md = tail call double @llvm.fmuladd.f64(double %i.ax, double 3.600000e+03, double %i.mc)
  %i.me = fmul double %i.md, f0x3ED455A5B2FF8F9D
  %i.mf = fmul double %.lcssa, 5.000000e-01       ; 2 uses
  %i.mg = fadd double %i.al, 1.000000e+00
  %i.mh = fsub double 1.000000e+00, %i.al
  %i.mi = fdiv double %i.mg, %i.mh
  %i.mj = tail call double @sqrt(double noundef %i.mi) #7, !tbaa !7
  %i.mk = tail call double @sin(double noundef %i.mf) #7, !tbaa !7
  %i.ml = fmul double %i.mj, %i.mk
  %i.mm = tail call double @cos(double noundef %i.mf) #7, !tbaa !7
  %i.mn = tail call double @atan2(double noundef %i.ml, double noundef %i.mm) #7, !tbaa !7
  %i.mo = fmul double %i.mn, 2.000000e+00
  %i.mp = tail call double @cos(double noundef %.lcssa) #7, !tbaa !7
  %i.mq = getelementptr inbounds [8 x i8], ptr @amas, i64 %i.g
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !9
  %i.ms = fdiv double 1.000000e+00, %i.mr
  %i.mt = fadd double %i.ms, 1.000000e+00
  %i.mu = fmul double %i.me, 5.000000e-01         ; 2 uses
  %i.mv = fadd double %.0.i, %i.mo                ; 2 uses
  %i.mw = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.al, double 1.000000e+00)
  %i.mx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.mz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.na = tail call double @llvm.fmuladd.f64(double %i.ma, double f0x3E7AD7F29ABCAF48, double %i.lx) ; 5 uses
  %i.nb = tail call double @llvm.fmuladd.f64(double %i.gx, double %i.mp, double 1.000000e+00)
  %i.nc = fmul double %i.na, %i.na
  %i.nd = fmul double %i.na, %i.nc
  %i.ne = fdiv double %i.mt, %i.nd
  %i.nf = tail call double @sqrt(double noundef %i.ne) #7, !tbaa !7
  %i.ng = insertelement <2 x double> poison, double %i.na, i64 0
  %i.nh = insertelement <2 x double> %i.ng, double %i.nf, i64 1
  %i.ni = insertelement <2 x double> <double poison, double f0x3F919D6D51A6B69A>, double %i.nb, i64 0
  %i.nj = fmul <2 x double> %i.nh, %i.ni          ; 4 uses
  %i.nk = tail call double @sin(double noundef %i.mu) #7, !tbaa !7 ; 2 uses
  %i.nl = tail call double @cos(double noundef %.0.i181) #7, !tbaa !7
  %i.nm = tail call double @sin(double noundef %.0.i181) #7, !tbaa !7
  %i.nn = tail call double @sin(double noundef %i.mv) #7, !tbaa !7 ; 3 uses
  %i.no = tail call double @cos(double noundef %i.mv) #7, !tbaa !7 ; 3 uses
  %i.np = fneg double %i.nn
  %i.nq = tail call double @sqrt(double noundef %i.mw) #7, !tbaa !7
  %i.nr = fdiv double %i.na, %i.nq                ; 2 uses
  %i.ns = tail call double @cos(double noundef %i.mu) #7, !tbaa !7 ; 2 uses
  %i.nt = tail call double @sin(double noundef %.0.i) #7, !tbaa !7
  %i.nu = tail call double @cos(double noundef %.0.i) #7, !tbaa !7
  %i.nv = fmul double %i.nk, %i.nl                ; 4 uses
  %i.nw = fmul double %i.nk, %i.nm                ; 5 uses
  %i.nx = fmul double %i.nv, %i.np
  %i.ny = tail call double @llvm.fmuladd.f64(double %i.nw, double %i.no, double %i.nx)
  %i.nz = tail call double @llvm.fmuladd.f64(double %i.al, double %i.nt, double %i.nn)
  %i.oa = fmul double %i.nr, %i.nz                ; 3 uses
  %i.ob = fmul double %i.nw, 2.000000e+00         ; 2 uses
  %i.oc = fmul double %i.nv, %i.ob                ; 2 uses
  %i.od = insertelement <2 x double> poison, double %i.al, i64 0
  %i.oe = insertelement <2 x double> %i.od, double %i.ob, i64 1
  %i.of = insertelement <2 x double> poison, double %i.nu, i64 0
  %i.og = insertelement <2 x double> %i.of, double %i.nw, i64 1
  %i.oh = insertelement <2 x double> <double poison, double -1.000000e+00>, double %i.no, i64 0
  %i.oi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oe, <2 x double> %i.og, <2 x double> %i.oh) ; 2 uses
  %i.oj = extractelement <2 x double> %i.oi, i64 0
  %i.ok = fmul double %i.nr, %i.oj                ; 3 uses
  %i.ol = fmul double %i.oc, %i.ok
  %i.om = insertelement <2 x double> poison, double %i.nw, i64 0
  %i.on = insertelement <2 x double> %i.om, double %i.oa, i64 1
  %i.oo = insertelement <2 x double> poison, double %i.no, i64 0
  %i.op = insertelement <2 x double> %i.oo, double %i.ol, i64 1
  %i.oq = extractelement <2 x double> %i.nj, i64 0
  %i.or = insertelement <2 x double> poison, double %i.ny, i64 0
  %i.os = insertelement <2 x double> %i.or, double %i.nv, i64 1 ; 2 uses
  %i.ot = fmul <2 x double> %i.os, <double 2.000000e+00, double -2.000000e+00> ; 2 uses
  %i.ou = extractelement <2 x double> %i.ot, i64 0
  %i.ov = fneg double %i.ou                       ; 2 uses
  %i.ow = fmul double %i.ns, %i.ov
  %i.ox = insertelement <2 x double> %i.oi, double %i.ov, i64 0
  %i.oy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ox, <2 x double> %i.on, <2 x double> %i.op)
  %i.oz = fmul <2 x double> %i.nj, %i.oy          ; 2 uses
  %i.pa = extractelement <2 x double> %i.oz, i64 0
  store double %i.pa, ptr %2, align 8, !tbaa !9
  %i.pb = shufflevector <2 x double> %i.os, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pc = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.nn, i64 0
  %i.pd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ot, <2 x double> %i.pb, <2 x double> %i.pc) ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.nj, %i.pd
  %i.pe = fmul double %i.oq, %i.ow
  %i.pf = insertelement <2 x double> poison, double %i.pe, i64 0
  %i.pg = shufflevector <2 x double> %i.pf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ph = fmul <2 x double> %i.pg, <double f0xBFD9752E50F4B399, double f0x3FED5C0357681EF3>
  %i.pi = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pi, <2 x double> <double f0x3FED5C0357681EF3, double f0x3FD9752E50F4B399>, <2 x double> %i.ph)
  store <2 x double> %i.pj, ptr %i.mx, align 8, !tbaa !9
  %i.pk = fneg double %i.oa
  %i.pl = fmul double %i.oc, %i.pk
  %i.pm = extractelement <2 x double> %i.pd, i64 1
  %i.pn = tail call double @llvm.fmuladd.f64(double %i.pm, double %i.ok, double %i.pl)
  %i.po = extractelement <2 x double> %i.nj, i64 1 ; 2 uses
  %i.pp = fmul double %i.po, %i.pn
  %i.pq = fmul double %i.ns, 2.000000e+00
  %i.pr = fmul double %i.nv, %i.ok
  %i.ps = tail call double @llvm.fmuladd.f64(double %i.nw, double %i.oa, double %i.pr)
  %i.pt = fmul double %i.pq, %i.ps
  %i.pu = fmul double %i.po, %i.pt
  %i.pv = extractelement <2 x double> %i.oz, i64 1
  store double %i.pv, ptr %i.my, align 8, !tbaa !9
  %i.pw = insertelement <2 x double> poison, double %i.pu, i64 0
  %i.px = shufflevector <2 x double> %i.pw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.py = fmul <2 x double> %i.px, <double f0xBFD9752E50F4B399, double f0x3FED5C0357681EF3>
  %i.pz = insertelement <2 x double> poison, double %i.pp, i64 0
  %i.qa = shufflevector <2 x double> %i.pz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qa, <2 x double> <double f0x3FED5C0357681EF3, double f0x3FD9752E50F4B399>, <2 x double> %i.py)
  store <2 x double> %i.qb, ptr %i.mz, align 8, !tbaa !9
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @radecdist(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !9   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %i.d = fmul double %i.c, %i.c
  %i.e = tail call double @llvm.fmuladd.f64(double %i.a, double %i.a, double %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !9 ; 2 uses
  %i.h = tail call double @llvm.fmuladd.f64(double %i.g, double %i.g, double %i.e)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.h) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %sqrt, ptr %i.i, align 8, !tbaa !9
  %i.j = load double, ptr %i.b, align 8, !tbaa !9
  %i.k = load double, ptr %0, align 8, !tbaa !9
  %i.l = tail call double @atan2(double noundef %i.j, double noundef %i.k) #7, !tbaa !7
  %i.m = fmul double %i.l, f0x400E8EC8A4AEACC4    ; 3 uses
  %i.n = fcmp olt double %i.m, 0.000000e+00
  %i.o = fadd double %i.m, 2.400000e+01
  %storemerge = select i1 %i.n, double %i.o, double %i.m
  store double %storemerge, ptr %1, align 8, !tbaa !9
  %i.p = load double, ptr %i.f, align 8, !tbaa !9
  %i.q = fdiv double %i.p, %sqrt
  %i.r = tail call double @asin(double noundef %i.q) #7, !tbaa !7
  %i.s = fmul double %i.r, f0x404CA5DC1A63C1F8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.s, ptr %i.t, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
.loopexit.split:
  %i.a = alloca [2 x double], align 16            ; 12 uses
  %i.b = alloca [2 x [3 x double]], align 16      ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 8 uses
end_hunk_0
