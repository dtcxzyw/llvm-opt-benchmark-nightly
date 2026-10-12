Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx512?download=true
inline.NumInlined: 20
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZN4ncnn24Deconvolution_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.fso = mul i64 %i.fit, %i.fsn
  %scevgep4006 = getelementptr i8, ptr %scevgep4005, i64 %i.fso
  %i.fsp = add i64 %i.fjn, %i.fsf
  %i.fsq = mul i64 %i.fit, %i.fsp
  %scevgep4007 = getelementptr i8, ptr %i.fis, i64 %i.fsq
  %scevgep4008 = getelementptr i8, ptr %i.fis, i64 %i.csv
  %i.fsr = add i64 %i.fjn, %i.fsi
  %i.fss = mul i64 %i.fit, %i.fsr
  %scevgep4009 = getelementptr i8, ptr %scevgep4008, i64 %i.fss
  %i.fst = add i64 %i.fjs, %i.fsf
  %i.fsu = mul i64 %i.fit, %i.fst
  %scevgep4010 = getelementptr i8, ptr %i.fis, i64 %i.fsu
  %scevgep4011 = getelementptr i8, ptr %i.fis, i64 %i.csv
  %i.fsv = add i64 %i.fjs, %i.fsi
  %i.fsw = mul i64 %i.fit, %i.fsv
  %scevgep4012 = getelementptr i8, ptr %scevgep4011, i64 %i.fsw
  %i.fsx = add i64 %i.fiz, %i.fiu
  %i.fsy = mul i64 %i.fit, %i.fsx
  %scevgep4013 = getelementptr i8, ptr %i.fis, i64 %i.fsy
  %scevgep4014 = getelementptr i8, ptr %i.fis, i64 %i.csv
  %i.fsz = mul i64 %i.ctp, %i.fiu                 ; 4 uses
  %i.fta = add i64 %i.fiz, %i.fsz
  %i.ftb = mul i64 %i.fit, %i.fta
  %scevgep4015 = getelementptr i8, ptr %scevgep4014, i64 %i.ftb
  %i.ftc = add i64 %i.fji, %i.fiu
  %i.ftd = mul i64 %i.fit, %i.ftc
  %scevgep4016 = getelementptr i8, ptr %i.fis, i64 %i.ftd
  %scevgep4017 = getelementptr i8, ptr %i.fis, i64 %i.csv
  %i.fte = add i64 %i.fji, %i.fsz
  %i.ftf = mul i64 %i.fit, %i.fte
  %scevgep4018 = getelementptr i8, ptr %scevgep4017, i64 %i.ftf
  %i.ftg = add i64 %i.fjn, %i.fiu
  %i.fth = mul i64 %i.fit, %i.ftg
  %scevgep4019 = getelementptr i8, ptr %i.fis, i64 %i.fth
  %scevgep4020 = getelementptr i8, ptr %i.fis, i64 %i.csv
  %i.fti = add i64 %i.fjn, %i.fsz
  %i.ftj = mul i64 %i.fit, %i.fti
  %scevgep4021 = getelementptr i8, ptr %scevgep4020, i64 %i.ftj
  %i.ftk = add i64 %i.fjs, %i.fiu
  %i.ftl = mul i64 %i.fit, %i.ftk
  %scevgep4022 = getelementptr i8, ptr %i.fis, i64 %i.ftl
  %scevgep4023 = getelementptr i8, ptr %i.fis, i64 %i.csv
  %i.ftm = add i64 %i.fjs, %i.fsz
  %i.ftn = mul i64 %i.fit, %i.ftm
  %scevgep4024 = getelementptr i8, ptr %scevgep4023, i64 %i.ftn
  %i.fto = mul i64 %i.fiv, %i.fit
  %i.ftp = mul i64 %i.fto, %i.fhu
  %scevgep4025 = getelementptr i8, ptr %i.fis, i64 %i.ftp
  %scevgep4026 = getelementptr i8, ptr %i.fis, i64 %i.csv
  %i.ftq = mul i64 %i.ctq, %i.fiu                 ; 4 uses
  %i.ftr = add i64 %i.ftq, %i.fiz
  %i.fts = mul i64 %i.fit, %i.ftr
  %scevgep4027 = getelementptr i8, ptr %scevgep4026, i64 %i.fts
  %i.ftt = mul i64 %i.fiv, %i.fit
  %i.ftu = mul i64 %i.ftt, %i.fhv
  %scevgep4028 = getelementptr i8, ptr %i.fis, i64 %i.ftu
  %scevgep4029 = getelementptr i8, ptr %i.fis, i64 %i.csv
  %i.ftv = add i64 %i.ftq, %i.fji
  %i.ftw = mul i64 %i.fit, %i.ftv
  %scevgep4030 = getelementptr i8, ptr %scevgep4029, i64 %i.ftw
  %i.ftx = mul i64 %i.fiv, %i.fit
  %i.fty = mul i64 %i.ftx, %i.fhw
  %scevgep4031 = getelementptr i8, ptr %i.fis, i64 %i.fty
  %scevgep4032 = getelementptr i8, ptr %i.fis, i64 %i.csv ; 2 uses
  %i.ftz = add i64 %i.ftq, %i.fjn
  %i.fua = mul i64 %i.fit, %i.ftz
  %scevgep4033 = getelementptr i8, ptr %scevgep4032, i64 %i.fua
  %scevgep4034 = getelementptr i8, ptr %i.fis, i64 %.reass2041.us.i
  %i.fub = add i64 %i.ftq, %i.fjs
  %i.fuc = mul i64 %i.fit, %i.fub
  %scevgep4035 = getelementptr i8, ptr %scevgep4032, i64 %i.fuc
  %i.fud = insertelement <64 x ptr> poison, ptr %scevgep3850, i64 0
  %i.fue = insertelement <64 x ptr> %i.fud, ptr %scevgep3847, i64 1
  %i.fuf = insertelement <64 x ptr> %i.fue, ptr %scevgep3853, i64 2
  %i.fug = insertelement <64 x ptr> %i.fuf, ptr %scevgep3856, i64 3
  %i.fuh = insertelement <64 x ptr> %i.fug, ptr %scevgep3859, i64 4
  %i.fui = insertelement <64 x ptr> %i.fuh, ptr %scevgep3862, i64 5
  %i.fuj = insertelement <64 x ptr> %i.fui, ptr %scevgep3865, i64 6
  %i.fuk = insertelement <64 x ptr> %i.fuj, ptr %scevgep3868, i64 7
  %i.ful = insertelement <64 x ptr> %i.fuk, ptr %scevgep3871, i64 8
  %i.fum = insertelement <64 x ptr> %i.ful, ptr %scevgep3874, i64 9
  %i.fun = insertelement <64 x ptr> %i.fum, ptr %scevgep3877, i64 10
  %i.fuo = insertelement <64 x ptr> %i.fun, ptr %scevgep3880, i64 11
  %i.fup = insertelement <64 x ptr> %i.fuo, ptr %scevgep3883, i64 12
  %i.fuq = insertelement <64 x ptr> %i.fup, ptr %scevgep3886, i64 13
  %i.fur = insertelement <64 x ptr> %i.fuq, ptr %scevgep3889, i64 14
  %i.fus = insertelement <64 x ptr> %i.fur, ptr %scevgep3892, i64 15
  %i.fut = insertelement <64 x ptr> %i.fus, ptr %scevgep3895, i64 16
  %i.fuu = insertelement <64 x ptr> %i.fut, ptr %scevgep3898, i64 17
  %i.fuv = insertelement <64 x ptr> %i.fuu, ptr %scevgep3901, i64 18
  %i.fuw = insertelement <64 x ptr> %i.fuv, ptr %scevgep3904, i64 19
  %i.fux = insertelement <64 x ptr> %i.fuw, ptr %scevgep3907, i64 20
  %i.fuy = insertelement <64 x ptr> %i.fux, ptr %scevgep3910, i64 21
  %i.fuz = insertelement <64 x ptr> %i.fuy, ptr %scevgep3913, i64 22
  %i.fva = insertelement <64 x ptr> %i.fuz, ptr %scevgep3916, i64 23
  %i.fvb = insertelement <64 x ptr> %i.fva, ptr %scevgep3919, i64 24
  %i.fvc = insertelement <64 x ptr> %i.fvb, ptr %scevgep3922, i64 25
  %i.fvd = insertelement <64 x ptr> %i.fvc, ptr %scevgep3925, i64 26
  %i.fve = insertelement <64 x ptr> %i.fvd, ptr %scevgep3928, i64 27
  %i.fvf = insertelement <64 x ptr> %i.fve, ptr %scevgep3931, i64 28
  %i.fvg = insertelement <64 x ptr> %i.fvf, ptr %scevgep3934, i64 29
  %i.fvh = insertelement <64 x ptr> %i.fvg, ptr %scevgep3937, i64 30
  %i.fvi = insertelement <64 x ptr> %i.fvh, ptr %scevgep3940, i64 31
  %i.fvj = insertelement <64 x ptr> %i.fvi, ptr %scevgep3943, i64 32
  %i.fvk = insertelement <64 x ptr> %i.fvj, ptr %scevgep3946, i64 33
  %i.fvl = insertelement <64 x ptr> %i.fvk, ptr %scevgep3949, i64 34
  %i.fvm = insertelement <64 x ptr> %i.fvl, ptr %scevgep3952, i64 35
  %i.fvn = insertelement <64 x ptr> %i.fvm, ptr %scevgep3955, i64 36
  %i.fvo = insertelement <64 x ptr> %i.fvn, ptr %scevgep3958, i64 37
  %i.fvp = insertelement <64 x ptr> %i.fvo, ptr %scevgep3961, i64 38
  %i.fvq = insertelement <64 x ptr> %i.fvp, ptr %scevgep3964, i64 39
  %i.fvr = insertelement <64 x ptr> %i.fvq, ptr %scevgep3967, i64 40
  %i.fvs = insertelement <64 x ptr> %i.fvr, ptr %scevgep3970, i64 41
  %i.fvt = insertelement <64 x ptr> %i.fvs, ptr %scevgep3973, i64 42
  %i.fvu = insertelement <64 x ptr> %i.fvt, ptr %scevgep3976, i64 43
  %i.fvv = insertelement <64 x ptr> %i.fvu, ptr %scevgep3979, i64 44
  %i.fvw = insertelement <64 x ptr> %i.fvv, ptr %scevgep3982, i64 45
  %i.fvx = insertelement <64 x ptr> %i.fvw, ptr %scevgep3985, i64 46
  %i.fvy = insertelement <64 x ptr> %i.fvx, ptr %scevgep3988, i64 47
  %i.fvz = insertelement <64 x ptr> %i.fvy, ptr %scevgep3991, i64 48
  %i.fwa = insertelement <64 x ptr> %i.fvz, ptr %scevgep3994, i64 49
  %i.fwb = insertelement <64 x ptr> %i.fwa, ptr %scevgep3997, i64 50
  %i.fwc = insertelement <64 x ptr> %i.fwb, ptr %scevgep4000, i64 51
  %i.fwd = insertelement <64 x ptr> %i.fwc, ptr %scevgep4003, i64 52
  %i.fwe = insertelement <64 x ptr> %i.fwd, ptr %scevgep4006, i64 53
  %i.fwf = insertelement <64 x ptr> %i.fwe, ptr %scevgep4009, i64 54
  %i.fwg = insertelement <64 x ptr> %i.fwf, ptr %scevgep4012, i64 55
  %i.fwh = insertelement <64 x ptr> %i.fwg, ptr %scevgep4015, i64 56
  %i.fwi = insertelement <64 x ptr> %i.fwh, ptr %scevgep4018, i64 57
  %i.fwj = insertelement <64 x ptr> %i.fwi, ptr %scevgep4021, i64 58
  %i.fwk = insertelement <64 x ptr> %i.fwj, ptr %scevgep4024, i64 59
  %i.fwl = insertelement <64 x ptr> %i.fwk, ptr %scevgep4027, i64 60
  %i.fwm = insertelement <64 x ptr> %i.fwl, ptr %scevgep4030, i64 61
  %i.fwn = insertelement <64 x ptr> %i.fwm, ptr %scevgep4033, i64 62
  %i.fwo = insertelement <64 x ptr> %i.fwn, ptr %scevgep4035, i64 63
  %i.fwp = insertelement <64 x ptr> poison, ptr %scevgep3848, i64 0
  %i.fwq = insertelement <64 x ptr> %i.fwp, ptr %scevgep3845, i64 1
  %i.fwr = insertelement <64 x ptr> %i.fwq, ptr %scevgep3851, i64 2
  %i.fws = insertelement <64 x ptr> %i.fwr, ptr %scevgep3854, i64 3
  %i.fwt = insertelement <64 x ptr> %i.fws, ptr %scevgep3857, i64 4
  %i.fwu = insertelement <64 x ptr> %i.fwt, ptr %scevgep3860, i64 5
  %i.fwv = insertelement <64 x ptr> %i.fwu, ptr %scevgep3863, i64 6
  %i.fww = insertelement <64 x ptr> %i.fwv, ptr %scevgep3866, i64 7
  %i.fwx = insertelement <64 x ptr> %i.fww, ptr %scevgep3869, i64 8
  %i.fwy = insertelement <64 x ptr> %i.fwx, ptr %scevgep3872, i64 9
  %i.fwz = insertelement <64 x ptr> %i.fwy, ptr %scevgep3875, i64 10
  %i.fxa = insertelement <64 x ptr> %i.fwz, ptr %scevgep3878, i64 11
  %i.fxb = insertelement <64 x ptr> %i.fxa, ptr %scevgep3881, i64 12
  %i.fxc = insertelement <64 x ptr> %i.fxb, ptr %scevgep3884, i64 13
  %i.fxd = insertelement <64 x ptr> %i.fxc, ptr %scevgep3887, i64 14
  %i.fxe = insertelement <64 x ptr> %i.fxd, ptr %scevgep3890, i64 15
  %i.fxf = insertelement <64 x ptr> %i.fxe, ptr %scevgep3893, i64 16
  %i.fxg = insertelement <64 x ptr> %i.fxf, ptr %scevgep3896, i64 17
  %i.fxh = insertelement <64 x ptr> %i.fxg, ptr %scevgep3899, i64 18
  %i.fxi = insertelement <64 x ptr> %i.fxh, ptr %scevgep3902, i64 19
  %i.fxj = insertelement <64 x ptr> %i.fxi, ptr %scevgep3905, i64 20
  %i.fxk = insertelement <64 x ptr> %i.fxj, ptr %scevgep3908, i64 21
  %i.fxl = insertelement <64 x ptr> %i.fxk, ptr %scevgep3911, i64 22
  %i.fxm = insertelement <64 x ptr> %i.fxl, ptr %scevgep3914, i64 23
  %i.fxn = insertelement <64 x ptr> %i.fxm, ptr %scevgep3917, i64 24
  %i.fxo = insertelement <64 x ptr> %i.fxn, ptr %scevgep3920, i64 25
  %i.fxp = insertelement <64 x ptr> %i.fxo, ptr %scevgep3923, i64 26
  %i.fxq = insertelement <64 x ptr> %i.fxp, ptr %scevgep3926, i64 27
  %i.fxr = insertelement <64 x ptr> %i.fxq, ptr %scevgep3929, i64 28
  %i.fxs = insertelement <64 x ptr> %i.fxr, ptr %scevgep3932, i64 29
  %i.fxt = insertelement <64 x ptr> %i.fxs, ptr %scevgep3935, i64 30
  %i.fxu = insertelement <64 x ptr> %i.fxt, ptr %scevgep3938, i64 31
  %i.fxv = insertelement <64 x ptr> %i.fxu, ptr %scevgep3941, i64 32
  %i.fxw = insertelement <64 x ptr> %i.fxv, ptr %scevgep3944, i64 33
  %i.fxx = insertelement <64 x ptr> %i.fxw, ptr %scevgep3947, i64 34
  %i.fxy = insertelement <64 x ptr> %i.fxx, ptr %scevgep3950, i64 35
  %i.fxz = insertelement <64 x ptr> %i.fxy, ptr %scevgep3953, i64 36
  %i.fya = insertelement <64 x ptr> %i.fxz, ptr %scevgep3956, i64 37
  %i.fyb = insertelement <64 x ptr> %i.fya, ptr %scevgep3959, i64 38
  %i.fyc = insertelement <64 x ptr> %i.fyb, ptr %scevgep3962, i64 39
  %i.fyd = insertelement <64 x ptr> %i.fyc, ptr %scevgep3965, i64 40
  %i.fye = insertelement <64 x ptr> %i.fyd, ptr %scevgep3968, i64 41
  %i.fyf = insertelement <64 x ptr> %i.fye, ptr %scevgep3971, i64 42
  %i.fyg = insertelement <64 x ptr> %i.fyf, ptr %scevgep3974, i64 43
  %i.fyh = insertelement <64 x ptr> %i.fyg, ptr %scevgep3977, i64 44
  %i.fyi = insertelement <64 x ptr> %i.fyh, ptr %scevgep3980, i64 45
  %i.fyj = insertelement <64 x ptr> %i.fyi, ptr %scevgep3983, i64 46
  %i.fyk = insertelement <64 x ptr> %i.fyj, ptr %scevgep3986, i64 47
  %i.fyl = insertelement <64 x ptr> %i.fyk, ptr %scevgep3989, i64 48
  %i.fym = insertelement <64 x ptr> %i.fyl, ptr %scevgep3992, i64 49
  %i.fyn = insertelement <64 x ptr> %i.fym, ptr %scevgep3995, i64 50
  %i.fyo = insertelement <64 x ptr> %i.fyn, ptr %scevgep3998, i64 51
  %i.fyp = insertelement <64 x ptr> %i.fyo, ptr %scevgep4001, i64 52
  %i.fyq = insertelement <64 x ptr> %i.fyp, ptr %scevgep4004, i64 53
  %i.fyr = insertelement <64 x ptr> %i.fyq, ptr %scevgep4007, i64 54
  %i.fys = insertelement <64 x ptr> %i.fyr, ptr %scevgep4010, i64 55
  %i.fyt = insertelement <64 x ptr> %i.fys, ptr %scevgep4013, i64 56
  %i.fyu = insertelement <64 x ptr> %i.fyt, ptr %scevgep4016, i64 57
  %i.fyv = insertelement <64 x ptr> %i.fyu, ptr %scevgep4019, i64 58
  %i.fyw = insertelement <64 x ptr> %i.fyv, ptr %scevgep4022, i64 59
  %i.fyx = insertelement <64 x ptr> %i.fyw, ptr %scevgep4025, i64 60
  %i.fyy = insertelement <64 x ptr> %i.fyx, ptr %scevgep4028, i64 61
  %i.fyz = insertelement <64 x ptr> %i.fyy, ptr %scevgep4031, i64 62
  %i.fza = insertelement <64 x ptr> %i.fyz, ptr %scevgep4034, i64 63
  %i.fzb = insertelement <8 x i64> poison, i64 %i.fjh, i64 0
  %15 = icmp slt <8 x i64> %i.fzb, zeroinitializer
  %16 = shufflevector <8 x i1> %15, <8 x i1> poison, <64 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %iter.check4497

