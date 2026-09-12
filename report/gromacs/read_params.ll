Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/read_params?download=true
inline.NumInlined: 1214
inline.NumDeleted: 418
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN3gmx26setStateDependentAwhParamsEPNS_9AwhParamsERK13pull_params_tP6pull_tPA3_Kf7PbcTypeRA3_S8_RK10t_inputrecfRK10gmx_mtop_tP14WarningHandler:bb.a
  %i.gr = fcmp une float %i.ez, 0.000000e+00
  br i1 %i.gr, label %.split.i46, label %bb.at

.split.i46:                                       ; preds = %bb.as
  %i.gs = load float, ptr %i.w, align 4, !tbaa !303 ; 2 uses
  %i.gt = load float, ptr %i.x, align 4, !tbaa !303 ; 2 uses
  %i.gu = fmul float %i.gt, %i.gt
  %i.gv = call float @llvm.fmuladd.f32(float %i.gs, float %i.gs, float %i.gu)
  %i.gw = load float, ptr %i.y, align 4, !tbaa !303 ; 2 uses
  %i.gx = call noundef float @llvm.fmuladd.f32(float %i.gw, float %i.gw, float %i.gv)
  %i.gy = fcmp une float %i.gx, 0.000000e+00
  %spec.select.2.i = or i1 %.1.1.i, %i.gy
  br i1 %spec.select.2.i, label %bb.au, label %_ZN3gmxL33setStateDependentAwhPullDimParamsEPNS_12AwhDimParamsEiiRK13pull_params_tP6pull_tRK5t_pbcRA3_A3_KfP14WarningHandler.exit

bb.at:                                            ; preds = %bb.as
  br i1 %.1.1.i, label %bb.au, label %_ZN3gmxL33setStateDependentAwhPullDimParamsEPNS_12AwhDimParamsEiiRK13pull_params_tP6pull_tRK5t_pbcRA3_A3_KfP14WarningHandler.exit

bb.au:                                            ; preds = %bb.at, %.split.i46
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.gz = call noundef ptr @_Z17enumValueToString17PullGroupGeometry(i32 noundef 1)
  %i.ha = trunc i64 %indvars.iv to i32
  %i.hb = add i32 %i.ha, 1
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull @.str.106, i32 noundef %i.hb, i32 noundef %i.dj, ptr noundef %i.gz)
  %i.hc = load ptr, ptr %12, align 8, !tbaa !20
  %i.hd = load i64, ptr %i.z, align 8, !tbaa !24
  invoke void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %9, i64 %i.hd, ptr %i.hc)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.he = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.aa
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %bb.av
  %i.hg = load i64, ptr %i.aa, align 8, !tbaa !21
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %.pre.i = load i32, ptr %i.dv, align 4, !tbaa !29
  br label %_ZN3gmxL33setStateDependentAwhPullDimParamsEPNS_12AwhDimParamsEiiRK13pull_params_tP6pull_tRK5t_pbcRA3_A3_KfP14WarningHandler.exit

bb.aw:                                            ; preds = %bb.au
  %i.hi = landingpad { ptr, i32 }
          cleanup
  %i.hj = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.aa
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i: ; preds = %bb.aw
  %i.hl = load i64, ptr %i.aa, align 8, !tbaa !21
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %common.resume

_ZN3gmxL33setStateDependentAwhPullDimParamsEPNS_12AwhDimParamsEiiRK13pull_params_tP6pull_tRK5t_pbcRA3_A3_KfP14WarningHandler.exit: ; preds = %.thread.i, %_ZN3gmxL21get_pull_coord_periodERK12t_pull_coordRK5t_pbcf.exit.thread.i, %_ZN3gmxL21get_pull_coord_periodERK12t_pull_coordRK5t_pbcf.exit.i, %.split.i46, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44
  %i.hn = phi i32 [ %i.ed, %.thread.i ], [ %i.ed, %_ZN3gmxL21get_pull_coord_periodERK12t_pull_coordRK5t_pbcf.exit.thread.i ], [ %i.ed, %bb.at ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44 ], [ %i.ed, %_ZN3gmxL21get_pull_coord_periodERK12t_pull_coordRK5t_pbcf.exit.i ], [ %i.ed, %.split.i46 ]
  %i.ho = call noundef double @_Z20get_pull_coord_valueP6pull_tiRK5t_pbc(ptr noundef %2, i32 noundef %i.hn, ptr noundef nonnull align 4 dereferenceable(384) %17)
  %i.hp = call noundef double @_Z41pull_conversion_factor_internal2userinputRK12t_pull_coord(ptr noundef nonnull align 8 dereferenceable(176) %i.ef)
  %i.hq = fmul double %i.ho, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  store double %i.hq, ptr %i.hr, align 8, !tbaa !300
  br label %_ZN3gmx12_GLOBAL__N_138checkFepLambdaDimDecouplingConsistencyERK10gmx_mtop_tP14WarningHandler.exit

