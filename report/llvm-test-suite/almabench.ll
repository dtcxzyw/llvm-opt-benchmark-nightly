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
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.f, double %i.z) ; 16 uses
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
  %i.bx = getelementptr inbounds [80 x i8], ptr @cl, i64 %i.g ; 6 uses
  %i.by = getelementptr inbounds [80 x i8], ptr @sl, i64 %i.g ; 6 uses
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
  %i.dq = tail call double @cos(double noundef %i.dk) #7, !tbaa !7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ds = tail call double @sin(double noundef %i.dk) #7, !tbaa !7
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.du = load double, ptr %i.dt, align 8, !tbaa !9
  %i.dv = fmul double %i.bs, %i.du                ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !9
  %i.dy = fmul double %i.bs, %i.dx                ; 2 uses
  %i.dz = tail call double @cos(double noundef %i.dv) #7, !tbaa !7
  %i.ea = load <2 x double>, ptr %i.dl, align 8, !tbaa !9
  %i.eb = load <2 x double>, ptr %i.dn, align 8, !tbaa !9
  %i.ec = tail call double @sin(double noundef %i.dv) #7, !tbaa !7
  %i.ed = tail call double @cos(double noundef %i.dy) #7, !tbaa !7
  %i.ee = tail call double @sin(double noundef %i.dy) #7, !tbaa !7
  %i.ef = load <2 x double>, ptr %i.dp, align 16, !tbaa !9
  %i.eg = load <2 x double>, ptr %i.dr, align 16, !tbaa !9
  %i.eh = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.ee, i64 1
  %i.ej = fmul <2 x double> %i.eg, %i.ei
  %i.ek = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.ed, i64 1
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.el, <2 x double> %i.ej) ; 2 uses
  %i.en = extractelement <2 x double> %i.em, i64 0
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.en, double f0x3E7AD7F29ABCAF48, double %i.de)
  %i.ep = extractelement <2 x double> %i.em, i64 1
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.ep, double f0x3E7AD7F29ABCAF48, double %i.eo)
  %i.er = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.es = load double, ptr %i.er, align 8, !tbaa !9
  %i.et = fmul double %i.bs, %i.es                ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.ev = load double, ptr %i.eu, align 16, !tbaa !9
  %i.ew = fmul double %i.bs, %i.ev                ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.ey = tail call double @cos(double noundef %i.et) #7, !tbaa !7
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.fa = tail call double @sin(double noundef %i.et) #7, !tbaa !7
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.fc = tail call double @cos(double noundef %i.ew) #7, !tbaa !7
  %i.fd = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.fe = tail call double @sin(double noundef %i.ew) #7, !tbaa !7
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !9
  %i.fh = fmul double %i.bs, %i.fg                ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !9
  %i.fk = fmul double %i.bs, %i.fj                ; 2 uses
  %i.fl = tail call double @cos(double noundef %i.fh) #7, !tbaa !7
  %i.fm = load <2 x double>, ptr %i.ex, align 8, !tbaa !9
  %i.fn = load <2 x double>, ptr %i.ez, align 8, !tbaa !9
  %i.fo = tail call double @sin(double noundef %i.fh) #7, !tbaa !7
  %i.fp = tail call double @cos(double noundef %i.fk) #7, !tbaa !7
  %i.fq = tail call double @sin(double noundef %i.fk) #7, !tbaa !7
  %i.fr = load <2 x double>, ptr %i.fb, align 16, !tbaa !9
  %i.fs = load <2 x double>, ptr %i.fd, align 16, !tbaa !9
  %i.ft = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fq, i64 1
  %i.fv = fmul <2 x double> %i.fs, %i.fu
  %i.fw = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.fx = insertelement <2 x double> %i.fw, double %i.fp, i64 1
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.fx, <2 x double> %i.fv) ; 2 uses
  %i.fz = extractelement <2 x double> %i.fy, i64 0
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.fz, double f0x3E7AD7F29ABCAF48, double %i.eq)
  %i.gb = extractelement <2 x double> %i.fy, i64 1
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.gb, double f0x3E7AD7F29ABCAF48, double %i.ga)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !9
  %i.gf = fmul double %i.bs, %i.ge                ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.gh = load double, ptr %i.gg, align 16, !tbaa !9
  %i.gi = fmul double %i.bs, %i.gh                ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.gk = tail call double @cos(double noundef %i.gf) #7, !tbaa !7
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.gm = tail call double @sin(double noundef %i.gf) #7, !tbaa !7
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.go = tail call double @cos(double noundef %i.gi) #7, !tbaa !7
  %i.gp = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.gq = tail call double @sin(double noundef %i.gi) #7, !tbaa !7
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !9
  %i.gt = fmul double %i.bs, %i.gs                ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !9
  %i.gw = fmul double %i.bs, %i.gv                ; 2 uses
  %i.gx = tail call double @cos(double noundef %i.gt) #7, !tbaa !7
  %i.gy = load <2 x double>, ptr %i.gj, align 8, !tbaa !9
  %i.gz = load <2 x double>, ptr %i.gl, align 8, !tbaa !9
  %i.ha = tail call double @sin(double noundef %i.gt) #7, !tbaa !7
  %i.hb = tail call double @cos(double noundef %i.gw) #7, !tbaa !7
  %i.hc = tail call double @sin(double noundef %i.gw) #7, !tbaa !7
  %i.hd = load <2 x double>, ptr %i.gn, align 16, !tbaa !9
  %i.he = load <2 x double>, ptr %i.gp, align 16, !tbaa !9
  %i.hf = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.hg = insertelement <2 x double> %i.hf, double %i.hc, i64 1
  %i.hh = fmul <2 x double> %i.he, %i.hg
  %i.hi = insertelement <2 x double> poison, double %i.go, i64 0
  %i.hj = insertelement <2 x double> %i.hi, double %i.hb, i64 1
  %i.hk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> %i.hj, <2 x double> %i.hh) ; 2 uses
  %i.hl = extractelement <2 x double> %i.hk, i64 0
  %i.hm = tail call double @llvm.fmuladd.f64(double %i.hl, double f0x3E7AD7F29ABCAF48, double %i.gc)
  %i.hn = extractelement <2 x double> %i.hk, i64 1
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hn, double f0x3E7AD7F29ABCAF48, double %i.hm)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !9
  %i.hr = fmul double %i.bs, %i.hq                ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !9
  %i.hu = tail call double @cos(double noundef %i.hr) #7, !tbaa !7
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !9
  %i.hx = tail call double @sin(double noundef %i.hr) #7, !tbaa !7
  %i.hy = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.hz = load double, ptr %i.hy, align 16, !tbaa !9
  %i.ia = fmul double %i.bs, %i.hz                ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.ic = load double, ptr %i.ib, align 16, !tbaa !9
  %i.id = tail call double @cos(double noundef %i.ia) #7, !tbaa !7
  %i.ie = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.if = load double, ptr %i.ie, align 16, !tbaa !9
  %i.ig = tail call double @sin(double noundef %i.ia) #7, !tbaa !7
  %i.ih = fmul double %i.if, %i.ig
  %i.ii = tail call double @llvm.fmuladd.f64(double %i.ic, double %i.id, double %i.ih)
  %i.ij = fmul double %i.f, %i.ii
  %i.ik = tail call double @llvm.fmuladd.f64(double %i.ij, double f0x3E7AD7F29ABCAF48, double %i.ho)
  %i.il = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.im = load double, ptr %i.il, align 8, !tbaa !9
  %i.in = fmul double %i.bs, %i.im                ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.ip = load double, ptr %i.io, align 8, !tbaa !9
  %i.iq = tail call double @cos(double noundef %i.in) #7, !tbaa !7
  %i.ir = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.is = load double, ptr %i.ir, align 8, !tbaa !9
  %i.it = tail call double @sin(double noundef %i.in) #7, !tbaa !7
  %i.iu = fmul double %i.is, %i.it
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.ip, double %i.iq, double %i.iu)
  %i.iw = fmul double %i.f, %i.iv
  %i.ix = tail call double @llvm.fmuladd.f64(double %i.iw, double f0x3E7AD7F29ABCAF48, double %i.ik)
  %i.iy = tail call double @fmod(double noundef %i.ix, double noundef f0x401921FB54442D18) #7, !tbaa !7
  %i.iz = fsub double %i.iy, %.0.i                ; 12 uses
  %i.ja = tail call double @sin(double noundef %i.iz) #7, !tbaa !7
  %i.jb = tail call double @llvm.fmuladd.f64(double %i.al, double %i.ja, double %i.iz) ; 4 uses
  %i.jc = fneg double %i.al                       ; 11 uses
  %i.jd = fsub double %i.iz, %i.jb
  %i.je = tail call double @sin(double noundef %i.jb) #7, !tbaa !7
  %i.jf = tail call double @llvm.fmuladd.f64(double %i.al, double %i.je, double %i.jd)
  %i.jg = tail call double @cos(double noundef %i.jb) #7, !tbaa !7
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.jg, double 1.000000e+00)
  %i.ji = fdiv double %i.jf, %i.jh                ; 2 uses
  %i.jj = fadd double %i.jb, %i.ji                ; 5 uses
  %i.jk = tail call double @llvm.fabs.f64(double %i.ji)
  %i.jl = fcmp olt double %i.jk, f0x3D719799812DEA11
  br i1 %i.jl, label %bb.m, label %bb.d