iter.check4497:                                   ; preds = %._crit_edge2054.us.i, %.preheader1775.us.preheader.i
  %indvars.iv2625.i = phi i64 [ 0, %.preheader1775.us.preheader.i ], [ %indvars.iv.next2626.i, %._crit_edge2054.us.i ] ; 17 uses
  %.07692056.us.i = phi ptr [ %i.fiq, %.preheader1775.us.preheader.i ], [ %.lcssa423, %._crit_edge2054.us.i ] ; 8 uses
  %.reass2048.us.i = mul i64 %indvars.iv2625.i, %factor.op.mul2047.i ; 3 uses
  %i.fzc = or disjoint i64 %indvars.iv2625.i, 1
  %.reass2048.us.1.i = mul i64 %i.fzc, %factor.op.mul2047.i ; 3 uses
  %i.fzd = or disjoint i64 %indvars.iv2625.i, 2
  %.reass2048.us.2.i = mul i64 %i.fzd, %factor.op.mul2047.i ; 3 uses
  %i.fze = or disjoint i64 %indvars.iv2625.i, 3
  %.reass2048.us.3.i = mul i64 %i.fze, %factor.op.mul2047.i ; 3 uses
  %i.fzf = or disjoint i64 %indvars.iv2625.i, 4
  %.reass2048.us.4.i = mul i64 %i.fzf, %factor.op.mul2047.i ; 3 uses
  %i.fzg = or disjoint i64 %indvars.iv2625.i, 5
  %.reass2048.us.5.i = mul i64 %i.fzg, %factor.op.mul2047.i ; 3 uses
  %i.fzh = or disjoint i64 %indvars.iv2625.i, 6
  %.reass2048.us.6.i = mul i64 %i.fzh, %factor.op.mul2047.i ; 3 uses
  %i.fzi = or disjoint i64 %indvars.iv2625.i, 7
  %.reass2048.us.7.i = mul i64 %i.fzi, %factor.op.mul2047.i ; 3 uses
  %i.fzj = or disjoint i64 %indvars.iv2625.i, 8
  %.reass2048.us.8.i = mul i64 %i.fzj, %factor.op.mul2047.i ; 3 uses
  %i.fzk = or disjoint i64 %indvars.iv2625.i, 9
  %.reass2048.us.9.i = mul i64 %i.fzk, %factor.op.mul2047.i ; 3 uses
  %i.fzl = or disjoint i64 %indvars.iv2625.i, 10
  %.reass2048.us.10.i = mul i64 %i.fzl, %factor.op.mul2047.i ; 3 uses
  %i.fzm = or disjoint i64 %indvars.iv2625.i, 11
  %.reass2048.us.11.i = mul i64 %i.fzm, %factor.op.mul2047.i ; 3 uses
  %i.fzn = or disjoint i64 %indvars.iv2625.i, 12
  %.reass2048.us.12.i = mul i64 %i.fzn, %factor.op.mul2047.i ; 3 uses
  %i.fzo = or disjoint i64 %indvars.iv2625.i, 13
  %.reass2048.us.13.i = mul i64 %i.fzo, %factor.op.mul2047.i ; 3 uses
  %i.fzp = or disjoint i64 %indvars.iv2625.i, 14
  %.reass2048.us.14.i = mul i64 %i.fzp, %factor.op.mul2047.i ; 3 uses
  %i.fzq = or disjoint i64 %indvars.iv2625.i, 15
  %.reass2048.us.15.i = mul i64 %i.fzq, %factor.op.mul2047.i ; 3 uses
  br i1 %min.iters.check4355, label %.preheader1770.us.i.preheader, label %vector.memcheck3843

vector.memcheck3843:                              ; preds = %iter.check4497
  %scevgep3844 = getelementptr i8, ptr %.07692056.us.i, i64 %i.csw
  %i.fzr = insertelement <64 x ptr> poison, ptr %.07692056.us.i, i64 0
  %i.fzs = shufflevector <64 x ptr> %i.fzr, <64 x ptr> poison, <64 x i32> zeroinitializer
  %i.fzt = icmp ult <64 x ptr> %i.fzs, %i.fwo
  %i.fzu = insertelement <64 x ptr> poison, ptr %scevgep3844, i64 0
  %i.fzv = shufflevector <64 x ptr> %i.fzu, <64 x ptr> poison, <64 x i32> zeroinitializer
  %i.fzw = icmp ult <64 x ptr> %i.fza, %i.fzv
  %i.fzx = and <64 x i1> %i.fzt, %i.fzw           ; 2 uses
  %i.fzy = or <64 x i1> %i.fzx, %16
  %i.fzz = shufflevector <64 x i1> %i.fzy, <64 x i1> %i.fzx, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %i.gaa = bitcast <64 x i1> %i.fzz to i64
  %.not5987 = icmp eq i64 %i.gaa, 0
  br i1 %.not5987, label %vector.main.loop.iter.check4356, label %.preheader1770.us.i.preheader

vector.main.loop.iter.check4356:                  ; preds = %vector.memcheck3843
  br i1 %min.iters.check4357, label %vec.epilog.ph4501, label %vector.ph4358

vector.ph4358:                                    ; preds = %vector.main.loop.iter.check4356
  %i.gab = getelementptr i8, ptr %.07692056.us.i, i64 %i.cts ; 3 uses
  br label %vector.body4360

