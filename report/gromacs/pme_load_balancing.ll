Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_load_balancing?download=true
inline.NumInlined: 504
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"pmedata\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"On ranks doing both PP and PME we need a valid pmedata object\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@debug = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [47 x i8] c"PME loadbal: grid %d %d %d, coulomb cutoff %f\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.13 = private unnamed_addr constant [120 x i8] c"The fastest PP/PME load balancing setting (cutoff %.3f nm) is no longer available due to DD DLB or box size limitations\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"optimal\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"step %4ld: \00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"timed with\00", align 1
@.str.18 = private unnamed_addr constant [167 x i8] c"The performance for grid %d %d %d went from %.3f to %.1f M-cycles, this is more than %f\0AWill increase the number stages to by 1 and ignoring the previous performance\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"set->count > c_numPostSwitchTuningIntervalSkip\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"We should skip cycles\00", align 1
@"__PRETTY_FUNCTION__._ZZN3gmxL13processCyclesEP8_IO_FILERKNS_8MDLoggerEdlbPNS_11pme_setup_tEENK3$_0clEv" = private unnamed_addr constant [136 x i8] c"auto gmx::processCycles(FILE *, const MDLogger &, const double, const int64_t, const bool, pme_setup_t *)::(lambda)::operator()() const\00", align 1
@.str.21 = private unnamed_addr constant [76 x i8] c"step %4s: the %s limits the PME load balancing to a coulomb cut-off of %.3f\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"\0D%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"box size\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"domain decomposition\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"PME grid restriction\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"maximum allowed grid scaling\00", align 1
@__const._ZN3gmxL17enumValueToStringENS_21PmeLoadBalancingLimitE.pmeLoadBalancingLimitNames = private unnamed_addr constant %"struct.gmx::EnumerationArray" { [5 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28] }, align 8
@.str.29 = private unnamed_addr constant [24 x i8] c"ic->coulomb.cutoff != 0\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Cutoff radius cannot be zero\00", align 1
@"__PRETTY_FUNCTION__._ZZN3gmxL10applySetupEPNS_11pme_setup_tEP9gmx_pme_tRK10t_inputrecP19interaction_const_tPNS_18nonbonded_verlet_tEP12gmx_domdec_tENK3$_0clEv" = private unnamed_addr constant [160 x i8] c"auto gmx::applySetup(pme_setup_t *, gmx_pme_t *, const t_inputrec &, interaction_const_t *, nonbonded_verlet_t *, gmx_domdec_t *)::(lambda)::operator()() const\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"%-11s%10s pme grid %d %d %d, coulomb cutoff %.3f\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c": %.1f M-cycles\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"incons\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"pme_loadbal_do called at an interval != nstlist\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"NOTE: DLB can now turn on, when beneficial\00", align 1
@.str.36 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.37 = private unnamed_addr constant [56 x i8] c"\0A       P P   -   P M E   L O A D   B A L A N C I N G\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [111 x i8] c" NOTE: The PP/PME load balancing was limited by the %s,\0A       you might not have reached a good load balance.\00", align 1
@.str.39 = private unnamed_addr constant [65 x i8] c"       Try different mdrun -dd settings or lower the -dds value.\00", align 1
@.str.40 = private unnamed_addr constant [179 x i8] c" PP/PME load balancing changed the cut-off and PME settings:\0A           particle-particle                    PME\0A            rcoulomb  rlist            grid      spacing   1/beta\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"initial\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@.str.43 = private unnamed_addr constant [46 x i8] c" cost-ratio           %4.2f             %4.2f\00", align 1
@.str.44 = private unnamed_addr constant [74 x i8] c" (note that these numbers concern only part of the total PP and PME load)\00", align 1
@.str.45 = private unnamed_addr constant [223 x i8] c"NOTE: PME load balancing increased the non-bonded workload by more than 50%.\0A      For better performance, use (more) PME ranks (mdrun -npme),\0A      or if you are beyond the scaling limit, use fewer total ranks (or nodes).\00", align 1
@.str.46 = private unnamed_addr constant [63 x i8] c"   %-7s %6.3f nm %6.3f nm     %3d %3d %3d   %5.3f nm  %5.3f nm\00", align 1

