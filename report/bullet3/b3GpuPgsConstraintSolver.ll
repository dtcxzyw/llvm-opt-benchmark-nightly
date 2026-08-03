inline.NumInlined: 714
inline.NumDeleted: 258
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN24b3GpuPgsConstraintSolver28solveGroupCacheFriendlySetupEP13b3OpenCLArrayI15b3RigidBodyDataEPS0_I13b3InertiaDataEiPS0_I22b3GpuGenericConstraintEiRK19b3ContactSolverInfo:bb.a
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fu, %bb.fx
  %storemerge = phi i32 [ %i.aob, %bb.fx ], [ %i.anm, %bb.fu ]
  store i32 %storemerge, ptr %i.amw, align 4, !tbaa !198
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anu, i64 68 ; 2 uses
  %i.aod = load float, ptr %i.aoc, align 4, !tbaa !161
  %i.aoe = fcmp une float %i.aod, 0.000000e+00
  br i1 %i.aoe, label %bb.gc, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %.not263 = icmp eq i32 %i.ans, 0
  br i1 %.not263, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  store i32 0, ptr %i.bh, align 8, !tbaa !127
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.aof = sub nsw i32 0, %i.ans
  br label %bb.gc

bb.gc:                                            ; preds = %bb.fy, %bb.gb
  %.sink = phi i32 [ %i.aof, %bb.gb ], [ %i.ans, %bb.fy ]
  %i.aog = getelementptr inbounds nuw i8, ptr %i.amw, i64 4
  store i32 %.sink, ptr %i.aog, align 4, !tbaa !199
  %i.aoh = load i32, ptr %i.bi, align 4, !tbaa !128
  %i.aoi = icmp slt i32 %i.aoh, 0
  br i1 %i.aoi, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  store i32 0, ptr %i.bi, align 4, !tbaa !128
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.aoj = icmp sgt i32 %i.amu, 0                 ; 2 uses
  br i1 %i.aoj, label %.lr.ph760.preheader, label %._crit_edge761

.lr.ph760.preheader:                              ; preds = %bb.ge
  %wide.trip.count = zext nneg i32 %i.amu to i64  ; 2 uses
  %xtraiter917 = and i64 %wide.trip.count, 1
  %i.aok = icmp eq i32 %i.amu, 1
  br i1 %i.aok, label %.lr.ph760.epil.preheader, label %.lr.ph760.preheader.new

.lr.ph760.preheader.new:                          ; preds = %.lr.ph760.preheader
  %unroll_iter920 = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph760

.lr.ph760:                                        ; preds = %.lr.ph760, %.lr.ph760.preheader.new
  %indvars.iv772 = phi i64 [ 0, %.lr.ph760.preheader.new ], [ %indvars.iv.next773.1, %.lr.ph760 ] ; 3 uses
  %niter921 = phi i64 [ 0, %.lr.ph760.preheader.new ], [ %niter921.next.1, %.lr.ph760 ]
  %i.aol = getelementptr inbounds nuw [160 x i8], ptr %i.anh, i64 %indvars.iv772 ; 5 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 80
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aol, i64 112
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aol, i64 144
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aol, i64 148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.aol, i8 0, i64 160, i1 false)
  store <2 x float> <float f0xFF7FFFFF, float f0x7F7FFFFF>, ptr %i.aon, align 16, !tbaa !184
  store float 0.000000e+00, ptr %i.aom, align 16, !tbaa !200
  store i32 %i.anm, ptr %i.aoo, align 16, !tbaa !202
  store i32 %i.ans, ptr %i.aop, align 4, !tbaa !203
  %i.aoq = getelementptr inbounds nuw [160 x i8], ptr %i.anh, i64 %indvars.iv772 ; 5 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 160
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aoq, i64 240
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aoq, i64 272
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aoq, i64 304
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aoq, i64 308
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.aor, i8 0, i64 160, i1 false)
  store <2 x float> <float f0xFF7FFFFF, float f0x7F7FFFFF>, ptr %i.aot, align 16, !tbaa !184
  store float 0.000000e+00, ptr %i.aos, align 16, !tbaa !200
  store i32 %i.anm, ptr %i.aou, align 16, !tbaa !202
  store i32 %i.ans, ptr %i.aov, align 4, !tbaa !203
  %indvars.iv.next773.1 = add nuw nsw i64 %indvars.iv772, 2 ; 2 uses
  %niter921.next.1 = add i64 %niter921, 2         ; 2 uses
  %niter921.ncmp.1 = icmp eq i64 %niter921.next.1, %unroll_iter920
  br i1 %niter921.ncmp.1, label %._crit_edge761.loopexit.unr-lcssa, label %.lr.ph760, !llvm.loop !204

._crit_edge761.loopexit.unr-lcssa:                ; preds = %.lr.ph760
  %lcmp.mod918.not = icmp eq i64 %xtraiter917, 0
  br i1 %lcmp.mod918.not, label %._crit_edge761, label %.lr.ph760.epil.preheader

.lr.ph760.epil.preheader:                         ; preds = %._crit_edge761.loopexit.unr-lcssa, %.lr.ph760.preheader
  %indvars.iv772.epil.init = phi i64 [ 0, %.lr.ph760.preheader ], [ %indvars.iv.next773.1, %._crit_edge761.loopexit.unr-lcssa ]
  %lcmp.mod919 = trunc i32 %i.amu to i1
  call void @llvm.assume(i1 %lcmp.mod919)
  %i.aow = getelementptr inbounds nuw [160 x i8], ptr %i.anh, i64 %indvars.iv772.epil.init ; 5 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 80
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aow, i64 112
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aow, i64 144
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aow, i64 148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.aow, i8 0, i64 160, i1 false)
  store <2 x float> <float f0xFF7FFFFF, float f0x7F7FFFFF>, ptr %i.aoy, align 16, !tbaa !184
  store float 0.000000e+00, ptr %i.aox, align 16, !tbaa !200
  store i32 %i.anm, ptr %i.aoz, align 16, !tbaa !202
  store i32 %i.ans, ptr %i.apa, align 4, !tbaa !203
  br label %._crit_edge761