vector.body4360:                                  ; preds = %vector.ph4358, %vector.body4360
  %index4361 = phi i64 [ 0, %vector.ph4358 ], [ %index.next4491, %vector.body4360 ] ; 2 uses
  %pointer.phi4362 = phi ptr [ %.07692056.us.i, %vector.ph4358 ], [ %ptr.ind4492, %vector.body4360 ] ; 2 uses
  %vector.gep4363 = getelementptr i8, ptr %pointer.phi4362, <16 x i64> <i64 0, i64 256, i64 512, i64 768, i64 1024, i64 1280, i64 1536, i64 1792, i64 2048, i64 2304, i64 2560, i64 2816, i64 3072, i64 3328, i64 3584, i64 3840> ; 64 uses
  %i.gac = getelementptr [4 x i8], ptr %i.fis, i64 %index4361 ; 16 uses
  %i.gad = getelementptr i8, ptr %i.gac, i64 %.reass2048.us.i ; 4 uses
  %i.gae = getelementptr i8, ptr %i.gad, i64 %.reass2041.us.i
  %wide.load4364 = load <16 x float>, ptr %i.gae, align 4, !tbaa !39, !alias.scope !973
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4364, <16 x ptr> align 4 %vector.gep4363, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4365 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 4
  %i.gaf = getelementptr i8, ptr %i.gad, i64 %.reass2041.us.1.i
  %wide.load4366 = load <16 x float>, ptr %i.gaf, align 4, !tbaa !39, !alias.scope !976
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4366, <16 x ptr> align 4 %wide.gep4365, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4367 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 8
  %i.gag = getelementptr i8, ptr %i.gad, i64 %.reass2041.us.2.i
  %wide.load4368 = load <16 x float>, ptr %i.gag, align 4, !tbaa !39, !alias.scope !977
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4368, <16 x ptr> align 4 %wide.gep4367, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4369 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 12
  %i.gah = getelementptr i8, ptr %i.gad, i64 %.reass2041.us.3.i
  %wide.load4370 = load <16 x float>, ptr %i.gah, align 4, !tbaa !39, !alias.scope !978
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4370, <16 x ptr> align 4 %wide.gep4369, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4371 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 16
  %i.gai = getelementptr i8, ptr %i.gac, i64 %.reass2048.us.1.i ; 4 uses
  %i.gaj = getelementptr i8, ptr %i.gai, i64 %.reass2041.us.i
  %wide.load4372 = load <16 x float>, ptr %i.gaj, align 4, !tbaa !39, !alias.scope !979
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4372, <16 x ptr> align 4 %wide.gep4371, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4373 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 20
  %i.gak = getelementptr i8, ptr %i.gai, i64 %.reass2041.us.1.i
  %wide.load4374 = load <16 x float>, ptr %i.gak, align 4, !tbaa !39, !alias.scope !980
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4374, <16 x ptr> align 4 %wide.gep4373, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4375 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 24
  %i.gal = getelementptr i8, ptr %i.gai, i64 %.reass2041.us.2.i
  %wide.load4376 = load <16 x float>, ptr %i.gal, align 4, !tbaa !39, !alias.scope !981
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4376, <16 x ptr> align 4 %wide.gep4375, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4377 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 28
  %i.gam = getelementptr i8, ptr %i.gai, i64 %.reass2041.us.3.i
  %wide.load4378 = load <16 x float>, ptr %i.gam, align 4, !tbaa !39, !alias.scope !982
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4378, <16 x ptr> align 4 %wide.gep4377, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4379 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 32
  %i.gan = getelementptr i8, ptr %i.gac, i64 %.reass2048.us.2.i ; 4 uses
  %i.gao = getelementptr i8, ptr %i.gan, i64 %.reass2041.us.i
  %wide.load4380 = load <16 x float>, ptr %i.gao, align 4, !tbaa !39, !alias.scope !983
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4380, <16 x ptr> align 4 %wide.gep4379, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4381 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 36
  %i.gap = getelementptr i8, ptr %i.gan, i64 %.reass2041.us.1.i
  %wide.load4382 = load <16 x float>, ptr %i.gap, align 4, !tbaa !39, !alias.scope !984
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4382, <16 x ptr> align 4 %wide.gep4381, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4383 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 40
  %i.gaq = getelementptr i8, ptr %i.gan, i64 %.reass2041.us.2.i
  %wide.load4384 = load <16 x float>, ptr %i.gaq, align 4, !tbaa !39, !alias.scope !985
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4384, <16 x ptr> align 4 %wide.gep4383, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4385 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 44
  %i.gar = getelementptr i8, ptr %i.gan, i64 %.reass2041.us.3.i
  %wide.load4386 = load <16 x float>, ptr %i.gar, align 4, !tbaa !39, !alias.scope !986
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4386, <16 x ptr> align 4 %wide.gep4385, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4387 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 48
  %i.gas = getelementptr i8, ptr %i.gac, i64 %.reass2048.us.3.i ; 4 uses
  %i.gat = getelementptr i8, ptr %i.gas, i64 %.reass2041.us.i
  %wide.load4388 = load <16 x float>, ptr %i.gat, align 4, !tbaa !39, !alias.scope !987
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4388, <16 x ptr> align 4 %wide.gep4387, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4389 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 52
  %i.gau = getelementptr i8, ptr %i.gas, i64 %.reass2041.us.1.i
  %wide.load4390 = load <16 x float>, ptr %i.gau, align 4, !tbaa !39, !alias.scope !988
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4390, <16 x ptr> align 4 %wide.gep4389, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4391 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 56
  %i.gav = getelementptr i8, ptr %i.gas, i64 %.reass2041.us.2.i
  %wide.load4392 = load <16 x float>, ptr %i.gav, align 4, !tbaa !39, !alias.scope !989
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4392, <16 x ptr> align 4 %wide.gep4391, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4393 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 60
  %i.gaw = getelementptr i8, ptr %i.gas, i64 %.reass2041.us.3.i
  %wide.load4394 = load <16 x float>, ptr %i.gaw, align 4, !tbaa !39, !alias.scope !990
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4394, <16 x ptr> align 4 %wide.gep4393, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4395 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 64
  %i.gax = getelementptr i8, ptr %i.gac, i64 %.reass2048.us.4.i ; 4 uses
  %i.gay = getelementptr i8, ptr %i.gax, i64 %.reass2041.us.i
  %wide.load4396 = load <16 x float>, ptr %i.gay, align 4, !tbaa !39, !alias.scope !991
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4396, <16 x ptr> align 4 %wide.gep4395, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4397 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 68
  %i.gaz = getelementptr i8, ptr %i.gax, i64 %.reass2041.us.1.i
  %wide.load4398 = load <16 x float>, ptr %i.gaz, align 4, !tbaa !39, !alias.scope !992
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4398, <16 x ptr> align 4 %wide.gep4397, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4399 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 72
  %i.gba = getelementptr i8, ptr %i.gax, i64 %.reass2041.us.2.i
  %wide.load4400 = load <16 x float>, ptr %i.gba, align 4, !tbaa !39, !alias.scope !993
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4400, <16 x ptr> align 4 %wide.gep4399, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4401 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 76
  %i.gbb = getelementptr i8, ptr %i.gax, i64 %.reass2041.us.3.i
  %wide.load4402 = load <16 x float>, ptr %i.gbb, align 4, !tbaa !39, !alias.scope !994
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4402, <16 x ptr> align 4 %wide.gep4401, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4403 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 80
  %i.gbc = getelementptr i8, ptr %i.gac, i64 %.reass2048.us.5.i ; 4 uses
  %i.gbd = getelementptr i8, ptr %i.gbc, i64 %.reass2041.us.i
  %wide.load4404 = load <16 x float>, ptr %i.gbd, align 4, !tbaa !39, !alias.scope !995
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4404, <16 x ptr> align 4 %wide.gep4403, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4405 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 84
  %i.gbe = getelementptr i8, ptr %i.gbc, i64 %.reass2041.us.1.i
  %wide.load4406 = load <16 x float>, ptr %i.gbe, align 4, !tbaa !39, !alias.scope !996
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4406, <16 x ptr> align 4 %wide.gep4405, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4407 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 88
  %i.gbf = getelementptr i8, ptr %i.gbc, i64 %.reass2041.us.2.i
  %wide.load4408 = load <16 x float>, ptr %i.gbf, align 4, !tbaa !39, !alias.scope !997
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4408, <16 x ptr> align 4 %wide.gep4407, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4409 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 92
  %i.gbg = getelementptr i8, ptr %i.gbc, i64 %.reass2041.us.3.i
  %wide.load4410 = load <16 x float>, ptr %i.gbg, align 4, !tbaa !39, !alias.scope !998
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4410, <16 x ptr> align 4 %wide.gep4409, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4411 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 96
  %i.gbh = getelementptr i8, ptr %i.gac, i64 %.reass2048.us.6.i ; 4 uses
  %i.gbi = getelementptr i8, ptr %i.gbh, i64 %.reass2041.us.i
  %wide.load4412 = load <16 x float>, ptr %i.gbi, align 4, !tbaa !39, !alias.scope !999
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4412, <16 x ptr> align 4 %wide.gep4411, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4413 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 100
  %i.gbj = getelementptr i8, ptr %i.gbh, i64 %.reass2041.us.1.i
  %wide.load4414 = load <16 x float>, ptr %i.gbj, align 4, !tbaa !39, !alias.scope !1000
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4414, <16 x ptr> align 4 %wide.gep4413, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4415 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 104
  %i.gbk = getelementptr i8, ptr %i.gbh, i64 %.reass2041.us.2.i
  %wide.load4416 = load <16 x float>, ptr %i.gbk, align 4, !tbaa !39, !alias.scope !1001
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4416, <16 x ptr> align 4 %wide.gep4415, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4417 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 108
  %i.gbl = getelementptr i8, ptr %i.gbh, i64 %.reass2041.us.3.i
  %wide.load4418 = load <16 x float>, ptr %i.gbl, align 4, !tbaa !39, !alias.scope !1002
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4418, <16 x ptr> align 4 %wide.gep4417, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4419 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 112
  %i.gbm = getelementptr i8, ptr %i.gac, i64 %.reass2048.us.7.i ; 4 uses
  %i.gbn = getelementptr i8, ptr %i.gbm, i64 %.reass2041.us.i
  %wide.load4420 = load <16 x float>, ptr %i.gbn, align 4, !tbaa !39, !alias.scope !1003
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4420, <16 x ptr> align 4 %wide.gep4419, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4421 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 116
  %i.gbo = getelementptr i8, ptr %i.gbm, i64 %.reass2041.us.1.i
  %wide.load4422 = load <16 x float>, ptr %i.gbo, align 4, !tbaa !39, !alias.scope !1004
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4422, <16 x ptr> align 4 %wide.gep4421, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4423 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 120
  %i.gbp = getelementptr i8, ptr %i.gbm, i64 %.reass2041.us.2.i
  %wide.load4424 = load <16 x float>, ptr %i.gbp, align 4, !tbaa !39, !alias.scope !1005
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4424, <16 x ptr> align 4 %wide.gep4423, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
  %wide.gep4425 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep4363, i64 124
  %i.gbq = getelementptr i8, ptr %i.gbm, i64 %.reass2041.us.3.i
  %wide.load4426 = load <16 x float>, ptr %i.gbq, align 4, !tbaa !39, !alias.scope !1006
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load4426, <16 x ptr> align 4 %wide.gep4425, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !974, !noalias !975
end_hunk_0
begin_hunk_1_@_ZN4ncnn24Deconvolution_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.hzo = add i64 %i.hwn, %i.hzn
  %i.hzp = mul i64 %i.hwj, %i.hzo
  %scevgep5082 = getelementptr i8, ptr %scevgep5081, i64 %i.hzp
  %i.hzq = shl nsw i64 %i.hwk, 1                  ; 2 uses
  %i.hzr = add i64 %i.hwn, %i.hzq
  %i.hzs = mul i64 %i.hwj, %i.hzr
  %scevgep5083 = getelementptr i8, ptr %i.hwi, i64 %i.hzs
  %scevgep5084 = getelementptr i8, ptr %i.hwi, i64 %i.fgg
  %i.hzt = mul i64 %i.fha, %i.hwk                 ; 2 uses
  %i.hzu = add i64 %i.hwn, %i.hzt
  %i.hzv = mul i64 %i.hwj, %i.hzu
  %scevgep5085 = getelementptr i8, ptr %scevgep5084, i64 %i.hzv
  %i.hzw = add i64 %i.hwn, %i.hwk
  %i.hzx = mul i64 %i.hwj, %i.hzw
  %scevgep5086 = getelementptr i8, ptr %i.hwi, i64 %i.hzx
  %scevgep5087 = getelementptr i8, ptr %i.hwi, i64 %i.fgg ; 2 uses
  %i.hzy = mul i64 %i.fhb, %i.hwk                 ; 2 uses
  %i.hzz = add i64 %i.hwn, %i.hzy
  %i.iaa = mul i64 %i.hwj, %i.hzz
  %scevgep5088 = getelementptr i8, ptr %scevgep5087, i64 %i.iaa
  %scevgep5089 = getelementptr i8, ptr %i.hwi, i64 %.reass2160.us.1.i
  %i.iab = mul i64 %i.fhc, %i.hwk                 ; 2 uses
  %i.iac = add i64 %i.iab, %i.hwn
  %i.iad = mul i64 %i.hwj, %i.iac
  %scevgep5090 = getelementptr i8, ptr %scevgep5087, i64 %i.iad
  %i.iae = mul i64 %i.hwl, %indvars.iv2771.i      ; 31 uses
  %i.iaf = add i64 %i.iae, %i.hwo
  %i.iag = mul i64 %i.hwj, %i.iaf
  %scevgep5091 = getelementptr i8, ptr %i.hwi, i64 %i.iag
  %scevgep5092 = getelementptr i8, ptr %i.hwi, i64 %i.fgg
  %i.iah = add i64 %i.iae, %i.hwr
  %i.iai = mul i64 %i.hwj, %i.iah
  %scevgep5093 = getelementptr i8, ptr %scevgep5092, i64 %i.iai
  %i.iaj = add i64 %i.iae, %i.hww
  %i.iak = mul i64 %i.hwj, %i.iaj
  %scevgep5094 = getelementptr i8, ptr %i.hwi, i64 %i.iak
  %scevgep5095 = getelementptr i8, ptr %i.hwi, i64 %i.fgg
  %i.ial = add i64 %i.iae, %i.hwz
  %i.iam = mul i64 %i.hwj, %i.ial
  %scevgep5096 = getelementptr i8, ptr %scevgep5095, i64 %i.iam
  %i.ian = add i64 %i.iae, %i.hxc
  %i.iao = mul i64 %i.hwj, %i.ian
  %scevgep5097 = getelementptr i8, ptr %i.hwi, i64 %i.iao
  %scevgep5098 = getelementptr i8, ptr %i.hwi, i64 %i.fgg
  %i.iap = add i64 %i.iae, %i.hxf
  %i.iaq = mul i64 %i.hwj, %i.iap
  %scevgep5099 = getelementptr i8, ptr %scevgep5098, i64 %i.iaq
  %i.iar = add i64 %i.iae, %i.hxi
  %i.ias = mul i64 %i.hwj, %i.iar
  %scevgep5100 = getelementptr i8, ptr %i.hwi, i64 %i.ias
  %scevgep5101 = getelementptr i8, ptr %i.hwi, i64 %i.fgg
  %i.iat = add i64 %i.iae, %i.hxl
  %i.iau = mul i64 %i.hwj, %i.iat
  %scevgep5102 = getelementptr i8, ptr %scevgep5101, i64 %i.iau
  %i.iav = add i64 %i.iae, %i.hxo
  %i.iaw = mul i64 %i.hwj, %i.iav
  %scevgep5103 = getelementptr i8, ptr %i.hwi, i64 %i.iaw
  %scevgep5104 = getelementptr i8, ptr %i.hwi, i64 %i.fgg
  %i.iax = add i64 %i.iae, %i.hxr
  %i.iay = mul i64 %i.hwj, %i.iax
  %scevgep5105 = getelementptr i8, ptr %scevgep5104, i64 %i.iay
  %i.iaz = add i64 %i.iae, %i.hxu
  %i.iba = mul i64 %i.hwj, %i.iaz
  %scevgep5106 = getelementptr i8, ptr %i.hwi, i64 %i.iba
  %scevgep5107 = getelementptr i8, ptr %i.hwi, i64 %i.fgg
  %i.ibb = add i64 %i.iae, %i.hxx
  %i.ibc = mul i64 %i.hwj, %i.ibb
  %scevgep5108 = getelementptr i8, ptr %scevgep5107, i64 %i.ibc
  %i.ibd = add i64 %i.iae, %i.hya
  %i.ibe = mul i64 %i.hwj, %i.ibd
  %scevgep5109 = getelementptr i8, ptr %i.hwi, i64 %i.ibe
  %scevgep5110 = getelementptr i8, ptr %i.hwi, i64 %i.fgg
  %i.ibf = add i64 %i.iae, %i.hyd
  %i.ibg = mul i64 %i.hwj, %i.ibf
  %scevgep5111 = getelementptr i8, ptr %scevgep5110, i64 %i.ibg
  %i.ibh = add i64 %i.iae, %i.hyg
  %i.ibi = mul i64 %i.hwj, %i.ibh
  %scevgep5112 = getelementptr i8, ptr %i.hwi, i64 %i.ibi
  %scevgep5113 = getelementptr i8, ptr %i.hwi, i64 %i.fgg
  %i.ibj = add i64 %i.iae, %i.hyj
  %i.ibk = mul i64 %i.hwj, %i.ibj
  %scevgep5114 = getelementptr i8, ptr %scevgep5113, i64 %i.ibk
  %i.ibl = add i64 %i.iae, %i.hym
  %i.ibm = mul i64 %i.hwj, %i.ibl
  %scevgep5115 = getelementptr i8, ptr %i.hwi, i64 %i.ibm
  %scevgep5116 = getelementptr i8, ptr %i.hwi, i64 %i.fgg
  %i.ibn = add i64 %i.iae, %i.hyp
  %i.ibo = mul i64 %i.hwj, %i.ibn
  %scevgep5117 = getelementptr i8, ptr %scevgep5116, i64 %i.ibo
  %i.ibp = add i64 %i.iae, %i.hys
  %i.ibq = mul i64 %i.hwj, %i.ibp
  %scevgep5118 = getelementptr i8, ptr %i.hwi, i64 %i.ibq
  %scevgep5119 = getelementptr i8, ptr %i.hwi, i64 %i.fgg
  %i.ibr = add i64 %i.iae, %i.hyv
  %i.ibs = mul i64 %i.hwj, %i.ibr
  %scevgep5120 = getelementptr i8, ptr %scevgep5119, i64 %i.ibs
  %i.ibt = add i64 %i.iae, %i.hyy
  %i.ibu = mul i64 %i.hwj, %i.ibt
  %scevgep5121 = getelementptr i8, ptr %i.hwi, i64 %i.ibu
  %scevgep5122 = getelementptr i8, ptr %i.hwi, i64 %i.fgg
  %i.ibv = add i64 %i.iae, %i.hzb
  %i.ibw = mul i64 %i.hwj, %i.ibv
  %scevgep5123 = getelementptr i8, ptr %scevgep5122, i64 %i.ibw
  %i.ibx = add i64 %i.iae, %i.hze
  %i.iby = mul i64 %i.hwj, %i.ibx
  %scevgep5124 = getelementptr i8, ptr %i.hwi, i64 %i.iby
  %scevgep5125 = getelementptr i8, ptr %i.hwi, i64 %i.fgg
  %i.ibz = add i64 %i.iae, %i.hzh
  %i.ica = mul i64 %i.hwj, %i.ibz
  %scevgep5126 = getelementptr i8, ptr %scevgep5125, i64 %i.ica
  %i.icb = add i64 %i.iae, %i.hzk
  %i.icc = mul i64 %i.hwj, %i.icb
  %scevgep5127 = getelementptr i8, ptr %i.hwi, i64 %i.icc
  %scevgep5128 = getelementptr i8, ptr %i.hwi, i64 %i.fgg
  %i.icd = add i64 %i.iae, %i.hzn
  %i.ice = mul i64 %i.hwj, %i.icd
  %scevgep5129 = getelementptr i8, ptr %scevgep5128, i64 %i.ice
  %i.icf = add i64 %i.iae, %i.hzq
  %i.icg = mul i64 %i.hwj, %i.icf
  %scevgep5130 = getelementptr i8, ptr %i.hwi, i64 %i.icg
  %scevgep5131 = getelementptr i8, ptr %i.hwi, i64 %i.fgg
  %i.ich = add i64 %i.iae, %i.hzt
  %i.ici = mul i64 %i.hwj, %i.ich
  %scevgep5132 = getelementptr i8, ptr %scevgep5131, i64 %i.ici
  %i.icj = add i64 %i.iae, %i.hwk
  %i.ick = mul i64 %i.hwj, %i.icj
  %scevgep5133 = getelementptr i8, ptr %i.hwi, i64 %i.ick
  %scevgep5134 = getelementptr i8, ptr %i.hwi, i64 %i.fgg ; 2 uses
  %i.icl = add i64 %i.iae, %i.hzy
  %i.icm = mul i64 %i.hwj, %i.icl
  %scevgep5135 = getelementptr i8, ptr %scevgep5134, i64 %i.icm
  %scevgep5136 = getelementptr i8, ptr %i.hwi, i64 %.reass2160.us.i
  %i.icn = add i64 %i.iab, %i.iae
  %i.ico = mul i64 %i.hwj, %i.icn
  %scevgep5137 = getelementptr i8, ptr %scevgep5134, i64 %i.ico
  %i.icp = insertelement <32 x ptr> poison, ptr %scevgep5049, i64 0
  %i.icq = insertelement <32 x ptr> %i.icp, ptr %scevgep5046, i64 1
  %i.icr = insertelement <32 x ptr> %i.icq, ptr %scevgep5052, i64 2
  %i.ics = insertelement <32 x ptr> %i.icr, ptr %scevgep5055, i64 3
  %i.ict = insertelement <32 x ptr> %i.ics, ptr %scevgep5058, i64 4
  %i.icu = insertelement <32 x ptr> %i.ict, ptr %scevgep5061, i64 5
  %i.icv = insertelement <32 x ptr> %i.icu, ptr %scevgep5064, i64 6
  %i.icw = insertelement <32 x ptr> %i.icv, ptr %scevgep5067, i64 7
  %i.icx = insertelement <32 x ptr> %i.icw, ptr %scevgep5070, i64 8
  %i.icy = insertelement <32 x ptr> %i.icx, ptr %scevgep5073, i64 9
  %i.icz = insertelement <32 x ptr> %i.icy, ptr %scevgep5076, i64 10
  %i.ida = insertelement <32 x ptr> %i.icz, ptr %scevgep5079, i64 11
  %i.idb = insertelement <32 x ptr> %i.ida, ptr %scevgep5082, i64 12
  %i.idc = insertelement <32 x ptr> %i.idb, ptr %scevgep5085, i64 13
  %i.idd = insertelement <32 x ptr> %i.idc, ptr %scevgep5088, i64 14
  %i.ide = insertelement <32 x ptr> %i.idd, ptr %scevgep5090, i64 15
  %i.idf = insertelement <32 x ptr> %i.ide, ptr %scevgep5093, i64 16
  %i.idg = insertelement <32 x ptr> %i.idf, ptr %scevgep5096, i64 17
  %i.idh = insertelement <32 x ptr> %i.idg, ptr %scevgep5099, i64 18
  %i.idi = insertelement <32 x ptr> %i.idh, ptr %scevgep5102, i64 19
  %i.idj = insertelement <32 x ptr> %i.idi, ptr %scevgep5105, i64 20
  %i.idk = insertelement <32 x ptr> %i.idj, ptr %scevgep5108, i64 21
  %i.idl = insertelement <32 x ptr> %i.idk, ptr %scevgep5111, i64 22
  %i.idm = insertelement <32 x ptr> %i.idl, ptr %scevgep5114, i64 23
  %i.idn = insertelement <32 x ptr> %i.idm, ptr %scevgep5117, i64 24
  %i.ido = insertelement <32 x ptr> %i.idn, ptr %scevgep5120, i64 25
  %i.idp = insertelement <32 x ptr> %i.ido, ptr %scevgep5123, i64 26
  %i.idq = insertelement <32 x ptr> %i.idp, ptr %scevgep5126, i64 27
  %i.idr = insertelement <32 x ptr> %i.idq, ptr %scevgep5129, i64 28
  %i.ids = insertelement <32 x ptr> %i.idr, ptr %scevgep5132, i64 29
  %i.idt = insertelement <32 x ptr> %i.ids, ptr %scevgep5135, i64 30
  %i.idu = insertelement <32 x ptr> %i.idt, ptr %scevgep5137, i64 31
  %i.idv = insertelement <32 x ptr> poison, ptr %scevgep5047, i64 0
  %i.idw = insertelement <32 x ptr> %i.idv, ptr %scevgep5044, i64 1
  %i.idx = insertelement <32 x ptr> %i.idw, ptr %scevgep5050, i64 2
  %i.idy = insertelement <32 x ptr> %i.idx, ptr %scevgep5053, i64 3
  %i.idz = insertelement <32 x ptr> %i.idy, ptr %scevgep5056, i64 4
  %i.iea = insertelement <32 x ptr> %i.idz, ptr %scevgep5059, i64 5
  %i.ieb = insertelement <32 x ptr> %i.iea, ptr %scevgep5062, i64 6
  %i.iec = insertelement <32 x ptr> %i.ieb, ptr %scevgep5065, i64 7
  %i.ied = insertelement <32 x ptr> %i.iec, ptr %scevgep5068, i64 8
  %i.iee = insertelement <32 x ptr> %i.ied, ptr %scevgep5071, i64 9
  %i.ief = insertelement <32 x ptr> %i.iee, ptr %scevgep5074, i64 10
  %i.ieg = insertelement <32 x ptr> %i.ief, ptr %scevgep5077, i64 11
  %i.ieh = insertelement <32 x ptr> %i.ieg, ptr %scevgep5080, i64 12
  %i.iei = insertelement <32 x ptr> %i.ieh, ptr %scevgep5083, i64 13
  %i.iej = insertelement <32 x ptr> %i.iei, ptr %scevgep5086, i64 14
  %i.iek = insertelement <32 x ptr> %i.iej, ptr %scevgep5089, i64 15
  %i.iel = insertelement <32 x ptr> %i.iek, ptr %scevgep5091, i64 16
  %i.iem = insertelement <32 x ptr> %i.iel, ptr %scevgep5094, i64 17
  %i.ien = insertelement <32 x ptr> %i.iem, ptr %scevgep5097, i64 18
  %i.ieo = insertelement <32 x ptr> %i.ien, ptr %scevgep5100, i64 19
  %i.iep = insertelement <32 x ptr> %i.ieo, ptr %scevgep5103, i64 20
  %i.ieq = insertelement <32 x ptr> %i.iep, ptr %scevgep5106, i64 21
  %i.ier = insertelement <32 x ptr> %i.ieq, ptr %scevgep5109, i64 22
  %i.ies = insertelement <32 x ptr> %i.ier, ptr %scevgep5112, i64 23
  %i.iet = insertelement <32 x ptr> %i.ies, ptr %scevgep5115, i64 24
  %i.ieu = insertelement <32 x ptr> %i.iet, ptr %scevgep5118, i64 25
  %i.iev = insertelement <32 x ptr> %i.ieu, ptr %scevgep5121, i64 26
  %i.iew = insertelement <32 x ptr> %i.iev, ptr %scevgep5124, i64 27
  %i.iex = insertelement <32 x ptr> %i.iew, ptr %scevgep5127, i64 28
  %i.iey = insertelement <32 x ptr> %i.iex, ptr %scevgep5130, i64 29
  %i.iez = insertelement <32 x ptr> %i.iey, ptr %scevgep5133, i64 30
  %i.ifa = insertelement <32 x ptr> %i.iez, ptr %scevgep5136, i64 31
  %i.ifb = insertelement <4 x i64> poison, i64 %i.hwv, i64 0
  %17 = icmp slt <4 x i64> %i.ifb, zeroinitializer
  %18 = shufflevector <4 x i1> %17, <4 x i1> poison, <32 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %iter.check5375