@_ZN3gmx16PmeLoadBalancing4ImplC1EP12gmx_domdec_tRKNS_8MDLoggerERK10t_inputrecPA3_KfRK19interaction_const_tRKNS_18nonbonded_verlet_tEP9gmx_pme_tRKNS_18SimulationWorkloadE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN3gmx16PmeLoadBalancing4ImplC2EP12gmx_domdec_tRKNS_8MDLoggerERK10t_inputrecPA3_KfRK19interaction_const_tRKNS_18nonbonded_verlet_tEP9gmx_pme_tRKNS_18SimulationWorkloadE
@_ZN3gmx16PmeLoadBalancing4ImplD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3gmx16PmeLoadBalancing4ImplD2Ev
@_ZN3gmx16PmeLoadBalancingC1EP12gmx_domdec_tRKNS_8MDLoggerERK10t_inputrecPA3_KfRK19interaction_const_tRKNS_18nonbonded_verlet_tEP9gmx_pme_tRKNS_18SimulationWorkloadE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN3gmx16PmeLoadBalancingC2EP12gmx_domdec_tRKNS_8MDLoggerERK10t_inputrecPA3_KfRK19interaction_const_tRKNS_18nonbonded_verlet_tEP9gmx_pme_tRKNS_18SimulationWorkloadE
@_ZN3gmx16PmeLoadBalancingD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3gmx16PmeLoadBalancingD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN3gmx20pmeTuningIsSupportedE22CoulombInteractionTypebRKNS_18SimulationWorkloadE(i32 noundef %0, i1 noundef zeroext %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(29) %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread [
    i32 3, label %_ZL8usingPmeRK22CoulombInteractionType.exit
    i32 14, label %_ZL8usingPmeRK22CoulombInteractionType.exit
    i32 13, label %_ZL8usingPmeRK22CoulombInteractionType.exit
    i32 15, label %_ZL8usingPmeRK22CoulombInteractionType.exit
    i32 5, label %_ZL8usingPmeRK22CoulombInteractionType.exit
  ]

_ZL8usingPmeRK22CoulombInteractionType.exit:      ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br i1 %1, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZL8usingPmeRK22CoulombInteractionType.exit
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.b = load i8, ptr %i.a, align 1, !tbaa !12, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.e = load i8, ptr %i.d, align 1, !range !13
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.c, label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15, !range !13, !noundef !14
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = xor i1 %i.i, true
  br label %_ZL8usingPmeRK22CoulombInteractionType.exit.thread

_ZL8usingPmeRK22CoulombInteractionType.exit.thread: ; preds = %bb.b, %bb.a, %bb.c, %_ZL8usingPmeRK22CoulombInteractionType.exit
  %i.k = phi i1 [ false, %bb.b ], [ %i.j, %bb.c ], [ false, %_ZL8usingPmeRK22CoulombInteractionType.exit ], [ false, %bb.a ]
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx16PmeLoadBalancing4ImplC2EP12gmx_domdec_tRKNS_8MDLoggerERK10t_inputrecPA3_KfRK19interaction_const_tRKNS_18nonbonded_verlet_tEP9gmx_pme_tRKNS_18SimulationWorkloadE(ptr noundef nonnull align 8 dereferenceable(192) initializes((0, 4), (32, 92)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(888) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %5, ptr noundef nonnull align 8 dereferenceable(65) %6, ptr noundef %7, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(29) %8) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.gmx::BasicVector", align 8  ; 5 uses
  %10 = alloca %"class.gmx::LogEntryWriter", align 8 ; 12 uses
  %11 = alloca %"class.gmx::LogEntryWriter", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !329, !range !13, !noundef !14
  store i8 %i.b, ptr %0, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 5 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12, !range !13, !noundef !14
  store i8 %i.e, ptr %i.c, align 1, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 22
  %i.h = load i8, ptr %i.g, align 1, !tbaa !330, !range !13, !noundef !14
  store i8 %i.h, ptr %i.f, align 2, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  store i8 1, ptr %i.i, align 1, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.k = tail call noundef float @_ZNK3gmx18nonbonded_verlet_t19pairlistOuterRadiusEv(ptr noundef nonnull align 8 dereferenceable(65) %6), !noalias !331
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  %i.m = load float, ptr %i.l, align 8, !tbaa !58, !noalias !331
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = tail call noundef float @_ZNK3gmx18nonbonded_verlet_t19pairlistOuterRadiusEv(ptr noundef nonnull align 8 dereferenceable(65) %6), !noalias !331
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !59, !noalias !331
  %i.r = tail call noundef float @_ZNK3gmx18nonbonded_verlet_t19pairlistInnerRadiusEv(ptr noundef nonnull align 8 dereferenceable(65) %6), !noalias !331
  %i.s = load float, ptr %i.l, align 8, !tbaa !58, !noalias !331
  %i.t = tail call noundef float @_ZNK3gmx18nonbonded_verlet_t19pairlistInnerRadiusEv(ptr noundef nonnull align 8 dereferenceable(65) %6), !noalias !331
  %i.u = load float, ptr %i.p, align 8, !tbaa !59, !noalias !331
  %i.v = tail call noundef zeroext i1 @_Z19inputrecPbcXY2WallsPK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %3), !noalias !331
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 588
  %i.x = load float, ptr %i.w, align 4, !tbaa !332, !noalias !331 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.z = insertelement <4 x float> poison, float %i.k, i64 0
  %i.aa = insertelement <4 x float> %i.z, float %i.o, i64 1
  %i.ab = insertelement <4 x float> %i.aa, float %i.r, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.t, i64 3
  %i.ad = insertelement <4 x float> poison, float %i.m, i64 0
  %i.ae = insertelement <4 x float> %i.ad, float %i.q, i64 1
  %i.af = insertelement <4 x float> %i.ae, float %i.s, i64 2
  %i.ag = insertelement <4 x float> %i.af, float %i.u, i64 3
  %i.ah = fsub <4 x float> %i.ac, %i.ag
  %i.ai = load <4 x float>, ptr %4, align 4, !tbaa !151, !noalias !331
  %i.aj = shufflevector <4 x float> %i.ah, <4 x float> %i.ai, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.aj, ptr %i.n, align 8, !tbaa !151, !alias.scope !331
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load <4 x float>, ptr %i.ak, align 4, !tbaa !151, !noalias !331 ; 3 uses
  store <4 x float> %i.am, ptr %i.al, align 8, !tbaa !151, !alias.scope !331
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ao = load float, ptr %i.an, align 4, !tbaa !151, !noalias !331 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store float %i.ao, ptr %i.ap, align 8, !tbaa !151, !alias.scope !331
  br i1 %i.v, label %bb.b, label %_ZNK15EwaldBoxZScaler8scaleBoxEPA3_KfPA3_f.exit.i

bb.b:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = extractelement <4 x float> %i.am, i64 2
  %i.at = fmul float %i.x, %i.as
  store float %i.at, ptr %i.ar, align 8, !tbaa !151, !alias.scope !331
  %i.au = extractelement <4 x float> %i.am, i64 3
  %i.av = fmul float %i.x, %i.au
  store float %i.av, ptr %i.aq, align 4, !tbaa !151, !alias.scope !331
  %i.aw = fmul float %i.x, %i.ao
  store float %i.aw, ptr %i.ap, align 8, !tbaa !151, !alias.scope !331
  br label %_ZNK15EwaldBoxZScaler8scaleBoxEPA3_KfPA3_f.exit.i

_ZNK15EwaldBoxZScaler8scaleBoxEPA3_KfPA3_f.exit.i: ; preds = %bb.b, %bb.a
  %i.ax = load float, ptr %i.p, align 8, !tbaa !59, !noalias !331
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ax, ptr %i.ay, align 8, !tbaa !333, !alias.scope !331
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 376 ; 3 uses
  %i.ba = load float, ptr %i.az, align 8, !tbaa !334, !noalias !331 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ba, ptr %i.bb, align 4, !tbaa !335, !alias.scope !331
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !336, !noalias !331 ; 2 uses
  %i.be = fcmp oeq float %i.bd, 0.000000e+00
  br i1 %i.be, label %bb.c, label %_ZN3gmxL10getCutoffsERK10t_inputrecPA3_KfRK19interaction_const_tRKNS_18nonbonded_verlet_tE.exit

bb.c:                                             ; preds = %_ZNK15EwaldBoxZScaler8scaleBoxEPA3_KfPA3_f.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21, !noalias !331
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 140
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 148
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !337, !noalias !331
  %i.bi = load <2 x i32>, ptr %i.bf, align 4, !tbaa !152, !noalias !331
  store <2 x i32> %i.bi, ptr %9, align 8, !tbaa !152, !noalias !331
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.bh, ptr %i.bj, align 8, !tbaa !152, !noalias !331
  %i.bk = call noundef float @_Z21getGridSpacingFromBoxPA3_KfPKi(ptr noundef nonnull %i.y, ptr noundef nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21, !noalias !331
  %.pre.i = load float, ptr %i.az, align 8, !tbaa !334, !noalias !331
  br label %_ZN3gmxL10getCutoffsERK10t_inputrecPA3_KfRK19interaction_const_tRKNS_18nonbonded_verlet_tE.exit

_ZN3gmxL10getCutoffsERK10t_inputrecPA3_KfRK19interaction_const_tRKNS_18nonbonded_verlet_tE.exit: ; preds = %_ZNK15EwaldBoxZScaler8scaleBoxEPA3_KfPA3_f.exit.i, %bb.c
  %i.bl = phi float [ %.pre.i, %bb.c ], [ %i.ba, %_ZNK15EwaldBoxZScaler8scaleBoxEPA3_KfPA3_f.exit.i ]
  %.0.i = phi float [ %i.bk, %bb.c ], [ %i.bd, %_ZNK15EwaldBoxZScaler8scaleBoxEPA3_KfPA3_f.exit.i ]
  %i.bm = fdiv float %i.bl, %.0.i
  store float %i.bm, ptr %i.j, align 4, !tbaa !338, !alias.scope !331
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %3, ptr %i.bn, align 8, !tbaa !339
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %1, ptr %i.bp, align 8, !tbaa !153
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %2, ptr %i.bq, align 8, !tbaa !340
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 364
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !341 ; 2 uses
  switch i32 %i.bs, label %_ZN3gmx20pmeTuningIsSupportedE22CoulombInteractionTypebRKNS_18SimulationWorkloadE.exit.thread [
    i32 3, label %bb.d
    i32 14, label %bb.d
    i32 13, label %bb.d
    i32 15, label %bb.d
    i32 5, label %bb.d
  ]

bb.d:                                             ; preds = %_ZN3gmxL10getCutoffsERK10t_inputrecPA3_KfRK19interaction_const_tRKNS_18nonbonded_verlet_tE.exit, %_ZN3gmxL10getCutoffsERK10t_inputrecPA3_KfRK19interaction_const_tRKNS_18nonbonded_verlet_tE.exit, %_ZN3gmxL10getCutoffsERK10t_inputrecPA3_KfRK19interaction_const_tRKNS_18nonbonded_verlet_tE.exit, %_ZN3gmxL10getCutoffsERK10t_inputrecPA3_KfRK19interaction_const_tRKNS_18nonbonded_verlet_tE.exit, %_ZN3gmxL10getCutoffsERK10t_inputrecPA3_KfRK19interaction_const_tRKNS_18nonbonded_verlet_tE.exit
  %12 = load i8, ptr %i.d, align 1, !tbaa !12, !range !13, !noundef !14
  %13 = trunc nuw i8 %12 to i1
  %i.bt = load i8, ptr %i.a, align 1, !range !13
  %i.bu = trunc nuw i8 %i.bt to i1
  %or.cond8.i = select i1 %13, i1 true, i1 %i.bu
  br i1 %or.cond8.i, label %_ZN3gmx20pmeTuningIsSupportedE22CoulombInteractionTypebRKNS_18SimulationWorkloadE.exit, label %_ZN3gmx20pmeTuningIsSupportedE22CoulombInteractionTypebRKNS_18SimulationWorkloadE.exit.thread

_ZN3gmx20pmeTuningIsSupportedE22CoulombInteractionTypebRKNS_18SimulationWorkloadE.exit: ; preds = %bb.d
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !15, !range !13, !noundef !14
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZN3gmx20pmeTuningIsSupportedE22CoulombInteractionTypebRKNS_18SimulationWorkloadE.exit.thread, label %bb.e

_ZN3gmx20pmeTuningIsSupportedE22CoulombInteractionTypebRKNS_18SimulationWorkloadE.exit.thread: ; preds = %_ZN3gmxL10getCutoffsERK10t_inputrecPA3_KfRK19interaction_const_tRKNS_18nonbonded_verlet_tE.exit, %bb.d, %_ZN3gmx20pmeTuningIsSupportedE22CoulombInteractionTypebRKNS_18SimulationWorkloadE.exit
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx16PmeLoadBalancing4ImplC1EP12gmx_domdec_tRKNS_8MDLoggerERK10t_inputrecPA3_KfRK19interaction_const_tRKNS_18nonbonded_verlet_tEP9gmx_pme_tRKNS_18SimulationWorkloadEENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 378) #22
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %_ZN3gmx20pmeTuningIsSupportedE22CoulombInteractionTypebRKNS_18SimulationWorkloadE.exit.thread
  unreachable

bb.e:                                             ; preds = %_ZN3gmx20pmeTuningIsSupportedE22CoulombInteractionTypebRKNS_18SimulationWorkloadE.exit
  switch i32 %i.bs, label %bb.i [
    i32 3, label %bb.f
    i32 14, label %bb.f
    i32 13, label %bb.f
    i32 15, label %bb.f
    i32 5, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 392
  %.val52 = load i32, ptr %i.by, align 8, !tbaa !154
  %i.bz = icmp eq i32 %.val52, 5
  br i1 %i.bz, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ca = load float, ptr %i.az, align 8, !tbaa !334
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 404
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !342
  %i.cd = fcmp une float %i.ca, %i.cc
  br i1 %i.cd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx16PmeLoadBalancing4ImplC1EP12gmx_domdec_tRKNS_8MDLoggerERK10t_inputrecPA3_KfRK19interaction_const_tRKNS_18nonbonded_verlet_tEP9gmx_pme_tRKNS_18SimulationWorkloadEENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 382) #22
          to label %.noexc54 unwind label %bb.q

.noexc54:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.ce, align 8, !tbaa !155
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 2, ptr %i.cf, align 4, !tbaa !156
  invoke void @_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 noundef 1)
          to label %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE6resizeEm.exit unwind label %bb.o

