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
  %i.a = tail call double @fmod(double noundef %0, double noundef f0x401921FB54442D18) #7, !tbaa !4 ; 3 uses
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
  %i.a = load double, ptr %0, align 8, !tbaa !8
  %i.b = fadd double %i.a, f0xC142B42C80000000
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !8
  %i.e = fadd double %i.b, %i.d
  %i.f = fdiv double %i.e, 3.652500e+05           ; 16 uses
  %i.g = sext i32 %1 to i64                       ; 13 uses
  %i.h = getelementptr inbounds [24 x i8], ptr @a, i64 %i.g ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %4 = load double, ptr %3, align 8, !tbaa !8
  %i.i = load double, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds [24 x i8], ptr @dlm, i64 %i.g ; 3 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !8
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.f, double %i.o)
  %i.s = fmul double %i.f, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.m, double 3.600000e+03, double %i.s)
  %i.u = fmul double %i.t, f0x3ED455A5B2FF8F9D
  %i.v = getelementptr inbounds [24 x i8], ptr @e, i64 %i.g ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !8
  %6 = load double, ptr %5, align 8, !tbaa !8
  %i.y = load double, ptr %i.v, align 8, !tbaa !8
  %i.z = tail call double @llvm.fmuladd.f64(double %i.x, double %i.f, double %6)
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.f, double %i.y) ; 16 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr @pi, i64 %i.g ; 3 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !8
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.f, double %i.ae)
  %i.ai = fmul double %i.f, %i.ah
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ac, double 3.600000e+03, double %i.ai)
  %i.ak = fmul double %i.aj, f0x3ED455A5B2FF8F9D  ; 2 uses
  %i.al = tail call double @fmod(double noundef %i.ak, double noundef f0x401921FB54442D18) #7, !tbaa !4 ; 3 uses
  %i.am = tail call double @llvm.fabs.f64(double %i.al)
  %i.an = fcmp ult double %i.am, f0x400921FB54442D18
  br i1 %i.an, label %anpm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ao = fcmp olt double %i.ak, 0.000000e+00
  %i.ap = select i1 %i.ao, double f0xC01921FB54442D18, double f0x401921FB54442D18
  %i.aq = fsub double %i.al, %i.ap
  br label %anpm.exit

anpm.exit:                                        ; preds = %bb.a, %bb.b
  %.0.i = phi double [ %i.aq, %bb.b ], [ %i.al, %bb.a ] ; 4 uses
  %i.ar = getelementptr inbounds [24 x i8], ptr @dinc, i64 %i.g ; 3 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load double, ptr %i.at, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load double, ptr %i.av, align 8, !tbaa !8
  %i.ax = getelementptr inbounds [24 x i8], ptr @omega, i64 %i.g ; 3 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load double, ptr %i.az, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !8
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.f, double %i.ba)
  %i.be = fmul double %i.f, %i.bd
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.ay, double 3.600000e+03, double %i.be)
  %i.bg = fmul double %i.bf, f0x3ED455A5B2FF8F9D  ; 2 uses
  %i.bh = tail call double @fmod(double noundef %i.bg, double noundef f0x401921FB54442D18) #7, !tbaa !4 ; 3 uses
  %i.bi = tail call double @llvm.fabs.f64(double %i.bh)
  %i.bj = fcmp ult double %i.bi, f0x400921FB54442D18
  br i1 %i.bj, label %anpm.exit182, label %bb.c

bb.c:                                             ; preds = %anpm.exit
  %i.bk = fcmp olt double %i.bg, 0.000000e+00
  %i.bl = select i1 %i.bk, double f0xC01921FB54442D18, double f0x401921FB54442D18
  %i.bm = fsub double %i.bh, %i.bl
  br label %anpm.exit182