iter.check5375:                                   ; preds = %._crit_edge2167.us.i, %.preheader1756.us.preheader.i
  %indvars.iv2710.i = phi i64 [ 0, %.preheader1756.us.preheader.i ], [ %indvars.iv.next2711.i, %._crit_edge2167.us.i ] ; 17 uses
  %.07362169.us.i = phi ptr [ %i.hwg, %.preheader1756.us.preheader.i ], [ %.lcssa414, %._crit_edge2167.us.i ] ; 8 uses
  %.reass2155.us.i = mul i64 %indvars.iv2710.i, %factor.op.mul2154.i ; 6 uses
  %i.ifc = or disjoint i64 %indvars.iv2710.i, 1
  %.reass2155.us.1.i = mul i64 %i.ifc, %factor.op.mul2154.i ; 6 uses
  %i.ifd = or disjoint i64 %indvars.iv2710.i, 2
  %.reass2155.us.2.i = mul i64 %i.ifd, %factor.op.mul2154.i ; 6 uses
  %i.ife = or disjoint i64 %indvars.iv2710.i, 3
  %.reass2155.us.3.i = mul i64 %i.ife, %factor.op.mul2154.i ; 6 uses
  %i.iff = or disjoint i64 %indvars.iv2710.i, 4
  %.reass2155.us.4.i = mul i64 %i.iff, %factor.op.mul2154.i ; 6 uses
  %i.ifg = or disjoint i64 %indvars.iv2710.i, 5
  %.reass2155.us.5.i = mul i64 %i.ifg, %factor.op.mul2154.i ; 6 uses
  %i.ifh = or disjoint i64 %indvars.iv2710.i, 6
  %.reass2155.us.6.i = mul i64 %i.ifh, %factor.op.mul2154.i ; 6 uses
  %i.ifi = or disjoint i64 %indvars.iv2710.i, 7
  %.reass2155.us.7.i = mul i64 %i.ifi, %factor.op.mul2154.i ; 6 uses
  %i.ifj = or disjoint i64 %indvars.iv2710.i, 8
  %.reass2155.us.8.i = mul i64 %i.ifj, %factor.op.mul2154.i ; 6 uses
  %i.ifk = or disjoint i64 %indvars.iv2710.i, 9
  %.reass2155.us.9.i = mul i64 %i.ifk, %factor.op.mul2154.i ; 6 uses
  %i.ifl = or disjoint i64 %indvars.iv2710.i, 10
  %.reass2155.us.10.i = mul i64 %i.ifl, %factor.op.mul2154.i ; 6 uses
  %i.ifm = or disjoint i64 %indvars.iv2710.i, 11
  %.reass2155.us.11.i = mul i64 %i.ifm, %factor.op.mul2154.i ; 6 uses
  %i.ifn = or disjoint i64 %indvars.iv2710.i, 12
  %.reass2155.us.12.i = mul i64 %i.ifn, %factor.op.mul2154.i ; 6 uses
  %i.ifo = or disjoint i64 %indvars.iv2710.i, 13
  %.reass2155.us.13.i = mul i64 %i.ifo, %factor.op.mul2154.i ; 6 uses
  %i.ifp = or disjoint i64 %indvars.iv2710.i, 14
  %.reass2155.us.14.i = mul i64 %i.ifp, %factor.op.mul2154.i ; 6 uses
  %i.ifq = or disjoint i64 %indvars.iv2710.i, 15
  %.reass2155.us.15.i = mul i64 %i.ifq, %factor.op.mul2154.i ; 6 uses
  br i1 %min.iters.check5297, label %.preheader1751.us.i.preheader, label %vector.memcheck5042

vector.memcheck5042:                              ; preds = %iter.check5375
  %scevgep5043 = getelementptr i8, ptr %.07362169.us.i, i64 %i.fgk
  %i.ifr = insertelement <32 x ptr> poison, ptr %.07362169.us.i, i64 0
  %i.ifs = shufflevector <32 x ptr> %i.ifr, <32 x ptr> poison, <32 x i32> zeroinitializer
  %i.ift = icmp ult <32 x ptr> %i.ifs, %i.idu
  %i.ifu = insertelement <32 x ptr> poison, ptr %scevgep5043, i64 0
  %i.ifv = shufflevector <32 x ptr> %i.ifu, <32 x ptr> poison, <32 x i32> zeroinitializer
  %i.ifw = icmp ult <32 x ptr> %i.ifa, %i.ifv
  %i.ifx = and <32 x i1> %i.ift, %i.ifw           ; 2 uses
  %i.ify = or <32 x i1> %i.ifx, %18
  %i.ifz = shufflevector <32 x i1> %i.ify, <32 x i1> %i.ifx, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.iga = bitcast <32 x i1> %i.ifz to i32
  %.not5990 = icmp eq i32 %i.iga, 0
  br i1 %.not5990, label %vector.main.loop.iter.check5298, label %.preheader1751.us.i.preheader

vector.main.loop.iter.check5298:                  ; preds = %vector.memcheck5042
  br i1 %min.iters.check5299, label %vec.epilog.ph5379, label %vector.ph5300

vector.ph5300:                                    ; preds = %vector.main.loop.iter.check5298
  %i.igb = getelementptr i8, ptr %.07362169.us.i, i64 %i.fhe ; 3 uses
  br label %vector.body5302

vector.body5302:                                  ; preds = %vector.ph5300, %vector.body5302
  %index5303 = phi i64 [ 0, %vector.ph5300 ], [ %index.next5369, %vector.body5302 ] ; 2 uses
  %pointer.phi5304 = phi ptr [ %.07362169.us.i, %vector.ph5300 ], [ %ptr.ind5370, %vector.body5302 ] ; 2 uses
  %vector.gep5305 = getelementptr i8, ptr %pointer.phi5304, <16 x i64> <i64 0, i64 128, i64 256, i64 384, i64 512, i64 640, i64 768, i64 896, i64 1024, i64 1152, i64 1280, i64 1408, i64 1536, i64 1664, i64 1792, i64 1920> ; 32 uses
  %i.igc = getelementptr [4 x i8], ptr %i.hwi, i64 %index5303 ; 2 uses
  %i.igd = getelementptr i8, ptr %i.igc, i64 %.reass2160.us.i ; 16 uses
  %i.ige = getelementptr i8, ptr %i.igd, i64 %.reass2155.us.i
  %wide.load5306 = load <16 x float>, ptr %i.ige, align 4, !tbaa !39, !alias.scope !1108
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5306, <16 x ptr> align 4 %vector.gep5305, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5307 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 4
  %i.igf = getelementptr i8, ptr %i.igd, i64 %.reass2155.us.1.i
  %wide.load5308 = load <16 x float>, ptr %i.igf, align 4, !tbaa !39, !alias.scope !1111
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5308, <16 x ptr> align 4 %wide.gep5307, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5309 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 8
  %i.igg = getelementptr i8, ptr %i.igd, i64 %.reass2155.us.2.i
  %wide.load5310 = load <16 x float>, ptr %i.igg, align 4, !tbaa !39, !alias.scope !1112
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5310, <16 x ptr> align 4 %wide.gep5309, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5311 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 12
  %i.igh = getelementptr i8, ptr %i.igd, i64 %.reass2155.us.3.i
  %wide.load5312 = load <16 x float>, ptr %i.igh, align 4, !tbaa !39, !alias.scope !1113
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5312, <16 x ptr> align 4 %wide.gep5311, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5313 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 16
  %i.igi = getelementptr i8, ptr %i.igd, i64 %.reass2155.us.4.i
  %wide.load5314 = load <16 x float>, ptr %i.igi, align 4, !tbaa !39, !alias.scope !1114
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5314, <16 x ptr> align 4 %wide.gep5313, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5315 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 20
  %i.igj = getelementptr i8, ptr %i.igd, i64 %.reass2155.us.5.i
  %wide.load5316 = load <16 x float>, ptr %i.igj, align 4, !tbaa !39, !alias.scope !1115
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5316, <16 x ptr> align 4 %wide.gep5315, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5317 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 24
  %i.igk = getelementptr i8, ptr %i.igd, i64 %.reass2155.us.6.i
  %wide.load5318 = load <16 x float>, ptr %i.igk, align 4, !tbaa !39, !alias.scope !1116
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5318, <16 x ptr> align 4 %wide.gep5317, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5319 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 28
  %i.igl = getelementptr i8, ptr %i.igd, i64 %.reass2155.us.7.i
  %wide.load5320 = load <16 x float>, ptr %i.igl, align 4, !tbaa !39, !alias.scope !1117
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5320, <16 x ptr> align 4 %wide.gep5319, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5321 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 32
  %i.igm = getelementptr i8, ptr %i.igd, i64 %.reass2155.us.8.i
  %wide.load5322 = load <16 x float>, ptr %i.igm, align 4, !tbaa !39, !alias.scope !1118
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5322, <16 x ptr> align 4 %wide.gep5321, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5323 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 36
  %i.ign = getelementptr i8, ptr %i.igd, i64 %.reass2155.us.9.i
  %wide.load5324 = load <16 x float>, ptr %i.ign, align 4, !tbaa !39, !alias.scope !1119
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5324, <16 x ptr> align 4 %wide.gep5323, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5325 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 40
  %i.igo = getelementptr i8, ptr %i.igd, i64 %.reass2155.us.10.i
  %wide.load5326 = load <16 x float>, ptr %i.igo, align 4, !tbaa !39, !alias.scope !1120
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5326, <16 x ptr> align 4 %wide.gep5325, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5327 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 44
  %i.igp = getelementptr i8, ptr %i.igd, i64 %.reass2155.us.11.i
  %wide.load5328 = load <16 x float>, ptr %i.igp, align 4, !tbaa !39, !alias.scope !1121
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5328, <16 x ptr> align 4 %wide.gep5327, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5329 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 48
  %i.igq = getelementptr i8, ptr %i.igd, i64 %.reass2155.us.12.i
  %wide.load5330 = load <16 x float>, ptr %i.igq, align 4, !tbaa !39, !alias.scope !1122
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5330, <16 x ptr> align 4 %wide.gep5329, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5331 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 52
  %i.igr = getelementptr i8, ptr %i.igd, i64 %.reass2155.us.13.i
  %wide.load5332 = load <16 x float>, ptr %i.igr, align 4, !tbaa !39, !alias.scope !1123
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5332, <16 x ptr> align 4 %wide.gep5331, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5333 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 56
  %i.igs = getelementptr i8, ptr %i.igd, i64 %.reass2155.us.14.i
  %wide.load5334 = load <16 x float>, ptr %i.igs, align 4, !tbaa !39, !alias.scope !1124
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5334, <16 x ptr> align 4 %wide.gep5333, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5335 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 60
  %i.igt = getelementptr i8, ptr %i.igd, i64 %.reass2155.us.15.i
  %wide.load5336 = load <16 x float>, ptr %i.igt, align 4, !tbaa !39, !alias.scope !1125
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5336, <16 x ptr> align 4 %wide.gep5335, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5337 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 64
  %i.igu = getelementptr i8, ptr %i.igc, i64 %.reass2160.us.1.i ; 16 uses
  %i.igv = getelementptr i8, ptr %i.igu, i64 %.reass2155.us.i
  %wide.load5338 = load <16 x float>, ptr %i.igv, align 4, !tbaa !39, !alias.scope !1126
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5338, <16 x ptr> align 4 %wide.gep5337, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5339 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 68
  %i.igw = getelementptr i8, ptr %i.igu, i64 %.reass2155.us.1.i
  %wide.load5340 = load <16 x float>, ptr %i.igw, align 4, !tbaa !39, !alias.scope !1127
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5340, <16 x ptr> align 4 %wide.gep5339, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5341 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 72
  %i.igx = getelementptr i8, ptr %i.igu, i64 %.reass2155.us.2.i
  %wide.load5342 = load <16 x float>, ptr %i.igx, align 4, !tbaa !39, !alias.scope !1128
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5342, <16 x ptr> align 4 %wide.gep5341, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5343 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 76
  %i.igy = getelementptr i8, ptr %i.igu, i64 %.reass2155.us.3.i
  %wide.load5344 = load <16 x float>, ptr %i.igy, align 4, !tbaa !39, !alias.scope !1129
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5344, <16 x ptr> align 4 %wide.gep5343, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5345 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 80
  %i.igz = getelementptr i8, ptr %i.igu, i64 %.reass2155.us.4.i
  %wide.load5346 = load <16 x float>, ptr %i.igz, align 4, !tbaa !39, !alias.scope !1130
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5346, <16 x ptr> align 4 %wide.gep5345, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5347 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 84
  %i.iha = getelementptr i8, ptr %i.igu, i64 %.reass2155.us.5.i
  %wide.load5348 = load <16 x float>, ptr %i.iha, align 4, !tbaa !39, !alias.scope !1131
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5348, <16 x ptr> align 4 %wide.gep5347, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5349 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 88
  %i.ihb = getelementptr i8, ptr %i.igu, i64 %.reass2155.us.6.i
  %wide.load5350 = load <16 x float>, ptr %i.ihb, align 4, !tbaa !39, !alias.scope !1132
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5350, <16 x ptr> align 4 %wide.gep5349, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5351 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 92
  %i.ihc = getelementptr i8, ptr %i.igu, i64 %.reass2155.us.7.i
  %wide.load5352 = load <16 x float>, ptr %i.ihc, align 4, !tbaa !39, !alias.scope !1133
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5352, <16 x ptr> align 4 %wide.gep5351, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5353 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 96
  %i.ihd = getelementptr i8, ptr %i.igu, i64 %.reass2155.us.8.i
  %wide.load5354 = load <16 x float>, ptr %i.ihd, align 4, !tbaa !39, !alias.scope !1134
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5354, <16 x ptr> align 4 %wide.gep5353, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5355 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 100
  %i.ihe = getelementptr i8, ptr %i.igu, i64 %.reass2155.us.9.i
  %wide.load5356 = load <16 x float>, ptr %i.ihe, align 4, !tbaa !39, !alias.scope !1135
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5356, <16 x ptr> align 4 %wide.gep5355, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5357 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 104
  %i.ihf = getelementptr i8, ptr %i.igu, i64 %.reass2155.us.10.i
  %wide.load5358 = load <16 x float>, ptr %i.ihf, align 4, !tbaa !39, !alias.scope !1136
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5358, <16 x ptr> align 4 %wide.gep5357, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5359 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 108
  %i.ihg = getelementptr i8, ptr %i.igu, i64 %.reass2155.us.11.i
  %wide.load5360 = load <16 x float>, ptr %i.ihg, align 4, !tbaa !39, !alias.scope !1137
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5360, <16 x ptr> align 4 %wide.gep5359, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5361 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 112
  %i.ihh = getelementptr i8, ptr %i.igu, i64 %.reass2155.us.12.i
  %wide.load5362 = load <16 x float>, ptr %i.ihh, align 4, !tbaa !39, !alias.scope !1138
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5362, <16 x ptr> align 4 %wide.gep5361, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5363 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 116
  %i.ihi = getelementptr i8, ptr %i.igu, i64 %.reass2155.us.13.i
  %wide.load5364 = load <16 x float>, ptr %i.ihi, align 4, !tbaa !39, !alias.scope !1139
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5364, <16 x ptr> align 4 %wide.gep5363, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5365 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 120
  %i.ihj = getelementptr i8, ptr %i.igu, i64 %.reass2155.us.14.i
  %wide.load5366 = load <16 x float>, ptr %i.ihj, align 4, !tbaa !39, !alias.scope !1140
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5366, <16 x ptr> align 4 %wide.gep5365, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %wide.gep5367 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep5305, i64 124
  %i.ihk = getelementptr i8, ptr %i.igu, i64 %.reass2155.us.15.i
  %wide.load5368 = load <16 x float>, ptr %i.ihk, align 4, !tbaa !39, !alias.scope !1141
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.load5368, <16 x ptr> align 4 %wide.gep5367, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !1109, !noalias !1110
  %index.next5369 = add nuw i64 %index5303, 16    ; 2 uses
  %ptr.ind5370 = getelementptr i8, ptr %pointer.phi5304, i64 2048
  %i.ihl = icmp eq i64 %index.next5369, %n.vec5301
  br i1 %i.ihl, label %middle.block5371, label %vector.body5302, !llvm.loop !595