bb.d:                                             ; preds = %anpm.exit182
  %i.jm = fsub double %i.iz, %i.jj
  %i.jn = tail call double @sin(double noundef %i.jj) #7, !tbaa !7
  %i.jo = tail call double @llvm.fmuladd.f64(double %i.al, double %i.jn, double %i.jm)
  %i.jp = tail call double @cos(double noundef %i.jj) #7, !tbaa !7
  %i.jq = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.jp, double 1.000000e+00)
  %i.jr = fdiv double %i.jo, %i.jq                ; 2 uses
  %i.js = fadd double %i.jj, %i.jr                ; 5 uses
  %i.jt = tail call double @llvm.fabs.f64(double %i.jr)
  %i.ju = fcmp olt double %i.jt, f0x3D719799812DEA11
  br i1 %i.ju, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.jv = fsub double %i.iz, %i.js
  %i.jw = tail call double @sin(double noundef %i.js) #7, !tbaa !7
  %i.jx = tail call double @llvm.fmuladd.f64(double %i.al, double %i.jw, double %i.jv)
  %i.jy = tail call double @cos(double noundef %i.js) #7, !tbaa !7
  %i.jz = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.jy, double 1.000000e+00)
  %i.ka = fdiv double %i.jx, %i.jz                ; 2 uses
  %i.kb = fadd double %i.js, %i.ka                ; 5 uses
  %i.kc = tail call double @llvm.fabs.f64(double %i.ka)
  %i.kd = fcmp olt double %i.kc, f0x3D719799812DEA11
  br i1 %i.kd, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ke = fsub double %i.iz, %i.kb
  %i.kf = tail call double @sin(double noundef %i.kb) #7, !tbaa !7
  %i.kg = tail call double @llvm.fmuladd.f64(double %i.al, double %i.kf, double %i.ke)
  %i.kh = tail call double @cos(double noundef %i.kb) #7, !tbaa !7
  %i.ki = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.kh, double 1.000000e+00)
  %i.kj = fdiv double %i.kg, %i.ki                ; 2 uses
  %i.kk = fadd double %i.kb, %i.kj                ; 5 uses
  %i.kl = tail call double @llvm.fabs.f64(double %i.kj)
  %i.km = fcmp olt double %i.kl, f0x3D719799812DEA11
  br i1 %i.km, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.kn = fsub double %i.iz, %i.kk
  %i.ko = tail call double @sin(double noundef %i.kk) #7, !tbaa !7
  %i.kp = tail call double @llvm.fmuladd.f64(double %i.al, double %i.ko, double %i.kn)
  %i.kq = tail call double @cos(double noundef %i.kk) #7, !tbaa !7
  %i.kr = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.kq, double 1.000000e+00)
  %i.ks = fdiv double %i.kp, %i.kr                ; 2 uses
  %i.kt = fadd double %i.kk, %i.ks                ; 5 uses
  %i.ku = tail call double @llvm.fabs.f64(double %i.ks)
  %i.kv = fcmp olt double %i.ku, f0x3D719799812DEA11
  br i1 %i.kv, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.kw = fsub double %i.iz, %i.kt
  %i.kx = tail call double @sin(double noundef %i.kt) #7, !tbaa !7
  %i.ky = tail call double @llvm.fmuladd.f64(double %i.al, double %i.kx, double %i.kw)
  %i.kz = tail call double @cos(double noundef %i.kt) #7, !tbaa !7
  %i.la = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.kz, double 1.000000e+00)
  %i.lb = fdiv double %i.ky, %i.la                ; 2 uses
  %i.lc = fadd double %i.kt, %i.lb                ; 5 uses
  %i.ld = tail call double @llvm.fabs.f64(double %i.lb)
  %i.le = fcmp olt double %i.ld, f0x3D719799812DEA11
  br i1 %i.le, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.lf = fsub double %i.iz, %i.lc
  %i.lg = tail call double @sin(double noundef %i.lc) #7, !tbaa !7
  %i.lh = tail call double @llvm.fmuladd.f64(double %i.al, double %i.lg, double %i.lf)
  %i.li = tail call double @cos(double noundef %i.lc) #7, !tbaa !7
  %i.lj = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.li, double 1.000000e+00)
  %i.lk = fdiv double %i.lh, %i.lj                ; 2 uses
  %i.ll = fadd double %i.lc, %i.lk                ; 5 uses
  %i.lm = tail call double @llvm.fabs.f64(double %i.lk)
  %i.ln = fcmp olt double %i.lm, f0x3D719799812DEA11
  br i1 %i.ln, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.lo = fsub double %i.iz, %i.ll
  %i.lp = tail call double @sin(double noundef %i.ll) #7, !tbaa !7
  %i.lq = tail call double @llvm.fmuladd.f64(double %i.al, double %i.lp, double %i.lo)
  %i.lr = tail call double @cos(double noundef %i.ll) #7, !tbaa !7
  %i.ls = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.lr, double 1.000000e+00)
  %i.lt = fdiv double %i.lq, %i.ls                ; 2 uses
  %i.lu = fadd double %i.ll, %i.lt                ; 5 uses
  %i.lv = tail call double @llvm.fabs.f64(double %i.lt)
  %i.lw = fcmp olt double %i.lv, f0x3D719799812DEA11
  br i1 %i.lw, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.lx = fsub double %i.iz, %i.lu
  %i.ly = tail call double @sin(double noundef %i.lu) #7, !tbaa !7
  %i.lz = tail call double @llvm.fmuladd.f64(double %i.al, double %i.ly, double %i.lx)
  %i.ma = tail call double @cos(double noundef %i.lu) #7, !tbaa !7
  %i.mb = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.ma, double 1.000000e+00)
  %i.mc = fdiv double %i.lz, %i.mb                ; 2 uses
  %i.md = fadd double %i.lu, %i.mc                ; 5 uses
  %i.me = tail call double @llvm.fabs.f64(double %i.mc)
  %i.mf = fcmp olt double %i.me, f0x3D719799812DEA11
  br i1 %i.mf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.mg = fsub double %i.iz, %i.md
  %i.mh = tail call double @sin(double noundef %i.md) #7, !tbaa !7
  %i.mi = tail call double @llvm.fmuladd.f64(double %i.al, double %i.mh, double %i.mg)
  %i.mj = tail call double @cos(double noundef %i.md) #7, !tbaa !7
  %i.mk = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.mj, double 1.000000e+00)
  %i.ml = fdiv double %i.mi, %i.mk
  %i.mm = fadd double %i.md, %i.ml
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %anpm.exit182
  %.lcssa = phi double [ %i.ll, %bb.i ], [ %i.jj, %anpm.exit182 ], [ %i.mm, %bb.l ], [ %i.js, %bb.d ], [ %i.md, %bb.k ], [ %i.kb, %bb.e ], [ %i.lc, %bb.h ], [ %i.kk, %bb.f ], [ %i.lu, %bb.j ], [ %i.kt, %bb.g ] ; 2 uses
  %i.mn = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.mo = insertelement <2 x double> %i.mn, double %i.ha, i64 1
  %i.mp = fmul <2 x double> %i.gz, %i.mo
  %i.mq = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.mr = insertelement <2 x double> %i.mq, double %i.gx, i64 1
  %i.ms = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.mr, <2 x double> %i.mp) ; 2 uses
  %i.mt = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.mu = insertelement <2 x double> %i.mt, double %i.fo, i64 1
  %i.mv = fmul <2 x double> %i.fn, %i.mu
  %i.mw = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.mx = insertelement <2 x double> %i.mw, double %i.fl, i64 1
  %i.my = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.mx, <2 x double> %i.mv) ; 2 uses
  %i.mz = insertelement <2 x double> poison, double %i.do, i64 0
  %i.na = insertelement <2 x double> %i.mz, double %i.ec, i64 1
  %i.nb = fmul <2 x double> %i.eb, %i.na
  %i.nc = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.nd = insertelement <2 x double> %i.nc, double %i.dz, i64 1
  %i.ne = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.nd, <2 x double> %i.nb) ; 2 uses
  %i.nf = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.ng = insertelement <2 x double> %i.nf, double %i.cq, i64 1
  %i.nh = fmul <2 x double> %i.cp, %i.ng
  %i.ni = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.nj = insertelement <2 x double> %i.ni, double %i.cn, i64 1
  %i.nk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.nj, <2 x double> %i.nh) ; 2 uses
  %i.nl = tail call double @llvm.fmuladd.f64(double %i.m, double %i.f, double %i.k)
  %i.nm = tail call double @llvm.fmuladd.f64(double %i.nl, double %i.f, double %i.i)
  %i.nn = extractelement <2 x double> %i.nk, i64 0
  %i.no = tail call double @llvm.fmuladd.f64(double %i.nn, double f0x3E7AD7F29ABCAF48, double %i.nm)
  %i.np = extractelement <2 x double> %i.nk, i64 1
  %i.nq = tail call double @llvm.fmuladd.f64(double %i.np, double f0x3E7AD7F29ABCAF48, double %i.no)
  %i.nr = extractelement <2 x double> %i.ne, i64 0
  %i.ns = tail call double @llvm.fmuladd.f64(double %i.nr, double f0x3E7AD7F29ABCAF48, double %i.nq)
  %i.nt = extractelement <2 x double> %i.ne, i64 1
  %i.nu = tail call double @llvm.fmuladd.f64(double %i.nt, double f0x3E7AD7F29ABCAF48, double %i.ns)
  %i.nv = extractelement <2 x double> %i.my, i64 0
  %i.nw = tail call double @llvm.fmuladd.f64(double %i.nv, double f0x3E7AD7F29ABCAF48, double %i.nu)
  %i.nx = extractelement <2 x double> %i.my, i64 1
  %i.ny = tail call double @llvm.fmuladd.f64(double %i.nx, double f0x3E7AD7F29ABCAF48, double %i.nw)
  %i.nz = extractelement <2 x double> %i.ms, i64 0
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.nz, double f0x3E7AD7F29ABCAF48, double %i.ny)
  %i.ob = extractelement <2 x double> %i.ms, i64 1
  %i.oc = tail call double @llvm.fmuladd.f64(double %i.ob, double f0x3E7AD7F29ABCAF48, double %i.oa)
  %i.od = fmul double %i.hw, %i.hx
  %i.oe = tail call double @llvm.fmuladd.f64(double %i.ht, double %i.hu, double %i.od)
  %i.of = fmul double %i.f, %i.oe
  %3 = tail call double @llvm.fmuladd.f64(double %i.of, double f0x3E7AD7F29ABCAF48, double %i.oc) ; 5 uses
  %i.og = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.f, double %i.az)
  %i.oh = fmul double %i.f, %i.og
  %i.oi = tail call double @llvm.fmuladd.f64(double %i.ax, double 3.600000e+03, double %i.oh)
  %i.oj = fmul double %i.oi, f0x3ED455A5B2FF8F9D
  %i.ok = fmul double %.lcssa, 5.000000e-01       ; 2 uses
  %i.ol = fadd double %i.al, 1.000000e+00
  %i.om = fsub double 1.000000e+00, %i.al
  %i.on = fdiv double %i.ol, %i.om
  %i.oo = tail call double @sqrt(double noundef %i.on) #7, !tbaa !7
  %i.op = tail call double @sin(double noundef %i.ok) #7, !tbaa !7
  %i.oq = fmul double %i.oo, %i.op
  %i.or = tail call double @cos(double noundef %i.ok) #7, !tbaa !7
  %i.os = tail call double @atan2(double noundef %i.oq, double noundef %i.or) #7, !tbaa !7
  %i.ot = fmul double %i.os, 2.000000e+00
  %i.ou = tail call double @cos(double noundef %.lcssa) #7, !tbaa !7
  %i.ov = getelementptr inbounds [8 x i8], ptr @amas, i64 %i.g
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !9
  %i.ox = fdiv double 1.000000e+00, %i.ow
  %i.oy = fadd double %i.ox, 1.000000e+00
  %4 = fmul double %3, %3
  %i.oz = fmul double %3, %4
  %5 = fdiv double %i.oy, %i.oz
  %6 = fmul double %i.oj, 5.000000e-01            ; 2 uses
  %7 = fadd double %.0.i, %i.ot                   ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %8 = insertelement <2 x double> poison, double %i.jc, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = insertelement <2 x double> poison, double %i.al, i64 0 ; 2 uses
  %11 = insertelement <2 x double> %10, double %i.ou, i64 1
  %12 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %11, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.pd = tail call double @sqrt(double noundef %5) #7, !tbaa !7
  %i.pe = insertelement <2 x double> poison, double %3, i64 0
  %i.pf = insertelement <2 x double> %i.pe, double %i.pd, i64 1
  %13 = shufflevector <2 x double> <double poison, double f0x3F919D6D51A6B69A>, <2 x double> %12, <2 x i32> <i32 3, i32 1>
  %i.pg = fmul <2 x double> %i.pf, %13            ; 4 uses
  %i.ph = tail call double @sin(double noundef %6) #7, !tbaa !7 ; 2 uses
  %i.pi = tail call double @cos(double noundef %.0.i181) #7, !tbaa !7
  %i.pj = tail call double @sin(double noundef %.0.i181) #7, !tbaa !7
  %i.pk = tail call double @sin(double noundef %7) #7, !tbaa !7 ; 3 uses
  %i.pl = tail call double @cos(double noundef %7) #7, !tbaa !7 ; 3 uses
  %i.pm = fneg double %i.pk
  %14 = extractelement <2 x double> %12, i64 0
  %i.pn = tail call double @sqrt(double noundef %14) #7, !tbaa !7
  %i.po = fdiv double %3, %i.pn                   ; 2 uses
  %i.pp = tail call double @cos(double noundef %6) #7, !tbaa !7 ; 2 uses
  %i.pq = tail call double @sin(double noundef %.0.i) #7, !tbaa !7
  %i.pr = tail call double @cos(double noundef %.0.i) #7, !tbaa !7
  %i.ps = fmul double %i.ph, %i.pi                ; 4 uses
  %i.pt = fmul double %i.ph, %i.pj                ; 5 uses
  %i.pu = fmul double %i.ps, %i.pm
  %i.pv = tail call double @llvm.fmuladd.f64(double %i.pt, double %i.pl, double %i.pu)
  %i.pw = tail call double @llvm.fmuladd.f64(double %i.al, double %i.pq, double %i.pk)
  %i.px = fmul double %i.po, %i.pw                ; 3 uses
  %i.py = fmul double %i.pt, 2.000000e+00         ; 2 uses
  %15 = fmul double %i.ps, %i.py                  ; 2 uses
  %i.pz = insertelement <2 x double> %10, double %i.py, i64 1
  %i.qa = insertelement <2 x double> poison, double %i.pr, i64 0
  %i.qb = insertelement <2 x double> %i.qa, double %i.pt, i64 1
  %i.qc = insertelement <2 x double> <double poison, double -1.000000e+00>, double %i.pl, i64 0
  %i.qd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pz, <2 x double> %i.qb, <2 x double> %i.qc) ; 2 uses
  %i.qe = extractelement <2 x double> %i.qd, i64 0
  %i.qf = fmul double %i.po, %i.qe                ; 3 uses
  %i.qg = fmul double %15, %i.qf
  %16 = insertelement <2 x double> poison, double %i.pt, i64 0
  %i.qh = insertelement <2 x double> %16, double %i.px, i64 1
  %i.qi = insertelement <2 x double> poison, double %i.pl, i64 0
  %i.qj = insertelement <2 x double> %i.qi, double %i.qg, i64 1
  %17 = extractelement <2 x double> %i.pg, i64 0
  %i.qk = insertelement <2 x double> poison, double %i.pv, i64 0
  %18 = insertelement <2 x double> %i.qk, double %i.ps, i64 1 ; 2 uses
  %i.ql = fmul <2 x double> %18, <double 2.000000e+00, double -2.000000e+00> ; 2 uses
  %i.qm = extractelement <2 x double> %i.ql, i64 0
  %19 = fneg double %i.qm                         ; 2 uses
  %i.qn = fmul double %i.pp, %19
  %20 = insertelement <2 x double> %i.qd, double %19, i64 0
  %21 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %i.qh, <2 x double> %i.qj)
  %22 = fmul <2 x double> %i.pg, %21              ; 2 uses
  %i.qo = extractelement <2 x double> %22, i64 0
  store double %i.qo, ptr %2, align 8, !tbaa !9
  %23 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qp = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.pk, i64 0
  %24 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ql, <2 x double> %23, <2 x double> %i.qp) ; 2 uses
  %i.qq = fmul <2 x double> %i.pg, %24
  %25 = fmul double %17, %i.qn
  %i.qr = insertelement <2 x double> poison, double %25, i64 0
  %i.qs = shufflevector <2 x double> %i.qr, <2 x double> poison, <2 x i32> zeroinitializer
  %26 = fmul <2 x double> %i.qs, <double f0xBFD9752E50F4B399, double f0x3FED5C0357681EF3>
  %27 = shufflevector <2 x double> %i.qq, <2 x double> poison, <2 x i32> zeroinitializer
  %28 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %27, <2 x double> <double f0x3FED5C0357681EF3, double f0x3FD9752E50F4B399>, <2 x double> %26)
  store <2 x double> %28, ptr %i.pa, align 8, !tbaa !9
  %i.qt = fneg double %i.px
  %i.qu = fmul double %15, %i.qt
  %29 = extractelement <2 x double> %24, i64 1
  %i.qv = tail call double @llvm.fmuladd.f64(double %29, double %i.qf, double %i.qu)
  %30 = extractelement <2 x double> %i.pg, i64 1  ; 2 uses
  %31 = fmul double %30, %i.qv
  %i.qw = fmul double %i.pp, 2.000000e+00
  %32 = fmul double %i.ps, %i.qf
  %33 = tail call double @llvm.fmuladd.f64(double %i.pt, double %i.px, double %32)
  %i.qx = fmul double %i.qw, %33
  %i.qy = fmul double %30, %i.qx
  %i.qz = extractelement <2 x double> %22, i64 1
  store double %i.qz, ptr %i.pb, align 8, !tbaa !9
  %i.ra = insertelement <2 x double> poison, double %i.qy, i64 0
  %i.rb = shufflevector <2 x double> %i.ra, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rc = fmul <2 x double> %i.rb, <double f0xBFD9752E50F4B399, double f0x3FED5C0357681EF3>
  %i.rd = insertelement <2 x double> poison, double %31, i64 0
  %i.re = shufflevector <2 x double> %i.rd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.re, <2 x double> <double f0x3FED5C0357681EF3, double f0x3FD9752E50F4B399>, <2 x double> %i.rc)
  store <2 x double> %i.rf, ptr %i.pc, align 8, !tbaa !9
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
  br label %bb.a