anpm.exit182:                                     ; preds = %anpm.exit, %bb.c
  %.0.i181 = phi double [ %i.bm, %bb.c ], [ %i.bh, %anpm.exit ] ; 2 uses
  %i.bn = fmul double %i.f, f0x3FD702A41F2E9970   ; 19 uses
  %i.bo = getelementptr inbounds [72 x i8], ptr @kp, i64 %i.g ; 9 uses
  %i.bp = getelementptr inbounds [80 x i8], ptr @kq, i64 %i.g ; 10 uses
  %i.bq = getelementptr inbounds [72 x i8], ptr @ca, i64 %i.g ; 5 uses
  %i.br = getelementptr inbounds [72 x i8], ptr @sa, i64 %i.g ; 5 uses
  %i.bs = getelementptr inbounds [80 x i8], ptr @cl, i64 %i.g ; 10 uses
  %i.bt = getelementptr inbounds [80 x i8], ptr @sl, i64 %i.g ; 10 uses
  %i.bu = load double, ptr %i.bo, align 8, !tbaa !8
  %i.bv = fmul double %i.bn, %i.bu                ; 2 uses
  %i.bw = load double, ptr %i.bp, align 16, !tbaa !8
  %i.bx = fmul double %i.bn, %i.bw                ; 2 uses
  %i.by = tail call double @cos(double noundef %i.bv) #7, !tbaa !4
  %i.bz = tail call double @sin(double noundef %i.bv) #7, !tbaa !4
  %i.ca = load double, ptr %i.bs, align 16, !tbaa !8
  %i.cb = tail call double @cos(double noundef %i.bx) #7, !tbaa !4
  %i.cc = load double, ptr %i.bt, align 16, !tbaa !8
  %i.cd = tail call double @sin(double noundef %i.bx) #7, !tbaa !4
  %i.ce = fmul double %i.cc, %i.cd
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.cb, double %i.ce)
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double f0x3E7AD7F29ABCAF48, double %i.u)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !8
  %i.cj = fmul double %i.bn, %i.ci                ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !8
  %i.cm = fmul double %i.bn, %i.cl                ; 2 uses
  %i.cn = tail call double @cos(double noundef %i.cj) #7, !tbaa !4
  %i.co = load <2 x double>, ptr %i.bq, align 8, !tbaa !8
  %i.cp = load <2 x double>, ptr %i.br, align 8, !tbaa !8
  %i.cq = tail call double @sin(double noundef %i.cj) #7, !tbaa !4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !8
  %i.ct = tail call double @cos(double noundef %i.cm) #7, !tbaa !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !8
  %i.cw = tail call double @sin(double noundef %i.cm) #7, !tbaa !4
  %i.cx = fmul double %i.cv, %i.cw
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.ct, double %i.cx)
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cy, double f0x3E7AD7F29ABCAF48, double %i.cg)
  %i.da = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.db = load double, ptr %i.da, align 8, !tbaa !8
  %i.dc = fmul double %i.bn, %i.db                ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.de = load double, ptr %i.dd, align 16, !tbaa !8
  %i.df = fmul double %i.bn, %i.de                ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.dh = tail call double @cos(double noundef %i.dc) #7, !tbaa !4
  %i.di = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.dj = tail call double @sin(double noundef %i.dc) #7, !tbaa !4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.dl = load double, ptr %i.dk, align 16, !tbaa !8
  %i.dm = tail call double @cos(double noundef %i.df) #7, !tbaa !4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.do = load double, ptr %i.dn, align 16, !tbaa !8
  %i.dp = tail call double @sin(double noundef %i.df) #7, !tbaa !4
  %i.dq = fmul double %i.do, %i.dp
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dm, double %i.dq)
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dr, double f0x3E7AD7F29ABCAF48, double %i.cz)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.du = load double, ptr %i.dt, align 8, !tbaa !8
  %i.dv = fmul double %i.bn, %i.du                ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !8
  %i.dy = fmul double %i.bn, %i.dx                ; 2 uses
  %i.dz = tail call double @cos(double noundef %i.dv) #7, !tbaa !4
  %i.ea = load <2 x double>, ptr %i.dg, align 8, !tbaa !8
  %i.eb = load <2 x double>, ptr %i.di, align 8, !tbaa !8
  %i.ec = tail call double @sin(double noundef %i.dv) #7, !tbaa !4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !8
  %i.ef = tail call double @cos(double noundef %i.dy) #7, !tbaa !4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !8
  %i.ei = tail call double @sin(double noundef %i.dy) #7, !tbaa !4
  %i.ej = fmul double %i.eh, %i.ei
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.ef, double %i.ej)
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ek, double f0x3E7AD7F29ABCAF48, double %i.ds)
  %i.em = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.en = load double, ptr %i.em, align 8, !tbaa !8
  %i.eo = fmul double %i.bn, %i.en                ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.eq = load double, ptr %i.ep, align 16, !tbaa !8
  %i.er = fmul double %i.bn, %i.eq                ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.et = tail call double @cos(double noundef %i.eo) #7, !tbaa !4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.ev = tail call double @sin(double noundef %i.eo) #7, !tbaa !4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.ex = load double, ptr %i.ew, align 16, !tbaa !8
  %i.ey = tail call double @cos(double noundef %i.er) #7, !tbaa !4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.fa = load double, ptr %i.ez, align 16, !tbaa !8
  %i.fb = tail call double @sin(double noundef %i.er) #7, !tbaa !4
  %i.fc = fmul double %i.fa, %i.fb
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.ey, double %i.fc)
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.fd, double f0x3E7AD7F29ABCAF48, double %i.el)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !8
  %i.fh = fmul double %i.bn, %i.fg                ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !8
  %i.fk = fmul double %i.bn, %i.fj                ; 2 uses
  %i.fl = tail call double @cos(double noundef %i.fh) #7, !tbaa !4
  %i.fm = load <2 x double>, ptr %i.es, align 8, !tbaa !8
  %i.fn = load <2 x double>, ptr %i.eu, align 8, !tbaa !8
  %i.fo = tail call double @sin(double noundef %i.fh) #7, !tbaa !4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !8
  %i.fr = tail call double @cos(double noundef %i.fk) #7, !tbaa !4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !8
  %i.fu = tail call double @sin(double noundef %i.fk) #7, !tbaa !4
  %i.fv = fmul double %i.ft, %i.fu
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.fr, double %i.fv)
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fw, double f0x3E7AD7F29ABCAF48, double %i.fe)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !8
  %i.ga = fmul double %i.bn, %i.fz                ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.gc = load double, ptr %i.gb, align 16, !tbaa !8
  %i.gd = fmul double %i.bn, %i.gc                ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.gf = tail call double @cos(double noundef %i.ga) #7, !tbaa !4
  %i.gg = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.gh = tail call double @sin(double noundef %i.ga) #7, !tbaa !4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.gj = load double, ptr %i.gi, align 16, !tbaa !8
  %i.gk = tail call double @cos(double noundef %i.gd) #7, !tbaa !4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.gm = load double, ptr %i.gl, align 16, !tbaa !8
  %i.gn = tail call double @sin(double noundef %i.gd) #7, !tbaa !4
  %i.go = fmul double %i.gm, %i.gn
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.gj, double %i.gk, double %i.go)
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.gp, double f0x3E7AD7F29ABCAF48, double %i.fx)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !8
  %i.gt = fmul double %i.bn, %i.gs                ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !8
  %i.gw = fmul double %i.bn, %i.gv                ; 2 uses
  %i.gx = tail call double @cos(double noundef %i.gt) #7, !tbaa !4
  %i.gy = load <2 x double>, ptr %i.ge, align 8, !tbaa !8
  %i.gz = load <2 x double>, ptr %i.gg, align 8, !tbaa !8
  %i.ha = tail call double @sin(double noundef %i.gt) #7, !tbaa !4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !8
  %i.hd = tail call double @cos(double noundef %i.gw) #7, !tbaa !4
  %i.he = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.hf = load double, ptr %i.he, align 8, !tbaa !8
  %i.hg = tail call double @sin(double noundef %i.gw) #7, !tbaa !4
  %i.hh = fmul double %i.hf, %i.hg
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.hc, double %i.hd, double %i.hh)
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.hi, double f0x3E7AD7F29ABCAF48, double %i.gq)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !8
  %i.hm = fmul double %i.bn, %i.hl                ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !8
  %i.hp = tail call double @cos(double noundef %i.hm) #7, !tbaa !4
  %i.hq = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !8
  %i.hs = tail call double @sin(double noundef %i.hm) #7, !tbaa !4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.hu = load double, ptr %i.ht, align 16, !tbaa !8
  %i.hv = fmul double %i.bn, %i.hu                ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.hx = load double, ptr %i.hw, align 16, !tbaa !8
  %i.hy = tail call double @cos(double noundef %i.hv) #7, !tbaa !4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.ia = load double, ptr %i.hz, align 16, !tbaa !8
  %i.ib = tail call double @sin(double noundef %i.hv) #7, !tbaa !4
  %i.ic = fmul double %i.ia, %i.ib
  %i.id = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.hy, double %i.ic)
  %i.ie = fmul double %i.f, %i.id
  %i.if = tail call double @llvm.fmuladd.f64(double %i.ie, double f0x3E7AD7F29ABCAF48, double %i.hj)
  %i.ig = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !8
  %i.ii = fmul double %i.bn, %i.ih                ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !8
  %i.il = tail call double @cos(double noundef %i.ii) #7, !tbaa !4
  %i.im = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.in = load double, ptr %i.im, align 8, !tbaa !8
  %i.io = tail call double @sin(double noundef %i.ii) #7, !tbaa !4
  %i.ip = fmul double %i.in, %i.io
  %i.iq = tail call double @llvm.fmuladd.f64(double %i.ik, double %i.il, double %i.ip)
  %i.ir = fmul double %i.f, %i.iq
  %i.is = tail call double @llvm.fmuladd.f64(double %i.ir, double f0x3E7AD7F29ABCAF48, double %i.if)
  %i.it = tail call double @fmod(double noundef %i.is, double noundef f0x401921FB54442D18) #7, !tbaa !4
  %i.iu = fsub double %i.it, %.0.i                ; 12 uses
  %i.iv = tail call double @sin(double noundef %i.iu) #7, !tbaa !4
  %i.iw = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.iv, double %i.iu) ; 4 uses
  %i.ix = fneg double %i.aa                       ; 12 uses
  %i.iy = fsub double %i.iu, %i.iw
  %i.iz = tail call double @sin(double noundef %i.iw) #7, !tbaa !4
  %i.ja = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.iz, double %i.iy)
  %i.jb = tail call double @cos(double noundef %i.iw) #7, !tbaa !4
  %i.jc = tail call double @llvm.fmuladd.f64(double %i.ix, double %i.jb, double 1.000000e+00)
  %i.jd = fdiv double %i.ja, %i.jc                ; 2 uses
  %i.je = fadd double %i.iw, %i.jd                ; 5 uses
  %i.jf = tail call double @llvm.fabs.f64(double %i.jd)
  %i.jg = fcmp olt double %i.jf, f0x3D719799812DEA11
  br i1 %i.jg, label %bb.m, label %bb.d

