Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuPgsConstraintSolver?download=true
inline.NumInlined: 714
inline.NumDeleted: 258
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN24b3GpuPgsConstraintSolver28solveGroupCacheFriendlySetupEP13b3OpenCLArrayI15b3RigidBodyDataEPS0_I13b3InertiaDataEiPS0_I22b3GpuGenericConstraintEiRK19b3ContactSolverInfo:bb.a
  %i.amw = getelementptr inbounds nuw [16 x i8], ptr %i.amv, i64 %indvars.iv780 ; 3 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 8
  %i.amy = load i32, ptr %i.amx, align 4, !tbaa !173
  %i.amz = load ptr, ptr %i.bb, align 8, !tbaa !70 ; 3 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 240
  %i.anb = load ptr, ptr %i.ana, align 8, !tbaa !40
  %i.anc = sext i32 %i.amy to i64
  %i.and = getelementptr inbounds [4 x i8], ptr %i.anb, i64 %i.anc
  %i.ane = load i32, ptr %i.and, align 4, !tbaa !106
  %i.anf = load ptr, ptr %i.alv, align 8, !tbaa !33
  %i.ang = sext i32 %i.ane to i64
  %i.anh = getelementptr inbounds [160 x i8], ptr %i.anf, i64 %i.ang ; 11 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.amz, i64 336
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !117
  %i.ank = getelementptr inbounds nuw [80 x i8], ptr %i.anj, i64 %indvars.iv780 ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 4 ; 2 uses
  %i.anm = load i32, ptr %i.anl, align 4, !tbaa !228 ; 7 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %i.amz, i64 272
  %i.ano = load ptr, ptr %i.ann, align 8, !tbaa !119 ; 2 uses
  %i.anp = sext i32 %i.anm to i64                 ; 2 uses
  %i.anq = getelementptr inbounds [80 x i8], ptr %i.ano, i64 %i.anp ; 5 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.ank, i64 8 ; 2 uses
  %i.ans = load i32, ptr %i.anr, align 8, !tbaa !229 ; 7 uses
  %i.ant = sext i32 %i.ans to i64                 ; 2 uses
  %i.anu = getelementptr inbounds [80 x i8], ptr %i.ano, i64 %i.ant ; 5 uses
  %i.anv = load ptr, ptr %i.alw, align 8, !tbaa !26 ; 2 uses
  %i.anw = getelementptr inbounds [176 x i8], ptr %i.anv, i64 %i.anp ; 2 uses
  %i.anx = getelementptr inbounds [176 x i8], ptr %i.anv, i64 %i.ant ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anq, i64 68 ; 2 uses
  %i.anz = load float, ptr %i.any, align 4, !tbaa !158
  %i.aoa = fcmp une float %i.anz, 0.000000e+00
  br i1 %i.aoa, label %bb.fy, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %.not262 = icmp eq i32 %i.anm, 0
  br i1 %.not262, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  store i32 0, ptr %i.bh, align 8, !tbaa !126
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.aob = sub nsw i32 0, %i.anm
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fu, %bb.fx
  %storemerge = phi i32 [ %i.aob, %bb.fx ], [ %i.anm, %bb.fu ]
  store i32 %storemerge, ptr %i.amw, align 4, !tbaa !174
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anu, i64 68 ; 2 uses
  %i.aod = load float, ptr %i.aoc, align 4, !tbaa !158
  %i.aoe = fcmp une float %i.aod, 0.000000e+00
  br i1 %i.aoe, label %bb.gc, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %.not263 = icmp eq i32 %i.ans, 0
  br i1 %.not263, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  store i32 0, ptr %i.bh, align 8, !tbaa !126
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.aof = sub nsw i32 0, %i.ans
  br label %bb.gc

bb.gc:                                            ; preds = %bb.fy, %bb.gb
  %.sink = phi i32 [ %i.aof, %bb.gb ], [ %i.ans, %bb.fy ]
  %i.aog = getelementptr inbounds nuw i8, ptr %i.amw, i64 4
  store i32 %.sink, ptr %i.aog, align 4, !tbaa !175
  %i.aoh = load i32, ptr %i.bi, align 4, !tbaa !222
  %i.aoi = icmp slt i32 %i.aoh, 0
  br i1 %i.aoi, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  store i32 0, ptr %i.bi, align 4, !tbaa !222
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.aoj = icmp sgt i32 %i.amu, 0                 ; 2 uses
  br i1 %i.aoj, label %.lr.ph760.preheader, label %._crit_edge761

.lr.ph760.preheader:                              ; preds = %bb.ge
  %wide.trip.count = zext nneg i32 %i.amu to i64  ; 2 uses
  %xtraiter910 = and i64 %wide.trip.count, 1
  %i.aok = icmp eq i32 %i.amu, 1
  br i1 %i.aok, label %.lr.ph760.epil.preheader, label %.lr.ph760.preheader.new

.lr.ph760.preheader.new:                          ; preds = %.lr.ph760.preheader
  %unroll_iter913 = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph760