bb.a:                                             ; preds = %.loopexit.split, %bb.c
  %.11925 = phi i32 [ 0, %.loopexit.split ], [ %i.cc, %bb.c ]
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.01724 = phi i32 [ 0, %bb.a ], [ %i.cb, %bb.b ]
  %i.f = phi double [ f0x4142B42C80000000, %bb.a ], [ %i.g, %bb.b ]
  %i.g = fadd double %i.f, 1.000000e+00           ; 2 uses
  store double %i.g, ptr %i.a, align 16, !tbaa !9
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef nonnull %i.b)
  %i.h = load double, ptr %i.b, align 16, !tbaa !9 ; 3 uses
  %i.i = load double, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %i.j = fmul double %i.i, %i.i
  %i.k = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.j)
  %i.l = load double, ptr %i.e, align 16, !tbaa !9 ; 3 uses
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.k)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.m) ; 2 uses
  %i.n = tail call double @atan2(double noundef %i.i, double noundef %i.h) #7, !tbaa !7
  %i.o = fdiv double %i.l, %sqrt.i
  %i.p = tail call double @asin(double noundef %i.o) #7, !tbaa !7
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull %i.b)
  %i.q = load double, ptr %i.b, align 16, !tbaa !9 ; 3 uses
  %i.r = load double, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %i.s = fmul double %i.r, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.s)
  %i.u = load double, ptr %i.e, align 16, !tbaa !9 ; 3 uses
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %i.t)
  %sqrt.i.1 = tail call double @llvm.sqrt.f64(double %i.v) ; 2 uses
  %i.w = tail call double @atan2(double noundef %i.r, double noundef %i.q) #7, !tbaa !7
  %i.x = fdiv double %i.u, %sqrt.i.1
  %i.y = tail call double @asin(double noundef %i.x) #7, !tbaa !7
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef nonnull %i.b)
  %i.z = load double, ptr %i.b, align 16, !tbaa !9 ; 3 uses
  %i.aa = load double, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %i.ab = fmul double %i.aa, %i.aa
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.z, double %i.z, double %i.ab)
  %i.ad = load double, ptr %i.e, align 16, !tbaa !9 ; 3 uses
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ad, double %i.ac)
  %sqrt.i.2 = tail call double @llvm.sqrt.f64(double %i.ae) ; 2 uses
  %i.af = tail call double @atan2(double noundef %i.aa, double noundef %i.z) #7, !tbaa !7
  %i.ag = fdiv double %i.ad, %sqrt.i.2
  %i.ah = tail call double @asin(double noundef %i.ag) #7, !tbaa !7
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef nonnull %i.b)
  %i.ai = load double, ptr %i.b, align 16, !tbaa !9 ; 3 uses
  %i.aj = load double, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %i.ak = fmul double %i.aj, %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ai, double %i.ak)
  %i.am = load double, ptr %i.e, align 16, !tbaa !9 ; 3 uses
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.am, double %i.al)
  %sqrt.i.3 = tail call double @llvm.sqrt.f64(double %i.an) ; 2 uses
  %i.ao = tail call double @atan2(double noundef %i.aj, double noundef %i.ai) #7, !tbaa !7
  %i.ap = fdiv double %i.am, %sqrt.i.3
  %i.aq = tail call double @asin(double noundef %i.ap) #7, !tbaa !7
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull %i.b)
  %i.ar = load double, ptr %i.b, align 16, !tbaa !9 ; 3 uses
  %i.as = load double, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %i.at = fmul double %i.as, %i.as
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.ar, double %i.at)
  %i.av = load double, ptr %i.e, align 16, !tbaa !9 ; 3 uses
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double %i.av, double %i.au)
  %sqrt.i.4 = tail call double @llvm.sqrt.f64(double %i.aw) ; 2 uses
  %i.ax = tail call double @atan2(double noundef %i.as, double noundef %i.ar) #7, !tbaa !7
  %i.ay = fdiv double %i.av, %sqrt.i.4
  %i.az = tail call double @asin(double noundef %i.ay) #7, !tbaa !7
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 5, ptr noundef nonnull %i.b)
  %i.ba = load double, ptr %i.b, align 16, !tbaa !9 ; 3 uses
  %i.bb = load double, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %i.bc = fmul double %i.bb, %i.bb
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ba, double %i.bc)
  %i.be = load double, ptr %i.e, align 16, !tbaa !9 ; 3 uses
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.be, double %i.be, double %i.bd)
  %sqrt.i.5 = tail call double @llvm.sqrt.f64(double %i.bf) ; 2 uses
  %i.bg = tail call double @atan2(double noundef %i.bb, double noundef %i.ba) #7, !tbaa !7
  %i.bh = fdiv double %i.be, %sqrt.i.5
  %i.bi = tail call double @asin(double noundef %i.bh) #7, !tbaa !7
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 6, ptr noundef nonnull %i.b)
  %i.bj = load double, ptr %i.b, align 16, !tbaa !9 ; 3 uses
  %i.bk = load double, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %i.bl = fmul double %i.bk, %i.bk
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bj, double %i.bl)
  %i.bn = load double, ptr %i.e, align 16, !tbaa !9 ; 3 uses
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bn, double %i.bm)
  %sqrt.i.6 = tail call double @llvm.sqrt.f64(double %i.bo) ; 2 uses
  %i.bp = tail call double @atan2(double noundef %i.bk, double noundef %i.bj) #7, !tbaa !7
  %i.bq = fdiv double %i.bn, %sqrt.i.6
  %i.br = tail call double @asin(double noundef %i.bq) #7, !tbaa !7
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 7, ptr noundef nonnull %i.b)
  %i.bs = load double, ptr %i.b, align 16, !tbaa !9 ; 3 uses
  %i.bt = load double, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %i.bu = fmul double %i.bt, %i.bt
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bs, double %i.bu)
  %i.bw = load double, ptr %i.e, align 16, !tbaa !9 ; 3 uses
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bw, double %i.bv)
  %sqrt.i.7 = tail call double @llvm.sqrt.f64(double %i.bx) ; 2 uses
  %i.by = tail call double @atan2(double noundef %i.bt, double noundef %i.bs) #7, !tbaa !7
  %i.bz = fdiv double %i.bw, %sqrt.i.7
  %i.ca = tail call double @asin(double noundef %i.bz) #7, !tbaa !7
  %i.cb = add nuw nsw i32 %.01724, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cb, 36525
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  %i.cc = add nuw nsw i32 %.11925, 1              ; 2 uses
  %exitcond28.not = icmp eq i32 %i.cc, 20
  br i1 %exitcond28.not, label %.preheader.preheader, label %bb.a, !llvm.loop !11