bb.ax:                                            ; preds = %bb.w
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  store double %i.n, ptr %i.hs, align 8, !tbaa !300
  %i.ht = call noundef zeroext i1 @_Z22haveFepPerturbedMassesRK10gmx_mtop_t(ptr noundef nonnull align 1 %8)
  br i1 %i.ht, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %9, i64 216, ptr nonnull @.str.108)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.hu = call noundef zeroext i1 @_Z24havePerturbedConstraintsRK10gmx_mtop_t(ptr noundef nonnull align 1 %8)
  br i1 %i.hu, label %bb.ba, label %_ZN3gmx12_GLOBAL__N_138checkFepLambdaDimDecouplingConsistencyERK10gmx_mtop_tP14WarningHandler.exit

bb.ba:                                            ; preds = %bb.az
  call void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %9, i64 221, ptr nonnull @.str.109)
  br label %_ZN3gmx12_GLOBAL__N_138checkFepLambdaDimDecouplingConsistencyERK10gmx_mtop_tP14WarningHandler.exit

_ZN3gmx12_GLOBAL__N_138checkFepLambdaDimDecouplingConsistencyERK10gmx_mtop_tP14WarningHandler.exit: ; preds = %bb.ba, %bb.az, %_ZN3gmxL33setStateDependentAwhPullDimParamsEPNS_12AwhDimParamsEiiRK13pull_params_tP6pull_tRK5t_pbcRA3_A3_KfP14WarningHandler.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hv = load ptr, ptr %i.da, align 8, !tbaa !72
  %i.hw = load ptr, ptr %i.cy, align 8, !tbaa !75
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %sext = shl i64 %i.hz, 26
  %i.ia = ashr i64 %sext, 32
  %i.ib = icmp slt i64 %indvars.iv.next, %i.ia
  br i1 %i.ib, label %bb.w, label %._crit_edge.loopexit, !llvm.loop !298
}

declare noundef zeroext i1 @_Z31haveConstantEnsembleTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888)) local_unnamed_addr #4

declare noundef float @_Z27constantEnsembleTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888)) local_unnamed_addr #4