.lr.ph760:                                        ; preds = %.lr.ph760, %.lr.ph760.preheader.new
  %indvars.iv772 = phi i64 [ 0, %.lr.ph760.preheader.new ], [ %indvars.iv.next773.1, %.lr.ph760 ] ; 3 uses
  %niter914 = phi i64 [ 0, %.lr.ph760.preheader.new ], [ %niter914.next.1, %.lr.ph760 ]
  %i.aol = getelementptr inbounds nuw [160 x i8], ptr %i.anh, i64 %indvars.iv772 ; 5 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 80
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aol, i64 112
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aol, i64 144
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aol, i64 148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.aol, i8 0, i64 160, i1 false)
  store <2 x float> <float f0xFF7FFFFF, float f0x7F7FFFFF>, ptr %i.aon, align 16, !tbaa !169
  store float 0.000000e+00, ptr %i.aom, align 16, !tbaa !230
  store i32 %i.anm, ptr %i.aoo, align 16, !tbaa !177
  store i32 %i.ans, ptr %i.aop, align 4, !tbaa !178
  %i.aoq = getelementptr inbounds nuw [160 x i8], ptr %i.anh, i64 %indvars.iv772 ; 5 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 160
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aoq, i64 240
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aoq, i64 272
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aoq, i64 304
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aoq, i64 308
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.aor, i8 0, i64 160, i1 false)
  store <2 x float> <float f0xFF7FFFFF, float f0x7F7FFFFF>, ptr %i.aot, align 16, !tbaa !169
  store float 0.000000e+00, ptr %i.aos, align 16, !tbaa !230
  store i32 %i.anm, ptr %i.aou, align 16, !tbaa !177
  store i32 %i.ans, ptr %i.aov, align 4, !tbaa !178
  %indvars.iv.next773.1 = add nuw nsw i64 %indvars.iv772, 2 ; 2 uses
  %niter914.next.1 = add i64 %niter914, 2         ; 2 uses
  %niter914.ncmp.1 = icmp eq i64 %niter914.next.1, %unroll_iter913
  br i1 %niter914.ncmp.1, label %._crit_edge761.loopexit.unr-lcssa, label %.lr.ph760, !llvm.loop !219

._crit_edge761.loopexit.unr-lcssa:                ; preds = %.lr.ph760
  %lcmp.mod911.not = icmp eq i64 %xtraiter910, 0
  br i1 %lcmp.mod911.not, label %._crit_edge761, label %.lr.ph760.epil.preheader

.lr.ph760.epil.preheader:                         ; preds = %._crit_edge761.loopexit.unr-lcssa, %.lr.ph760.preheader
  %indvars.iv772.epil.init = phi i64 [ 0, %.lr.ph760.preheader ], [ %indvars.iv.next773.1, %._crit_edge761.loopexit.unr-lcssa ]
  %lcmp.mod912 = trunc i32 %i.amu to i1
  call void @llvm.assume(i1 %lcmp.mod912)
  %i.aow = getelementptr inbounds nuw [160 x i8], ptr %i.anh, i64 %indvars.iv772.epil.init ; 5 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 80
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aow, i64 112
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aow, i64 144
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aow, i64 148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.aow, i8 0, i64 160, i1 false)
  store <2 x float> <float f0xFF7FFFFF, float f0x7F7FFFFF>, ptr %i.aoy, align 16, !tbaa !169
  store float 0.000000e+00, ptr %i.aox, align 16, !tbaa !230
  store i32 %i.anm, ptr %i.aoz, align 16, !tbaa !177
  store i32 %i.ans, ptr %i.apa, align 4, !tbaa !178
  br label %._crit_edge761