middle.block5371:                                 ; preds = %vector.body5302
end_hunk_1
begin_hunk_2_@_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %.117521.us.us.us.ph = phi float [ %.107526.us.us.us, %.preheader.us.us.us ], [ %i.fda, %middle.block8624 ]
  br label %scalar.ph8582

scalar.ph8582:                                    ; preds = %scalar.ph8582.preheader, %bb.dl
  %i.fdb = phi i32 [ %i.fdz, %bb.dl ], [ %.ph8694, %scalar.ph8582.preheader ] ; 2 uses
  %indvars.iv8062 = phi i64 [ %indvars.iv.next8063, %bb.dl ], [ %indvars.iv8062.ph, %scalar.ph8582.preheader ] ; 3 uses
  %.117521.us.us.us = phi float [ %.13.us.us.us, %bb.dl ], [ %.117521.us.us.us.ph, %scalar.ph8582.preheader ] ; 3 uses
  %i.fdc = trunc i64 %indvars.iv8062 to i32
  %i.fdd = mul i32 %i.fbk, %i.fdc
  %.reass7525.us.us.us = add i32 %i.fdd, %invariant.op7524 ; 3 uses
  %i.fde = icmp slt i32 %.reass7525.us.us.us, 0
  br i1 %i.fde, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %scalar.ph8582
  %i.fdf = srem i32 %.reass7525.us.us.us, %i.fbm
  %i.fdg = sdiv i32 %.reass7525.us.us.us, %i.fbm  ; 2 uses
  %.not2060.us.us.us = icmp eq i32 %i.fdf, 0
  %.not2061.us.us.us = icmp slt i32 %i.fdg, %i.del
  %or.cond8869 = select i1 %.not2060.us.us.us, i1 %.not2061.us.us.us, i1 false
  br i1 %or.cond8869, label %_ZN4ncnn3MatD2Ev.exit.us.us.us, label %bb.dl

_ZN4ncnn3MatD2Ev.exit.us.us.us:                   ; preds = %bb.dk
  %i.fdh = load i32, ptr %i.dek, align 4, !tbaa !55, !noalias !1517 ; 2 uses
  %i.fdi = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1517
  %i.fdj = load i64, ptr %i.dfc, align 8, !tbaa !21, !noalias !1517
  %i.fdk = mul i64 %i.fdj, %indvars.iv8072
  %i.fdl = load i64, ptr %i.dfd, align 8, !tbaa !56, !noalias !1517 ; 2 uses
  %i.fdm = mul i64 %i.fdk, %i.fdl
  %i.fdn = getelementptr inbounds nuw i8, ptr %i.fdi, i64 %i.fdm
  %i.fdo = sext i32 %i.fdh to i64
  %i.fdp = mul nsw i64 %i.fdo, %i.fby
  %i.fdq = mul i64 %i.fdp, %i.fdl
  %i.fdr = getelementptr inbounds nuw i8, ptr %i.fdn, i64 %i.fdq
  %i.fds = sext i32 %i.fdg to i64
  %i.fdt = getelementptr inbounds [4 x i8], ptr %i.fdr, i64 %i.fds
  %i.fdu = load float, ptr %i.fdt, align 4, !tbaa !39
  %i.fdv = getelementptr inbounds nuw [4 x i8], ptr %i.fbz, i64 %indvars.iv8062
  %i.fdw = load float, ptr %i.fdv, align 4, !tbaa !39
  %i.fdx = fmul fast float %i.fdw, %i.fdu
  %i.fdy = fadd fast float %i.fdx, %.117521.us.us.us
  br label %bb.dl

bb.dl:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us, %bb.dk, %scalar.ph8582
  %i.fdz = phi i32 [ %i.fdb, %scalar.ph8582 ], [ %i.fdb, %bb.dk ], [ %i.fdh, %_ZN4ncnn3MatD2Ev.exit.us.us.us ] ; 2 uses
  %.13.us.us.us = phi nsz float [ %.117521.us.us.us, %scalar.ph8582 ], [ %.117521.us.us.us, %bb.dk ], [ %i.fdy, %_ZN4ncnn3MatD2Ev.exit.us.us.us ] ; 2 uses
  %indvars.iv.next8063 = add nuw nsw i64 %indvars.iv8062, 1 ; 2 uses
  %exitcond8066.not = icmp eq i64 %indvars.iv.next8063, %i.fbo
  br i1 %exitcond8066.not, label %..loopexit6401_crit_edge.us.us.us, label %scalar.ph8582, !llvm.loop !1460

..loopexit6401_crit_edge.us.us.us:                ; preds = %bb.dl, %middle.block8624, %bb.dj, %bb.di
  %i.fea = phi i32 [ %i.fbr, %bb.di ], [ %i.fbr, %bb.dj ], [ %i.fcz, %middle.block8624 ], [ %i.fdz, %bb.dl ] ; 3 uses
  %.15.us.us.us = phi nsz float [ %.107526.us.us.us, %bb.di ], [ %.107526.us.us.us, %bb.dj ], [ %i.fda, %middle.block8624 ], [ %.13.us.us.us, %bb.dl ] ; 3 uses
  %indvars.iv.next8068 = add nuw nsw i64 %indvars.iv8067, 1 ; 2 uses
  %exitcond8071.not = icmp eq i64 %indvars.iv.next8068, %wide.trip.count8070
  br i1 %exitcond8071.not, label %._crit_edge7529.split.us.us.us, label %bb.di, !llvm.loop !1461

._crit_edge7529.split.us.us.us:                   ; preds = %..loopexit6401_crit_edge.us.us.us
  %i.feb = getelementptr inbounds [4 x i8], ptr %.418317536.us.us, i64 %i.eje
  %indvars.iv.next8073 = add nuw nsw i64 %indvars.iv8072, 1 ; 2 uses
  %i.fec = trunc nuw i64 %indvars.iv.next8073 to i32
  %i.fed = icmp sgt i32 %i.dej, %i.fec
  br i1 %i.fed, label %.preheader6410.us.us, label %._crit_edge7539, !llvm.loop !1462

._crit_edge7539:                                  ; preds = %._crit_edge7529.split.us.us.us, %.preheader6410.lr.ph, %.preheader6415
  %i.fee = phi i32 [ %i.fbe, %.preheader6415 ], [ %i.fbe, %.preheader6410.lr.ph ], [ %i.fea, %._crit_edge7529.split.us.us.us ] ; 3 uses
  %.9.lcssa = phi float [ %.11833.lcssa, %.preheader6415 ], [ %.11833.lcssa, %.preheader6410.lr.ph ], [ %.15.us.us.us, %._crit_edge7529.split.us.us.us ] ; 13 uses
  switch i32 %i.eiq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.dm
    i32 2, label %bb.dn
    i32 3, label %bb.do
    i32 4, label %bb.dp
    i32 5, label %bb.dq
    i32 6, label %bb.dr
  ]

bb.dm:                                            ; preds = %._crit_edge7539
  %i.fef = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.9.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dn:                                            ; preds = %._crit_edge7539
  %i.feg = load ptr, ptr %11, align 8, !tbaa !20
  %i.feh = load float, ptr %i.feg, align 4, !tbaa !39
  %i.fei = fcmp fast ogt float %.9.lcssa, 0.000000e+00
  %i.fej = select fast i1 %i.fei, float 1.000000e+00, float %i.feh
  %i.fek = fmul fast float %i.fej, %.9.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.do:                                            ; preds = %._crit_edge7539
  %i.fel = load ptr, ptr %11, align 8, !tbaa !20  ; 2 uses
  %i.fem = load float, ptr %i.fel, align 4, !tbaa !39
  %i.fen = getelementptr inbounds nuw i8, ptr %i.fel, i64 4
  %i.feo = load float, ptr %i.fen, align 4, !tbaa !39
  %spec.select6317 = call nnan ninf nsz float @llvm.maxnum.f32(float %.9.lcssa, float %i.fem)
  %spec.select6318 = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select6317, float %i.feo)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dp:                                            ; preds = %._crit_edge7539
  %.sroa.speculated5809 = call nnan ninf nsz float @llvm.minnum.f32(float %.9.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated5809, float f0xC2B0C0A5)
  %i.fep = fneg fast float %.sroa.speculated
  %i.feq = call fast float @llvm.exp.f32(float %i.fep)
  %i.fer = fadd fast float %i.feq, 1.000000e+00
  %i.fes = fdiv fast float 1.000000e+00, %i.fer
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dq:                                            ; preds = %._crit_edge7539
  %i.fet = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.9.lcssa)
  %i.feu = fadd fast float %i.fet, 1.000000e+00
  %i.fev = call fast float @llvm.log.f32(float %i.feu)
  %i.few = call fast float @llvm.tanh.f32(float %i.fev)
  %i.fex = fmul fast float %i.few, %.9.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dr:                                            ; preds = %._crit_edge7539
  %i.fey = load ptr, ptr %11, align 8, !tbaa !20  ; 2 uses
  %i.fez = load float, ptr %i.fey, align 4, !tbaa !39 ; 3 uses
  %i.ffa = getelementptr inbounds nuw i8, ptr %i.fey, i64 4
  %i.ffb = load float, ptr %i.ffa, align 4, !tbaa !39 ; 2 uses
  %i.ffc = fneg fast float %i.ffb
  %i.ffd = fdiv fast float %i.ffc, %i.fez         ; 2 uses
  %i.ffe = fcmp fast olt float %.9.lcssa, %i.ffd
  br i1 %i.ffe, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.fff = fdiv fast float 1.000000e+00, %i.fez
  %i.ffg = fadd fast float %i.ffd, %i.fff
  %i.ffh = fcmp fast ogt float %.9.lcssa, %i.ffg
  br i1 %i.ffh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ffi = fmul fast float %i.fez, %.9.lcssa
  %i.ffj = fadd fast float %i.ffi, %i.ffb
  %i.ffk = fmul fast float %i.ffj, %.9.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.do, %bb.dr, %._crit_edge7539, %bb.dm, %bb.dn, %bb.dp, %bb.dq, %bb.ds, %bb.dt
  %.16068 = phi nsz float [ %.9.lcssa, %._crit_edge7539 ], [ %i.fef, %bb.dm ], [ %i.fek, %bb.dn ], [ 0.000000e+00, %bb.dr ], [ %spec.select6318, %bb.do ], [ %i.fes, %bb.dp ], [ %i.fex, %bb.dq ], [ %i.ffk, %bb.dt ], [ %.9.lcssa, %bb.ds ]
  store float %.16068, ptr %.118407550, align 4, !tbaa !39
  %i.ffl = getelementptr inbounds nuw i8, ptr %.118407550, i64 4 ; 2 uses
  %i.ffm = add nuw nsw i32 %.018377551, 1         ; 2 uses
  %exitcond8075.not = icmp eq i32 %i.ffm, %i.dep
  br i1 %exitcond8075.not, label %._crit_edge7552, label %bb.cq, !llvm.loop !1463
}