declare void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN3gmx3Awh19registerAwhWithPullERKNS_9AwhParamsEP6pull_t(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_Z17enumValueToString17PullGroupGeometry(i32 noundef) local_unnamed_addr #4

declare noundef double @_Z20get_pull_coord_valueP6pull_tiRK5t_pbc(ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(384)) local_unnamed_addr #4

declare noundef double @_Z41pull_conversion_factor_internal2userinputRK12t_pull_coord(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

declare noundef zeroext i1 @_Z22haveFepPerturbedMassesRK10gmx_mtop_t(ptr noundef nonnull align 1) local_unnamed_addr #4

declare noundef zeroext i1 @_Z24havePerturbedConstraintsRK10gmx_mtop_t(ptr noundef nonnull align 1) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #15

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx14checkAwhParamsERKNS_9AwhParamsERK10t_inputrecP14WarningHandler(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %1, ptr noundef %2) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 44 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  %i.a = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  store ptr %i.a, ptr %35, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 6 uses
  store i64 0, ptr %i.b, align 8, !tbaa !24
  store i8 0, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load i8, ptr %i.c, align 8, !tbaa !443, !range !59, !noundef !60
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN3gmx12_GLOBAL__N_119checkMtsConsistencyERK10t_inputrecP14WarningHandler.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !444
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !445  ; 6 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp eq i64 %i.l, 32
  br i1 %i.m, label %bb.c, label %.invoke

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !446  ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !96   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !97   ; 2 uses
  %.not6475.i = icmp eq ptr %i.p, %i.r
  br i1 %.not6475.i, label %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread.thread.i, label %.lr.ph80.i

_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread.thread.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.i, align 8, !tbaa !448
  %42 = xor i64 %i.s, -1
  %43 = lshr i64 %42, 6
  br label %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread._crit_edge.i

_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit.thread.i: ; preds = %._crit_edge.i
  %i.t = load i64, ptr %i.i, align 8, !tbaa !448
  %44 = xor i64 %i.t, -1                          ; 2 uses
  %45 = lshr i64 %44, 6                           ; 4 uses
  br i1 %.1.lcssa.i, label %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.i, label %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread.i

.lr.ph80.i:                                       ; preds = %bb.c, %._crit_edge.i
  %.078.i = phi i1 [ %.1.lcssa.i, %._crit_edge.i ], [ false, %bb.c ] ; 2 uses
  %.02677.i = phi i1 [ %.127.lcssa.i, %._crit_edge.i ], [ false, %bb.c ] ; 2 uses
  %.sroa.050.076.i = phi ptr [ %i.x, %._crit_edge.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.u = load ptr, ptr %.sroa.050.076.i, align 8, !tbaa !75 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.050.076.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72   ; 2 uses
  %.not6570.i = icmp eq ptr %i.u, %i.w
  br i1 %.not6570.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph80.i
  %.127.lcssa.i = phi i1 [ %.02677.i, %.lr.ph80.i ], [ %.228.i, %bb.e ] ; 3 uses
  %.1.lcssa.i = phi i1 [ %.078.i, %.lr.ph80.i ], [ %.2.i, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.050.076.i, i64 104 ; 2 uses
  %.not64.i = icmp eq ptr %i.x, %i.r
  br i1 %.not64.i, label %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit.thread.i, label %.lr.ph80.i

.lr.ph.i:                                         ; preds = %.lr.ph80.i, %bb.e
  %.173.i = phi i1 [ %.2.i, %bb.e ], [ %.078.i, %.lr.ph80.i ]
  %.12772.i = phi i1 [ %.228.i, %bb.e ], [ %.02677.i, %.lr.ph80.i ]
  %.sroa.047.071.i = phi ptr [ %i.ac, %bb.e ], [ %i.u, %.lr.ph80.i ] ; 2 uses
  %i.y = load i32, ptr %.sroa.047.071.i, align 8, !tbaa !28
  switch i32 %i.y, label %.invoke [
    i32 0, label %bb.e
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.i
  br label %bb.e

.invoke:                                          ; preds = %.lr.ph.i, %bb.b
  %i.z = phi ptr [ @.str.122, %bb.b ], [ @.str.124, %.lr.ph.i ]
  %i.aa = phi ptr [ @.str.123, %bb.b ], [ @.str.125, %.lr.ph.i ]
  %i.ab = phi i32 [ 129, %bb.b ], [ 141, %.lr.ph.i ]
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx12_GLOBAL__N_119checkMtsConsistencyERK10t_inputrecP14WarningHandlerENK3$_0clEv", ptr noundef nonnull @.str.39, i32 noundef %i.ab) #24
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.228.i = phi i1 [ %.12772.i, %.lr.ph.i ], [ true, %bb.d ] ; 2 uses
  %.2.i = phi i1 [ true, %.lr.ph.i ], [ %.173.i, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.047.071.i, i64 64 ; 2 uses
  %.not65.i = icmp eq ptr %i.ac, %i.w
  br i1 %.not65.i, label %._crit_edge.i, label %.lr.ph.i

_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.i: ; preds = %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit.thread.i
  %46 = lshr i64 %44, 5
  %47 = xor i64 %46, %45
  %48 = and i64 %47, 1
  %.not.i = icmp eq i64 %48, 0
  br i1 %.not.i, label %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread.i, label %.split.i

.split.i:                                         ; preds = %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.i
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 94, ptr nonnull @.str.119)
          to label %.noexc76 unwind label %bb.m

.noexc76:                                         ; preds = %.split.i
  %.pre83.pre.i = load ptr, ptr %i.f, align 8, !tbaa !445 ; 3 uses
  br i1 %.127.lcssa.i, label %.noexc76._crit_edge, label %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread._crit_edge.i

.noexc76._crit_edge:                              ; preds = %.noexc76
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !444
  %.pre1542 = ptrtoint ptr %.pre to i64
  %.pre1543 = ptrtoint ptr %.pre83.pre.i to i64
  %.pre1545 = sub i64 %.pre1542, %.pre1543
  %i.ad = ashr exact i64 %.pre1545, 4
  %i.ae = add nsw i64 %i.ad, -1
  br label %bb.f

_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread.i: ; preds = %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.i, %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit.thread.i
  br i1 %.127.lcssa.i, label %bb.f, label %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread._crit_edge.i

_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread._crit_edge.i: ; preds = %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread.i, %.noexc76, %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread.thread.i
  %.pre8397.i = phi ptr [ %i.i, %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread.thread.i ], [ %i.i, %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread.i ], [ %.pre83.pre.i, %.noexc76 ]
  %49 = phi i64 [ %43, %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread.thread.i ], [ %45, %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread.i ], [ %45, %.noexc76 ]
  %.pre85.i = and i64 %49, 1
  br label %bb.h

bb.f:                                             ; preds = %.noexc76._crit_edge, %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread.i
  %.pre-phi1546 = phi i64 [ %i.ae, %.noexc76._crit_edge ], [ 1, %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread.i ]
  %.pre8398.i = phi ptr [ %.pre83.pre.i, %.noexc76._crit_edge ], [ %i.i, %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread.i ]
  %50 = and i64 %45, 1                            ; 3 uses
  %.not29.i = icmp eq i64 %.pre-phi1546, %50
  br i1 %.not29.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 100, ptr nonnull @.str.120)
          to label %.noexc77 unwind label %bb.m

.noexc77:                                         ; preds = %bb.g
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !445
  br label %bb.h

bb.h:                                             ; preds = %.noexc77, %bb.f, %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre85.i, %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread._crit_edge.i ], [ %50, %.noexc77 ], [ %50, %bb.f ]
  %i.af = phi ptr [ %.pre8397.i, %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit37.thread._crit_edge.i ], [ %.pre.i, %.noexc77 ], [ %.pre8398.i, %bb.f ]
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !446
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !94
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %.pre-phi.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !451
  %i.am = srem i32 %i.ai, %i.al
  %.not30.i = icmp eq i32 %i.am, 0
  br i1 %.not30.i, label %_ZN3gmx12_GLOBAL__N_119checkMtsConsistencyERK10t_inputrecP14WarningHandler.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 73, ptr nonnull @.str.121)
          to label %_ZN3gmx12_GLOBAL__N_119checkMtsConsistencyERK10t_inputrecP14WarningHandler.exit unwind label %bb.m

_ZN3gmx12_GLOBAL__N_119checkMtsConsistencyERK10t_inputrecP14WarningHandler.exit: ; preds = %bb.h, %bb.a, %bb.i
  %i.an = load i64, ptr %i.b, align 8, !tbaa !24
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %35, i64 noundef 0, i64 noundef %i.an, ptr noundef nonnull @.str.83, i64 noundef 10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZN3gmx12_GLOBAL__N_119checkMtsConsistencyERK10t_inputrecP14WarningHandler.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !93 ; 3 uses
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  %i.as = load ptr, ptr %35, align 8, !tbaa !20
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull @.str.113, ptr noundef %i.as, i32 noundef %i.aq)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %36, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !24
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 %i.av, ptr %i.at)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %36, align 8, !tbaa !20   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  %.pre1540.pre = load i32, ptr %i.ap, align 8, !tbaa !93
  br label %bb.p