.preheader.preheader:                             ; preds = %bb.c
  %i.cd = fmul double %i.ca, f0x404CA5DC1A63C1F8
  %i.ce = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.bp, i64 1
  %i.cg = fmul <2 x double> %i.cf, splat (double f0x400E8EC8A4AEACC4) ; 3 uses
  %i.ch = fmul double %i.br, f0x404CA5DC1A63C1F8
  %i.ci = fcmp olt <2 x double> %i.cg, zeroinitializer
  %i.cj = fadd <2 x double> %i.cg, splat (double 2.400000e+01)
  %i.ck = select <2 x i1> %i.ci, <2 x double> %i.cj, <2 x double> %i.cg ; 2 uses
  %i.cl = fmul double %i.bi, f0x404CA5DC1A63C1F8
  %i.cm = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.ax, i64 1
  %i.co = fmul <2 x double> %i.cn, splat (double f0x400E8EC8A4AEACC4) ; 3 uses
  %i.cp = fmul double %i.az, f0x404CA5DC1A63C1F8
  %i.cq = fcmp olt <2 x double> %i.co, zeroinitializer
  %i.cr = fadd <2 x double> %i.co, splat (double 2.400000e+01)
  %i.cs = select <2 x i1> %i.cq, <2 x double> %i.cr, <2 x double> %i.co ; 2 uses
  %i.ct = fmul double %i.aq, f0x404CA5DC1A63C1F8
  %i.cu = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.cv = insertelement <2 x double> %i.cu, double %i.af, i64 1
  %i.cw = fmul <2 x double> %i.cv, splat (double f0x400E8EC8A4AEACC4) ; 3 uses
  %i.cx = fmul double %i.ah, f0x404CA5DC1A63C1F8
  %i.cy = fcmp olt <2 x double> %i.cw, zeroinitializer
  %i.cz = fadd <2 x double> %i.cw, splat (double 2.400000e+01)
  %i.da = select <2 x i1> %i.cy, <2 x double> %i.cz, <2 x double> %i.cw ; 2 uses
  %i.db = fmul double %i.y, f0x404CA5DC1A63C1F8
end_hunk_0