declare void @_ZNK4ncnn13Deconvolution11cut_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(504), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %18) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !63     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !63
  %i.h = load i32, ptr %0, align 4, !tbaa !63     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !63
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !63
  %i.k = load i32, ptr %i.a, align 4, !tbaa !63   ; 2 uses
  %.not2397 = icmp sgt i32 %i.k, %i.j
  br i1 %.not2397, label %._crit_edge2399, label %.noexc1263.lr.ph

.noexc1263.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !67
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc1263.preheader, label %._crit_edge2399

.noexc1263.preheader:                             ; preds = %.noexc1263.lr.ph
  %i.aa = sext i32 %i.k to i64
  %i.ab = add nsw i32 %i.j, 1
  br label %.noexc1263

.noexc1263:                                       ; preds = %.noexc1263.preheader, %._crit_edge2396.split
  %indvars.iv = phi i64 [ %i.aa, %.noexc1263.preheader ], [ %indvars.iv.next, %._crit_edge2396.split ] ; 4 uses
  %i.ac = load i32, ptr %i.l, align 8, !tbaa !62
  %.fr = freeze i32 %i.ac                         ; 5 uses
  %i.ad = load i32, ptr %i.m, align 8, !tbaa !64
  %i.ae = mul i32 %i.ad, %.fr                     ; 14 uses
  %i.af = load i32, ptr %i.n, align 4, !tbaa !55  ; 6 uses
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !67  ; 5 uses
  %i.ah = load i32, ptr %i.p, align 4, !tbaa !55  ; 2 uses
  %i.ai = load i32, ptr %i.q, align 8, !tbaa !67  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.preheader2170.lr.ph, label %._crit_edge2396.split

.preheader2170.lr.ph:                             ; preds = %.noexc1263
  %i.ak = shl nsw i64 %indvars.iv, 4              ; 2 uses
  %i.al = load i32, ptr %i.r, align 8, !tbaa !62  ; 3 uses
  %i.am = icmp sgt i32 %i.ah, 0
  %i.an = icmp sgt i32 %i.ae, 15
  %i.ao = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr)
  %i.ap = icmp eq i32 %i.ao, 1
  %i.aq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr, i1 true)
  %i.ar = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.al)
  %i.as = icmp eq i32 %i.ar, 1
  %i.at = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.al, i1 true)
  br i1 %i.am, label %.preheader2170.preheader, label %._crit_edge2396.split

.preheader2170.preheader:                         ; preds = %.preheader2170.lr.ph
  %i.au = load ptr, ptr %4, align 8, !tbaa !20, !noalias !1564
  %i.av = load i64, ptr %i.s, align 8, !tbaa !21, !noalias !1564
  %i.aw = trunc nsw i64 %i.ak to i32
  %i.ax = sdiv i32 %i.aw, %i.al
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul i64 %i.av, %i.ay
  %i.ba = load i64, ptr %i.t, align 8, !tbaa !56, !noalias !1564
  %i.bb = mul i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bb
  %i.bd = add i32 %i.ae, -16                      ; 3 uses
  %i.be = lshr i32 %i.bd, 2
  %i.bf = and i32 %i.be, 1073741820
  %narrow = add nuw nsw i32 %i.bf, 4
  %i.bg = zext nneg i32 %narrow to i64
  %i.bh = and i32 %i.bd, -16
  %i.bi = add nuw i32 %i.bh, 16
  %i.bj = sext i32 %i.ae to i64
  %i.bk = and i32 %i.bd, -16
  %i.bl = add i32 %i.bk, 16
  %i.bm = add i32 %i.ae, -8
  %i.bn = add i32 %i.ae, -4
  %i.bo = add i32 %i.ae, -2
  %invariant.op = add nsw i64 %i.bj, -15
  br label %.preheader2170

.preheader2170:                                   ; preds = %.preheader2170.preheader, %._crit_edge
  %.07752395 = phi ptr [ %.5, %._crit_edge ], [ %i.bc, %.preheader2170.preheader ]
  %.07762394 = phi i32 [ %.neg2150, %._crit_edge ], [ 0, %.preheader2170.preheader ]
  %.neg2150 = add nuw nsw i32 %.07762394, 1       ; 7 uses
  br label %bb.c

._crit_edge2396.split:                            ; preds = %._crit_edge, %.preheader2170.lr.ph, %.noexc1263
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond2479.not = icmp eq i32 %i.ab, %lftr.wideiv
  br i1 %exitcond2479.not, label %._crit_edge2399, label %.noexc1263, !llvm.loop !1520

._crit_edge:                                      ; preds = %.thread2131
  %exitcond2477.not = icmp eq i32 %.neg2150, %i.ai
  br i1 %exitcond2477.not, label %._crit_edge2396.split, label %.preheader2170, !llvm.loop !1521

bb.c:                                             ; preds = %.preheader2170, %.thread2131
  %.12392 = phi ptr [ %.07752395, %.preheader2170 ], [ %.5, %.thread2131 ] ; 29 uses
  %.07772391 = phi i32 [ 0, %.preheader2170 ], [ %i.avl, %.thread2131 ] ; 6 uses
  %i.bp = load ptr, ptr %5, align 8, !tbaa !90    ; 2 uses
  %.not925 = icmp eq ptr %i.bp, null
  br i1 %.not925, label %_ZN4ncnn3MatD2Ev.exit1002, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.ak
  %i.br = load <16 x float>, ptr %i.bq, align 1, !tbaa !82
  br label %_ZN4ncnn3MatD2Ev.exit1002

_ZN4ncnn3MatD2Ev.exit1002:                        ; preds = %bb.d, %bb.c
  %.0778 = phi nsz <16 x float> [ %i.br, %bb.d ], [ zeroinitializer, %bb.c ] ; 3 uses
  %i.bs = load ptr, ptr %6, align 8, !tbaa !20, !noalias !1565 ; 2 uses
  %i.bt = load i64, ptr %i.u, align 8, !tbaa !21, !noalias !1565 ; 2 uses
  %i.bu = mul i64 %i.bt, %indvars.iv
  %i.bv = load i64, ptr %i.v, align 8, !tbaa !56, !noalias !1565 ; 2 uses
  %i.bw = mul i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bw ; 2 uses
  br i1 %i.an, label %.preheader2165.lr.ph, label %.preheader2169

.preheader2165.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit1002
  %i.by = load i32, ptr %7, align 4, !tbaa !63    ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  %.neg2152 = add nuw nsw i32 %.07772391, 1
  %i.ca = load i32, ptr %15, align 4, !tbaa !63
  %i.cb = shl i32 %i.ca, 8
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  br i1 %i.bz, label %.preheader2165.lr.ph.split.us, label %.preheader2165.preheader

.preheader2165.preheader:                         ; preds = %.preheader2165.lr.ph
  %19 = mul i64 %indvars.iv, %i.bv
  %20 = mul i64 %19, %i.bt
  %i.cd = mul nsw i64 %i.bg, %i.cc
  %i.ce = getelementptr i8, ptr %i.bs, i64 %20
  %scevgep = getelementptr i8, ptr %i.ce, i64 %i.cd
  br label %.preheader2169

.preheader2165.lr.ph.split.us:                    ; preds = %.preheader2165.lr.ph
  %i.cf = load i32, ptr %8, align 4, !tbaa !63
  %i.cg = load i32, ptr %9, align 4, !tbaa !63
  %invariant.op2191.us = sub i32 %.neg2150, %i.cg
  br label %.preheader2165.us

.preheader2165.us:                                ; preds = %._crit_edge.us, %.preheader2165.lr.ph.split.us
  %indvars.iv2429 = phi i64 [ %indvars.iv.next2430, %._crit_edge.us ], [ 0, %.preheader2165.lr.ph.split.us ] ; 20 uses
  %.17792204.us = phi <16 x float> [ %.us-phi2197.us, %._crit_edge.us ], [ %.0778, %.preheader2165.lr.ph.split.us ] ; 2 uses
  %.07842203.us = phi <16 x float> [ %.us-phi2196.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2165.lr.ph.split.us ] ; 2 uses
  %.08212202.us = phi <16 x float> [ %.us-phi2195.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2165.lr.ph.split.us ] ; 2 uses
  %.08512201.us = phi <16 x float> [ %.us-phi2194.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2165.lr.ph.split.us ] ; 2 uses
  %.08812199.us = phi ptr [ %i.ul, %._crit_edge.us ], [ %i.bx, %.preheader2165.lr.ph.split.us ] ; 2 uses
  %i.ch = or disjoint i64 %indvars.iv2429, 15
  %i.ci = or disjoint i64 %indvars.iv2429, 1
  %i.cj = or disjoint i64 %indvars.iv2429, 2
  %i.ck = or disjoint i64 %indvars.iv2429, 3
  %i.cl = or disjoint i64 %indvars.iv2429, 4
  %i.cm = or disjoint i64 %indvars.iv2429, 5
  %i.cn = or disjoint i64 %indvars.iv2429, 6
  %i.co = or disjoint i64 %indvars.iv2429, 7
  %i.cp = or disjoint i64 %indvars.iv2429, 8
  %i.cq = or disjoint i64 %indvars.iv2429, 9
  %i.cr = or disjoint i64 %indvars.iv2429, 10
  %i.cs = or disjoint i64 %indvars.iv2429, 11
  %i.ct = or disjoint i64 %indvars.iv2429, 12
  %i.cu = or disjoint i64 %indvars.iv2429, 13
  %i.cv = or disjoint i64 %indvars.iv2429, 14
  %i.cw = lshr exact i64 %indvars.iv2429, 2       ; 4 uses
  %i.cx = or disjoint i64 %i.cw, 1
  %i.cy = or disjoint i64 %i.cw, 2
  %i.cz = or disjoint i64 %i.cw, 3
  %i.da = lshr exact i64 %indvars.iv2429, 3       ; 2 uses
  %i.db = or disjoint i64 %i.da, 1
  %i.dc = lshr exact i64 %indvars.iv2429, 4
  br i1 %i.ap, label %.lr.ph2187.split.us.us, label %._crit_edge.us

.lr.ph2187.split.us.us:                           ; preds = %.preheader2165.us, %.loopexit2160.us.us
  %.27802186.us.us = phi <16 x float> [ %.11.us.us, %.loopexit2160.us.us ], [ %.17792204.us, %.preheader2165.us ] ; 4 uses
  %.17852185.us.us = phi <16 x float> [ %.10794.us.us, %.loopexit2160.us.us ], [ %.07842203.us, %.preheader2165.us ] ; 4 uses
  %.18222184.us.us = phi <16 x float> [ %.10831.us.us, %.loopexit2160.us.us ], [ %.08212202.us, %.preheader2165.us ] ; 4 uses
  %.18522183.us.us = phi <16 x float> [ %.10861.us.us, %.loopexit2160.us.us ], [ %.08512201.us, %.preheader2165.us ] ; 4 uses
  %.08912182.us.us = phi i32 [ %i.uk, %.loopexit2160.us.us ], [ 0, %.preheader2165.us ] ; 3 uses
  %i.dd = mul nsw i32 %i.cf, %.08912182.us.us
  %.reass2192.us.us = add i32 %i.dd, %invariant.op2191.us ; 3 uses
  %i.de = icmp slt i32 %.reass2192.us.us, 0
  br i1 %i.de, label %.loopexit2160.us.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph2187.split.us.us
  %i.df = load i32, ptr %10, align 4, !tbaa !63   ; 2 uses
  %i.dg = srem i32 %.reass2192.us.us, %i.df
  %i.dh = sdiv i32 %.reass2192.us.us, %i.df       ; 2 uses
  %.not957.us.us = icmp eq i32 %i.dg, 0
  %.not958.us.us = icmp slt i32 %i.dh, %i.ag
  %or.cond = select i1 %.not957.us.us, i1 %.not958.us.us, i1 false
  br i1 %or.cond, label %.preheader2159.us.us, label %.loopexit2160.us.us

.preheader2159.us.us:                             ; preds = %bb.e
  %i.di = load i32, ptr %11, align 4, !tbaa !63   ; 3 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph.us.us, label %.loopexit2160.us.us

.lr.ph.us.us:                                     ; preds = %.preheader2159.us.us
  %i.dk = load i32, ptr %12, align 4, !tbaa !63
  %i.dl = load i32, ptr %13, align 4, !tbaa !63
  %invariant.op.us.us = sub i32 %.neg2152, %i.dl
  %i.dm = mul nuw nsw i32 %i.di, %.08912182.us.us
  %i.dn = sext i32 %i.dh to i64                   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.di to i64
  br label %bb.f