bb.d:                                             ; preds = %anpm.exit182
  %i.jh = fsub double %i.iu, %i.je
  %i.ji = tail call double @sin(double noundef %i.je) #7, !tbaa !4
  %i.jj = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ji, double %i.jh)
  %i.jk = tail call double @cos(double noundef %i.je) #7, !tbaa !4
  %i.jl = tail call double @llvm.fmuladd.f64(double %i.ix, double %i.jk, double 1.000000e+00)
  %i.jm = fdiv double %i.jj, %i.jl                ; 2 uses
  %i.jn = fadd double %i.je, %i.jm                ; 5 uses
  %i.jo = tail call double @llvm.fabs.f64(double %i.jm)
  %i.jp = fcmp olt double %i.jo, f0x3D719799812DEA11
  br i1 %i.jp, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.jq = fsub double %i.iu, %i.jn
  %i.jr = tail call double @sin(double noundef %i.jn) #7, !tbaa !4
  %i.js = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.jr, double %i.jq)
  %i.jt = tail call double @cos(double noundef %i.jn) #7, !tbaa !4
  %i.ju = tail call double @llvm.fmuladd.f64(double %i.ix, double %i.jt, double 1.000000e+00)
  %i.jv = fdiv double %i.js, %i.ju                ; 2 uses
  %i.jw = fadd double %i.jn, %i.jv                ; 5 uses
  %i.jx = tail call double @llvm.fabs.f64(double %i.jv)
  %i.jy = fcmp olt double %i.jx, f0x3D719799812DEA11
  br i1 %i.jy, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.jz = fsub double %i.iu, %i.jw
  %i.ka = tail call double @sin(double noundef %i.jw) #7, !tbaa !4
  %i.kb = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ka, double %i.jz)
  %i.kc = tail call double @cos(double noundef %i.jw) #7, !tbaa !4
  %i.kd = tail call double @llvm.fmuladd.f64(double %i.ix, double %i.kc, double 1.000000e+00)
  %i.ke = fdiv double %i.kb, %i.kd                ; 2 uses
  %i.kf = fadd double %i.jw, %i.ke                ; 5 uses
  %i.kg = tail call double @llvm.fabs.f64(double %i.ke)
  %i.kh = fcmp olt double %i.kg, f0x3D719799812DEA11
  br i1 %i.kh, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ki = fsub double %i.iu, %i.kf
  %i.kj = tail call double @sin(double noundef %i.kf) #7, !tbaa !4
  %i.kk = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.kj, double %i.ki)
  %i.kl = tail call double @cos(double noundef %i.kf) #7, !tbaa !4
  %i.km = tail call double @llvm.fmuladd.f64(double %i.ix, double %i.kl, double 1.000000e+00)
  %i.kn = fdiv double %i.kk, %i.km                ; 2 uses
  %i.ko = fadd double %i.kf, %i.kn                ; 5 uses
  %i.kp = tail call double @llvm.fabs.f64(double %i.kn)
  %i.kq = fcmp olt double %i.kp, f0x3D719799812DEA11
  br i1 %i.kq, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.kr = fsub double %i.iu, %i.ko
  %i.ks = tail call double @sin(double noundef %i.ko) #7, !tbaa !4
  %i.kt = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ks, double %i.kr)
  %i.ku = tail call double @cos(double noundef %i.ko) #7, !tbaa !4
  %i.kv = tail call double @llvm.fmuladd.f64(double %i.ix, double %i.ku, double 1.000000e+00)
  %i.kw = fdiv double %i.kt, %i.kv                ; 2 uses
  %i.kx = fadd double %i.ko, %i.kw                ; 5 uses
  %i.ky = tail call double @llvm.fabs.f64(double %i.kw)
  %i.kz = fcmp olt double %i.ky, f0x3D719799812DEA11
  br i1 %i.kz, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.la = fsub double %i.iu, %i.kx
  %i.lb = tail call double @sin(double noundef %i.kx) #7, !tbaa !4
  %i.lc = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.lb, double %i.la)
  %i.ld = tail call double @cos(double noundef %i.kx) #7, !tbaa !4
  %i.le = tail call double @llvm.fmuladd.f64(double %i.ix, double %i.ld, double 1.000000e+00)
  %i.lf = fdiv double %i.lc, %i.le                ; 2 uses
  %i.lg = fadd double %i.kx, %i.lf                ; 5 uses
  %i.lh = tail call double @llvm.fabs.f64(double %i.lf)
  %i.li = fcmp olt double %i.lh, f0x3D719799812DEA11
  br i1 %i.li, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.lj = fsub double %i.iu, %i.lg
  %i.lk = tail call double @sin(double noundef %i.lg) #7, !tbaa !4
  %i.ll = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.lk, double %i.lj)
  %i.lm = tail call double @cos(double noundef %i.lg) #7, !tbaa !4
  %i.ln = tail call double @llvm.fmuladd.f64(double %i.ix, double %i.lm, double 1.000000e+00)
  %i.lo = fdiv double %i.ll, %i.ln                ; 2 uses
  %i.lp = fadd double %i.lg, %i.lo                ; 5 uses
  %i.lq = tail call double @llvm.fabs.f64(double %i.lo)
  %i.lr = fcmp olt double %i.lq, f0x3D719799812DEA11
  br i1 %i.lr, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ls = fsub double %i.iu, %i.lp
  %i.lt = tail call double @sin(double noundef %i.lp) #7, !tbaa !4
  %i.lu = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.lt, double %i.ls)
  %i.lv = tail call double @cos(double noundef %i.lp) #7, !tbaa !4
  %i.lw = tail call double @llvm.fmuladd.f64(double %i.ix, double %i.lv, double 1.000000e+00)
  %i.lx = fdiv double %i.lu, %i.lw                ; 2 uses
  %i.ly = fadd double %i.lp, %i.lx                ; 5 uses
  %i.lz = tail call double @llvm.fabs.f64(double %i.lx)
  %i.ma = fcmp olt double %i.lz, f0x3D719799812DEA11
  br i1 %i.ma, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.mb = fsub double %i.iu, %i.ly
  %i.mc = tail call double @sin(double noundef %i.ly) #7, !tbaa !4
  %i.md = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.mc, double %i.mb)
  %i.me = tail call double @cos(double noundef %i.ly) #7, !tbaa !4
  %i.mf = tail call double @llvm.fmuladd.f64(double %i.ix, double %i.me, double 1.000000e+00)
  %i.mg = fdiv double %i.md, %i.mf
  %i.mh = fadd double %i.ly, %i.mg
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %anpm.exit182
  %.lcssa = phi double [ %i.lg, %bb.i ], [ %i.je, %anpm.exit182 ], [ %i.mh, %bb.l ], [ %i.jn, %bb.d ], [ %i.ly, %bb.k ], [ %i.jw, %bb.e ], [ %i.kx, %bb.h ], [ %i.kf, %bb.f ], [ %i.lp, %bb.j ], [ %i.ko, %bb.g ] ; 2 uses
  %i.mi = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.mj = insertelement <2 x double> %i.mi, double %i.ha, i64 1
  %i.mk = fmul <2 x double> %i.gz, %i.mj
  %i.ml = insertelement <2 x double> poison, double %i.gf, i64 0
  %i.mm = insertelement <2 x double> %i.ml, double %i.gx, i64 1
  %i.mn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.mm, <2 x double> %i.mk) ; 2 uses
  %i.mo = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.mp = insertelement <2 x double> %i.mo, double %i.fo, i64 1
  %i.mq = fmul <2 x double> %i.fn, %i.mp
  %i.mr = insertelement <2 x double> poison, double %i.et, i64 0
  %i.ms = insertelement <2 x double> %i.mr, double %i.fl, i64 1
  %i.mt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.ms, <2 x double> %i.mq) ; 2 uses
  %i.mu = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.mv = insertelement <2 x double> %i.mu, double %i.ec, i64 1
  %i.mw = fmul <2 x double> %i.eb, %i.mv
  %i.mx = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.my = insertelement <2 x double> %i.mx, double %i.dz, i64 1
  %i.mz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.my, <2 x double> %i.mw) ; 2 uses
  %i.na = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.nb = insertelement <2 x double> %i.na, double %i.cq, i64 1
  %i.nc = fmul <2 x double> %i.cp, %i.nb
  %i.nd = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ne = insertelement <2 x double> %i.nd, double %i.cn, i64 1
  %i.nf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.ne, <2 x double> %i.nc) ; 2 uses
  %7 = extractelement <2 x double> %i.nf, i64 0
  %8 = extractelement <2 x double> %i.nf, i64 1
  %i.ng = extractelement <2 x double> %i.mz, i64 0
  %9 = extractelement <2 x double> %i.mz, i64 1
  %i.nh = extractelement <2 x double> %i.mt, i64 0
  %10 = extractelement <2 x double> %i.mt, i64 1
  %i.ni = extractelement <2 x double> %i.mn, i64 0
  %11 = extractelement <2 x double> %i.mn, i64 1
  %12 = fmul double %i.hr, %i.hs
  %i.nj = tail call double @llvm.fmuladd.f64(double %i.ho, double %i.hp, double %12)
  %13 = fmul double %i.f, %i.nj
  %i.nk = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.f, double %i.au)
  %14 = fmul double %i.f, %i.nk
  %i.nl = tail call double @llvm.fmuladd.f64(double %i.as, double 3.600000e+03, double %14)
  %15 = fmul double %i.nl, f0x3ED455A5B2FF8F9D
  %16 = fmul double %.lcssa, 5.000000e-01         ; 2 uses
  %17 = fadd double %i.aa, 1.000000e+00
  %18 = fsub double 1.000000e+00, %i.aa
  %19 = fdiv double %17, %18
  %20 = tail call double @sqrt(double noundef %19) #7, !tbaa !4
  %21 = tail call double @sin(double noundef %16) #7, !tbaa !4
  %i.nm = fmul double %20, %21
  %22 = tail call double @cos(double noundef %16) #7, !tbaa !4
  %23 = tail call double @atan2(double noundef %i.nm, double noundef %22) #7, !tbaa !4
  %i.nn = fmul double %23, 2.000000e+00
  %24 = tail call double @cos(double noundef %.lcssa) #7, !tbaa !4
  %25 = getelementptr inbounds [8 x i8], ptr @amas, i64 %i.g
  %26 = load double, ptr %25, align 8, !tbaa !8
  %i.no = fdiv double 1.000000e+00, %26
  %27 = fadd double %i.no, 1.000000e+00
  %28 = fmul double %15, 5.000000e-01             ; 2 uses
  %29 = fadd double %.0.i, %i.nn                  ; 2 uses
  %30 = tail call double @llvm.fmuladd.f64(double %i.ix, double %i.aa, double 1.000000e+00)
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %32 = tail call double @llvm.fmuladd.f64(double %i.k, double %i.f, double %4)
  %33 = tail call double @llvm.fmuladd.f64(double %32, double %i.f, double %i.i)
  %34 = tail call double @llvm.fmuladd.f64(double %7, double f0x3E7AD7F29ABCAF48, double %33)
  %35 = tail call double @llvm.fmuladd.f64(double %8, double f0x3E7AD7F29ABCAF48, double %34)
  %36 = tail call double @llvm.fmuladd.f64(double %i.ng, double f0x3E7AD7F29ABCAF48, double %35)
  %37 = tail call double @llvm.fmuladd.f64(double %9, double f0x3E7AD7F29ABCAF48, double %36)
  %38 = tail call double @llvm.fmuladd.f64(double %i.nh, double f0x3E7AD7F29ABCAF48, double %37)
  %39 = tail call double @llvm.fmuladd.f64(double %10, double f0x3E7AD7F29ABCAF48, double %38)
  %40 = tail call double @llvm.fmuladd.f64(double %i.ni, double f0x3E7AD7F29ABCAF48, double %39)
  %41 = tail call double @llvm.fmuladd.f64(double %11, double f0x3E7AD7F29ABCAF48, double %40)
  %42 = insertelement <2 x double> poison, double %13, i64 0
  %43 = insertelement <2 x double> %42, double %i.ix, i64 1
  %44 = insertelement <2 x double> <double f0x3E7AD7F29ABCAF48, double poison>, double %24, i64 1
  %45 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %41, i64 0
  %46 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %43, <2 x double> %44, <2 x double> %45) ; 6 uses
  %47 = extractelement <2 x double> %46, i64 0
  %foldExtExtBinop = fmul <2 x double> %46, %46
  %foldExtExtBinop195 = fmul <2 x double> %46, %foldExtExtBinop
  %48 = extractelement <2 x double> %foldExtExtBinop195, i64 0
  %49 = fdiv double %27, %48
  %50 = tail call double @sqrt(double noundef %49) #7, !tbaa !4
  %51 = insertelement <2 x double> %46, double %50, i64 1
  %52 = shufflevector <2 x double> <double poison, double f0x3F919D6D51A6B69A>, <2 x double> %46, <2 x i32> <i32 3, i32 1>
  %53 = fmul <2 x double> %51, %52                ; 4 uses
  %i.np = tail call double @sin(double noundef %28) #7, !tbaa !4 ; 2 uses
  %54 = tail call double @cos(double noundef %.0.i181) #7, !tbaa !4
  %55 = tail call double @sin(double noundef %.0.i181) #7, !tbaa !4
  %56 = tail call double @sin(double noundef %29) #7, !tbaa !4 ; 3 uses
  %i.nq = tail call double @cos(double noundef %29) #7, !tbaa !4 ; 2 uses
  %57 = fneg double %56
  %i.nr = tail call double @sqrt(double noundef %30) #7, !tbaa !4
  %i.ns = tail call double @cos(double noundef %28) #7, !tbaa !4 ; 2 uses
  %58 = tail call double @sin(double noundef %.0.i) #7, !tbaa !4
  %i.nt = tail call double @cos(double noundef %.0.i) #7, !tbaa !4
  %59 = extractelement <2 x double> %53, i64 0
  %i.nu = fmul double %i.np, %55                  ; 5 uses
  %60 = insertelement <2 x double> <double poison, double -1.000000e+00>, double %56, i64 0
  %i.nv = insertelement <2 x double> poison, double %i.nq, i64 0 ; 2 uses
  %61 = extractelement <2 x double> %53, i64 1    ; 2 uses
  %62 = fmul double %i.ns, 2.000000e+00
  %63 = insertelement <2 x double> poison, double %i.aa, i64 0
  %64 = shufflevector <2 x double> %63, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nw = insertelement <2 x double> poison, double %i.nt, i64 0
  %i.nx = insertelement <2 x double> %i.nw, double %58, i64 1
  %i.ny = insertelement <2 x double> %i.nv, double %56, i64 1
  %65 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %64, <2 x double> %i.nx, <2 x double> %i.ny)
  %66 = fdiv double %47, %i.nr
  %67 = fmul double %i.np, %54                    ; 6 uses
  %68 = fmul double %67, %57
  %69 = tail call double @llvm.fmuladd.f64(double %i.nu, double %i.nq, double %68)
  %70 = insertelement <2 x double> poison, double %69, i64 0
  %i.nz = insertelement <2 x double> %70, double %i.nu, i64 1
  %i.oa = fmul <2 x double> %i.nz, splat (double 2.000000e+00) ; 3 uses
  %i.ob = extractelement <2 x double> %i.oa, i64 1
  %71 = insertelement <2 x double> poison, double %66, i64 0
  %72 = shufflevector <2 x double> %71, <2 x double> poison, <2 x i32> zeroinitializer
  %73 = fmul <2 x double> %72, %65                ; 5 uses
  %i.oc = fmul double %67, %i.ob                  ; 2 uses
  %i.od = extractelement <2 x double> %i.oa, i64 0
  %i.oe = fneg double %i.od                       ; 2 uses
  %i.of = insertelement <2 x double> poison, double %67, i64 0
  %i.og = insertelement <2 x double> %i.of, double %i.nu, i64 1
  %i.oh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oa, <2 x double> %i.og, <2 x double> %60) ; 2 uses
  %foldExtExtBinop.a = fmul <2 x double> %53, %i.oh
  %i.oi = fmul double %i.ns, %i.oe
  %i.oj = fmul double %59, %i.oi
  %74 = extractelement <2 x double> %73, i64 0
  %i.ok = fmul double %i.oc, %74
  %i.ol = insertelement <2 x double> %i.oh, double %i.oe, i64 0
  %i.om = insertelement <2 x double> %73, double %i.nu, i64 0
  %i.on = insertelement <2 x double> %i.nv, double %i.ok, i64 1
  %i.oo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ol, <2 x double> %i.om, <2 x double> %i.on)
  %i.op = fmul <2 x double> %53, %i.oo            ; 2 uses
  %i.oq = extractelement <2 x double> %i.op, i64 0
  store double %i.oq, ptr %2, align 8, !tbaa !8
  %i.or = insertelement <2 x double> poison, double %i.oj, i64 0
  %i.os = shufflevector <2 x double> %i.or, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ot = fmul <2 x double> %i.os, <double f0xBFD9752E50F4B399, double f0x3FED5C0357681EF3>
  %i.ou = shufflevector <2 x double> %foldExtExtBinop.a, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ov = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ou, <2 x double> <double f0x3FED5C0357681EF3, double f0x3FD9752E50F4B399>, <2 x double> %i.ot)
  store <2 x double> %i.ov, ptr %31, align 8, !tbaa !8
  %i.ow = fmul double %67, -2.000000e+00
  %i.ox = tail call double @llvm.fmuladd.f64(double %i.ow, double %67, double 1.000000e+00)
  %75 = shufflevector <2 x double> %73, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %76 = insertelement <2 x double> %75, double %i.oc, i64 0
  %77 = fneg <2 x double> %73
  %78 = shufflevector <2 x double> %77, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %79 = insertelement <2 x double> %78, double %67, i64 1
  %80 = fmul <2 x double> %76, %79
  %81 = insertelement <2 x double> poison, double %i.ox, i64 0
  %82 = insertelement <2 x double> %81, double %i.nu, i64 1
  %83 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %82, <2 x double> %73, <2 x double> %80) ; 2 uses
  %84 = extractelement <2 x double> %83, i64 0
  %i.oy = fmul double %61, %84
  %85 = extractelement <2 x double> %83, i64 1
  %i.oz = fmul double %62, %85
  %i.pa = fmul double %61, %i.oz
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.pc = extractelement <2 x double> %i.op, i64 1
  store double %i.pc, ptr %i.pb, align 8, !tbaa !8
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.pe = insertelement <2 x double> poison, double %i.pa, i64 0
  %i.pf = shufflevector <2 x double> %i.pe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pg = fmul <2 x double> %i.pf, <double f0xBFD9752E50F4B399, double f0x3FED5C0357681EF3>
  %i.ph = insertelement <2 x double> poison, double %i.oy, i64 0
  %i.pi = shufflevector <2 x double> %i.ph, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pi, <2 x double> <double f0x3FED5C0357681EF3, double f0x3FD9752E50F4B399>, <2 x double> %i.pg)
  store <2 x double> %i.pj, ptr %i.pd, align 8, !tbaa !8
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
  %i.a = load double, ptr %0, align 8, !tbaa !8   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !8 ; 2 uses
  %i.d = fmul double %i.c, %i.c
  %i.e = tail call double @llvm.fmuladd.f64(double %i.a, double %i.a, double %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !8 ; 2 uses
  %i.h = tail call double @llvm.fmuladd.f64(double %i.g, double %i.g, double %i.e)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.h) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %sqrt, ptr %i.i, align 8, !tbaa !8
  %i.j = load double, ptr %i.b, align 8, !tbaa !8
  %i.k = load double, ptr %0, align 8, !tbaa !8
  %i.l = tail call double @atan2(double noundef %i.j, double noundef %i.k) #7, !tbaa !4
  %i.m = fmul double %i.l, f0x400E8EC8A4AEACC4    ; 3 uses
  %i.n = fcmp olt double %i.m, 0.000000e+00
  %i.o = fadd double %i.m, 2.400000e+01
  %storemerge = select i1 %i.n, double %i.o, double %i.m
  store double %storemerge, ptr %1, align 8, !tbaa !8
  %i.p = load double, ptr %i.f, align 8, !tbaa !8
  %i.q = fdiv double %i.p, %sqrt
  %i.r = tail call double @asin(double noundef %i.q) #7, !tbaa !4
  %i.s = fmul double %i.r, f0x404CA5DC1A63C1F8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.s, ptr %i.t, align 8, !tbaa !8
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
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !8
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
  store double %i.g, ptr %i.a, align 16, !tbaa !8
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef nonnull %i.b)
  %i.h = load double, ptr %i.b, align 16, !tbaa !8 ; 3 uses
  %i.i = load double, ptr %i.d, align 8, !tbaa !8 ; 3 uses
  %i.j = fmul double %i.i, %i.i
  %i.k = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.j)
  %i.l = load double, ptr %i.e, align 16, !tbaa !8 ; 3 uses
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.k)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.m) ; 2 uses
  %i.n = tail call double @atan2(double noundef %i.i, double noundef %i.h) #7, !tbaa !4
  %i.o = fdiv double %i.l, %sqrt.i
  %i.p = tail call double @asin(double noundef %i.o) #7, !tbaa !4
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull %i.b)
  %i.q = load double, ptr %i.b, align 16, !tbaa !8 ; 3 uses
  %i.r = load double, ptr %i.d, align 8, !tbaa !8 ; 3 uses
  %i.s = fmul double %i.r, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.s)
  %i.u = load double, ptr %i.e, align 16, !tbaa !8 ; 3 uses
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %i.t)
  %sqrt.i.1 = tail call double @llvm.sqrt.f64(double %i.v) ; 2 uses
  %i.w = tail call double @atan2(double noundef %i.r, double noundef %i.q) #7, !tbaa !4
  %i.x = fdiv double %i.u, %sqrt.i.1
  %i.y = tail call double @asin(double noundef %i.x) #7, !tbaa !4
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef nonnull %i.b)
  %i.z = load double, ptr %i.b, align 16, !tbaa !8 ; 3 uses
  %i.aa = load double, ptr %i.d, align 8, !tbaa !8 ; 3 uses
  %i.ab = fmul double %i.aa, %i.aa
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.z, double %i.z, double %i.ab)
  %i.ad = load double, ptr %i.e, align 16, !tbaa !8 ; 3 uses
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ad, double %i.ac)
  %sqrt.i.2 = tail call double @llvm.sqrt.f64(double %i.ae) ; 2 uses
  %i.af = tail call double @atan2(double noundef %i.aa, double noundef %i.z) #7, !tbaa !4
  %i.ag = fdiv double %i.ad, %sqrt.i.2
  %i.ah = tail call double @asin(double noundef %i.ag) #7, !tbaa !4
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef nonnull %i.b)
  %i.ai = load double, ptr %i.b, align 16, !tbaa !8 ; 3 uses
  %i.aj = load double, ptr %i.d, align 8, !tbaa !8 ; 3 uses
  %i.ak = fmul double %i.aj, %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ai, double %i.ak)
  %i.am = load double, ptr %i.e, align 16, !tbaa !8 ; 3 uses
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.am, double %i.al)
  %sqrt.i.3 = tail call double @llvm.sqrt.f64(double %i.an) ; 2 uses
  %i.ao = tail call double @atan2(double noundef %i.aj, double noundef %i.ai) #7, !tbaa !4
  %i.ap = fdiv double %i.am, %sqrt.i.3
  %i.aq = tail call double @asin(double noundef %i.ap) #7, !tbaa !4
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull %i.b)
  %i.ar = load double, ptr %i.b, align 16, !tbaa !8 ; 3 uses
  %i.as = load double, ptr %i.d, align 8, !tbaa !8 ; 3 uses
  %i.at = fmul double %i.as, %i.as
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.ar, double %i.at)
  %i.av = load double, ptr %i.e, align 16, !tbaa !8 ; 3 uses
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double %i.av, double %i.au)
  %sqrt.i.4 = tail call double @llvm.sqrt.f64(double %i.aw) ; 2 uses
  %i.ax = tail call double @atan2(double noundef %i.as, double noundef %i.ar) #7, !tbaa !4
  %i.ay = fdiv double %i.av, %sqrt.i.4
  %i.az = tail call double @asin(double noundef %i.ay) #7, !tbaa !4
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 5, ptr noundef nonnull %i.b)
  %i.ba = load double, ptr %i.b, align 16, !tbaa !8 ; 3 uses
  %i.bb = load double, ptr %i.d, align 8, !tbaa !8 ; 3 uses
  %i.bc = fmul double %i.bb, %i.bb
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ba, double %i.bc)
  %i.be = load double, ptr %i.e, align 16, !tbaa !8 ; 3 uses
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.be, double %i.be, double %i.bd)
  %sqrt.i.5 = tail call double @llvm.sqrt.f64(double %i.bf) ; 2 uses
  %i.bg = tail call double @atan2(double noundef %i.bb, double noundef %i.ba) #7, !tbaa !4
  %i.bh = fdiv double %i.be, %sqrt.i.5
  %i.bi = tail call double @asin(double noundef %i.bh) #7, !tbaa !4
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 6, ptr noundef nonnull %i.b)
  %i.bj = load double, ptr %i.b, align 16, !tbaa !8 ; 3 uses
  %i.bk = load double, ptr %i.d, align 8, !tbaa !8 ; 3 uses
  %i.bl = fmul double %i.bk, %i.bk
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bj, double %i.bl)
  %i.bn = load double, ptr %i.e, align 16, !tbaa !8 ; 3 uses
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bn, double %i.bm)
  %sqrt.i.6 = tail call double @llvm.sqrt.f64(double %i.bo) ; 2 uses
  %i.bp = tail call double @atan2(double noundef %i.bk, double noundef %i.bj) #7, !tbaa !4
  %i.bq = fdiv double %i.bn, %sqrt.i.6
  %i.br = tail call double @asin(double noundef %i.bq) #7, !tbaa !4
  call void @planetpv(ptr noundef nonnull %i.a, i32 noundef 7, ptr noundef nonnull %i.b)
  %i.bs = load double, ptr %i.b, align 16, !tbaa !8 ; 3 uses
  %i.bt = load double, ptr %i.d, align 8, !tbaa !8 ; 3 uses
  %i.bu = fmul double %i.bt, %i.bt
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bs, double %i.bu)
  %i.bw = load double, ptr %i.e, align 16, !tbaa !8 ; 3 uses
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bw, double %i.bv)
  %sqrt.i.7 = tail call double @llvm.sqrt.f64(double %i.bx) ; 2 uses
  %i.by = tail call double @atan2(double noundef %i.bt, double noundef %i.bs) #7, !tbaa !4
  %i.bz = fdiv double %i.bw, %sqrt.i.7
  %i.ca = tail call double @asin(double noundef %i.bz) #7, !tbaa !4
  %i.cb = add nuw nsw i32 %.01724, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cb, 36525
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  %i.cc = add nuw nsw i32 %.11925, 1              ; 2 uses
  %exitcond28.not = icmp eq i32 %i.cc, 20
  br i1 %exitcond28.not, label %.preheader.preheader, label %bb.a, !llvm.loop !12