._crit_edge761:                                   ; preds = %.lr.ph760.epil.preheader, %._crit_edge761.loopexit.unr-lcssa, %bb.ge
  %i.apb = getelementptr inbounds nuw i8, ptr %i.anw, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.anw, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.apb, i8 0, i64 32, i1 false)
  %i.apc = getelementptr inbounds nuw i8, ptr %i.anx, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.anx, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.apc, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.apd = load float, ptr %i.alx, align 4, !tbaa !205
  %i.ape = fdiv float 1.000000e+00, %i.apd
  store float %i.ape, ptr %12, align 8, !tbaa !207
  %i.apf = load float, ptr %i.aly, align 4, !tbaa !210
  store float %i.apf, ptr %i.alz, align 4, !tbaa !211
  %i.apg = getelementptr inbounds nuw i8, ptr %i.anh, i64 16
  store ptr %i.apg, ptr %i.ama, align 8, !tbaa !212
  store ptr %i.anh, ptr %i.amb, align 8, !tbaa !213
  store ptr null, ptr %i.amc, align 8, !tbaa !214
  %i.aph = getelementptr inbounds nuw i8, ptr %i.anh, i64 32
  store ptr %i.aph, ptr %i.amd, align 8, !tbaa !215
  store i32 40, ptr %i.ame, align 8, !tbaa !216
  %i.api = getelementptr inbounds nuw i8, ptr %i.anh, i64 104
  store ptr %i.api, ptr %i.amf, align 8, !tbaa !217
  %i.apj = load float, ptr %i.amg, align 4, !tbaa !218
  %i.apk = getelementptr inbounds nuw i8, ptr %i.anh, i64 108 ; 2 uses
  store float %i.apj, ptr %i.apk, align 4, !tbaa !219
  %i.apl = load float, ptr %i.amh, align 4, !tbaa !220
  store float %i.apl, ptr %i.ami, align 4, !tbaa !221
  store ptr %i.apk, ptr %i.amj, align 8, !tbaa !222
  %i.apm = getelementptr inbounds nuw i8, ptr %i.anh, i64 112
  store ptr %i.apm, ptr %i.amk, align 8, !tbaa !223
  %i.apn = getelementptr inbounds nuw i8, ptr %i.anh, i64 116
  store ptr %i.apn, ptr %i.aml, align 8, !tbaa !224
  %i.apo = load i32, ptr %i.amm, align 4, !tbaa !225
  store i32 %i.apo, ptr %i.amn, align 8, !tbaa !226
  %i.app = load ptr, ptr %i.bb, align 8, !tbaa !62 ; 2 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 336
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !115
  %i.aps = getelementptr inbounds nuw [80 x i8], ptr %i.apr, i64 %indvars.iv780
  %i.apt = getelementptr inbounds nuw i8, ptr %i.app, i64 272
  %i.apu = load ptr, ptr %i.apt, align 8, !tbaa !117
  invoke void @_ZN22b3GpuGenericConstraint8getInfo2EP20b3GpuConstraintInfo2PK15b3RigidBodyData(ptr noundef nonnull align 16 dereferenceable(80) %i.aps, ptr noundef nonnull %12, ptr noundef nonnull %i.apu)
          to label %.preheader unwind label %bb.gh

.preheader:                                       ; preds = %._crit_edge761
  br i1 %i.aoj, label %.lr.ph763, label %._crit_edge764

.lr.ph763:                                        ; preds = %.preheader
  %i.apv = getelementptr inbounds nuw i8, ptr %i.anq, i64 32
  %i.apw = getelementptr inbounds nuw i8, ptr %i.anq, i64 36
  %i.apx = getelementptr inbounds nuw i8, ptr %i.anq, i64 40
  %i.apy = getelementptr inbounds nuw i8, ptr %i.anq, i64 48
  %i.apz = getelementptr inbounds nuw i8, ptr %i.anq, i64 52
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.anq, i64 56
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.anu, i64 32
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.anu, i64 36
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.anu, i64 40
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.anu, i64 48
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.anu, i64 52
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.anu, i64 56
  %wide.trip.count778 = zext nneg i32 %i.amu to i64
  br label %bb.gf

bb.gf:                                            ; preds = %.lr.ph763, %bb.gk
  %indvars.iv775 = phi i64 [ 0, %.lr.ph763 ], [ %indvars.iv.next776, %bb.gk ] ; 2 uses
  %i.aqh = getelementptr inbounds nuw [160 x i8], ptr %i.anh, i64 %indvars.iv775 ; 18 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 116 ; 2 uses
  %i.aqj = load float, ptr %i.aqi, align 4, !tbaa !227
  %i.aqk = load ptr, ptr %i.bb, align 8, !tbaa !62 ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 336
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !115
  %i.aqn = getelementptr inbounds nuw [80 x i8], ptr %i.aqm, i64 %indvars.iv780
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 12
  %i.aqp = load float, ptr %i.aqo, align 4, !tbaa !228 ; 3 uses
  %i.aqq = fcmp ult float %i.aqj, %i.aqp
  br i1 %i.aqq, label %bb.gi, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  store float %i.aqp, ptr %i.aqi, align 4, !tbaa !227
  br label %bb.gi

bb.gh:                                            ; preds = %._crit_edge761
  %i.aqr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZN13b3ProfileZoneD2Ev.exit303