bb.f:                                             ; preds = %.thread2104.us.us.us, %.lr.ph.us.us
  %indvars.iv2425 = phi i64 [ %indvars.iv.next2426, %.thread2104.us.us.us ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.37812175.us.us.us = phi <16 x float> [ %.9.us.us.us, %.thread2104.us.us.us ], [ %.27802186.us.us, %.lr.ph.us.us ] ; 4 uses
  %.27862174.us.us.us = phi <16 x float> [ %.8792.us.us.us, %.thread2104.us.us.us ], [ %.17852185.us.us, %.lr.ph.us.us ] ; 4 uses
  %.28232173.us.us.us = phi <16 x float> [ %.8829.us.us.us, %.thread2104.us.us.us ], [ %.18222184.us.us, %.lr.ph.us.us ] ; 4 uses
  %.28532172.us.us.us = phi <16 x float> [ %.8859.us.us.us, %.thread2104.us.us.us ], [ %.18522183.us.us, %.lr.ph.us.us ] ; 4 uses
  %i.do = trunc i64 %indvars.iv2425 to i32
  %i.dp = mul i32 %i.dk, %i.do
  %.reass.us.us.us = add i32 %i.dp, %invariant.op.us.us ; 3 uses
  %i.dq = icmp slt i32 %.reass.us.us.us, 0
  br i1 %i.dq, label %.thread2104.us.us.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dr = load i32, ptr %14, align 4, !tbaa !63   ; 2 uses
  %i.ds = srem i32 %.reass.us.us.us, %i.dr
  %i.dt = sdiv i32 %.reass.us.us.us, %i.dr        ; 5 uses
  %.not959.us.us.us = icmp eq i32 %i.ds, 0
  %.not960.us.us.us = icmp slt i32 %i.dt, %i.af
  %or.cond2623 = select i1 %.not959.us.us.us, i1 %.not960.us.us.us, i1 false
  br i1 %or.cond2623, label %.split.us.us.us, label %.thread2104.us.us.us

.split.us.us.us:                                  ; preds = %bb.g
  %i.du = trunc i64 %indvars.iv2425 to i32
  %i.dv = add i32 %i.dm, %i.du
  %i.dw = shl nsw i32 %i.dv, 8
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.08812199.us, i64 %i.dx ; 16 uses
  switch i32 %i.aq, label %.thread2104.us.us.us [
    i32 4, label %.thread.us.us.us
    i32 3, label %_ZN4ncnn3MatD2Ev.exit1000.us.us.us
    i32 2, label %_ZN4ncnn3MatD2Ev.exit998.us.us.us
    i32 0, label %_ZN4ncnn3MatD2Ev.exit994.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit994.us.us.us:                ; preds = %.split.us.us.us
  %i.dz = load i32, ptr %i.n, align 4, !tbaa !55, !noalias !1566
  %i.ea = load ptr, ptr %3, align 8, !tbaa !20, !noalias !1566 ; 12 uses
  %i.eb = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !1566 ; 12 uses
  %i.ec = mul i64 %i.eb, %indvars.iv2429
  %i.ed = load i64, ptr %i.x, align 8, !tbaa !56, !noalias !1566 ; 13 uses
  %i.ee = mul i64 %i.ec, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ee
  %i.eg = sext i32 %i.dz to i64
  %i.eh = mul nsw i64 %i.eg, %i.dn
  %i.ei = mul i64 %i.eh, %i.ed                    ; 12 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ei
  %i.ek = sext i32 %i.dt to i64                   ; 16 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load float, ptr %i.el, align 4, !tbaa !39
  %i.en = insertelement <16 x float> poison, float %i.em, i64 0
  %i.eo = shufflevector <16 x float> %i.en, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ep = mul i64 %i.eb, %i.ci
  %i.eq = mul i64 %i.ep, %i.ed
  %i.er = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ei
  %i.et = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.ek
  %i.eu = load float, ptr %i.et, align 4, !tbaa !39
  %i.ev = insertelement <16 x float> poison, float %i.eu, i64 0
  %i.ew = shufflevector <16 x float> %i.ev, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ex = mul i64 %i.eb, %i.cj
  %i.ey = mul i64 %i.ex, %i.ed
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ei
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.ek
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !39
  %i.fd = insertelement <16 x float> poison, float %i.fc, i64 0
  %i.fe = shufflevector <16 x float> %i.fd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ff = mul i64 %i.eb, %i.ck
  %i.fg = mul i64 %i.ff, %i.ed
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ei
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.ek
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !39
  %i.fl = insertelement <16 x float> poison, float %i.fk, i64 0
  %i.fm = shufflevector <16 x float> %i.fl, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fn = mul i64 %i.eb, %i.cl
  %i.fo = mul i64 %i.fn, %i.ed
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.ei
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.ek
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !39
  %i.ft = insertelement <16 x float> poison, float %i.fs, i64 0
  %i.fu = shufflevector <16 x float> %i.ft, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fv = mul i64 %i.eb, %i.cm
  %i.fw = mul i64 %i.fv, %i.ed
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ei
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.ek
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !39
  %i.gb = insertelement <16 x float> poison, float %i.ga, i64 0
  %i.gc = shufflevector <16 x float> %i.gb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gd = mul i64 %i.eb, %i.cn
  %i.ge = mul i64 %i.gd, %i.ed
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.ei
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.ek
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !39
  %i.gj = insertelement <16 x float> poison, float %i.gi, i64 0
  %i.gk = shufflevector <16 x float> %i.gj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gl = mul i64 %i.eb, %i.co
  %i.gm = mul i64 %i.gl, %i.ed
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.ei
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.ek
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !39
  %i.gr = insertelement <16 x float> poison, float %i.gq, i64 0
  %i.gs = shufflevector <16 x float> %i.gr, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gt = mul i64 %i.eb, %i.cp
  %i.gu = mul i64 %i.gt, %i.ed
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ei
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.ek
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !39
  %i.gz = insertelement <16 x float> poison, float %i.gy, i64 0
  %i.ha = shufflevector <16 x float> %i.gz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hb = mul i64 %i.eb, %i.cq
  %i.hc = mul i64 %i.hb, %i.ed
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.ei
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.ek
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !39
  %i.hh = insertelement <16 x float> poison, float %i.hg, i64 0
  %i.hi = shufflevector <16 x float> %i.hh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hj = mul i64 %i.eb, %i.cr
  %i.hk = mul i64 %i.hj, %i.ed
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.hk
end_hunk_2
begin_hunk_3_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %.reass8121.us.us.us = add i32 %i.gtq, %invariant.op8120 ; 3 uses
  %i.gtr = icmp slt i32 %.reass8121.us.us.us, 0
  br i1 %i.gtr, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.gts = srem i32 %.reass8121.us.us.us, %i.gtd
  %i.gtt = sdiv i32 %.reass8121.us.us.us, %i.gtd  ; 2 uses
  %.not2099.us.us.us = icmp eq i32 %i.gts, 0
  %.not2100.us.us.us = icmp slt i32 %i.gtt, %i.eql
  %or.cond9375 = select i1 %.not2099.us.us.us, i1 %.not2100.us.us.us, i1 false
  br i1 %or.cond9375, label %_ZN4ncnn3MatD2Ev.exit.us.us.us, label %bb.dr

_ZN4ncnn3MatD2Ev.exit.us.us.us:                   ; preds = %bb.dq
  %i.gtu = load i32, ptr %i.eqk, align 4, !tbaa !55, !noalias !1913
  %i.gtv = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1913
  %i.gtw = load i64, ptr %i.erc, align 8, !tbaa !21, !noalias !1913
  %i.gtx = mul i64 %i.gtw, %indvars.iv8668
  %i.gty = load i64, ptr %i.erd, align 8, !tbaa !56, !noalias !1913 ; 2 uses
  %i.gtz = mul i64 %i.gtx, %i.gty
  %i.gua = getelementptr inbounds nuw i8, ptr %i.gtv, i64 %i.gtz
  %i.gub = sext i32 %i.gtu to i64
  %i.guc = mul nsw i64 %i.gub, %i.gtn
  %i.gud = mul i64 %i.guc, %i.gty
  %i.gue = getelementptr inbounds nuw i8, ptr %i.gua, i64 %i.gud
  %i.guf = sext i32 %i.gtt to i64
  %i.gug = getelementptr inbounds [2 x i8], ptr %i.gue, i64 %i.guf
  %i.guh = load i16, ptr %i.gug, align 2, !tbaa !92
  %i.gui = zext i16 %i.guh to i32
  %i.guj = shl nuw i32 %i.gui, 16
  %i.guk = bitcast i32 %i.guj to float
  %i.gul = getelementptr inbounds nuw [2 x i8], ptr %i.gto, i64 %indvars.iv8658
  %i.gum = load i16, ptr %i.gul, align 2, !tbaa !92
  %i.gun = zext i16 %i.gum to i32
  %i.guo = shl nuw i32 %i.gun, 16
  %i.gup = bitcast i32 %i.guo to float
  %i.guq = fmul fast float %i.gup, %i.guk
  %i.gur = fadd fast float %i.guq, %.1118708117.us.us.us
  br label %bb.dr

bb.dr:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us, %bb.dq, %bb.dp
  %.131872.us.us.us = phi nsz float [ %.1118708117.us.us.us, %bb.dp ], [ %.1118708117.us.us.us, %bb.dq ], [ %i.gur, %_ZN4ncnn3MatD2Ev.exit.us.us.us ] ; 2 uses
  %indvars.iv.next8659 = add nuw nsw i64 %indvars.iv8658, 1 ; 2 uses
  %exitcond8662.not = icmp eq i64 %indvars.iv.next8659, %i.gtf
  br i1 %exitcond8662.not, label %..loopexit6997_crit_edge.us.us.us, label %bb.dp, !llvm.loop !1856

..loopexit6997_crit_edge.us.us.us:                ; preds = %bb.dr, %bb.do, %bb.dn
  %.15.us.us.us = phi nsz float [ %.1018698122.us.us.us, %bb.dn ], [ %.1018698122.us.us.us, %bb.do ], [ %.131872.us.us.us, %bb.dr ] ; 3 uses
  %indvars.iv.next8664 = add nuw nsw i64 %indvars.iv8663, 1 ; 2 uses
  %exitcond8667.not = icmp eq i64 %indvars.iv.next8664, %wide.trip.count8666
  br i1 %exitcond8667.not, label %._crit_edge8125.split.us.us.us, label %bb.dn, !llvm.loop !1857

._crit_edge8125.split.us.us.us:                   ; preds = %..loopexit6997_crit_edge.us.us.us
  %i.gus = getelementptr inbounds [2 x i8], ptr %.418588132.us.us, i64 %i.fxs
  %indvars.iv.next8669 = add nuw nsw i64 %indvars.iv8668, 1 ; 2 uses
  %i.gut = trunc nuw i64 %indvars.iv.next8669 to i32
  %i.guu = icmp sgt i32 %i.eqj, %i.gut
  br i1 %i.guu, label %.preheader7006.us.us, label %._crit_edge8135, !llvm.loop !1858

._crit_edge8135:                                  ; preds = %._crit_edge8125.split.us.us.us, %.preheader7006.lr.ph, %.preheader7011
  %.91868.lcssa = phi float [ %.11860.lcssa, %.preheader7011 ], [ %.11860.lcssa, %.preheader7006.lr.ph ], [ %.15.us.us.us, %._crit_edge8125.split.us.us.us ] ; 13 uses
  switch i32 %i.fxf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ds
    i32 2, label %bb.dt
    i32 3, label %bb.du
    i32 4, label %bb.dv
    i32 5, label %bb.dw
    i32 6, label %bb.dx
  ]

bb.ds:                                            ; preds = %._crit_edge8135
  %i.guv = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.91868.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dt:                                            ; preds = %._crit_edge8135
  %i.guw = load ptr, ptr %11, align 8, !tbaa !20
  %i.gux = load float, ptr %i.guw, align 4, !tbaa !39
  %i.guy = fcmp fast ogt float %.91868.lcssa, 0.000000e+00
  %i.guz = select fast i1 %i.guy, float 1.000000e+00, float %i.gux
  %i.gva = fmul fast float %i.guz, %.91868.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.du:                                            ; preds = %._crit_edge8135
  %i.gvb = load ptr, ptr %11, align 8, !tbaa !20  ; 2 uses
  %i.gvc = load float, ptr %i.gvb, align 4, !tbaa !39
  %i.gvd = getelementptr inbounds nuw i8, ptr %i.gvb, i64 4
  %i.gve = load float, ptr %i.gvd, align 4, !tbaa !39
  %spec.select6912 = call nnan ninf nsz float @llvm.maxnum.f32(float %.91868.lcssa, float %i.gvc)
  %spec.select6913 = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select6912, float %i.gve)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dv:                                            ; preds = %._crit_edge8135
  %.sroa.speculated6410 = call nnan ninf nsz float @llvm.minnum.f32(float %.91868.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated6410, float f0xC2B0C0A5)
  %i.gvf = fneg fast float %.sroa.speculated
  %i.gvg = call fast float @llvm.exp.f32(float %i.gvf)
  %i.gvh = fadd fast float %i.gvg, 1.000000e+00
  %i.gvi = fdiv fast float 1.000000e+00, %i.gvh
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dw:                                            ; preds = %._crit_edge8135
  %i.gvj = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.91868.lcssa)
  %i.gvk = fadd fast float %i.gvj, 1.000000e+00
  %i.gvl = call fast float @llvm.log.f32(float %i.gvk)
  %i.gvm = call fast float @llvm.tanh.f32(float %i.gvl)
  %i.gvn = fmul fast float %i.gvm, %.91868.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dx:                                            ; preds = %._crit_edge8135
  %i.gvo = load ptr, ptr %11, align 8, !tbaa !20  ; 2 uses
  %i.gvp = load float, ptr %i.gvo, align 4, !tbaa !39 ; 3 uses
  %i.gvq = getelementptr inbounds nuw i8, ptr %i.gvo, i64 4
  %i.gvr = load float, ptr %i.gvq, align 4, !tbaa !39 ; 2 uses
  %i.gvs = fneg fast float %i.gvr
  %i.gvt = fdiv fast float %i.gvs, %i.gvp         ; 2 uses
  %i.gvu = fcmp fast olt float %.91868.lcssa, %i.gvt
  br i1 %i.gvu, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.gvv = fdiv fast float 1.000000e+00, %i.gvp
  %i.gvw = fadd fast float %i.gvt, %i.gvv
  %i.gvx = fcmp fast ogt float %.91868.lcssa, %i.gvw
  br i1 %i.gvx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.gvy = fmul fast float %i.gvp, %.91868.lcssa
  %i.gvz = fadd fast float %i.gvy, %i.gvr
  %i.gwa = fmul fast float %i.gvz, %.91868.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.du, %bb.dx, %._crit_edge8135, %bb.ds, %bb.dt, %bb.dv, %bb.dw, %bb.dy, %bb.dz
  %.16669 = phi nsz float [ %.91868.lcssa, %._crit_edge8135 ], [ %i.guv, %bb.ds ], [ %i.gva, %bb.dt ], [ 0.000000e+00, %bb.dx ], [ %spec.select6913, %bb.du ], [ %i.gvi, %bb.dv ], [ %i.gvn, %bb.dw ], [ %i.gwa, %bb.dz ], [ %.91868.lcssa, %bb.dy ]
  %i.gwb = bitcast float %.16669 to i32
  %i.gwc = lshr i32 %i.gwb, 16
  %i.gwd = trunc nuw i32 %i.gwc to i16
  store i16 %i.gwd, ptr %.118778146, align 2, !tbaa !92
  %i.gwe = getelementptr inbounds nuw i8, ptr %.118778146, i64 2 ; 2 uses
  %i.gwf = add nuw nsw i32 %.018748147, 1         ; 2 uses
  %exitcond8671.not = icmp eq i32 %i.gwf, %i.eqp
  br i1 %exitcond8671.not, label %._crit_edge8148, label %bb.cu, !llvm.loop !1859

bb.ea:                                            ; preds = %._crit_edge8154.split, %bb.b
  ret void
}

declare void @_ZN4ncnn37deconvolution_packed_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %18) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !63     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !63
  %i.h = load i32, ptr %0, align 4, !tbaa !63     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !63
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !63
  %i.k = load i32, ptr %i.a, align 4, !tbaa !63   ; 2 uses
  %.not2585 = icmp sgt i32 %i.k, %i.j
  br i1 %.not2585, label %._crit_edge2587, label %.noexc1189.lr.ph

.noexc1189.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !67
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc1189.preheader, label %._crit_edge2587

.noexc1189.preheader:                             ; preds = %.noexc1189.lr.ph
  %i.aa = sext i32 %i.k to i64
  %i.ab = add nsw i32 %i.j, 1
  br label %.noexc1189

.noexc1189:                                       ; preds = %.noexc1189.preheader, %._crit_edge2584.split
  %indvars.iv = phi i64 [ %i.aa, %.noexc1189.preheader ], [ %indvars.iv.next, %._crit_edge2584.split ] ; 4 uses
  %i.ac = load i32, ptr %i.l, align 8, !tbaa !62
  %.fr = freeze i32 %i.ac                         ; 5 uses
  %i.ad = load i32, ptr %i.m, align 8, !tbaa !64
  %i.ae = mul i32 %i.ad, %.fr                     ; 14 uses
  %i.af = load i32, ptr %i.n, align 4, !tbaa !55  ; 6 uses
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !67  ; 5 uses
  %i.ah = load i32, ptr %i.p, align 4, !tbaa !55  ; 2 uses
  %i.ai = load i32, ptr %i.q, align 8, !tbaa !67  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.preheader2359.lr.ph, label %._crit_edge2584.split

.preheader2359.lr.ph:                             ; preds = %.noexc1189
  %i.ak = shl nsw i64 %indvars.iv, 4              ; 2 uses
  %i.al = load i32, ptr %i.r, align 8, !tbaa !62  ; 3 uses
  %i.am = icmp sgt i32 %i.ah, 0
  %i.an = icmp sgt i32 %i.ae, 15
  %i.ao = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr)
  %i.ap = icmp eq i32 %i.ao, 1
  %i.aq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr, i1 true)
  %i.ar = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.al)
  %i.as = icmp eq i32 %i.ar, 1
  %i.at = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.al, i1 true)
  br i1 %i.am, label %.preheader2359.preheader, label %._crit_edge2584.split

.preheader2359.preheader:                         ; preds = %.preheader2359.lr.ph
  %i.au = load ptr, ptr %4, align 8, !tbaa !20, !noalias !1960
  %i.av = load i64, ptr %i.s, align 8, !tbaa !21, !noalias !1960
  %i.aw = trunc nsw i64 %i.ak to i32
  %i.ax = sdiv i32 %i.aw, %i.al
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul i64 %i.av, %i.ay
  %i.ba = load i64, ptr %i.t, align 8, !tbaa !56, !noalias !1960
  %i.bb = mul i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bb
  %i.bd = add i32 %i.ae, -16                      ; 3 uses
  %i.be = lshr i32 %i.bd, 3
  %i.bf = and i32 %i.be, 536870910
  %narrow = add nuw nsw i32 %i.bf, 2
  %i.bg = zext nneg i32 %narrow to i64
  %i.bh = and i32 %i.bd, -16
  %i.bi = add nuw i32 %i.bh, 16
  %i.bj = sext i32 %i.ae to i64
  %i.bk = and i32 %i.bd, -16
  %i.bl = add i32 %i.bk, 16
  %i.bm = add i32 %i.ae, -8
  %i.bn = add i32 %i.ae, -4
  %i.bo = add i32 %i.ae, -2
  %invariant.op = add nsw i64 %i.bj, -15
  br label %.preheader2359