._crit_edge761:                                   ; preds = %.lr.ph760.epil.preheader, %._crit_edge761.loopexit.unr-lcssa, %bb.ge
  %i.apb = getelementptr inbounds nuw i8, ptr %i.anw, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.anw, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.apb, i8 0, i64 32, i1 false)
  %i.apc = getelementptr inbounds nuw i8, ptr %i.anx, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.anx, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.apc, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.apd = load float, ptr %i.alx, align 4, !tbaa !231
  %i.ape = fdiv float 1.000000e+00, %i.apd
  store float %i.ape, ptr %12, align 8, !tbaa !234
  %i.apf = load float, ptr %i.aly, align 4, !tbaa !235
  store float %i.apf, ptr %i.alz, align 4, !tbaa !236
  %i.apg = getelementptr inbounds nuw i8, ptr %i.anh, i64 16
  store ptr %i.apg, ptr %i.ama, align 8, !tbaa !237
  store ptr %i.anh, ptr %i.amb, align 8, !tbaa !238
  store ptr null, ptr %i.amc, align 8, !tbaa !239
  %i.aph = getelementptr inbounds nuw i8, ptr %i.anh, i64 32
  store ptr %i.aph, ptr %i.amd, align 8, !tbaa !240
  store i32 40, ptr %i.ame, align 8, !tbaa !241
  %i.api = getelementptr inbounds nuw i8, ptr %i.anh, i64 104
  store ptr %i.api, ptr %i.amf, align 8, !tbaa !242
  %i.apj = load float, ptr %i.amg, align 4, !tbaa !180
  %i.apk = getelementptr inbounds nuw i8, ptr %i.anh, i64 108 ; 2 uses
  store float %i.apj, ptr %i.apk, align 4, !tbaa !181
  %i.apl = load float, ptr %i.amh, align 4, !tbaa !243
  store float %i.apl, ptr %i.ami, align 4, !tbaa !244
  store ptr %i.apk, ptr %i.amj, align 8, !tbaa !245
  %i.apm = getelementptr inbounds nuw i8, ptr %i.anh, i64 112
  store ptr %i.apm, ptr %i.amk, align 8, !tbaa !246
  %i.apn = getelementptr inbounds nuw i8, ptr %i.anh, i64 116
  store ptr %i.apn, ptr %i.aml, align 8, !tbaa !247
  %i.apo = load i32, ptr %i.amm, align 4, !tbaa !182
  store i32 %i.apo, ptr %i.amn, align 8, !tbaa !248
  %i.app = load ptr, ptr %i.bb, align 8, !tbaa !70 ; 2 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 336
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !117
  %i.aps = getelementptr inbounds nuw [80 x i8], ptr %i.apr, i64 %indvars.iv780
  %i.apt = getelementptr inbounds nuw i8, ptr %i.app, i64 272
  %i.apu = load ptr, ptr %i.apt, align 8, !tbaa !119
  invoke void @_ZN22b3GpuGenericConstraint8getInfo2EP20b3GpuConstraintInfo2PK15b3RigidBodyData(ptr noundef nonnull align 16 dereferenceable(80) %i.aps, ptr noundef nonnull %12, ptr noundef nonnull %i.apu)
          to label %.preheader unwind label %bb.gh

.preheader:                                       ; preds = %._crit_edge761
  br i1 %i.aoj, label %.lr.ph763, label %._crit_edge764

.lr.ph763:                                        ; preds = %.preheader
  %i.apv = getelementptr inbounds nuw i8, ptr %i.anq, i64 32
  %i.apw = getelementptr inbounds nuw i8, ptr %i.anq, i64 40
  %i.apx = getelementptr inbounds nuw i8, ptr %i.anq, i64 48
  %i.apy = getelementptr inbounds nuw i8, ptr %i.anq, i64 56
  %i.apz = getelementptr inbounds nuw i8, ptr %i.anu, i64 32
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.anu, i64 40
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.anu, i64 48
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.anu, i64 56
  %wide.trip.count778 = zext nneg i32 %i.amu to i64
  br label %bb.gf

bb.gf:                                            ; preds = %.lr.ph763, %bb.gk
  %indvars.iv775 = phi i64 [ 0, %.lr.ph763 ], [ %indvars.iv.next776, %bb.gk ] ; 2 uses
  %i.aqd = getelementptr inbounds nuw [160 x i8], ptr %i.anh, i64 %indvars.iv775 ; 18 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 116 ; 2 uses
  %i.aqf = load float, ptr %i.aqe, align 4, !tbaa !183
  %i.aqg = load ptr, ptr %i.bb, align 8, !tbaa !70 ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 336
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !117
  %i.aqj = getelementptr inbounds nuw [80 x i8], ptr %i.aqi, i64 %indvars.iv780
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 12
  %i.aql = load float, ptr %i.aqk, align 4, !tbaa !184 ; 3 uses
  %i.aqm = fcmp ult float %i.aqf, %i.aql
  br i1 %i.aqm, label %bb.gi, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  store float %i.aql, ptr %i.aqe, align 4, !tbaa !183
  br label %bb.gi

bb.gh:                                            ; preds = %._crit_edge761
  %i.aqn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZN13b3ProfileZoneD2Ev.exit303