bb.gi:                                            ; preds = %bb.gg, %bb.gf
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqh, i64 112 ; 2 uses
  %i.aqt = load float, ptr %i.aqs, align 16, !tbaa !229
  %i.aqu = fneg float %i.aqp                      ; 2 uses
  %i.aqv = fcmp ugt float %i.aqt, %i.aqu
  br i1 %i.aqv, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  store float %i.aqu, ptr %i.aqs, align 16, !tbaa !229
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.aqw = load i32, ptr %i.anl, align 4, !tbaa !196
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqk, i64 304
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !116
  %i.aqz = sext i32 %i.aqw to i64
  %i.ara = getelementptr inbounds [96 x i8], ptr %i.aqy, i64 %i.aqz ; 10 uses
  %13 = load float, ptr %i.aqh, align 16, !tbaa !9 ; 7 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 4
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqh, i64 4
  %14 = load float, ptr %i.arc, align 4, !tbaa !9 ; 7 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.ara, i64 8 ; 2 uses
  %i.are = load float, ptr %i.ard, align 8, !tbaa !9
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqh, i64 8
  %i.arg = load float, ptr %i.arf, align 8, !tbaa !9 ; 7 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %i.ara, i64 16 ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.ara, i64 20
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ara, i64 24 ; 2 uses
  %i.ark = load float, ptr %i.arj, align 8, !tbaa !9
  %i.arl = load <2 x float>, ptr %i.ara, align 16, !tbaa !9 ; 2 uses
  %i.arm = load <2 x float>, ptr %i.arh, align 16, !tbaa !9 ; 2 uses
  %i.arn = insertelement <2 x float> poison, float %14, i64 0
  %i.aro = shufflevector <2 x float> %i.arn, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = shufflevector <2 x float> %i.arl, <2 x float> %i.arm, <2 x i32> <i32 1, i32 3>
  %16 = fmul <2 x float> %i.aro, %15
  %17 = shufflevector <2 x float> %i.arl, <2 x float> %i.arm, <2 x i32> <i32 0, i32 2>
  %18 = insertelement <2 x float> poison, float %13, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> %19, <2 x float> %16)
  %21 = insertelement <2 x float> poison, float %i.are, i64 0
  %22 = insertelement <2 x float> %21, float %i.ark, i64 1
  %i.arp = insertelement <2 x float> poison, float %i.arg, i64 0
  %i.arq = shufflevector <2 x float> %i.arp, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %i.arq, <2 x float> %20)
  %i.arr = getelementptr inbounds nuw i8, ptr %i.ara, i64 32 ; 2 uses
  %24 = load float, ptr %i.arr, align 16, !tbaa !9
  %i.ars = getelementptr inbounds nuw i8, ptr %i.ara, i64 36 ; 2 uses
  %i.art = load float, ptr %i.ars, align 4, !tbaa !9
  %25 = fmul float %14, %i.art
  %26 = call float @llvm.fmuladd.f32(float %24, float %13, float %25)
  %27 = getelementptr inbounds nuw i8, ptr %i.ara, i64 40 ; 2 uses
  %28 = load float, ptr %27, align 8, !tbaa !9
  %29 = call noundef float @llvm.fmuladd.f32(float %28, float %i.arg, float %26)
  %.sroa.3.12.vec.insert.i.i405 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %29, i64 0
  %30 = getelementptr inbounds nuw i8, ptr %i.aqh, i64 48
  store <2 x float> %23, ptr %30, align 16
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqh, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i405, ptr %.sroa.518.0..sroa_idx, align 8, !tbaa !9
  %i.aru = load ptr, ptr %i.bb, align 8, !tbaa !62
  %i.arv = load i32, ptr %i.anr, align 8, !tbaa !197
  %i.arw = getelementptr inbounds nuw i8, ptr %i.aru, i64 304
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !116
  %i.ary = sext i32 %i.arv to i64
  %i.arz = getelementptr inbounds [96 x i8], ptr %i.arx, i64 %i.ary ; 10 uses
  %31 = getelementptr inbounds nuw i8, ptr %i.aqh, i64 32
  %32 = load float, ptr %31, align 16, !tbaa !9   ; 7 uses
  %33 = getelementptr inbounds nuw i8, ptr %i.arz, i64 4
  %i.asa = getelementptr inbounds nuw i8, ptr %i.aqh, i64 36
  %34 = load float, ptr %i.asa, align 4, !tbaa !9 ; 7 uses
  %35 = getelementptr inbounds nuw i8, ptr %i.arz, i64 8 ; 2 uses
  %i.asb = load float, ptr %35, align 8, !tbaa !9
  %i.asc = getelementptr inbounds nuw i8, ptr %i.aqh, i64 40
  %i.asd = load float, ptr %i.asc, align 8, !tbaa !9 ; 7 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.arz, i64 16 ; 2 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.arz, i64 20
  %i.asg = getelementptr inbounds nuw i8, ptr %i.arz, i64 24 ; 2 uses
  %i.ash = load float, ptr %i.asg, align 8, !tbaa !9
  %i.asi = load <2 x float>, ptr %i.arz, align 16, !tbaa !9 ; 2 uses
  %i.asj = load <2 x float>, ptr %i.ase, align 16, !tbaa !9 ; 2 uses
  %36 = insertelement <2 x float> poison, float %34, i64 0
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ask = shufflevector <2 x float> %i.asi, <2 x float> %i.asj, <2 x i32> <i32 1, i32 3>
  %i.asl = fmul <2 x float> %37, %i.ask
  %i.asm = shufflevector <2 x float> %i.asi, <2 x float> %i.asj, <2 x i32> <i32 0, i32 2>
  %38 = insertelement <2 x float> poison, float %32, i64 0
  %i.asn = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aso = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asm, <2 x float> %i.asn, <2 x float> %i.asl)
  %39 = insertelement <2 x float> poison, float %i.asb, i64 0
  %i.asp = insertelement <2 x float> %39, float %i.ash, i64 1
  %i.asq = insertelement <2 x float> poison, float %i.asd, i64 0
  %40 = shufflevector <2 x float> %i.asq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.asr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asp, <2 x float> %40, <2 x float> %i.aso)
  %i.ass = getelementptr inbounds nuw i8, ptr %i.arz, i64 32 ; 2 uses
  %i.ast = load float, ptr %i.ass, align 16, !tbaa !9
  %i.asu = getelementptr inbounds nuw i8, ptr %i.arz, i64 36 ; 2 uses
  %i.asv = load float, ptr %i.asu, align 4, !tbaa !9
  %i.asw = fmul float %34, %i.asv
  %i.asx = call float @llvm.fmuladd.f32(float %i.ast, float %32, float %i.asw)
  %i.asy = getelementptr inbounds nuw i8, ptr %i.arz, i64 40 ; 2 uses
  %i.asz = load float, ptr %i.asy, align 8, !tbaa !9
  %i.ata = call noundef float @llvm.fmuladd.f32(float %i.asz, float %i.asd, float %i.asx)
  %.sroa.3.12.vec.insert.i.i408 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ata, i64 0
  %41 = getelementptr inbounds nuw i8, ptr %i.aqh, i64 64
  store <2 x float> %i.asr, ptr %41, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqh, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i.i408, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !9
  %42 = getelementptr inbounds nuw i8, ptr %i.aqh, i64 16
  %i.atb = load float, ptr %42, align 16, !tbaa !9 ; 6 uses
  %i.atc = load float, ptr %i.any, align 4, !tbaa !184 ; 3 uses
  %43 = fmul float %i.atb, %i.atc
  %44 = getelementptr inbounds nuw i8, ptr %i.aqh, i64 20
  %i.atd = load float, ptr %44, align 4, !tbaa !9 ; 6 uses
  %45 = fmul float %i.atc, %i.atd
  %46 = getelementptr inbounds nuw i8, ptr %i.aqh, i64 24
  %i.ate = load float, ptr %46, align 8, !tbaa !9 ; 6 uses
  %47 = fmul float %i.atc, %i.ate
  %i.atf = load float, ptr %i.ara, align 16, !tbaa !9
  %i.atg = load float, ptr %i.arb, align 4, !tbaa !9
  %i.ath = fmul float %14, %i.atg
  %i.ati = call float @llvm.fmuladd.f32(float %i.atf, float %13, float %i.ath)
  %i.atj = load float, ptr %i.ard, align 8, !tbaa !9
  %i.atk = call noundef float @llvm.fmuladd.f32(float %i.atj, float %i.arg, float %i.ati)
  %i.atl = load float, ptr %i.arh, align 16, !tbaa !9
  %i.atm = load float, ptr %i.ari, align 4, !tbaa !9
  %i.atn = fmul float %14, %i.atm
  %48 = call float @llvm.fmuladd.f32(float %i.atl, float %13, float %i.atn)
  %49 = load float, ptr %i.arj, align 8, !tbaa !9
  %i.ato = call noundef float @llvm.fmuladd.f32(float %49, float %i.arg, float %48)
  %50 = load float, ptr %i.arr, align 16, !tbaa !9
  %i.atp = load float, ptr %i.ars, align 4, !tbaa !9
  %51 = fmul float %14, %i.atp
  %i.atq = call float @llvm.fmuladd.f32(float %50, float %13, float %51)
  %i.atr = load float, ptr %27, align 8, !tbaa !9
  %52 = call noundef float @llvm.fmuladd.f32(float %i.atr, float %i.arg, float %i.atq)
  %53 = load float, ptr %i.aoc, align 4, !tbaa !184 ; 3 uses
  %i.ats = fmul float %i.atb, %53
  %i.att = fmul float %i.atd, %53
  %i.atu = fmul float %i.ate, %53
  %54 = load float, ptr %i.arz, align 16, !tbaa !9
  %i.atv = load float, ptr %33, align 4, !tbaa !9
  %55 = fmul float %34, %i.atv
  %i.atw = call float @llvm.fmuladd.f32(float %54, float %32, float %55)
  %56 = load float, ptr %35, align 8, !tbaa !9
  %57 = call noundef float @llvm.fmuladd.f32(float %56, float %i.asd, float %i.atw)
  %58 = load float, ptr %i.ase, align 16, !tbaa !9
  %59 = load float, ptr %i.asf, align 4, !tbaa !9
  %60 = fmul float %34, %59
  %61 = call float @llvm.fmuladd.f32(float %58, float %32, float %60)
  %62 = load float, ptr %i.asg, align 8, !tbaa !9
  %63 = call noundef float @llvm.fmuladd.f32(float %62, float %i.asd, float %61)
  %64 = load float, ptr %i.ass, align 16, !tbaa !9
  %65 = load float, ptr %i.asu, align 4, !tbaa !9
  %66 = fmul float %34, %65
  %67 = call float @llvm.fmuladd.f32(float %64, float %32, float %66)
  %68 = load float, ptr %i.asy, align 8, !tbaa !9
  %69 = call noundef float @llvm.fmuladd.f32(float %68, float %i.asd, float %67)
  %70 = fmul float %i.atd, %45
  %71 = call float @llvm.fmuladd.f32(float %43, float %i.atb, float %70)
  %72 = call noundef float @llvm.fmuladd.f32(float %47, float %i.ate, float %71)
  %73 = fmul float %14, %i.ato
  %74 = call float @llvm.fmuladd.f32(float %i.atk, float %13, float %73)
  %75 = call noundef float @llvm.fmuladd.f32(float %52, float %i.arg, float %74)
  %76 = fadd float %72, %75
  %77 = fmul float %i.atd, %i.att
  %78 = call float @llvm.fmuladd.f32(float %i.ats, float %i.atb, float %77)
  %79 = call noundef float @llvm.fmuladd.f32(float %i.atu, float %i.ate, float %78)
  %80 = fadd float %76, %79
  %81 = fmul float %34, %63
  %82 = call float @llvm.fmuladd.f32(float %57, float %32, float %81)
  %83 = call noundef float @llvm.fmuladd.f32(float %69, float %i.asd, float %82)
  %84 = fadd float %80, %83                       ; 2 uses
  %i.atx = call noundef float @llvm.fabs.f32(float %84)
  %i.aty = fcmp ogt float %i.atx, f0x34000000
  %i.atz = fdiv float 1.000000e+00, %84
  %i.aua = select i1 %i.aty, float %i.atz, float 0.000000e+00 ; 3 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aqh, i64 100
  store float %i.aua, ptr %i.aub, align 4, !tbaa !230
  %i.auc = load float, ptr %i.apv, align 16, !tbaa !9
  %i.aud = load float, ptr %i.apw, align 4, !tbaa !9
  %i.aue = fmul float %i.atd, %i.aud
  %i.auf = call float @llvm.fmuladd.f32(float %i.atb, float %i.auc, float %i.aue)
  %i.aug = load float, ptr %i.apx, align 8, !tbaa !9
  %i.auh = call noundef float @llvm.fmuladd.f32(float %i.ate, float %i.aug, float %i.auf)
  %i.aui = load float, ptr %i.apy, align 16, !tbaa !9
  %i.auj = load float, ptr %i.apz, align 4, !tbaa !9
  %i.auk = fmul float %14, %i.auj
  %i.aul = call float @llvm.fmuladd.f32(float %13, float %i.aui, float %i.auk)
  %i.aum = load float, ptr %i.aqa, align 8, !tbaa !9
  %i.aun = call noundef float @llvm.fmuladd.f32(float %i.arg, float %i.aum, float %i.aul)
  %i.auo = fadd float %i.auh, %i.aun
  %i.aup = load float, ptr %i.aqb, align 16, !tbaa !9
  %i.auq = load float, ptr %i.aqc, align 4, !tbaa !9
  %i.aur = fmul float %i.atd, %i.auq
  %i.aus = call float @llvm.fmuladd.f32(float %i.atb, float %i.aup, float %i.aur)
  %i.aut = load float, ptr %i.aqd, align 8, !tbaa !9
  %i.auu = call noundef float @llvm.fmuladd.f32(float %i.ate, float %i.aut, float %i.aus)
  %i.auv = load float, ptr %i.aqe, align 16, !tbaa !9
  %i.auw = load float, ptr %i.aqf, align 4, !tbaa !9
  %i.aux = fmul float %34, %i.auw
  %i.auy = call float @llvm.fmuladd.f32(float %32, float %i.auv, float %i.aux)
  %i.auz = load float, ptr %i.aqg, align 8, !tbaa !9
  %i.ava = call noundef float @llvm.fmuladd.f32(float %i.asd, float %i.auz, float %i.auy)
  %i.avb = fsub float %i.ava, %i.auu
  %i.avc = fadd float %i.auo, %i.avb
  %i.avd = getelementptr inbounds nuw i8, ptr %i.aqh, i64 104 ; 2 uses
  %i.ave = load float, ptr %i.avd, align 8, !tbaa !231
  %i.avf = load float, ptr %i.ami, align 4, !tbaa !221
  %i.avg = fneg float %i.avc
  %i.avh = call float @llvm.fmuladd.f32(float %i.avg, float %i.avf, float 0.000000e+00)
  %i.avi = fmul float %i.aua, %i.ave
  %i.avj = fmul float %i.aua, %i.avh
  %i.avk = fadd float %i.avi, %i.avj
  store float %i.avk, ptr %i.avd, align 8, !tbaa !231
  %i.avl = getelementptr inbounds nuw i8, ptr %i.aqh, i64 84
  store float 0.000000e+00, ptr %i.avl, align 4, !tbaa !232
  %indvars.iv.next776 = add nuw nsw i64 %indvars.iv775, 1 ; 2 uses
  %exitcond779.not = icmp eq i64 %indvars.iv.next776, %wide.trip.count778
  br i1 %exitcond779.not, label %._crit_edge764, label %bb.gf, !llvm.loop !233