_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE6resizeEm.exit: ; preds = %bb.i
  %.pre = load ptr, ptr %i.bo, align 8, !tbaa !157
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.cg, align 8, !tbaa !158
  %i.ch = load float, ptr %i.l, align 8, !tbaa !58
  store float %i.ch, ptr %.pre, align 8, !tbaa !161
  %i.ci = invoke noundef float @_ZNK3gmx18nonbonded_verlet_t19pairlistOuterRadiusEv(ptr noundef nonnull align 8 dereferenceable(65) %6)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE6resizeEm.exit
  %i.cj = load ptr, ptr %i.bo, align 8, !tbaa !157
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store float %i.ci, ptr %i.ck, align 4, !tbaa !162
  %i.cl = invoke noundef float @_ZNK3gmx18nonbonded_verlet_t19pairlistInnerRadiusEv(ptr noundef nonnull align 8 dereferenceable(65) %6)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.cm = load ptr, ptr %i.bo, align 8, !tbaa !157 ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store float %i.cl, ptr %i.cn, align 8, !tbaa !163
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 140
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !343
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !152
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !344
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !152
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 148
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !337
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store i32 %i.cv, ptr %i.cw, align 8, !tbaa !152
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !164
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store float %i.cy, ptr %i.cz, align 8, !tbaa !165
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 60
  %i.db = load float, ptr %i.da, align 4, !tbaa !166
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 36
  store float %i.db, ptr %i.dc, align 4, !tbaa !167
  %i.dd = load i8, ptr %0, align 8, !tbaa !31, !range !13, !noundef !14
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx16PmeLoadBalancing4ImplC1EP12gmx_domdec_tRKNS_8MDLoggerERK10t_inputrecPA3_KfRK19interaction_const_tRKNS_18nonbonded_verlet_tEP9gmx_pme_tRKNS_18SimulationWorkloadEENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 404) #22
          to label %.noexc56 unwind label %bb.r