bb.gi:                                            ; preds = %bb.gg, %bb.gf
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqd, i64 112 ; 2 uses
  %i.aqp = load float, ptr %i.aqo, align 16, !tbaa !185
  %i.aqq = fneg float %i.aql                      ; 2 uses
  %i.aqr = fcmp ugt float %i.aqp, %i.aqq
  br i1 %i.aqr, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  store float %i.aqq, ptr %i.aqo, align 16, !tbaa !185
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.aqs = load i32, ptr %i.anl, align 4, !tbaa !228
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqg, i64 304
  %i.aqu = load ptr, ptr %i.aqt, align 8, !tbaa !118
  %i.aqv = sext i32 %i.aqs to i64
  %i.aqw = getelementptr inbounds [96 x i8], ptr %i.aqu, i64 %i.aqv ; 8 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.aqd, i64 4
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 8 ; 2 uses
  %i.aqy = load float, ptr %i.aqx, align 8, !tbaa !17
  %14 = getelementptr inbounds nuw i8, ptr %i.aqd, i64 8
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqw, i64 16 ; 2 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqw, i64 24 ; 2 uses
  %i.arb = load float, ptr %i.ara, align 8, !tbaa !17
  %i.arc = load <2 x float>, ptr %i.aqw, align 16, !tbaa !17 ; 2 uses
  %15 = load float, ptr %14, align 8, !tbaa !17   ; 7 uses
  %16 = load <2 x float>, ptr %i.aqz, align 16, !tbaa !17 ; 2 uses
  %17 = shufflevector <2 x float> %i.arc, <2 x float> %16, <2 x i32> <i32 1, i32 3>
  %18 = shufflevector <2 x float> %i.arc, <2 x float> %16, <2 x i32> <i32 0, i32 2>
  %19 = insertelement <2 x float> poison, float %i.aqy, i64 0
  %20 = insertelement <2 x float> %19, float %i.arb, i64 1
  %21 = insertelement <2 x float> poison, float %15, i64 0
  %i.ard = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = getelementptr inbounds nuw i8, ptr %i.aqw, i64 32 ; 2 uses
  %23 = load float, ptr %22, align 16, !tbaa !17
  %24 = getelementptr inbounds nuw i8, ptr %i.aqw, i64 36
  %25 = load float, ptr %24, align 4, !tbaa !17
  %26 = getelementptr inbounds nuw i8, ptr %i.aqw, i64 40 ; 2 uses
  %27 = load float, ptr %26, align 8, !tbaa !17
  %28 = getelementptr inbounds nuw i8, ptr %i.aqd, i64 48
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqd, i64 56
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqd, i64 32
  %29 = getelementptr inbounds nuw i8, ptr %i.aqd, i64 36
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqd, i64 40
  %i.arg = load float, ptr %i.arf, align 8, !tbaa !17 ; 7 uses
  %30 = insertelement <2 x float> poison, float %i.arg, i64 0
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = getelementptr inbounds nuw i8, ptr %i.aqd, i64 64
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqd, i64 72
  %33 = getelementptr inbounds nuw i8, ptr %i.aqd, i64 16
  %34 = getelementptr inbounds nuw i8, ptr %i.aqd, i64 20
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aqd, i64 24
  %35 = load <2 x float>, ptr %i.aqd, align 16, !tbaa !17 ; 7 uses
  %i.ari = load float, ptr %13, align 4, !tbaa !17 ; 3 uses
  %36 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %37 = fmul <2 x float> %36, %17
  %38 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> zeroinitializer
  %39 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %38, <2 x float> %37)
  %40 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %i.ard, <2 x float> %39)
  %41 = fmul float %i.ari, %25
  %i.arj = extractelement <2 x float> %35, i64 0
  %i.ark = call float @llvm.fmuladd.f32(float %23, float %i.arj, float %41)
  %42 = call noundef float @llvm.fmuladd.f32(float %27, float %15, float %i.ark)
  %.sroa.3.12.vec.insert.i.i405 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %42, i64 0
  store <2 x float> %40, ptr %28, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i405, ptr %.sroa.518.0..sroa_idx, align 8, !tbaa !17
  %i.arl = load ptr, ptr %i.bb, align 8, !tbaa !70
  %i.arm = load i32, ptr %i.anr, align 8, !tbaa !229
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arl, i64 304
  %i.aro = load ptr, ptr %i.arn, align 8, !tbaa !118
  %i.arp = sext i32 %i.arm to i64
  %i.arq = getelementptr inbounds [96 x i8], ptr %i.aro, i64 %i.arp ; 8 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 8 ; 2 uses
  %i.ars = load float, ptr %i.arr, align 8, !tbaa !17
  %i.art = getelementptr inbounds nuw i8, ptr %i.arq, i64 16 ; 2 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arq, i64 24 ; 2 uses
  %i.arv = load float, ptr %i.aru, align 8, !tbaa !17
  %43 = load <2 x float>, ptr %i.arq, align 16, !tbaa !17 ; 2 uses
  %i.arw = load <2 x float>, ptr %i.are, align 16, !tbaa !17 ; 7 uses
  %44 = shufflevector <2 x float> %i.arw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.arx = load float, ptr %29, align 4, !tbaa !17 ; 4 uses
  %i.ary = load <2 x float>, ptr %i.art, align 16, !tbaa !17 ; 2 uses
  %i.arz = shufflevector <2 x float> %i.arw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.asa = shufflevector <2 x float> %43, <2 x float> %i.ary, <2 x i32> <i32 1, i32 3>
  %i.asb = fmul <2 x float> %i.arz, %i.asa
  %i.asc = shufflevector <2 x float> %43, <2 x float> %i.ary, <2 x i32> <i32 0, i32 2>
  %i.asd = shufflevector <2 x float> %i.arw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ase = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asc, <2 x float> %i.asd, <2 x float> %i.asb)
  %i.asf = insertelement <2 x float> poison, float %i.ars, i64 0
  %i.asg = insertelement <2 x float> %i.asf, float %i.arv, i64 1
  %i.ash = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asg, <2 x float> %31, <2 x float> %i.ase)
  %i.asi = getelementptr inbounds nuw i8, ptr %i.arq, i64 32 ; 2 uses
  %i.asj = load float, ptr %i.asi, align 16, !tbaa !17
  %i.ask = getelementptr inbounds nuw i8, ptr %i.arq, i64 36
  %i.asl = load float, ptr %i.ask, align 4, !tbaa !17
  %45 = fmul float %i.arx, %i.asl
  %46 = extractelement <2 x float> %i.arw, i64 0  ; 2 uses
  %i.asm = call float @llvm.fmuladd.f32(float %i.asj, float %46, float %45)
  %i.asn = getelementptr inbounds nuw i8, ptr %i.arq, i64 40 ; 2 uses
  %i.aso = load float, ptr %i.asn, align 8, !tbaa !17
  %i.asp = call noundef float @llvm.fmuladd.f32(float %i.aso, float %i.arg, float %i.asm)
  %.sroa.3.12.vec.insert.i.i408 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.asp, i64 0
  store <2 x float> %i.ash, ptr %32, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i408, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !17
  %i.asq = load float, ptr %i.any, align 4, !tbaa !169 ; 3 uses
  %i.asr = load float, ptr %i.arh, align 8, !tbaa !17 ; 6 uses
  %i.ass = fmul float %i.asq, %i.asr
  %47 = load <2 x float>, ptr %i.aqw, align 16, !tbaa !17 ; 2 uses
  %i.ast = load float, ptr %i.aqx, align 8, !tbaa !17
  %i.asu = load <2 x float>, ptr %i.aqz, align 16, !tbaa !17 ; 2 uses
  %i.asv = load <2 x float>, ptr %22, align 16, !tbaa !17
  %i.asw = load <2 x float>, ptr %i.arq, align 16, !tbaa !17
  %48 = shufflevector <2 x float> %35, <2 x float> %i.arw, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.asx = shufflevector <2 x float> %47, <2 x float> %i.asu, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.asy = shufflevector <2 x float> %i.asv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.asz = shufflevector <4 x float> %i.asx, <4 x float> %i.asy, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ata = shufflevector <2 x float> %i.asw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.atb = shufflevector <4 x float> %i.asz, <4 x float> %i.ata, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.atc = fmul <4 x float> %48, %i.atb
  %i.atd = shufflevector <2 x float> %47, <2 x float> %i.asu, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ate = shufflevector <4 x float> %i.atd, <4 x float> %i.asy, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.atf = shufflevector <4 x float> %i.ate, <4 x float> %i.ata, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %49 = shufflevector <2 x float> %35, <2 x float> %i.arw, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %50 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atf, <4 x float> %49, <4 x float> %i.atc) ; 4 uses
  %51 = extractelement <4 x float> %50, i64 0
  %52 = call noundef float @llvm.fmuladd.f32(float %i.ast, float %15, float %51)
  %53 = load float, ptr %i.ara, align 8, !tbaa !17
  %i.atg = extractelement <4 x float> %50, i64 1
  %i.ath = call noundef float @llvm.fmuladd.f32(float %53, float %15, float %i.atg)
  %54 = load float, ptr %26, align 8, !tbaa !17
  %i.ati = extractelement <4 x float> %50, i64 2
  %i.atj = call noundef float @llvm.fmuladd.f32(float %54, float %15, float %i.ati)
  %55 = load float, ptr %i.aoc, align 4, !tbaa !169 ; 3 uses
  %56 = fmul float %i.asr, %55
  %i.atk = load float, ptr %i.arr, align 8, !tbaa !17
  %i.atl = extractelement <4 x float> %50, i64 3
  %i.atm = call noundef float @llvm.fmuladd.f32(float %i.atk, float %i.arg, float %i.atl)
  %i.atn = load float, ptr %i.aru, align 8, !tbaa !17
  %i.ato = load float, ptr %i.asn, align 8, !tbaa !17
  %i.atp = load <2 x float>, ptr %33, align 16, !tbaa !17 ; 4 uses
  %i.atq = load float, ptr %34, align 4, !tbaa !17 ; 4 uses
  %i.atr = extractelement <2 x float> %i.atp, i64 0 ; 3 uses
  %i.ats = fmul float %i.atr, %i.asq
  %i.att = fmul float %i.asq, %i.atq
  %i.atu = fmul float %i.atr, %55
  %i.atv = fmul float %i.atq, %55
  %i.atw = load <2 x float>, ptr %i.art, align 16, !tbaa !17 ; 2 uses
  %i.atx = load <2 x float>, ptr %i.asi, align 16, !tbaa !17 ; 2 uses
  %57 = shufflevector <2 x float> %i.atp, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %58 = insertelement <3 x float> %57, float %i.arx, i64 0
  %59 = insertelement <3 x float> %58, float %i.ari, i64 2
  %60 = shufflevector <3 x float> %59, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.aty = shufflevector <2 x float> %i.atw, <2 x float> %i.atx, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.atz = insertelement <4 x float> %i.aty, float %i.att, i64 2
  %i.aua = insertelement <4 x float> %i.atz, float %i.ath, i64 3
  %i.aub = fmul <4 x float> %60, %i.aua
  %i.auc = shufflevector <2 x float> %i.atw, <2 x float> %i.atx, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aud = insertelement <4 x float> %i.auc, float %i.ats, i64 2
  %i.aue = insertelement <4 x float> %i.aud, float %52, i64 3
  %61 = shufflevector <2 x float> %i.arw, <2 x float> %35, <4 x i32> <i32 0, i32 0, i32 poison, i32 2>
  %62 = shufflevector <2 x float> %i.atp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %63 = shufflevector <4 x float> %61, <4 x float> %62, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.auf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aue, <4 x float> %63, <4 x float> %i.aub) ; 4 uses
  %i.aug = extractelement <4 x float> %i.auf, i64 0
  %i.auh = call noundef float @llvm.fmuladd.f32(float %i.atn, float %i.arg, float %i.aug)
  %i.aui = extractelement <4 x float> %i.auf, i64 1
  %i.auj = call noundef float @llvm.fmuladd.f32(float %i.ato, float %i.arg, float %i.aui)
  %i.auk = extractelement <4 x float> %i.auf, i64 2
  %i.aul = call noundef float @llvm.fmuladd.f32(float %i.ass, float %i.asr, float %i.auk)
  %i.aum = extractelement <4 x float> %i.auf, i64 3
  %i.aun = call noundef float @llvm.fmuladd.f32(float %i.atj, float %15, float %i.aum)
  %i.auo = fadd float %i.aul, %i.aun
  %i.aup = fmul float %i.atq, %i.atv
  %i.auq = call float @llvm.fmuladd.f32(float %i.atu, float %i.atr, float %i.aup)
  %i.aur = call noundef float @llvm.fmuladd.f32(float %56, float %i.asr, float %i.auq)
  %i.aus = fadd float %i.auo, %i.aur
  %i.aut = fmul float %i.arx, %i.auh
  %i.auu = call float @llvm.fmuladd.f32(float %i.atm, float %46, float %i.aut)
  %i.auv = call noundef float @llvm.fmuladd.f32(float %i.auj, float %i.arg, float %i.auu)
  %i.auw = fadd float %i.aus, %i.auv              ; 2 uses
  %i.aux = call noundef float @llvm.fabs.f32(float %i.auw)
  %i.auy = fcmp ogt float %i.aux, f0x34000000
  %i.auz = fdiv float 1.000000e+00, %i.auw
  %i.ava = select i1 %i.auy, float %i.auz, float 0.000000e+00 ; 3 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.aqd, i64 100
  store float %i.ava, ptr %i.avb, align 4, !tbaa !186
  %i.avc = load float, ptr %i.apw, align 8, !tbaa !17
  %i.avd = load float, ptr %i.apy, align 8, !tbaa !17
  %i.ave = load float, ptr %i.aqa, align 8, !tbaa !17
  %i.avf = load <2 x float>, ptr %i.apv, align 16, !tbaa !17 ; 2 uses
  %i.avg = load <2 x float>, ptr %i.apx, align 16, !tbaa !17 ; 2 uses
  %i.avh = load <2 x float>, ptr %i.apz, align 16, !tbaa !17
  %i.avi = load <2 x float>, ptr %i.aqb, align 16, !tbaa !17
  %64 = insertelement <4 x float> poison, float %i.atq, i64 0
  %i.avj = insertelement <4 x float> %64, float %i.ari, i64 1
  %65 = insertelement <4 x float> %i.avj, float %i.arx, i64 2
  %66 = shufflevector <4 x float> %65, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.avk = shufflevector <2 x float> %i.avf, <2 x float> %i.avg, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.avl = shufflevector <2 x float> %i.avh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.avm = shufflevector <4 x float> %i.avk, <4 x float> %i.avl, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.avn = shufflevector <2 x float> %i.avi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.avo = shufflevector <4 x float> %i.avm, <4 x float> %i.avn, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.avp = fmul <4 x float> %66, %i.avo
  %67 = shufflevector <2 x float> %i.atp, <2 x float> %35, <4 x i32> <i32 0, i32 2, i32 0, i32 poison>
  %68 = shufflevector <4 x float> %67, <4 x float> %44, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.avq = shufflevector <2 x float> %i.avf, <2 x float> %i.avg, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.avr = shufflevector <4 x float> %i.avq, <4 x float> %i.avl, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.avs = shufflevector <4 x float> %i.avr, <4 x float> %i.avn, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.avt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %68, <4 x float> %i.avs, <4 x float> %i.avp) ; 4 uses
  %i.avu = extractelement <4 x float> %i.avt, i64 0
  %i.avv = call noundef float @llvm.fmuladd.f32(float %i.asr, float %i.avc, float %i.avu)
  %i.avw = extractelement <4 x float> %i.avt, i64 1
  %i.avx = call noundef float @llvm.fmuladd.f32(float %15, float %i.avd, float %i.avw)
  %i.avy = fadd float %i.avv, %i.avx
  %i.avz = extractelement <4 x float> %i.avt, i64 2
  %i.awa = call noundef float @llvm.fmuladd.f32(float %i.asr, float %i.ave, float %i.avz)
  %i.awb = load float, ptr %i.aqc, align 8, !tbaa !17
  %i.awc = extractelement <4 x float> %i.avt, i64 3
  %i.awd = call noundef float @llvm.fmuladd.f32(float %i.arg, float %i.awb, float %i.awc)
  %i.awe = fsub float %i.awd, %i.awa
  %i.awf = fadd float %i.avy, %i.awe
  %i.awg = getelementptr inbounds nuw i8, ptr %i.aqd, i64 104 ; 2 uses
  %i.awh = load float, ptr %i.awg, align 8, !tbaa !187
  %i.awi = load float, ptr %i.ami, align 4, !tbaa !244
  %i.awj = fneg float %i.awf
  %i.awk = call float @llvm.fmuladd.f32(float %i.awj, float %i.awi, float 0.000000e+00)
  %i.awl = fmul float %i.ava, %i.awh
  %i.awm = fmul float %i.ava, %i.awk
  %i.awn = fadd float %i.awl, %i.awm
  store float %i.awn, ptr %i.awg, align 8, !tbaa !187
  %i.awo = getelementptr inbounds nuw i8, ptr %i.aqd, i64 84
  store float 0.000000e+00, ptr %i.awo, align 4, !tbaa !188
  %indvars.iv.next776 = add nuw nsw i64 %indvars.iv775, 1 ; 2 uses
  %exitcond779.not = icmp eq i64 %indvars.iv.next776, %wide.trip.count778
  br i1 %exitcond779.not, label %._crit_edge764, label %bb.gf, !llvm.loop !220