._crit_edge764:                                   ; preds = %bb.gk, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.pre785 = load i32, ptr %i.k, align 4, !tbaa !104
  br label %bb.gl

bb.gl:                                            ; preds = %._crit_edge764, %bb.ft
  %i.avm = phi i32 [ %.pre785, %._crit_edge764 ], [ %i.amr, %bb.ft ] ; 2 uses
  %indvars.iv.next781 = add nuw nsw i64 %indvars.iv780, 1 ; 2 uses
  %i.avn = sext i32 %i.avm to i64
  %i.avo = icmp slt i64 %indvars.iv.next781, %i.avn
  br i1 %i.avo, label %bb.ft, label %._crit_edge767, !llvm.loop !234

bb.gm:                                            ; preds = %._crit_edge767
  %i.avp = load ptr, ptr %i.bb, align 8, !tbaa !62
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avp, i64 120
  %i.avr = load ptr, ptr %i.avq, align 8, !tbaa !103
  invoke void @_ZN13b3OpenCLArrayIjE12copyFromHostERK20b3AlignedObjectArrayIjEb(ptr noundef nonnull align 8 dereferenceable(50) %i.avr, ptr noundef nonnull align 8 dereferenceable(25) %i.ii, i1 noundef zeroext true)
          to label %bb.gn unwind label %bb.cb