bb.m:                                             ; preds = %.invoke, %bb.w, %_ZN3gmx12_GLOBAL__N_119checkMtsConsistencyERK10t_inputrecP14WarningHandler.exit, %bb.i, %bb.g, %.split.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.jb

bb.n:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.o:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %36, align 8, !tbaa !20   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.o
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !21
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.n ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %i.bd, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %bb.jb

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.pre1540 = phi i32 [ %.pre1540.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !452 ; 3 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = srem i32 %.pre1540, %i.bk
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  %i.bn = load ptr, ptr %35, align 8, !tbaa !20
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %37, ptr noundef nonnull @.str.114, ptr noundef %i.bn, i32 noundef %.pre1540, i32 noundef %i.bk)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bo = load ptr, ptr %37, align 8, !tbaa !20
  %i.bp = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !24
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 %i.bq, ptr %i.bo)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.br = load ptr, ptr %37, align 8, !tbaa !20   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.t
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !21
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  br label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.v:                                             ; preds = %bb.s
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %37, align 8, !tbaa !20   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.v
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !21
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.u
  %.pn57 = phi { ptr, i32 } [ %i.bw, %bb.u ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.bx, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  br label %bb.jb

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %bb.q
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !24
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %35, i64 noundef 0, i64 noundef %i.cd, ptr noundef nonnull @.str.87, i64 noundef 19)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit92 unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit92: ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !95
  %i.ch = icmp slt i32 %i.cg, 1
  br i1 %i.ch, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit92
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.ci = load ptr, ptr %35, align 8, !tbaa !20, !noalias !453
  %i.cj = load i64, ptr %i.b, align 8, !tbaa !24, !noalias !453 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 7 uses
  store ptr %i.ck, ptr %38, align 8, !tbaa !23, !alias.scope !454
  %i.cl = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 4 uses
  store i64 0, ptr %i.cl, align 8, !tbaa !24, !alias.scope !454
  store i8 0, ptr %i.ck, align 8, !tbaa !21, !alias.scope !454
  %i.cm = add i64 %i.cj, 27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %38, i64 noundef %i.cm)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !24, !alias.scope !454
  %i.co = sub i64 4611686018427387903, %i.cn
  %i.cp = icmp ult i64 %i.co, %i.cj
  br i1 %i.cp, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.y
  %i.cq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef %i.ci, i64 noundef %i.cj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.z ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cr = load i64, ptr %i.cl, align 8, !tbaa !24, !alias.scope !454
  %i.cs = add i64 %i.cr, -4611686018427387877
  %i.ct = icmp ult i64 %i.cs, 27
  br i1 %i.ct, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #24
          to label %.cont.i.i unwind label %bb.z

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @.str.115, i64 noundef 27)
end_hunk_0