._crit_edge764:                                   ; preds = %bb.gk, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.pre785 = load i32, ptr %i.k, align 4, !tbaa !106
  br label %bb.gl

bb.gl:                                            ; preds = %._crit_edge764, %bb.ft
  %i.awp = phi i32 [ %.pre785, %._crit_edge764 ], [ %i.amr, %bb.ft ] ; 2 uses
  %indvars.iv.next781 = add nuw nsw i64 %indvars.iv780, 1 ; 2 uses
  %i.awq = sext i32 %i.awp to i64
  %i.awr = icmp slt i64 %indvars.iv.next781, %i.awq
  br i1 %i.awr, label %bb.ft, label %._crit_edge767, !llvm.loop !221

bb.gm:                                            ; preds = %._crit_edge767
  %i.aws = load ptr, ptr %i.bb, align 8, !tbaa !70
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 120
  %i.awu = load ptr, ptr %i.awt, align 8, !tbaa !105
  invoke void @_ZN13b3OpenCLArrayIjE12copyFromHostERK20b3AlignedObjectArrayIjEb(ptr noundef nonnull align 8 dereferenceable(50) %i.awu, ptr noundef nonnull align 8 dereferenceable(25) %i.ii, i1 noundef zeroext true)
          to label %bb.gn unwind label %bb.cb