bb.gn:                                            ; preds = %bb.gm
  %i.avs = load ptr, ptr %i.bb, align 8, !tbaa !62 ; 2 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avs, i64 356
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !61
  %i.avv = icmp eq i32 %i.avu, 0
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avs, i64 104
  %i.avx = load ptr, ptr %i.avw, align 8, !tbaa !96 ; 2 uses
  br i1 %i.avv, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  invoke void @_ZN13b3OpenCLArrayI17b3BatchConstraintE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.avx, ptr noundef nonnull align 8 dereferenceable(25) @_ZL16batchConstraints, i1 noundef zeroext true)
          to label %bb.gq unwind label %bb.cb

bb.gp:                                            ; preds = %bb.gn
  invoke void @_ZNK13b3OpenCLArrayI17b3BatchConstraintE10copyToHostER20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.avx, ptr noundef nonnull align 8 dereferenceable(25) @_ZL16batchConstraints, i1 noundef zeroext true)
          to label %bb.gq unwind label %bb.cb

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.avy = load ptr, ptr %i.bb, align 8, !tbaa !62
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 96
  %i.awa = load ptr, ptr %i.avz, align 8, !tbaa !90
  invoke void @_ZN13b3OpenCLArrayI15b3GpuSolverBodyE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.awa, ptr noundef nonnull align 8 dereferenceable(25) %i.bp, i1 noundef zeroext true)
          to label %_ZN13b3ProfileZoneD2Ev.exit395 unwind label %bb.cb

_ZN13b3ProfileZoneD2Ev.exit395:                   ; preds = %bb.fl, %bb.gq
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit431 unwind label %bb.gr

bb.gr:                                            ; preds = %_ZN13b3ProfileZoneD2Ev.exit395
  %i.awb = landingpad { ptr, i32 }
          catch ptr null
  %i.awc = extractvalue { ptr, i32 } %i.awb, 0
  call void @__clang_call_terminate(ptr %i.awc) #25
  unreachable

_ZN13b3ProfileZoneD2Ev.exit431:                   ; preds = %_ZN13b3ProfileZoneD2Ev.exit395
  ret float 0.000000e+00

_ZN13b3ProfileZoneD2Ev.exit303:                   ; preds = %bb.fi, %bb.fn, %bb.cc, %_ZN13b3ProfileZoneD2Ev.exit351, %bb.ad, %bb.ag, %bb.cb, %bb.cz, %bb.gh, %bb.ac, %bb.ab, %bb.aa
  %.pn271.pn.pn.pn = phi { ptr, i32 } [ %i.gx, %bb.aa ], [ %i.uw, %bb.cz ], [ %.pn271, %bb.fn ], [ %i.gy, %bb.ab ], [ %i.gz, %bb.ac ], [ %.pn254.pn.pn.pn.pn, %_ZN13b3ProfileZoneD2Ev.exit351 ], [ %i.aqr, %bb.gh ], [ %i.tg, %bb.cb ], [ %.pn, %bb.ag ], [ %i.ha, %bb.ad ], [ %i.th, %bb.cc ], [ %i.akr, %bb.fi ]
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit432 unwind label %bb.gs

bb.gs:                                            ; preds = %_ZN13b3ProfileZoneD2Ev.exit303
  %i.awd = landingpad { ptr, i32 }
          catch ptr null
  %i.awe = extractvalue { ptr, i32 } %i.awd, 0
  call void @__clang_call_terminate(ptr %i.awe) #25
  unreachable

_ZN13b3ProfileZoneD2Ev.exit432:                   ; preds = %_ZN13b3ProfileZoneD2Ev.exit303
  resume { ptr, i32 } %.pn271.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN13b3OpenCLArrayI17b3BatchConstraintE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !235
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !236
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.c, label %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.i = load i8, ptr %i.h, align 1, !tbaa !95, !range !113, !noundef !131
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.k = shl i64 %1, 4
  %i.l = load ptr, ptr @__clewCreateBuffer, align 8, !tbaa !112
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !91
  %i.o = call ptr %i.l(ptr noundef %i.n, i64 noundef 1, i64 noundef %i.k, ptr noundef null, ptr noundef nonnull %i.a), !inline_history !237 ; 2 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !104
  %.not.i = icmp eq i32 %i.p, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %.thread.i

.thread.i:                                        ; preds = %bb.d
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.37, i32 noundef 166)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.38)
  br label %_ZNK13b3OpenCLArrayI17b3BatchConstraintE8copyToCLEP7_cl_memmmm.exit.i