.preheader.preheader:                             ; preds = %bb.c
  %i.cd = fmul double %i.ca, f0x404CA5DC1A63C1F8
  %i.ce = fmul double %i.by, f0x400E8EC8A4AEACC4  ; 3 uses
  %i.cf = fcmp olt double %i.ce, 0.000000e+00
  %i.cg = fadd double %i.ce, 2.400000e+01
  %storemerge.i.7 = select i1 %i.cf, double %i.cg, double %i.ce
  %i.ch = fmul double %i.br, f0x404CA5DC1A63C1F8
  %i.ci = fmul double %i.bp, f0x400E8EC8A4AEACC4  ; 3 uses
  %i.cj = fcmp olt double %i.ci, 0.000000e+00
  %i.ck = fadd double %i.ci, 2.400000e+01
  %storemerge.i.6 = select i1 %i.cj, double %i.ck, double %i.ci
  %i.cl = fmul double %i.bi, f0x404CA5DC1A63C1F8
  %i.cm = fmul double %i.bg, f0x400E8EC8A4AEACC4  ; 3 uses
  %i.cn = fcmp olt double %i.cm, 0.000000e+00
  %i.co = fadd double %i.cm, 2.400000e+01
  %storemerge.i.5 = select i1 %i.cn, double %i.co, double %i.cm
  %i.cp = fmul double %i.az, f0x404CA5DC1A63C1F8
  %i.cq = fmul double %i.ax, f0x400E8EC8A4AEACC4  ; 3 uses
  %i.cr = fcmp olt double %i.cq, 0.000000e+00
  %i.cs = fadd double %i.cq, 2.400000e+01
  %storemerge.i.4 = select i1 %i.cr, double %i.cs, double %i.cq
  %i.ct = fmul double %i.aq, f0x404CA5DC1A63C1F8
  %i.cu = fmul double %i.ao, f0x400E8EC8A4AEACC4  ; 3 uses
  %i.cv = fcmp olt double %i.cu, 0.000000e+00
  %i.cw = fadd double %i.cu, 2.400000e+01
  %storemerge.i.3 = select i1 %i.cv, double %i.cw, double %i.cu
end_hunk_0