bb.gn:                                            ; preds = %bb.gm
  %i.awv = load ptr, ptr %i.bb, align 8, !tbaa !70 ; 2 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 356
  %i.awx = load i32, ptr %i.aww, align 4, !tbaa !69
  %i.awy = icmp eq i32 %i.awx, 0
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awv, i64 104
  %i.axa = load ptr, ptr %i.awz, align 8, !tbaa !99 ; 2 uses
  br i1 %i.awy, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  invoke void @_ZN13b3OpenCLArrayI17b3BatchConstraintE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.axa, ptr noundef nonnull align 8 dereferenceable(25) @_ZL16batchConstraints, i1 noundef zeroext true)
          to label %bb.gq unwind label %bb.cb

bb.gp:                                            ; preds = %bb.gn
  invoke void @_ZNK13b3OpenCLArrayI17b3BatchConstraintE10copyToHostER20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.axa, ptr noundef nonnull align 8 dereferenceable(25) @_ZL16batchConstraints, i1 noundef zeroext true)
          to label %bb.gq unwind label %bb.cb

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.axb = load ptr, ptr %i.bb, align 8, !tbaa !70
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 96
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !94
  invoke void @_ZN13b3OpenCLArrayI15b3GpuSolverBodyE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.axd, ptr noundef nonnull align 8 dereferenceable(25) %i.bp, i1 noundef zeroext true)
          to label %_ZN13b3ProfileZoneD2Ev.exit395 unwind label %bb.cb