bb.e:                                             ; preds = %bb.d
  br i1 %2, label %bb.f, label %_ZNK13b3OpenCLArrayI17b3BatchConstraintE8copyToCLEP7_cl_memmmm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr %i.b, align 8, !tbaa !235  ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZNK13b3OpenCLArrayI17b3BatchConstraintE8copyToCLEP7_cl_memmmm.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr @__clewEnqueueCopyBuffer, align 8, !tbaa !112
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !93
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !179
  %i.x = shl i64 %i.q, 4
  %i.y = call i32 %i.s(ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.o, i64 noundef 0, i64 noundef 0, i64 noundef %i.x, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !238 ; 0 uses
  br label %_ZNK13b3OpenCLArrayI17b3BatchConstraintE8copyToCLEP7_cl_memmmm.exit.i

_ZNK13b3OpenCLArrayI17b3BatchConstraintE8copyToCLEP7_cl_memmmm.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %.thread.i
  %.017.i = phi i64 [ 0, %.thread.i ], [ %1, %bb.e ], [ %1, %bb.f ], [ %1, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !179 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i8, ptr %i.ab, align 8, !range !113
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.ad, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit

bb.h:                                             ; preds = %_ZNK13b3OpenCLArrayI17b3BatchConstraintE8copyToCLEP7_cl_memmmm.exit.i
  %i.ae = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !112
  %i.af = call i32 %i.ae(ptr noundef nonnull %i.aa), !inline_history !239 ; 0 uses
  br label %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit

bb.i:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !179 ; 2 uses
  %.not.i12.i = icmp ne ptr %i.ah, null
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load i8, ptr %i.ai, align 8, !range !113
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond.i13.i = select i1 %.not.i12.i, i1 %i.ak, i1 false
  br i1 %or.cond.i13.i, label %bb.j, label %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit.thread12

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !112
  %i.am = tail call i32 %i.al(ptr noundef nonnull %i.ah), !inline_history !239 ; 0 uses
  br label %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit.thread12

_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit.thread12: ; preds = %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.k

_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit: ; preds = %_ZNK13b3OpenCLArrayI17b3BatchConstraintE8copyToCLEP7_cl_memmmm.exit.i, %bb.h
  store ptr %i.o, ptr %i.z, align 8, !tbaa !179
  store i64 %.017.i, ptr %i.e, align 8, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br i1 %.not.i, label %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit.thread12, %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit
  br label %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit.thread

_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit.thread: ; preds = %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit, %bb.a, %bb.b, %bb.k
  %storemerge = phi i64 [ 0, %bb.k ], [ %1, %bb.b ], [ %1, %bb.a ], [ %1, %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit ]
  %.010 = phi i1 [ false, %bb.k ], [ true, %bb.b ], [ true, %bb.a ], [ true, %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit ]
  store i64 %storemerge, ptr %i.b, align 8, !tbaa !235
  ret i1 %.010
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN13b3OpenCLArrayI15b3GpuSolverBodyE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN13b3OpenCLArrayI21b3GpuSolverConstraintED2Ev:bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !112
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d, !inline_history !339 ; 0 uses

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI21b3GpuSolverConstraintED0Ev(ptr noundef nonnull align 8 dereferenceable(50) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI21b3GpuSolverConstraintE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !113
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN13b3OpenCLArrayI21b3GpuSolverConstraintED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !112
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %_ZN13b3OpenCLArrayI21b3GpuSolverConstraintED2Ev.exit unwind label %bb.c, !inline_history !340 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #25, !inline_history !341
  unreachable

_ZN13b3OpenCLArrayI21b3GpuSolverConstraintED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI13b3InertiaDataE6resizeEiRKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1, ptr noundef nonnull align 16 dereferenceable(96) %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52   ; 2 uses
  %i.c = icmp sgt i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !342
  %i.f = icmp slt i32 %i.e, %1
  br i1 %i.f, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i, label %.split7.i, label %_ZN20b3AlignedObjectArrayI13b3InertiaDataE8allocateEi.exit.i

_ZN20b3AlignedObjectArrayI13b3InertiaDataE8allocateEi.exit.i: ; preds = %bb.c
  %i.g = sext i32 %1 to i64
  %i.h = mul nsw i64 %i.g, 96
  %i.i = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.h, i32 noundef 16) ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.split7.i, label %.split.i

.split.i:                                         ; preds = %_ZN20b3AlignedObjectArrayI13b3InertiaDataE8allocateEi.exit.i
  %i.k = load i32, ptr %i.a, align 4, !tbaa !52   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i.i, label %_ZNK20b3AlignedObjectArrayI13b3InertiaDataE4copyEiiPS0_.exit.i

.lr.ph.i.i:                                       ; preds = %.split.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count.i.i = zext nneg i32 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 3 uses
  %i.n = getelementptr inbounds nuw [96 x i8], ptr %i.i, i64 %indvars.iv.i.i ; 6 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !116
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %indvars.iv.i.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.n, ptr noundef nonnull align 16 dereferenceable(96) %i.p, i64 16, i1 false), !tbaa.struct !167
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.r, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !167
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !167
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %i.v, i64 16, i1 false), !tbaa.struct !167
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.x, ptr noundef nonnull align 16 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !167
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull align 16 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !167
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK20b3AlignedObjectArrayI13b3InertiaDataE4copyEiiPS0_.exit.i, label %bb.d, !llvm.loop !343

.split7.i:                                        ; preds = %_ZN20b3AlignedObjectArrayI13b3InertiaDataE8allocateEi.exit.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.36)
  store i32 0, ptr %i.a, align 4, !tbaa !52
  br label %_ZNK20b3AlignedObjectArrayI13b3InertiaDataE4copyEiiPS0_.exit.i

_ZNK20b3AlignedObjectArrayI13b3InertiaDataE4copyEiiPS0_.exit.i: ; preds = %bb.d, %.split7.i, %.split.i
  %.0.i12.i = phi ptr [ null, %.split7.i ], [ %i.i, %.split.i ], [ %i.i, %bb.d ]
  %.0.i = phi i32 [ 0, %.split7.i ], [ %1, %.split.i ], [ %1, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !116 ; 2 uses
  %.not.i10.i = icmp eq ptr %i.ab, null
  br i1 %.not.i10.i, label %_ZN20b3AlignedObjectArrayI13b3InertiaDataE10deallocateEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI13b3InertiaDataE4copyEiiPS0_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !48, !range !113, !noundef !131
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %_ZN20b3AlignedObjectArrayI13b3InertiaDataE10deallocateEv.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.ab)
  br label %_ZN20b3AlignedObjectArrayI13b3InertiaDataE10deallocateEv.exit.i

_ZN20b3AlignedObjectArrayI13b3InertiaDataE10deallocateEv.exit.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayI13b3InertiaDataE4copyEiiPS0_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.af, align 8, !tbaa !48
  store ptr %.0.i12.i, ptr %i.aa, align 8, !tbaa !116
  store i32 %.0.i, ptr %i.d, align 8, !tbaa !342
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZN20b3AlignedObjectArrayI13b3InertiaDataE10deallocateEv.exit.i, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.am = sext i32 %i.b to i64
  %wide.trip.count = sext i32 %1 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %i.am, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !116
  %i.ao = getelementptr inbounds [96 x i8], ptr %i.an, i64 %indvars.iv ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ao, ptr noundef nonnull align 16 dereferenceable(96) %2, i64 16, i1 false), !tbaa.struct !167
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ap, ptr noundef nonnull align 16 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !167
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, ptr noundef nonnull align 16 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !167
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ar, ptr noundef nonnull align 16 dereferenceable(48) %i.aj, i64 16, i1 false), !tbaa.struct !167
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.as, ptr noundef nonnull align 16 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !167
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.at, ptr noundef nonnull align 16 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !167
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !344