.noexc56:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  store ptr %7, ptr %i.df, align 8, !tbaa !168
  br label %bb.s

bb.o:                                             ; preds = %bb.i, %bb.ah, %bb.ag, %bb.z, %bb.x, %bb.s, %bb.j, %_ZNSt6vectorIN3gmx11pme_setup_tESaIS1_EE6resizeEm.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.p:                                             ; preds = %_ZN3gmx20pmeTuningIsSupportedE22CoulombInteractionTypebRKNS_18SimulationWorkloadE.exit.thread
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.q:                                             ; preds = %bb.h
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.r:                                             ; preds = %bb.m
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.s:                                             ; preds = %bb.n, %bb.k
  %i.dk = invoke noundef float @_Z21getGridSpacingFromBoxPA3_KfPKi(ptr noundef nonnull %i.y, ptr noundef nonnull %i.cq)
          to label %bb.t unwind label %bb.o

bb.t:                                             ; preds = %bb.s
  %i.dl = load ptr, ptr %i.bo, align 8, !tbaa !157
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store float %i.dk, ptr %i.dm, align 4, !tbaa !169
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.do = icmp eq ptr %7, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.dn, i8 0, i64 36, i1 false)
  br i1 %i.do, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !407, !range !13, !noundef !14
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 89
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !408, !range !13, !noundef !14
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.dv = getelementptr i8, ptr %1, i64 20
  %.val53 = load i32, ptr %i.dv, align 4, !tbaa !187
  %i.dw = icmp eq i32 %.val53, 0
  br i1 %i.dw, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w, %bb.u, %bb.t
  %i.dx = invoke noundef double @_Z11gmx_gettimev()
          to label %bb.y unwind label %bb.o

bb.y:                                             ; preds = %bb.x
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %i.dx, ptr %i.dy, align 8, !tbaa !188
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.v
  %i.dz = invoke noundef zeroext i1 @_Z22wallcycle_have_counterv()
          to label %bb.aa unwind label %bb.o

bb.aa:                                            ; preds = %bb.z
  br i1 %i.dz, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ea = load ptr, ptr %2, align 8, !tbaa !191   ; 3 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i8 0, i64 24, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.ed, ptr %10, align 8, !tbaa !194
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.ee, align 8, !tbaa !196
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 1, ptr %i.ef, align 8, !tbaa !199
  %i.eg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull @.str, i64 noundef 87)
          to label %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit unwind label %bb.ac ; 0 uses

_ZN3gmx14LogEntryWriter10appendTextEPKc.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.eh = load ptr, ptr %i.ea, align 8, !tbaa !201
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  invoke void %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit unwind label %bb.ac, !inline_history !0
end_hunk_0