_ZN13b3ProfileZoneD2Ev.exit395:                   ; preds = %bb.fl, %bb.gq
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit431 unwind label %bb.gr

bb.gr:                                            ; preds = %_ZN13b3ProfileZoneD2Ev.exit395
  %i.axe = landingpad { ptr, i32 }
          catch ptr null
  %i.axf = extractvalue { ptr, i32 } %i.axe, 0
  call void @__clang_call_terminate(ptr %i.axf) #25
  unreachable

_ZN13b3ProfileZoneD2Ev.exit431:                   ; preds = %_ZN13b3ProfileZoneD2Ev.exit395
  ret float 0.000000e+00

_ZN13b3ProfileZoneD2Ev.exit303:                   ; preds = %bb.fi, %bb.fn, %bb.cc, %_ZN13b3ProfileZoneD2Ev.exit351, %bb.ad, %bb.ag, %bb.cb, %bb.cz, %bb.gh, %bb.ac, %bb.ab, %bb.aa
  %.pn271.pn.pn.pn = phi { ptr, i32 } [ %i.gx, %bb.aa ], [ %i.uw, %bb.cz ], [ %.pn271, %bb.fn ], [ %i.gy, %bb.ab ], [ %i.gz, %bb.ac ], [ %.pn254.pn.pn.pn.pn, %_ZN13b3ProfileZoneD2Ev.exit351 ], [ %i.aqn, %bb.gh ], [ %i.tg, %bb.cb ], [ %.pn, %bb.ag ], [ %i.ha, %bb.ad ], [ %i.th, %bb.cc ], [ %i.akr, %bb.fi ]
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit432 unwind label %bb.gs