.loopexit:                                        ; preds = %bb.g, %bb.a
  store i32 %1, ptr %i.a, align 4, !tbaa !52
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_b3GpuPgsConstraintSolver.cpp() #20 section ".text.startup" {
bb.a:
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL16batchConstraints, i64 24), align 8, !tbaa !38
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZL16batchConstraints, i64 16), align 8, !tbaa !118
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16batchConstraints, i64 4), align 4, !tbaa !42
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16batchConstraints, i64 8), align 8, !tbaa !120
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN20b3AlignedObjectArrayI17b3BatchConstraintED2Ev, ptr nonnull @_ZL16batchConstraints, ptr nonnull @__dso_handle) #23 ; 0 uses
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL8bodyUsed, i64 24), align 8, !tbaa !58
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZL8bodyUsed, i64 16), align 8, !tbaa !114
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL8bodyUsed, i64 4), align 4, !tbaa !61
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL8bodyUsed, i64 8), align 8, !tbaa !119
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZN20b3AlignedObjectArrayIiED2Ev, ptr nonnull @_ZL8bodyUsed, ptr nonnull @__dso_handle) #23 ; 0 uses
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL7curUsed, i64 24), align 8, !tbaa !58
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZL7curUsed, i64 16), align 8, !tbaa !114
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL7curUsed, i64 4), align 4, !tbaa !61
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL7curUsed, i64 8), align 8, !tbaa !119
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZN20b3AlignedObjectArrayIiED2Ev, ptr nonnull @_ZL7curUsed, ptr nonnull @__dso_handle) #23 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"vtable pointer", !8, i64 0}
!12 = !{!13, !17, i64 24}
!13 = !{!"_ZTS20b3AlignedObjectArrayI15b3GpuSolverBodyE", !14, i64 0, !6, i64 4, !6, i64 8, !15, i64 16, !17, i64 24}
!14 = !{!"_ZTS18b3AlignedAllocatorI15b3GpuSolverBodyLj16EE"}
!15 = !{!"p1 _ZTS15b3GpuSolverBody", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!"bool", !7, i64 0}
!18 = !{!13, !15, i64 16}
!19 = !{!13, !6, i64 4}
!20 = !{!13, !6, i64 8}
!21 = !{!22, !17, i64 24}
!22 = !{!"_ZTS20b3AlignedObjectArrayI21b3GpuSolverConstraintE", !23, i64 0, !6, i64 4, !6, i64 8, !24, i64 16, !17, i64 24}
!23 = !{!"_ZTS18b3AlignedAllocatorI21b3GpuSolverConstraintLj16EE"}
!24 = !{!"p1 _ZTS21b3GpuSolverConstraint", !16, i64 0}
!25 = !{!22, !24, i64 16}
!26 = !{!22, !6, i64 4}
!27 = !{!22, !6, i64 8}
!28 = !{!29, !17, i64 24}
!29 = !{!"_ZTS20b3AlignedObjectArrayIjE", !30, i64 0, !6, i64 4, !6, i64 8, !31, i64 16, !17, i64 24}
!30 = !{!"_ZTS18b3AlignedAllocatorIjLj16EE"}
!31 = !{!"p1 int", !16, i64 0}
!32 = !{!29, !31, i64 16}
!33 = !{!29, !6, i64 4}
!34 = !{!29, !6, i64 8}
!35 = !{!36, !17, i64 216}
!36 = !{!"_ZTS24b3GpuPgsConstraintSolver", !6, i64 8, !37, i64 16, !13, i64 24, !22, i64 56, !22, i64 88, !22, i64 120, !22, i64 152, !29, i64 184, !17, i64 216, !6, i64 220, !6, i64 224}
!37 = !{!"p1 _ZTS32b3GpuPgsJacobiSolverInternalData", !16, i64 0}
!38 = !{!39, !17, i64 24}
!39 = !{!"_ZTS20b3AlignedObjectArrayI17b3BatchConstraintE", !40, i64 0, !6, i64 4, !6, i64 8, !41, i64 16, !17, i64 24}
!40 = !{!"_ZTS18b3AlignedAllocatorI17b3BatchConstraintLj16EE"}
!41 = !{!"p1 _ZTS17b3BatchConstraint", !16, i64 0}
!42 = !{!39, !6, i64 4}
!43 = !{!44, !17, i64 24}
!44 = !{!"_ZTS20b3AlignedObjectArrayI15b3RigidBodyDataE", !45, i64 0, !6, i64 4, !6, i64 8, !46, i64 16, !17, i64 24}
!45 = !{!"_ZTS18b3AlignedAllocatorI15b3RigidBodyDataLj16EE"}
!46 = !{!"p1 _ZTS15b3RigidBodyData", !16, i64 0}
!47 = !{!44, !6, i64 4}
!48 = !{!49, !17, i64 24}
!49 = !{!"_ZTS20b3AlignedObjectArrayI13b3InertiaDataE", !50, i64 0, !6, i64 4, !6, i64 8, !51, i64 16, !17, i64 24}
!50 = !{!"_ZTS18b3AlignedAllocatorI13b3InertiaDataLj16EE"}
!51 = !{!"p1 _ZTS13b3InertiaData", !16, i64 0}
!52 = !{!49, !6, i64 4}
!53 = !{!54, !17, i64 24}
!54 = !{!"_ZTS20b3AlignedObjectArrayI22b3GpuGenericConstraintE", !55, i64 0, !6, i64 4, !6, i64 8, !56, i64 16, !17, i64 24}
!55 = !{!"_ZTS18b3AlignedAllocatorI22b3GpuGenericConstraintLj16EE"}
!56 = !{!"p1 _ZTS22b3GpuGenericConstraint", !16, i64 0}
!57 = !{!54, !6, i64 4}
!58 = !{!59, !17, i64 24}
!59 = !{!"_ZTS20b3AlignedObjectArrayIiE", !60, i64 0, !6, i64 4, !6, i64 8, !31, i64 16, !17, i64 24}
!60 = !{!"_ZTS18b3AlignedAllocatorIiLj16EE"}
!61 = !{!59, !6, i64 4}
!62 = !{!36, !37, i64 16}
!63 = !{!64, !65, i64 0}
!64 = !{!"_ZTS32b3GpuPgsJacobiSolverInternalData", !65, i64 0, !66, i64 8, !67, i64 16, !68, i64 24, !69, i64 32, !69, i64 40, !69, i64 48, !69, i64 56, !69, i64 64, !69, i64 72, !69, i64 80, !70, i64 88, !71, i64 96, !72, i64 104, !73, i64 112, !70, i64 120, !39, i64 128, !22, i64 160, !29, i64 192, !29, i64 224, !44, i64 256, !49, i64 288, !54, i64 320, !59, i64 352}
!65 = !{!"p1 _ZTS11_cl_context", !16, i64 0}
!66 = !{!"p1 _ZTS13_cl_device_id", !16, i64 0}
!67 = !{!"p1 _ZTS17_cl_command_queue", !16, i64 0}
!68 = !{!"p1 _ZTS14b3PrefixScanCL", !16, i64 0}
!69 = !{!"p1 _ZTS10_cl_kernel", !16, i64 0}
!70 = !{!"p1 _ZTS13b3OpenCLArrayIjE", !16, i64 0}
!71 = !{!"p1 _ZTS13b3OpenCLArrayI15b3GpuSolverBodyE", !16, i64 0}
!72 = !{!"p1 _ZTS13b3OpenCLArrayI17b3BatchConstraintE", !16, i64 0}
!73 = !{!"p1 _ZTS13b3OpenCLArrayI21b3GpuSolverConstraintE", !16, i64 0}
!74 = !{!64, !66, i64 8}
!75 = !{!64, !67, i64 16}
!76 = !{!64, !68, i64 24}
!77 = !{!78, !65, i64 32}
!78 = !{!"_ZTS13b3OpenCLArrayIjE", !79, i64 8, !79, i64 16, !80, i64 24, !65, i64 32, !67, i64 40, !17, i64 48, !17, i64 49}
!79 = !{!"long", !7, i64 0}
!80 = !{!"p1 _ZTS7_cl_mem", !16, i64 0}
!81 = !{!78, !67, i64 40}
!82 = !{!78, !17, i64 48}
!83 = !{!78, !17, i64 49}
!84 = !{!64, !70, i64 88}
!85 = !{!86, !65, i64 32}
!86 = !{!"_ZTS13b3OpenCLArrayI15b3GpuSolverBodyE", !79, i64 8, !79, i64 16, !80, i64 24, !65, i64 32, !67, i64 40, !17, i64 48, !17, i64 49}
!87 = !{!86, !67, i64 40}
!88 = !{!86, !17, i64 48}
!89 = !{!86, !17, i64 49}
!90 = !{!64, !71, i64 96}
!91 = !{!92, !65, i64 32}
!92 = !{!"_ZTS13b3OpenCLArrayI17b3BatchConstraintE", !79, i64 8, !79, i64 16, !80, i64 24, !65, i64 32, !67, i64 40, !17, i64 48, !17, i64 49}
!93 = !{!92, !67, i64 40}
!94 = !{!92, !17, i64 48}
!95 = !{!92, !17, i64 49}
!96 = !{!64, !72, i64 104}
!97 = !{!98, !65, i64 32}
!98 = !{!"_ZTS13b3OpenCLArrayI21b3GpuSolverConstraintE", !79, i64 8, !79, i64 16, !80, i64 24, !65, i64 32, !67, i64 40, !17, i64 48, !17, i64 49}
!99 = !{!98, !67, i64 40}
!100 = !{!98, !17, i64 48}
!101 = !{!98, !17, i64 49}
!102 = !{!64, !73, i64 112}
!103 = !{!64, !70, i64 120}
!104 = !{!6, !6, i64 0}
!105 = !{!64, !69, i64 32}
!106 = !{!64, !69, i64 40}
!107 = !{!64, !69, i64 48}
!108 = !{!64, !69, i64 56}
!109 = !{!64, !69, i64 64}
!110 = !{!64, !69, i64 72}
!111 = !{!64, !69, i64 80}
!112 = !{!16, !16, i64 0}
!113 = !{i8 0, i8 2}
!114 = !{!59, !31, i64 16}
!115 = !{!54, !56, i64 16}
!116 = !{!49, !51, i64 16}
!117 = !{!44, !46, i64 16}
!118 = !{!39, !41, i64 16}
!119 = !{!59, !6, i64 8}
!120 = !{!39, !6, i64 8}
!121 = !{i64 0, i64 4, !104, i64 4, i64 4, !104, i64 8, i64 4, !104, i64 12, i64 4, !104}
!122 = distinct !{!122, !123}
!123 = !{!"llvm.loop.mustprogress"}
!124 = distinct !{!124, !125}
!125 = !{!"llvm.loop.unroll.disable"}
!126 = distinct !{!126, !123}
!127 = !{!36, !6, i64 8}
!128 = !{!36, !6, i64 220}
!129 = !{i64 0, i64 16, !9, i64 16, i64 16, !9, i64 32, i64 16, !9, i64 48, i64 16, !9, i64 64, i64 16, !9, i64 80, i64 16, !9, i64 96, i64 16, !9, i64 112, i64 16, !9, i64 128, i64 16, !9, i64 144, i64 8, !9, i64 152, i64 12, !9}
!130 = distinct !{!130, !123}
!131 = !{}
!132 = distinct !{!132, !125}
!133 = distinct !{!133, !123}
!134 = !{!17, !17, i64 0}
!135 = !{!86, !80, i64 24}
!136 = !{!137, !80, i64 24}
!137 = !{!"_ZTS13b3OpenCLArrayI15b3RigidBodyDataE", !79, i64 8, !79, i64 16, !80, i64 24, !65, i64 32, !67, i64 40, !17, i64 48, !17, i64 49}
!138 = !{!139, !17, i64 68}
!139 = !{!"_ZTS12b3LauncherCL", !67, i64 8, !69, i64 16, !6, i64 24, !140, i64 32, !6, i64 64, !17, i64 68, !143, i64 72, !144, i64 80}
!140 = !{!"_ZTS20b3AlignedObjectArrayI15b3KernelArgDataE", !141, i64 0, !6, i64 4, !6, i64 8, !142, i64 16, !17, i64 24}
!141 = !{!"_ZTS18b3AlignedAllocatorI15b3KernelArgDataLj16EE"}
!142 = !{!"p1 _ZTS15b3KernelArgData", !16, i64 0}
!143 = !{!"p1 omnipotent char", !16, i64 0}
!144 = !{!"_ZTS20b3AlignedObjectArrayIP13b3OpenCLArrayIhEE", !145, i64 0, !6, i64 4, !6, i64 8, !146, i64 16, !17, i64 24}
!145 = !{!"_ZTS18b3AlignedAllocatorIP13b3OpenCLArrayIhELj16EE"}
!146 = !{!"p2 _ZTS13b3OpenCLArrayIhE", !147, i64 0}
!147 = !{!"any p2 pointer", !16, i64 0}
!148 = !{!139, !6, i64 24}
!149 = !{!140, !6, i64 4}
!150 = !{!140, !6, i64 8}
!151 = !{!140, !142, i64 16}
!152 = !{i64 0, i64 4, !104, i64 4, i64 4, !104, i64 8, i64 4, !104, i64 12, i64 4, !104, i64 16, i64 16, !9}
!153 = distinct !{!153, !123}
!154 = !{!140, !17, i64 24}
!155 = !{!139, !6, i64 64}
!156 = !{!139, !69, i64 16}
!157 = distinct !{null}
!158 = !{!79, !79, i64 0}
!159 = !{!139, !67, i64 8}
!160 = distinct !{null}
!161 = !{!162, !166, i64 68}
!162 = !{!"_ZTS15b3RigidBodyData", !163, i64 0, !164, i64 16, !163, i64 32, !163, i64 48, !6, i64 64, !166, i64 68, !166, i64 72, !166, i64 76}
!163 = !{!"_ZTS9b3Vector3", !7, i64 0}
!164 = !{!"_ZTS12b3Quaternion", !165, i64 0}
!165 = !{!"_ZTS10b3QuadWord", !7, i64 0}
end_hunk_1