.preheader2359:                                   ; preds = %.preheader2359.preheader, %._crit_edge
  %.08132583 = phi i32 [ %.neg2339, %._crit_edge ], [ 0, %.preheader2359.preheader ]
  %.08142582 = phi ptr [ %.5819, %._crit_edge ], [ %i.bc, %.preheader2359.preheader ]
  %.neg2339 = add nuw nsw i32 %.08132583, 1       ; 7 uses
  br label %bb.c

._crit_edge2584.split:                            ; preds = %._crit_edge, %.preheader2359.lr.ph, %.noexc1189
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond2667.not = icmp eq i32 %i.ab, %lftr.wideiv
  br i1 %exitcond2667.not, label %._crit_edge2587, label %.noexc1189, !llvm.loop !1916

._crit_edge:                                      ; preds = %.thread2320
  %exitcond2665.not = icmp eq i32 %.neg2339, %i.ai
  br i1 %exitcond2665.not, label %._crit_edge2584.split, label %.preheader2359, !llvm.loop !1917

bb.c:                                             ; preds = %.preheader2359, %.thread2320
  %.08122581 = phi i32 [ 0, %.preheader2359 ], [ %i.boq, %.thread2320 ] ; 6 uses
  %.18152580 = phi ptr [ %.08142582, %.preheader2359 ], [ %.5819, %.thread2320 ] ; 29 uses
  %i.bp = load ptr, ptr %5, align 8, !tbaa !90    ; 2 uses
  %.not851 = icmp eq ptr %i.bp, null
  br i1 %.not851, label %_ZN4ncnn3MatD2Ev.exit928, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.ak
  %i.br = load <16 x float>, ptr %i.bq, align 1, !tbaa !82
  br label %_ZN4ncnn3MatD2Ev.exit928

_ZN4ncnn3MatD2Ev.exit928:                         ; preds = %bb.d, %bb.c
  %.02260 = phi nsz <16 x float> [ zeroinitializer, %bb.c ], [ %i.br, %bb.d ] ; 3 uses
  %i.bs = load ptr, ptr %6, align 8, !tbaa !20, !noalias !1961 ; 2 uses
  %i.bt = load i64, ptr %i.u, align 8, !tbaa !21, !noalias !1961 ; 2 uses
  %i.bu = mul i64 %i.bt, %indvars.iv
  %i.bv = load i64, ptr %i.v, align 8, !tbaa !56, !noalias !1961 ; 2 uses
  %i.bw = mul i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bw ; 2 uses
  br i1 %i.an, label %.preheader2354.lr.ph, label %.preheader2358

.preheader2354.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit928
  %i.by = load i32, ptr %7, align 4, !tbaa !63    ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  %.neg2341 = add nuw nsw i32 %.08122581, 1
  %i.ca = load i32, ptr %15, align 4, !tbaa !63
  %i.cb = shl i32 %i.ca, 8
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  br i1 %i.bz, label %.preheader2354.lr.ph.split.us, label %.preheader2354.preheader

.preheader2354.preheader:                         ; preds = %.preheader2354.lr.ph
  %19 = mul i64 %indvars.iv, %i.bv
  %20 = mul i64 %19, %i.bt
  %i.cd = mul nsw i64 %i.bg, %i.cc
  %i.ce = getelementptr i8, ptr %i.bs, i64 %20
  %scevgep = getelementptr i8, ptr %i.ce, i64 %i.cd
  br label %.preheader2358

.preheader2354.lr.ph.split.us:                    ; preds = %.preheader2354.lr.ph
  %i.cf = load i32, ptr %8, align 4, !tbaa !63
  %i.cg = load i32, ptr %9, align 4, !tbaa !63
  %invariant.op2380.us = sub i32 %.neg2339, %i.cg
  br label %.preheader2354.us

.preheader2354.us:                                ; preds = %._crit_edge.us, %.preheader2354.lr.ph.split.us
  %indvars.iv2617 = phi i64 [ %indvars.iv.next2618, %._crit_edge.us ], [ 0, %.preheader2354.lr.ph.split.us ] ; 20 uses
  %.07422391.us = phi ptr [ %i.ade, %._crit_edge.us ], [ %i.bx, %.preheader2354.lr.ph.split.us ] ; 2 uses
  %.07472390.us = phi <16 x float> [ %.us-phi2386.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2354.lr.ph.split.us ] ; 2 uses
  %.07522389.us = phi <16 x float> [ %.us-phi2385.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2354.lr.ph.split.us ] ; 2 uses
  %.07822388.us = phi <16 x float> [ %.us-phi2384.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2354.lr.ph.split.us ] ; 2 uses
  %.122612387.us = phi <16 x float> [ %.us-phi2383.us, %._crit_edge.us ], [ %.02260, %.preheader2354.lr.ph.split.us ] ; 2 uses
  %i.ch = or disjoint i64 %indvars.iv2617, 15
  %i.ci = or disjoint i64 %indvars.iv2617, 1
  %i.cj = or disjoint i64 %indvars.iv2617, 2
  %i.ck = or disjoint i64 %indvars.iv2617, 3
  %i.cl = or disjoint i64 %indvars.iv2617, 4
  %i.cm = or disjoint i64 %indvars.iv2617, 5
  %i.cn = or disjoint i64 %indvars.iv2617, 6
  %i.co = or disjoint i64 %indvars.iv2617, 7
  %i.cp = or disjoint i64 %indvars.iv2617, 8
  %i.cq = or disjoint i64 %indvars.iv2617, 9
  %i.cr = or disjoint i64 %indvars.iv2617, 10
  %i.cs = or disjoint i64 %indvars.iv2617, 11
  %i.ct = or disjoint i64 %indvars.iv2617, 12
  %i.cu = or disjoint i64 %indvars.iv2617, 13
  %i.cv = or disjoint i64 %indvars.iv2617, 14
  %i.cw = lshr exact i64 %indvars.iv2617, 2       ; 4 uses
  %i.cx = or disjoint i64 %i.cw, 1
  %i.cy = or disjoint i64 %i.cw, 2
  %i.cz = or disjoint i64 %i.cw, 3
  %i.da = lshr exact i64 %indvars.iv2617, 3       ; 2 uses
  %i.db = or disjoint i64 %i.da, 1
  %i.dc = lshr exact i64 %indvars.iv2617, 4
  br i1 %i.ap, label %.lr.ph2376.split.us.us, label %._crit_edge.us

.lr.ph2376.split.us.us:                           ; preds = %.preheader2354.us, %.loopexit2349.us.us
  %.07402375.us.us = phi i32 [ %i.add, %.loopexit2349.us.us ], [ 0, %.preheader2354.us ] ; 3 uses
  %.17482374.us.us = phi <16 x float> [ %.10.us.us, %.loopexit2349.us.us ], [ %.07472390.us, %.preheader2354.us ] ; 4 uses
  %.17532373.us.us = phi <16 x float> [ %.10762.us.us, %.loopexit2349.us.us ], [ %.07522389.us, %.preheader2354.us ] ; 4 uses
  %.17832372.us.us = phi <16 x float> [ %.10792.us.us, %.loopexit2349.us.us ], [ %.07822388.us, %.preheader2354.us ] ; 4 uses
  %.222622371.us.us = phi <16 x float> [ %.82266.us.us, %.loopexit2349.us.us ], [ %.122612387.us, %.preheader2354.us ] ; 4 uses
  %i.dd = mul nsw i32 %i.cf, %.07402375.us.us
  %.reass2381.us.us = add i32 %i.dd, %invariant.op2380.us ; 3 uses
  %i.de = icmp slt i32 %.reass2381.us.us, 0
  br i1 %i.de, label %.loopexit2349.us.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph2376.split.us.us
  %i.df = load i32, ptr %10, align 4, !tbaa !63   ; 2 uses
  %i.dg = srem i32 %.reass2381.us.us, %i.df
  %i.dh = sdiv i32 %.reass2381.us.us, %i.df       ; 2 uses
  %.not883.us.us = icmp eq i32 %i.dg, 0
  %.not884.us.us = icmp slt i32 %i.dh, %i.ag
  %or.cond = select i1 %.not883.us.us, i1 %.not884.us.us, i1 false
  br i1 %or.cond, label %.preheader2348.us.us, label %.loopexit2349.us.us

.preheader2348.us.us:                             ; preds = %bb.e
  %i.di = load i32, ptr %11, align 4, !tbaa !63   ; 3 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph.us.us, label %.loopexit2349.us.us

.lr.ph.us.us:                                     ; preds = %.preheader2348.us.us
  %i.dk = load i32, ptr %12, align 4, !tbaa !63
  %i.dl = load i32, ptr %13, align 4, !tbaa !63
  %invariant.op.us.us = sub i32 %.neg2341, %i.dl
  %i.dm = mul nuw nsw i32 %i.di, %.07402375.us.us
  %i.dn = sext i32 %i.dh to i64                   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.di to i64
  br label %bb.f

bb.f:                                             ; preds = %.thread2293.us.us.us, %.lr.ph.us.us
  %indvars.iv2613 = phi i64 [ %indvars.iv.next2614, %.thread2293.us.us.us ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.27492363.us.us.us = phi <16 x float> [ %.8.us.us.us, %.thread2293.us.us.us ], [ %.17482374.us.us, %.lr.ph.us.us ] ; 4 uses
  %.27542362.us.us.us = phi <16 x float> [ %.8760.us.us.us, %.thread2293.us.us.us ], [ %.17532373.us.us, %.lr.ph.us.us ] ; 4 uses
  %.27842361.us.us.us = phi <16 x float> [ %.8790.us.us.us, %.thread2293.us.us.us ], [ %.17832372.us.us, %.lr.ph.us.us ] ; 4 uses
  %.322632360.us.us.us = phi <16 x float> [ %.7.us.us.us, %.thread2293.us.us.us ], [ %.222622371.us.us, %.lr.ph.us.us ] ; 4 uses
  %i.do = trunc i64 %indvars.iv2613 to i32
  %i.dp = mul i32 %i.dk, %i.do
  %.reass.us.us.us = add i32 %i.dp, %invariant.op.us.us ; 3 uses
  %i.dq = icmp slt i32 %.reass.us.us.us, 0
  br i1 %i.dq, label %.thread2293.us.us.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dr = load i32, ptr %14, align 4, !tbaa !63   ; 2 uses
  %i.ds = srem i32 %.reass.us.us.us, %i.dr
  %i.dt = sdiv i32 %.reass.us.us.us, %i.dr        ; 5 uses
  %.not885.us.us.us = icmp eq i32 %i.ds, 0
  %.not886.us.us.us = icmp slt i32 %i.dt, %i.af
  %or.cond3174 = select i1 %.not885.us.us.us, i1 %.not886.us.us.us, i1 false
  br i1 %or.cond3174, label %.split.us.us.us, label %.thread2293.us.us.us

.split.us.us.us:                                  ; preds = %bb.g
  %i.du = trunc i64 %indvars.iv2613 to i32
  %i.dv = add i32 %i.dm, %i.du
  %i.dw = shl nsw i32 %i.dv, 8
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %.07422391.us, i64 %i.dx ; 16 uses
  switch i32 %i.aq, label %.thread2293.us.us.us [
    i32 4, label %.thread.us.us.us
    i32 3, label %_ZN4ncnn3MatD2Ev.exit926.us.us.us
    i32 2, label %_ZN4ncnn3MatD2Ev.exit924.us.us.us
    i32 0, label %_ZN4ncnn3MatD2Ev.exit920.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit920.us.us.us:                ; preds = %.split.us.us.us
  %i.dz = load i32, ptr %i.n, align 4, !tbaa !55, !noalias !1962
  %i.ea = load ptr, ptr %3, align 8, !tbaa !20, !noalias !1962 ; 9 uses
  %i.eb = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !1962 ; 9 uses
  %i.ec = mul i64 %i.eb, %indvars.iv2617
  %i.ed = load i64, ptr %i.x, align 8, !tbaa !56, !noalias !1962 ; 10 uses
  %i.ee = mul i64 %i.ec, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ee
  %i.eg = sext i32 %i.dz to i64
  %i.eh = mul nsw i64 %i.eg, %i.dn
  %i.ei = mul i64 %i.eh, %i.ed                    ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ei
  %i.ek = sext i32 %i.dt to i64                   ; 16 uses
  %i.el = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2, !tbaa !92
  %i.en = zext i16 %i.em to i32
  %i.eo = shl nuw i32 %i.en, 16
  %i.ep = insertelement <16 x i32> poison, i32 %i.eo, i64 0
  %i.eq = bitcast <16 x i32> %i.ep to <16 x float>
  %i.er = shufflevector <16 x float> %i.eq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.es = mul i64 %i.eb, %i.ci
  %i.et = mul i64 %i.es, %i.ed
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ei
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.ev, i64 %i.ek
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !92
  %i.ey = zext i16 %i.ex to i32
  %i.ez = shl nuw i32 %i.ey, 16
  %i.fa = insertelement <16 x i32> poison, i32 %i.ez, i64 0
  %i.fb = bitcast <16 x i32> %i.fa to <16 x float>
  %i.fc = shufflevector <16 x float> %i.fb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fd = mul i64 %i.eb, %i.cj
  %i.fe = mul i64 %i.fd, %i.ed
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ei
  %i.fh = getelementptr inbounds [2 x i8], ptr %i.fg, i64 %i.ek
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !92
  %i.fj = zext i16 %i.fi to i32
  %i.fk = shl nuw i32 %i.fj, 16
  %i.fl = insertelement <16 x i32> poison, i32 %i.fk, i64 0
  %i.fm = bitcast <16 x i32> %i.fl to <16 x float>
  %i.fn = shufflevector <16 x float> %i.fm, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fo = mul i64 %i.eb, %i.ck
  %i.fp = mul i64 %i.fo, %i.ed
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ei
  %i.fs = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.ek
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !92
  %i.fu = zext i16 %i.ft to i32
  %i.fv = shl nuw i32 %i.fu, 16
  %i.fw = insertelement <16 x i32> poison, i32 %i.fv, i64 0
  %i.fx = bitcast <16 x i32> %i.fw to <16 x float>
  %i.fy = shufflevector <16 x float> %i.fx, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fz = mul i64 %i.eb, %i.cl
  %i.ga = mul i64 %i.fz, %i.ed
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ei
  %i.gd = getelementptr inbounds [2 x i8], ptr %i.gc, i64 %i.ek
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !92
  %i.gf = zext i16 %i.ge to i32
  %i.gg = shl nuw i32 %i.gf, 16
  %i.gh = insertelement <16 x i32> poison, i32 %i.gg, i64 0
  %i.gi = bitcast <16 x i32> %i.gh to <16 x float>
  %i.gj = shufflevector <16 x float> %i.gi, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gk = mul i64 %i.eb, %i.cm
  %i.gl = mul i64 %i.gk, %i.ed
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.ei
  %i.go = getelementptr inbounds [2 x i8], ptr %i.gn, i64 %i.ek
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !92
  %i.gq = zext i16 %i.gp to i32
  %i.gr = shl nuw i32 %i.gq, 16
  %i.gs = insertelement <16 x i32> poison, i32 %i.gr, i64 0
  %i.gt = bitcast <16 x i32> %i.gs to <16 x float>
  %i.gu = shufflevector <16 x float> %i.gt, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gv = mul i64 %i.eb, %i.cn
  %i.gw = mul i64 %i.gv, %i.ed
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.ei
  %i.gz = getelementptr inbounds [2 x i8], ptr %i.gy, i64 %i.ek
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !92
  %i.hb = zext i16 %i.ha to i32
  %i.hc = shl nuw i32 %i.hb, 16
  %i.hd = insertelement <16 x i32> poison, i32 %i.hc, i64 0
  %i.he = bitcast <16 x i32> %i.hd to <16 x float>
  %i.hf = shufflevector <16 x float> %i.he, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hg = mul i64 %i.eb, %i.co
  %i.hh = mul i64 %i.hg, %i.ed
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.ei
  %i.hk = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %i.ek
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !92
end_hunk_3