bb.gs:                                            ; preds = %_ZN13b3ProfileZoneD2Ev.exit303
  %i.axg = landingpad { ptr, i32 }
          catch ptr null
  %i.axh = extractvalue { ptr, i32 } %i.axg, 0
  call void @__clang_call_terminate(ptr %i.axh) #25
  unreachable

_ZN13b3ProfileZoneD2Ev.exit432:                   ; preds = %_ZN13b3ProfileZoneD2Ev.exit303
  resume { ptr, i32 } %.pn271.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN13b3OpenCLArrayI17b3BatchConstraintE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !189
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !190
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.c, label %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.i = load i8, ptr %i.h, align 1, !tbaa !98, !range !115, !noundef !128
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.k = shl i64 %1, 4
  %i.l = load ptr, ptr @__clewCreateBuffer, align 8, !tbaa !114
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96
  %i.o = call ptr %i.l(ptr noundef %i.n, i64 noundef 1, i64 noundef %i.k, ptr noundef null, ptr noundef nonnull %i.a), !inline_history !249 ; 2 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !106
  %.not.i = icmp eq i32 %i.p, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %.thread.i

.thread.i:                                        ; preds = %bb.d
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.37, i32 noundef 166)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.38)
  br label %_ZNK13b3OpenCLArrayI17b3BatchConstraintE8copyToCLEP7_cl_memmmm.exit.i

bb.e:                                             ; preds = %bb.d
  br i1 %2, label %bb.f, label %_ZNK13b3OpenCLArrayI17b3BatchConstraintE8copyToCLEP7_cl_memmmm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr %i.b, align 8, !tbaa !189  ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZNK13b3OpenCLArrayI17b3BatchConstraintE8copyToCLEP7_cl_memmmm.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr @__clewEnqueueCopyBuffer, align 8, !tbaa !114
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !97
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !166
  %i.x = shl i64 %i.q, 4
  %i.y = call i32 %i.s(ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.o, i64 noundef 0, i64 noundef 0, i64 noundef %i.x, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !250 ; 0 uses
  br label %_ZNK13b3OpenCLArrayI17b3BatchConstraintE8copyToCLEP7_cl_memmmm.exit.i

_ZNK13b3OpenCLArrayI17b3BatchConstraintE8copyToCLEP7_cl_memmmm.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %.thread.i
  %.01017.i = phi i64 [ 0, %.thread.i ], [ %1, %bb.e ], [ %1, %bb.f ], [ %1, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !166 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i8, ptr %i.ab, align 8, !range !115
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.ad, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit

bb.h:                                             ; preds = %_ZNK13b3OpenCLArrayI17b3BatchConstraintE8copyToCLEP7_cl_memmmm.exit.i
  %i.ae = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !114
  %i.af = call i32 %i.ae(ptr noundef nonnull %i.aa), !inline_history !251 ; 0 uses
  br label %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit

bb.i:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !166 ; 2 uses
  %.not.i12.i = icmp ne ptr %i.ah, null
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load i8, ptr %i.ai, align 8, !range !115
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond.i13.i = select i1 %.not.i12.i, i1 %i.ak, i1 false
  br i1 %or.cond.i13.i, label %bb.j, label %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit.thread12

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !114
  %i.am = tail call i32 %i.al(ptr noundef nonnull %i.ah), !inline_history !251 ; 0 uses
  br label %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit.thread12

_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit.thread12: ; preds = %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.k

_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit: ; preds = %_ZNK13b3OpenCLArrayI17b3BatchConstraintE8copyToCLEP7_cl_memmmm.exit.i, %bb.h
  store ptr %i.o, ptr %i.z, align 8, !tbaa !166
  store i64 %.01017.i, ptr %i.e, align 8, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br i1 %.not.i, label %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit.thread12, %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit
  br label %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit.thread

_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit.thread: ; preds = %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit, %bb.a, %bb.b, %bb.k
  %storemerge = phi i64 [ 0, %bb.k ], [ %1, %bb.b ], [ %1, %bb.a ], [ %1, %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit ]
  %.010 = phi i1 [ false, %bb.k ], [ true, %bb.b ], [ true, %bb.a ], [ true, %_ZN13b3OpenCLArrayI17b3BatchConstraintE7reserveEmb.exit ]
  store i64 %storemerge, ptr %i.b, align 8, !tbaa !189
  ret i1 %.010
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN13b3OpenCLArrayI15b3GpuSolverBodyE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
end_hunk_0
