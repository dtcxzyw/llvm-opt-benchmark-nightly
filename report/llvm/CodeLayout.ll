Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeLayout?download=true
inline.NumInlined: 2770
inline.NumDeleted: 1254
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN12_GLOBAL__N_16ChainTESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_10ExtTSPImpl12concatChainsEvEUlS5_S5_E_EEEvT_T0_:bb.a
  %.sroa.06.017 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.018, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_110ExtTSPImpl12concatChainsEvEUlPKNS2_6ChainTES6_E_EclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread ] ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %.val.i.i = load double, ptr %i.ae, align 8, !tbaa !151
  %i.af = getelementptr i8, ptr %i.ad, i64 24
  %.val8.i.i = load i64, ptr %i.af, align 8, !tbaa !152
  %i.ag = uitofp i64 %.val8.i.i to double
  %i.ah = fneg double %.val.i.i
  %i.ai = fdiv double %i.ah, %i.ag                ; 2 uses
  %i.aj = fcmp olt double %i.ac, %i.ai
  br i1 %i.aj, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_110ExtTSPImpl12concatChainsEvEUlPKNS2_6ChainTES6_E_EclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread, label %.split

.split:                                           ; preds = %bb.c
  %i.ak = load i64, ptr %i.ad, align 8, !tbaa !42, !noalias !595
  %i.al = load i64, ptr %i.a, align 8, !tbaa !42, !noalias !596
  %i.am = fcmp uge double %i.ai, %i.ac
  %i.an = icmp ult i64 %i.al, %i.ak
  %spec.select.i.i = select i1 %i.am, i1 %i.an, i1 false
  br i1 %spec.select.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_110ExtTSPImpl12concatChainsEvEUlPKNS2_6ChainTES6_E_EclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread, label %.split10.us

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_110ExtTSPImpl12concatChainsEvEUlPKNS2_6ChainTES6_E_EclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread: ; preds = %bb.c, %.split
  store ptr %i.ad, ptr %.sroa.06.017, align 8, !tbaa !122
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.0.018, i64 -8 ; 2 uses
  %i.ao = load ptr, ptr %.sroa.0.0, align 8, !tbaa !122 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 32
  %.val12.i.i = load ptr, ptr %i.ap, align 8, !tbaa !37
  %.val12.val.i.i = load ptr, ptr %.val12.i.i, align 8, !tbaa !85
  %.val12.val.val.i.i = load i64, ptr %.val12.val.i.i, align 8, !tbaa !117
  %i.aq = icmp eq i64 %.val12.val.val.i.i, 0
  br i1 %i.aq, label %.split10.us, label %bb.c, !llvm.loop !594

.split10.us:                                      ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_110ExtTSPImpl12concatChainsEvEUlPKNS2_6ChainTES6_E_EclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread, %.split, %.split.us, %.split8
  %.us-phi = phi ptr [ %0, %.split8 ], [ %.sroa.06.0.us, %.split.us ], [ %.sroa.0.018, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_110ExtTSPImpl12concatChainsEvEUlPKNS2_6ChainTES6_E_EclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread ], [ %.sroa.06.017, %.split ]
  store ptr %i.a, ptr %.us-phi, align 8, !tbaa !122
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_110CDSortImpl16getBestMergeGainEPNS_9ChainEdgeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #10 align 2 {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val5 = load ptr, ptr %2, align 8, !tbaa !127  ; 6 uses
  %i.b = getelementptr i8, ptr %2, i64 8
  %.val6 = load ptr, ptr %i.b, align 8, !tbaa !128 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8
  store double -1.000000e+00, ptr %0, align 8, !tbaa !129
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !130
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 184
  %_ZN12_GLOBAL__N_19EmptyListE.val.i.i.i = load ptr, ptr @_ZN12_GLOBAL__N_19EmptyListE, align 16 ; 4 uses
  %_ZN12_GLOBAL__N_19EmptyListE.val51.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19EmptyListE, i64 8), align 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr i8, ptr %.val5, i64 16
  %.val20.i.i = load double, ptr %i.k, align 8, !tbaa !151, !noalias !602 ; 4 uses
  %i.l = getelementptr i8, ptr %.val5, i64 24     ; 3 uses
  %.val21.i.i = load i64, ptr %i.l, align 8, !tbaa !152, !noalias !602 ; 2 uses
  %i.m = uitofp i64 %.val21.i.i to double
  %i.n = fdiv double %.val20.i.i, %i.m
  %i.o = load i32, ptr %i.f, align 4, !tbaa !603, !noalias !602
  %i.p = uitofp i32 %i.o to double                ; 2 uses
  %i.q = fmul double %i.n, %i.p                   ; 2 uses
  %i.r = load i64, ptr %i.g, align 8, !tbaa !167, !noalias !602
  %i.s = uitofp i64 %i.r to double                ; 3 uses
  %i.t = fcmp ult double %i.q, %i.s               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !151, !noalias !602 ; 4 uses
  %i.w = getelementptr i8, ptr %.val6, i64 24     ; 3 uses
  %.val15.i.i.i = load i64, ptr %i.w, align 8, !tbaa !152, !noalias !602 ; 2 uses
  %i.x = fadd double %.val20.i.i, %i.v            ; 3 uses
  %i.y = add i64 %.val15.i.i.i, %.val21.i.i
  %i.z = insertelement <2 x i64> poison, i64 %i.y, i64 0
  %i.aa = insertelement <2 x i64> %i.z, i64 %.val15.i.i.i, i64 1
  %i.ab = uitofp <2 x i64> %i.aa to <2 x double>
  %i.ac = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.v, i64 1
  %i.ae = fdiv <2 x double> %i.ad, %i.ab
  %i.af = insertelement <2 x double> poison, double %i.p, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x double> %i.ae, %i.ag          ; 2 uses
  %i.ai = insertelement <2 x double> poison, double %i.s, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = fcmp ult <2 x double> %i.ah, %i.aj      ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %.val.i.i = load ptr, ptr %i.al, align 8, !tbaa !110, !noalias !602 ; 4 uses
  %i.an = getelementptr i8, ptr %.val5, i64 40
  %.val17.i.i = load ptr, ptr %i.an, align 8, !tbaa !110, !noalias !602 ; 4 uses
  %.val18.i.i = load ptr, ptr %i.am, align 8, !tbaa !110, !noalias !602 ; 4 uses
  %i.ao = getelementptr i8, ptr %.val6, i64 40
  %.val19.i.i = load ptr, ptr %i.ao, align 8, !tbaa !110, !noalias !602 ; 4 uses
  %i.ap = fdiv double %i.q, %i.s
  %i.aq = fsub double 1.000000e+00, %i.ap         ; 2 uses
  %i.ar = fdiv <2 x double> %i.ah, %i.aj          ; 2 uses
  %i.as = extractelement <2 x double> %i.ar, i64 1
  %i.at = fsub double 1.000000e+00, %i.as         ; 2 uses
  %i.au = extractelement <2 x double> %i.ar, i64 0
  %i.av = fsub double 1.000000e+00, %i.au         ; 2 uses
  %i.aw = getelementptr i8, ptr %2, i64 24
  br i1 %i.t, label %bb.a, label %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit.i.i.i

bb.a:                                             ; preds = %.lr.ph.i
  %i.ax = load i32, ptr %1, align 8, !tbaa !604, !noalias !602
  %i.ay = uitofp i32 %i.ax to double
  %i.az = tail call double @pow(double noundef %i.aq, double noundef %i.ay) #22, !noalias !602
  br label %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit.i.i.i

_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit.i.i.i: ; preds = %bb.a, %.lr.ph.i
  %.0.i.i.i.i = phi double [ %i.az, %bb.a ], [ 0.000000e+00, %.lr.ph.i ]
  %i.ba = extractelement <2 x i1> %i.ak, i64 1    ; 2 uses
  br i1 %i.ba, label %bb.b, label %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit22.i.i.i

bb.b:                                             ; preds = %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit.i.i.i
  %i.bb = load i32, ptr %1, align 8, !tbaa !604, !noalias !602
  %i.bc = uitofp i32 %i.bb to double
  %i.bd = tail call double @pow(double noundef %i.at, double noundef %i.bc) #22, !noalias !602
  br label %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit22.i.i.i

_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit22.i.i.i: ; preds = %bb.b, %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit.i.i.i
  %.0.i21.i.i.i = phi double [ %i.bd, %bb.b ], [ 0.000000e+00, %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit.i.i.i ]
  %i.be = extractelement <2 x i1> %i.ak, i64 0    ; 2 uses
  br i1 %i.be, label %bb.c, label %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i

bb.c:                                             ; preds = %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit22.i.i.i
  %i.bf = load i32, ptr %1, align 8, !tbaa !604, !noalias !602
  %i.bg = uitofp i32 %i.bf to double
  %i.bh = tail call double @pow(double noundef %i.av, double noundef %i.bg) #22, !noalias !602
  br label %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i

_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i: ; preds = %bb.c, %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit22.i.i.i
  %.0.i23.i.i.i = phi double [ %i.bh, %bb.c ], [ 0.000000e+00, %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit22.i.i.i ]
  %i.bi = fmul double %i.v, %.0.i21.i.i.i
  %i.bj = tail call double @llvm.fmuladd.f64(double %.val20.i.i, double %.0.i.i.i.i, double %i.bi)
  %i.bk = fmul double %i.x, %.0.i23.i.i.i
  %i.bl = fsub double %i.bj, %i.bk
  %.not5.i.i.i.i = icmp eq ptr %.val17.i.i, %.val.i.i
  br i1 %.not5.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i
  %.0.i.i.i = phi i64 [ 0, %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i ], [ %i.br, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not37.i.i.i.i = icmp eq ptr %.val19.i.i, %.val18.i.i
  br i1 %.not37.i.i.i.i, label %._crit_edge11.i.i.i.i, label %.lr.ph10.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i, %.lr.ph.i.i.i.i
  %i.bm = phi i64 [ %i.br, %.lr.ph.i.i.i.i ], [ 0, %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i ] ; 2 uses
  %.sroa.02.06.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %.val.i.i, %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i ] ; 2 uses
  %i.bn = load ptr, ptr %.sroa.02.06.i.i.i.i, align 8, !tbaa !85, !noalias !602 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !204, !noalias !602
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !203, !noalias !602
  %i.br = add i64 %i.bq, %i.bm                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bs, %.val17.i.i
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !599

._crit_edge11.i.i.i.i:                            ; preds = %.lr.ph10.i.i.i.i, %._crit_edge.i.i.i.i
  %.1.i.i.i = phi i64 [ %.0.i.i.i, %._crit_edge.i.i.i.i ], [ %i.by, %.lr.ph10.i.i.i.i ]
  %.not412.i.i.i.i = icmp eq ptr %_ZN12_GLOBAL__N_19EmptyListE.val51.i.i.i, %_ZN12_GLOBAL__N_19EmptyListE.val.i.i.i
  br i1 %.not412.i.i.i.i, label %_ZNK12_GLOBAL__N_112MergedNodesT7forEachIZNKS_10CDSortImpl21distBasedLocalityGainERKS0_RKNS_12MergedJumpsTEEUlPKNS_5NodeTEE_EEvRKT_.exit.i.i.i, label %.lr.ph15.i.i.i.i

.lr.ph10.i.i.i.i:                                 ; preds = %._crit_edge.i.i.i.i, %.lr.ph10.i.i.i.i
  %i.bt = phi i64 [ %i.by, %.lr.ph10.i.i.i.i ], [ %.0.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.01.08.i.i.i.i = phi ptr [ %i.bz, %.lr.ph10.i.i.i.i ], [ %.val18.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bu = load ptr, ptr %.sroa.01.08.i.i.i.i, align 8, !tbaa !85, !noalias !602 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i64 %i.bt, ptr %i.bv, align 8, !tbaa !204, !noalias !602
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !203, !noalias !602
  %i.by = add i64 %i.bx, %i.bt                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i.i.i.i, i64 8 ; 2 uses
  %.not3.i.i.i.i = icmp eq ptr %i.bz, %.val19.i.i
  br i1 %.not3.i.i.i.i, label %._crit_edge11.i.i.i.i, label %.lr.ph10.i.i.i.i, !llvm.loop !600

.lr.ph15.i.i.i.i:                                 ; preds = %._crit_edge11.i.i.i.i, %.lr.ph15.i.i.i.i
  %i.ca = phi i64 [ %i.cf, %.lr.ph15.i.i.i.i ], [ %.1.i.i.i, %._crit_edge11.i.i.i.i ] ; 2 uses
  %.sroa.0.013.i.i.i.i = phi ptr [ %i.cg, %.lr.ph15.i.i.i.i ], [ %_ZN12_GLOBAL__N_19EmptyListE.val.i.i.i, %._crit_edge11.i.i.i.i ] ; 2 uses
  %i.cb = load ptr, ptr %.sroa.0.013.i.i.i.i, align 8, !tbaa !85, !noalias !602 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !204, !noalias !602
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !203, !noalias !602
  %i.cf = add i64 %i.ce, %i.ca
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i.i, i64 8 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cg, %_ZN12_GLOBAL__N_19EmptyListE.val51.i.i.i
  br i1 %.not4.i.i.i.i, label %_ZNK12_GLOBAL__N_112MergedNodesT7forEachIZNKS_10CDSortImpl21distBasedLocalityGainERKS0_RKNS_12MergedJumpsTEEUlPKNS_5NodeTEE_EEvRKT_.exit.i.i.i, label %.lr.ph15.i.i.i.i, !llvm.loop !601

_ZNK12_GLOBAL__N_112MergedNodesT7forEachIZNKS_10CDSortImpl21distBasedLocalityGainERKS0_RKNS_12MergedJumpsTEEUlPKNS_5NodeTEE_EEvRKT_.exit.i.i.i: ; preds = %.lr.ph15.i.i.i.i, %._crit_edge11.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !121, !noalias !602 ; 3 uses
  %.val15.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !121, !noalias !602 ; 3 uses
  %.not2021.i.i.i.i = icmp eq ptr %.val.i.i.i.i, %.val15.i.i.i.i ; 2 uses
  br i1 %.not2021.i.i.i.i, label %_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i, label %.lr.ph.i3.i.i.i

.lr.ph.i3.i.i.i:                                  ; preds = %_ZNK12_GLOBAL__N_112MergedNodesT7forEachIZNKS_10CDSortImpl21distBasedLocalityGainERKS0_RKNS_12MergedJumpsTEEUlPKNS_5NodeTEE_EEvRKT_.exit.i.i.i
  %i.ch = load i64, ptr %i.i, align 8, !tbaa !168, !noalias !602 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = uitofp i64 %i.ch to double
  %i.ck = select i1 %i.ci, double 1.000000e-01, double %i.cj
  %.val7.i.i.i.i.i = load double, ptr %i.h, align 8, !tbaa !605, !noalias !602
  %i.cl = fneg double %.val7.i.i.i.i.i            ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i3.i.i.i
  %.011.i.i.i = phi double [ 0.000000e+00, %.lr.ph.i3.i.i.i ], [ %i.dg, %bb.d ]
  %.09.i.i.i = phi double [ 0.000000e+00, %.lr.ph.i3.i.i.i ], [ %i.dj, %bb.d ]
  %.sroa.019.022.i.i.i.i = phi ptr [ %.val.i.i.i.i, %.lr.ph.i3.i.i.i ], [ %i.dk, %bb.d ] ; 2 uses
  %i.cm = load ptr, ptr %.sroa.019.022.i.i.i.i, align 8, !tbaa !89, !noalias !602 ; 4 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !92, !noalias !602
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !204, !noalias !602
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !96, !noalias !602
  %i.cs = add i64 %i.cr, %i.cp                    ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !93, !noalias !602
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !204, !noalias !602 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !94, !noalias !602
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.cs, %i.cw
  %3 = sub nuw i64 %i.cw, %i.cs
  %i.cz = sub nuw i64 %i.cs, %i.cw
  %4 = select i1 %.not.i.i.i.i.i.i, i64 %i.cz, i64 %3 ; 2 uses
  %i.da = icmp eq i64 %4, 0
  %i.db = uitofp i64 %4 to double
  %i.dc = select i1 %i.da, double 1.000000e-01, double %i.db
  %i.dd = uitofp i64 %i.cy to double              ; 2 uses
  %i.de = tail call double @pow(double noundef %i.dc, double noundef %i.cl) #22, !noalias !602
  %i.df = fmul double %i.de, %i.dd
  %i.dg = fadd double %.011.i.i.i, %i.df          ; 2 uses
  %i.dh = tail call double @pow(double noundef %i.ck, double noundef %i.cl) #22, !noalias !602
  %i.di = fmul double %i.dh, %i.dd
  %i.dj = fadd double %.09.i.i.i, %i.di           ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.019.022.i.i.i.i, i64 8 ; 2 uses
  %.not20.i.i.i.i = icmp eq ptr %i.dk, %.val15.i.i.i.i
  br i1 %.not20.i.i.i.i, label %_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i.loopexit, label %bb.d

_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i.loopexit: ; preds = %bb.d
  %i.dl = fsub double %i.dg, %i.dj
  br label %_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i

_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i: ; preds = %_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i.loopexit, %_ZNK12_GLOBAL__N_112MergedNodesT7forEachIZNKS_10CDSortImpl21distBasedLocalityGainERKS0_RKNS_12MergedJumpsTEEUlPKNS_5NodeTEE_EEvRKT_.exit.i.i.i
  %i.dm = phi double [ 0.000000e+00, %_ZNK12_GLOBAL__N_112MergedNodesT7forEachIZNKS_10CDSortImpl21distBasedLocalityGainERKS0_RKNS_12MergedJumpsTEEUlPKNS_5NodeTEE_EEvRKT_.exit.i.i.i ], [ %i.dl, %_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i.loopexit ]
  %i.dn = load double, ptr %i.j, align 8, !tbaa !606, !noalias !602 ; 2 uses
  %i.do = tail call double @llvm.fmuladd.f64(double %i.dn, double %i.bl, double %i.dm) ; 3 uses
  %i.dp = fcmp ult double %i.do, 0.000000e+00
  br i1 %i.dp, label %_ZNK12_GLOBAL__N_110CDSortImpl16computeMergeGainEPNS_6ChainTES2_RKNS_12MergedJumpsTENS_10MergeTypeTE.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i
  %i.dq = load i64, ptr %i.w, align 8, !tbaa !42, !noalias !602
  %i.dr = load i64, ptr %i.l, align 8, !tbaa !42, !noalias !602
  %i.ds = tail call i64 @llvm.umin.i64(i64 %i.dq, i64 %i.dr)
  %i.dt = uitofp i64 %i.ds to double
  %i.du = fdiv double %i.do, %i.dt
  br label %_ZNK12_GLOBAL__N_110CDSortImpl16computeMergeGainEPNS_6ChainTES2_RKNS_12MergedJumpsTENS_10MergeTypeTE.exit.i

_ZNK12_GLOBAL__N_110CDSortImpl16computeMergeGainEPNS_6ChainTES2_RKNS_12MergedJumpsTENS_10MergeTypeTE.exit.i: ; preds = %bb.e, %_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i
  %.0.i.i = phi double [ %i.du, %bb.e ], [ %i.do, %_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i ] ; 4 uses
  %i.dv = fsub double -1.000000e+00, %.0.i.i
  %i.dw = tail call noundef double @llvm.fabs.f64(double %i.dv)
  %i.dx = fcmp olt double %i.dw, 1.000000e-08
  br i1 %i.dx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK12_GLOBAL__N_110CDSortImpl16computeMergeGainEPNS_6ChainTES2_RKNS_12MergedJumpsTENS_10MergeTypeTE.exit.i
  %i.dy = load i64, ptr %.val5, align 8, !tbaa !178
  %i.dz = load i64, ptr %.val6, align 8, !tbaa !178
  %i.ea = icmp ult i64 %i.dy, %i.dz
  br i1 %i.ea, label %.thread.sink.split.i, label %.thread.i

bb.g:                                             ; preds = %_ZNK12_GLOBAL__N_110CDSortImpl16computeMergeGainEPNS_6ChainTES2_RKNS_12MergedJumpsTENS_10MergeTypeTE.exit.i
  %i.eb = fcmp ogt double %.0.i.i, f0xBFEFFFFFFAA19C47
  br i1 %i.eb, label %.thread.sink.split.i, label %.thread.i

.thread.sink.split.i:                             ; preds = %bb.g, %bb.f
  store double %.0.i.i, ptr %0, align 8, !tbaa !158
  store i64 0, ptr %i.d, align 8, !tbaa !42
  store i32 0, ptr %i.e, align 8, !tbaa !161
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.sink.split.i, %bb.g, %bb.f
  %.val9.i.1 = phi double [ %.0.i.i, %.thread.sink.split.i ], [ -1.000000e+00, %bb.g ], [ -1.000000e+00, %bb.f ] ; 2 uses
  br i1 %i.t, label %bb.h, label %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit.i.i.i.1

bb.h:                                             ; preds = %.thread.i
  %i.ec = load i32, ptr %1, align 8, !tbaa !604, !noalias !602
  %i.ed = uitofp i32 %i.ec to double
  %i.ee = tail call double @pow(double noundef %i.aq, double noundef %i.ed) #22, !noalias !602
  br label %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit.i.i.i.1

_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit.i.i.i.1: ; preds = %bb.h, %.thread.i
  %.0.i.i.i.i.1 = phi double [ %i.ee, %bb.h ], [ 0.000000e+00, %.thread.i ]
  br i1 %i.ba, label %bb.i, label %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit22.i.i.i.1

bb.i:                                             ; preds = %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit.i.i.i.1
  %i.ef = load i32, ptr %1, align 8, !tbaa !604, !noalias !602
  %i.eg = uitofp i32 %i.ef to double
  %i.eh = tail call double @pow(double noundef %i.at, double noundef %i.eg) #22, !noalias !602
  br label %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit22.i.i.i.1

_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit22.i.i.i.1: ; preds = %bb.i, %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit.i.i.i.1
  %.0.i21.i.i.i.1 = phi double [ %i.eh, %bb.i ], [ 0.000000e+00, %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit.i.i.i.1 ]
  br i1 %i.be, label %bb.j, label %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i.1

bb.j:                                             ; preds = %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit22.i.i.i.1
  %i.ei = load i32, ptr %1, align 8, !tbaa !604, !noalias !602
  %i.ej = uitofp i32 %i.ei to double
  %i.ek = tail call double @pow(double noundef %i.av, double noundef %i.ej) #22, !noalias !602
  br label %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i.1

_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i.1: ; preds = %bb.j, %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit22.i.i.i.1
  %.0.i23.i.i.i.1 = phi double [ %i.ek, %bb.j ], [ 0.000000e+00, %_ZZNK12_GLOBAL__N_110CDSortImpl21freqBasedLocalityGainEPNS_6ChainTES2_ENKUldE_clEd.exit22.i.i.i.1 ]
  %i.el = fmul double %i.v, %.0.i21.i.i.i.1
  %i.em = tail call double @llvm.fmuladd.f64(double %.val20.i.i, double %.0.i.i.i.i.1, double %i.el)
  %i.en = fmul double %i.x, %.0.i23.i.i.i.1
  %i.eo = fsub double %i.em, %i.en
  %.not5.i.i.i.i.1 = icmp eq ptr %.val19.i.i, %.val18.i.i
  br i1 %.not5.i.i.i.i.1, label %._crit_edge.i.i.i.i.1, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i.1, %.lr.ph.i.i.i.i.1
  %i.ep = phi i64 [ %i.eu, %.lr.ph.i.i.i.i.1 ], [ 0, %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i.1 ] ; 2 uses
  %.sroa.02.06.i.i.i.i.1 = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.1 ], [ %.val18.i.i, %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i.1 ] ; 2 uses
  %i.eq = load ptr, ptr %.sroa.02.06.i.i.i.i.1, align 8, !tbaa !85, !noalias !602 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  store i64 %i.ep, ptr %i.er, align 8, !tbaa !204, !noalias !602
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.et = load i64, ptr %i.es, align 8, !tbaa !203, !noalias !602
  %i.eu = add i64 %i.et, %i.ep                    ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.i.1, i64 8 ; 2 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.ev, %.val19.i.i
  br i1 %.not.i.i.i.i.1, label %._crit_edge.i.i.i.i.1, label %.lr.ph.i.i.i.i.1, !llvm.loop !599

._crit_edge.i.i.i.i.1:                            ; preds = %.lr.ph.i.i.i.i.1, %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i.1
  %.0.i.i.i.1 = phi i64 [ 0, %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i.1 ], [ %i.eu, %.lr.ph.i.i.i.i.1 ] ; 2 uses
  %.not37.i.i.i.i.1 = icmp eq ptr %.val17.i.i, %.val.i.i
  br i1 %.not37.i.i.i.i.1, label %._crit_edge11.i.i.i.i.1, label %.lr.ph10.i.i.i.i.1

.lr.ph10.i.i.i.i.1:                               ; preds = %._crit_edge.i.i.i.i.1, %.lr.ph10.i.i.i.i.1
  %i.ew = phi i64 [ %i.fb, %.lr.ph10.i.i.i.i.1 ], [ %.0.i.i.i.1, %._crit_edge.i.i.i.i.1 ] ; 2 uses
  %.sroa.01.08.i.i.i.i.1 = phi ptr [ %i.fc, %.lr.ph10.i.i.i.i.1 ], [ %.val.i.i, %._crit_edge.i.i.i.i.1 ] ; 2 uses
  %i.ex = load ptr, ptr %.sroa.01.08.i.i.i.i.1, align 8, !tbaa !85, !noalias !602 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store i64 %i.ew, ptr %i.ey, align 8, !tbaa !204, !noalias !602
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !203, !noalias !602
  %i.fb = add i64 %i.fa, %i.ew                    ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i.i.i.i.1, i64 8 ; 2 uses
  %.not3.i.i.i.i.1 = icmp eq ptr %i.fc, %.val17.i.i
  br i1 %.not3.i.i.i.i.1, label %._crit_edge11.i.i.i.i.1, label %.lr.ph10.i.i.i.i.1, !llvm.loop !600

._crit_edge11.i.i.i.i.1:                          ; preds = %.lr.ph10.i.i.i.i.1, %._crit_edge.i.i.i.i.1
  %.1.i.i.i.1 = phi i64 [ %.0.i.i.i.1, %._crit_edge.i.i.i.i.1 ], [ %i.fb, %.lr.ph10.i.i.i.i.1 ]
  %.not412.i.i.i.i.1 = icmp eq ptr %_ZN12_GLOBAL__N_19EmptyListE.val51.i.i.i, %_ZN12_GLOBAL__N_19EmptyListE.val.i.i.i
  br i1 %.not412.i.i.i.i.1, label %_ZNK12_GLOBAL__N_112MergedNodesT7forEachIZNKS_10CDSortImpl21distBasedLocalityGainERKS0_RKNS_12MergedJumpsTEEUlPKNS_5NodeTEE_EEvRKT_.exit.i.i.i.1, label %.lr.ph15.i.i.i.i.1

.lr.ph15.i.i.i.i.1:                               ; preds = %._crit_edge11.i.i.i.i.1, %.lr.ph15.i.i.i.i.1
  %i.fd = phi i64 [ %i.fi, %.lr.ph15.i.i.i.i.1 ], [ %.1.i.i.i.1, %._crit_edge11.i.i.i.i.1 ] ; 2 uses
  %.sroa.0.013.i.i.i.i.1 = phi ptr [ %i.fj, %.lr.ph15.i.i.i.i.1 ], [ %_ZN12_GLOBAL__N_19EmptyListE.val.i.i.i, %._crit_edge11.i.i.i.i.1 ] ; 2 uses
  %i.fe = load ptr, ptr %.sroa.0.013.i.i.i.i.1, align 8, !tbaa !85, !noalias !602 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  store i64 %i.fd, ptr %i.ff, align 8, !tbaa !204, !noalias !602
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !203, !noalias !602
  %i.fi = add i64 %i.fh, %i.fd
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i.i.1, i64 8 ; 2 uses
  %.not4.i.i.i.i.1 = icmp eq ptr %i.fj, %_ZN12_GLOBAL__N_19EmptyListE.val51.i.i.i
  br i1 %.not4.i.i.i.i.1, label %_ZNK12_GLOBAL__N_112MergedNodesT7forEachIZNKS_10CDSortImpl21distBasedLocalityGainERKS0_RKNS_12MergedJumpsTEEUlPKNS_5NodeTEE_EEvRKT_.exit.i.i.i.1, label %.lr.ph15.i.i.i.i.1, !llvm.loop !601

_ZNK12_GLOBAL__N_112MergedNodesT7forEachIZNKS_10CDSortImpl21distBasedLocalityGainERKS0_RKNS_12MergedJumpsTEEUlPKNS_5NodeTEE_EEvRKT_.exit.i.i.i.1: ; preds = %.lr.ph15.i.i.i.i.1, %._crit_edge11.i.i.i.i.1
  br i1 %.not2021.i.i.i.i, label %_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i.1, label %.lr.ph.i3.i.i.i.1

.lr.ph.i3.i.i.i.1:                                ; preds = %_ZNK12_GLOBAL__N_112MergedNodesT7forEachIZNKS_10CDSortImpl21distBasedLocalityGainERKS0_RKNS_12MergedJumpsTEEUlPKNS_5NodeTEE_EEvRKT_.exit.i.i.i.1
  %i.fk = load i64, ptr %i.i, align 8, !tbaa !168, !noalias !602 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  %i.fm = uitofp i64 %i.fk to double
  %i.fn = select i1 %i.fl, double 1.000000e-01, double %i.fm
  %.val7.i.i.i.i.i.1 = load double, ptr %i.h, align 8, !tbaa !605, !noalias !602
  %i.fo = fneg double %.val7.i.i.i.i.i.1          ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i3.i.i.i.1
  %.011.i.i.i.1 = phi double [ 0.000000e+00, %.lr.ph.i3.i.i.i.1 ], [ %i.gj, %bb.k ]
  %.09.i.i.i.1 = phi double [ 0.000000e+00, %.lr.ph.i3.i.i.i.1 ], [ %i.gm, %bb.k ]
  %.sroa.019.022.i.i.i.i.1 = phi ptr [ %.val.i.i.i.i, %.lr.ph.i3.i.i.i.1 ], [ %i.gn, %bb.k ] ; 2 uses
  %i.fp = load ptr, ptr %.sroa.019.022.i.i.i.i.1, align 8, !tbaa !89, !noalias !602 ; 4 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !92, !noalias !602
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !204, !noalias !602
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !96, !noalias !602
  %i.fv = add i64 %i.fu, %i.fs                    ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !93, !noalias !602
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !204, !noalias !602 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !94, !noalias !602
  %.not.i.i.i.i.i.i.1 = icmp ugt i64 %i.fv, %i.fz
  %5 = sub nuw i64 %i.fz, %i.fv
  %i.gc = sub nuw i64 %i.fv, %i.fz
  %6 = select i1 %.not.i.i.i.i.i.i.1, i64 %i.gc, i64 %5 ; 2 uses
  %i.gd = icmp eq i64 %6, 0
  %i.ge = uitofp i64 %6 to double
  %i.gf = select i1 %i.gd, double 1.000000e-01, double %i.ge
  %i.gg = uitofp i64 %i.gb to double              ; 2 uses
  %i.gh = tail call double @pow(double noundef %i.gf, double noundef %i.fo) #22, !noalias !602
  %i.gi = fmul double %i.gh, %i.gg
  %i.gj = fadd double %.011.i.i.i.1, %i.gi        ; 2 uses
  %i.gk = tail call double @pow(double noundef %i.fn, double noundef %i.fo) #22, !noalias !602
  %i.gl = fmul double %i.gk, %i.gg
  %i.gm = fadd double %.09.i.i.i.1, %i.gl         ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.019.022.i.i.i.i.1, i64 8 ; 2 uses
  %.not20.i.i.i.i.1 = icmp eq ptr %i.gn, %.val15.i.i.i.i
  br i1 %.not20.i.i.i.i.1, label %_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i.loopexit.1, label %bb.k

_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i.loopexit.1: ; preds = %bb.k
  %i.go = fsub double %i.gj, %i.gm
  br label %_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i.1

_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i.1: ; preds = %_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i.loopexit.1, %_ZNK12_GLOBAL__N_112MergedNodesT7forEachIZNKS_10CDSortImpl21distBasedLocalityGainERKS0_RKNS_12MergedJumpsTEEUlPKNS_5NodeTEE_EEvRKT_.exit.i.i.i.1
  %i.gp = phi double [ 0.000000e+00, %_ZNK12_GLOBAL__N_112MergedNodesT7forEachIZNKS_10CDSortImpl21distBasedLocalityGainERKS0_RKNS_12MergedJumpsTEEUlPKNS_5NodeTEE_EEvRKT_.exit.i.i.i.1 ], [ %i.go, %_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i.loopexit.1 ]
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.dn, double %i.eo, double %i.gp) ; 3 uses
  %i.gr = fcmp ult double %i.gq, 0.000000e+00
  br i1 %i.gr, label %_ZNK12_GLOBAL__N_110CDSortImpl16computeMergeGainEPNS_6ChainTES2_RKNS_12MergedJumpsTENS_10MergeTypeTE.exit.i.1, label %bb.l

bb.l:                                             ; preds = %_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i.1
  %i.gs = load i64, ptr %i.w, align 8, !tbaa !42, !noalias !602
  %i.gt = load i64, ptr %i.l, align 8, !tbaa !42, !noalias !602
  %i.gu = tail call i64 @llvm.umin.i64(i64 %i.gs, i64 %i.gt)
  %i.gv = uitofp i64 %i.gu to double
  %i.gw = fdiv double %i.gq, %i.gv
  br label %_ZNK12_GLOBAL__N_110CDSortImpl16computeMergeGainEPNS_6ChainTES2_RKNS_12MergedJumpsTENS_10MergeTypeTE.exit.i.1

_ZNK12_GLOBAL__N_110CDSortImpl16computeMergeGainEPNS_6ChainTES2_RKNS_12MergedJumpsTENS_10MergeTypeTE.exit.i.1: ; preds = %bb.l, %_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i.1
  %.0.i.i.1 = phi double [ %i.gw, %bb.l ], [ %i.gq, %_ZNK12_GLOBAL__N_110CDSortImpl21distBasedLocalityGainERKNS_12MergedNodesTERKNS_12MergedJumpsTE.exit.i.i.1 ] ; 3 uses
  %i.gx = fsub double %.val9.i.1, %.0.i.i.1
  %i.gy = tail call noundef double @llvm.fabs.f64(double %i.gx)
  %i.gz = fcmp olt double %i.gy, 1.000000e-08
  br i1 %i.gz, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK12_GLOBAL__N_110CDSortImpl16computeMergeGainEPNS_6ChainTES2_RKNS_12MergedJumpsTENS_10MergeTypeTE.exit.i.1
  %i.ha = fadd double %.val9.i.1, 1.000000e-08
  %i.hb = fcmp ogt double %.0.i.i.1, %i.ha
  br i1 %i.hb, label %.thread.sink.split.i.1, label %.thread.i.1

bb.n:                                             ; preds = %_ZNK12_GLOBAL__N_110CDSortImpl16computeMergeGainEPNS_6ChainTES2_RKNS_12MergedJumpsTENS_10MergeTypeTE.exit.i.1
  %i.hc = load i64, ptr %.val5, align 8, !tbaa !178
  %i.hd = load i64, ptr %.val6, align 8, !tbaa !178
  %i.he = icmp ugt i64 %i.hc, %i.hd
  br i1 %i.he, label %.thread.sink.split.i.1, label %.thread.i.1

.thread.sink.split.i.1:                           ; preds = %bb.n, %bb.m
  store double %.0.i.i.1, ptr %0, align 8, !tbaa !158
  store i64 0, ptr %i.d, align 8, !tbaa !42
  store i32 1, ptr %i.e, align 8, !tbaa !161
  br label %.thread.i.1

.thread.i.1:                                      ; preds = %.thread.sink.split.i.1, %bb.n, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt3setIPN12_GLOBAL__N_19ChainEdgeEZNS0_10CDSortImpl15mergeChainPairsEvEUlS2_S2_E_SaIS2_EE5eraseERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree readonly captures(none) %.0.val) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.011.i.i = load ptr, ptr %i.a, align 8, !tbaa !177 ; 3 uses
  %.not12.i.i = icmp eq ptr %.011.i.i, null
  br i1 %.not12.i.i, label %_ZNSt8_Rb_treeIPN12_GLOBAL__N_19ChainEdgeES2_St9_IdentityIS2_EZNS0_10CDSortImpl15mergeChainPairsEvEUlS2_S2_E_SaIS2_EE11equal_rangeERKS2_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.0.val, i64 40
  %.val.i.i.i = load double, ptr %i.c, align 8, !tbaa !129 ; 6 uses
  %.val7.i.i.i = load ptr, ptr %.0.val, align 8, !tbaa !127
  %i.d = getelementptr i8, ptr %.0.val, i64 8
  %.val9.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.e = load i64, ptr %.val9.i.i.i, align 8, !tbaa !42, !noalias !619 ; 4 uses
  %i.f = load i64, ptr %.val7.i.i.i, align 8, !tbaa !42, !noalias !619 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i.i, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %.011.i.i, %.lr.ph.i.i ], [ %.0.i.i, %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i.i ] ; 8 uses
  %.02213.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %.123.i.i, %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i.i ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !136  ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 40
  %.val6.i.i.i = load double, ptr %i.i, align 8, !tbaa !129 ; 2 uses
  %.val8.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !127
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val10.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !128
  %i.k = load i64, ptr %.val10.i.i.i, align 8, !tbaa !42, !noalias !620 ; 2 uses
  %i.l = load i64, ptr %.val8.i.i.i, align 8, !tbaa !42, !noalias !620 ; 2 uses
  %i.m = fcmp ogt double %.val6.i.i.i, %.val.i.i.i
  br i1 %i.m, label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = fcmp ogt double %.val.i.i.i, %.val6.i.i.i
  br i1 %i.n, label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %i.l, %i.f
  br i1 %i.o, label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i.i, label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.i.i

_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.i.i: ; preds = %bb.d
  %i.p = icmp uge i64 %i.f, %i.l                  ; 2 uses
  %i.q = icmp ult i64 %i.k, %i.e
  %spec.select.i.i.i = select i1 %i.p, i1 %i.q, i1 false
  br i1 %spec.select.i.i.i, label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i.i, label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread6.i.i

_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread6.i.i: ; preds = %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.i.i
  %i.r = icmp uge i64 %i.e, %i.k
  %or.cond6.not.i = select i1 %i.p, i1 %i.r, i1 false
  br i1 %or.cond6.not.i, label %bb.e, label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i.i

bb.e:                                             ; preds = %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread6.i.i
  %i.s = getelementptr i8, ptr %.014.i.i, i64 16
  %.0.val.i.i = load ptr, ptr %i.s, align 8, !tbaa !205 ; 2 uses
  %i.t = getelementptr i8, ptr %.014.i.i, i64 24
  %.0.val25.i.i = load ptr, ptr %i.t, align 8, !tbaa !206 ; 2 uses
  %.not3.i.i.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not3.i.i.i, label %_ZNSt8_Rb_treeIPN12_GLOBAL__N_19ChainEdgeES2_St9_IdentityIS2_EZNS0_10CDSortImpl15mergeChainPairsEvEUlS2_S2_E_SaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread2.i.i.i
  %.05.i.i.i = phi ptr [ %.1.i.i.i, %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread2.i.i.i ], [ %.0.val.i.i, %bb.e ] ; 4 uses
  %.084.i.i.i = phi ptr [ %.19.i.i.i, %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread2.i.i.i ], [ %.014.i.i, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !136  ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 40
  %.val6.i.i.i.i = load double, ptr %i.w, align 8, !tbaa !129 ; 2 uses
  %.val8.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !127
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %.val10.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !128
  %i.y = load i64, ptr %.val10.i.i.i.i, align 8, !tbaa !42, !noalias !621
  %i.z = load i64, ptr %.val8.i.i.i.i, align 8, !tbaa !42, !noalias !621 ; 2 uses
  %i.aa = fcmp ogt double %.val6.i.i.i.i, %.val.i.i.i
  br i1 %i.aa, label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = fcmp ogt double %.val.i.i.i, %.val6.i.i.i.i
  br i1 %i.ab, label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread2.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp ult i64 %i.z, %i.f
  br i1 %i.ac, label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i.i.i, label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.i.i.i

_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.i.i.i: ; preds = %bb.g
  %i.ad = icmp uge i64 %i.f, %i.z
  %i.ae = icmp ult i64 %i.y, %i.e
  %spec.select.i.i.i.i = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %spec.select.i.i.i.i, label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i.i.i, label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread2.i.i.i

_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i.i.i: ; preds = %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.i.i.i, %bb.g, %.lr.ph.i.i.i
  br label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread2.i.i.i

_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread2.i.i.i: ; preds = %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i.i.i, %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.i.i.i, %bb.f
  %.sink.i.i.i = phi i64 [ 24, %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i.i.i ], [ 16, %bb.f ], [ 16, %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.084.i.i.i, %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i.i.i ], [ %.05.i.i.i, %bb.f ], [ %.05.i.i.i, %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.i.i.i ] ; 2 uses
  %i.af = getelementptr i8, ptr %.05.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !177 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPN12_GLOBAL__N_19ChainEdgeES2_St9_IdentityIS2_EZNS0_10CDSortImpl15mergeChainPairsEvEUlS2_S2_E_SaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !613

_ZNSt8_Rb_treeIPN12_GLOBAL__N_19ChainEdgeES2_St9_IdentityIS2_EZNS0_10CDSortImpl15mergeChainPairsEvEUlS2_S2_E_SaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i.i: ; preds = %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread2.i.i.i, %bb.e
  %.08.lcssa.i.i.i = phi ptr [ %.014.i.i, %bb.e ], [ %.19.i.i.i, %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread2.i.i.i ] ; 2 uses
  %.not3.i41.i.i = icmp eq ptr %.0.val25.i.i, null
  br i1 %.not3.i41.i.i, label %_ZNSt8_Rb_treeIPN12_GLOBAL__N_19ChainEdgeES2_St9_IdentityIS2_EZNS0_10CDSortImpl15mergeChainPairsEvEUlS2_S2_E_SaIS2_EE11equal_rangeERKS2_.exit.i, label %.lr.ph.i42.i.i

.lr.ph.i42.i.i:                                   ; preds = %_ZNSt8_Rb_treeIPN12_GLOBAL__N_19ChainEdgeES2_St9_IdentityIS2_EZNS0_10CDSortImpl15mergeChainPairsEvEUlS2_S2_E_SaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i.i, %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i54.i.i
  %.05.i46.i.i = phi ptr [ %.1.i57.i.i, %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i54.i.i ], [ %.0.val25.i.i, %_ZNSt8_Rb_treeIPN12_GLOBAL__N_19ChainEdgeES2_St9_IdentityIS2_EZNS0_10CDSortImpl15mergeChainPairsEvEUlS2_S2_E_SaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i.i ] ; 5 uses
  %.084.i47.i.i = phi ptr [ %.19.i56.i.i, %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i54.i.i ], [ %.02213.i.i, %_ZNSt8_Rb_treeIPN12_GLOBAL__N_19ChainEdgeES2_St9_IdentityIS2_EZNS0_10CDSortImpl15mergeChainPairsEvEUlS2_S2_E_SaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_.exit.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i46.i.i, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !136 ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 40
  %.val.i.i48.i.i = load double, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %.val7.i.i49.i.i = load ptr, ptr %i.ah, align 8, !tbaa !127
  %i.aj = getelementptr i8, ptr %i.ah, i64 8
  %.val9.i.i50.i.i = load ptr, ptr %i.aj, align 8, !tbaa !128
  %i.ak = load i64, ptr %.val9.i.i50.i.i, align 8, !tbaa !42, !noalias !622
  %i.al = load i64, ptr %.val7.i.i49.i.i, align 8, !tbaa !42, !noalias !622 ; 2 uses
  %i.am = fcmp ogt double %.val.i.i.i, %.val.i.i48.i.i
  br i1 %i.am, label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i54.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i42.i.i
  %i.an = fcmp ogt double %.val.i.i48.i.i, %.val.i.i.i
  br i1 %i.an, label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread2.i53.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp ult i64 %i.f, %i.al
  br i1 %i.ao, label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i54.i.i, label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.i51.i.i

_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.i51.i.i: ; preds = %bb.i
  %i.ap = icmp uge i64 %i.al, %i.f
  %i.aq = icmp ult i64 %i.e, %i.ak
  %spec.select.i.i52.i.i = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %spec.select.i.i52.i.i, label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i54.i.i, label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread2.i53.i.i

_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread2.i53.i.i: ; preds = %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.i51.i.i, %bb.h
  br label %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i54.i.i

_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread.i54.i.i: ; preds = %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread2.i53.i.i, %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.i51.i.i, %bb.i, %.lr.ph.i42.i.i
  %.sink.i55.i.i = phi i64 [ 24, %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread2.i53.i.i ], [ 16, %bb.i ], [ 16, %.lr.ph.i42.i.i ], [ 16, %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.i51.i.i ]
  %.19.i56.i.i = phi ptr [ %.084.i47.i.i, %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.thread2.i53.i.i ], [ %.05.i46.i.i, %bb.i ], [ %.05.i46.i.i, %.lr.ph.i42.i.i ], [ %.05.i46.i.i, %_ZZN12_GLOBAL__N_110CDSortImpl15mergeChainPairsEvENKUlPNS_9ChainEdgeES2_E_clES2_S2_.exit.i51.i.i ] ; 2 uses
  %i.ar = getelementptr i8, ptr %.05.i46.i.i, i64 %.sink.i55.i.i
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_CodeLayout.cpp:bb.a
  %i.ac = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL23FallthroughWeightUncond, i64 10), align 2
  %i.ad = and i16 %i.ac, -97
  %i.ae = or disjoint i16 %i.ad, 64
  store i16 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @_ZL23FallthroughWeightUncond, i64 10), align 2
  store double 1.050000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZL23FallthroughWeightUncond, i64 120), align 8, !tbaa !157
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL23FallthroughWeightUncond, i64 144), align 8, !tbaa !202
  store double 1.050000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZL23FallthroughWeightUncond, i64 136), align 8, !tbaa !778
  store ptr @.str.22, ptr getelementptr inbounds nuw (i8, ptr @_ZL23FallthroughWeightUncond, i64 32), align 8, !tbaa !777
  store i64 62, ptr getelementptr inbounds nuw (i8, ptr @_ZL23FallthroughWeightUncond, i64 40), align 8, !tbaa !42
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(192) @_ZL23FallthroughWeightUncond) #22
  %i.af = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIdLb0ENS0_6parserIdEEED2Ev, ptr nonnull @_ZL23FallthroughWeightUncond, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL15ForwardDistance, i32 noundef 0, i32 noundef 0) #22
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15ForwardDistance, i64 120), align 8, !tbaa !143
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15ForwardDistance, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL15ForwardDistance, i64 128), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL15ForwardDistance, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL15ForwardDistance, i64 144), align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL15ForwardDistance, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL15ForwardDistance, ptr nonnull align 1 dereferenceable(25) @.str.24, i64 24) #22
  %i.ag = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL15ForwardDistance, i64 10), align 2
  %i.ah = and i16 %i.ag, -97
  %i.ai = or disjoint i16 %i.ah, 64
  store i16 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @_ZL15ForwardDistance, i64 10), align 2
  store i32 1024, ptr getelementptr inbounds nuw (i8, ptr @_ZL15ForwardDistance, i64 120), align 8, !tbaa !143
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL15ForwardDistance, i64 140), align 4, !tbaa !209
  store i32 1024, ptr getelementptr inbounds nuw (i8, ptr @_ZL15ForwardDistance, i64 136), align 8, !tbaa !779
  store ptr @.str.25, ptr getelementptr inbounds nuw (i8, ptr @_ZL15ForwardDistance, i64 32), align 8, !tbaa !777
  store i64 60, ptr getelementptr inbounds nuw (i8, ptr @_ZL15ForwardDistance, i64 40), align 8, !tbaa !42
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL15ForwardDistance) #22
  %i.aj = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL15ForwardDistance, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL16BackwardDistance, i32 noundef 0, i32 noundef 0) #22
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16BackwardDistance, i64 120), align 8, !tbaa !143
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16BackwardDistance, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL16BackwardDistance, i64 128), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL16BackwardDistance, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL16BackwardDistance, i64 144), align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL16BackwardDistance, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL16BackwardDistance, ptr nonnull align 1 dereferenceable(26) @.str.27, i64 25) #22
  %i.ak = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL16BackwardDistance, i64 10), align 2
  %i.al = and i16 %i.ak, -97
  %i.am = or disjoint i16 %i.al, 64
  store i16 %i.am, ptr getelementptr inbounds nuw (i8, ptr @_ZL16BackwardDistance, i64 10), align 2
  store i32 640, ptr getelementptr inbounds nuw (i8, ptr @_ZL16BackwardDistance, i64 120), align 8, !tbaa !143
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL16BackwardDistance, i64 140), align 4, !tbaa !209
  store i32 640, ptr getelementptr inbounds nuw (i8, ptr @_ZL16BackwardDistance, i64 136), align 8, !tbaa !779
  store ptr @.str.28, ptr getelementptr inbounds nuw (i8, ptr @_ZL16BackwardDistance, i64 32), align 8, !tbaa !777
  store i64 61, ptr getelementptr inbounds nuw (i8, ptr @_ZL16BackwardDistance, i64 40), align 8, !tbaa !42
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL16BackwardDistance) #22
  %i.an = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL16BackwardDistance, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL12MaxChainSize, i32 noundef 0, i32 noundef 0) #22
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxChainSize, i64 120), align 8, !tbaa !143
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxChainSize, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxChainSize, i64 128), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL12MaxChainSize, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxChainSize, i64 144), align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL12MaxChainSize, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL12MaxChainSize, ptr nonnull align 1 dereferenceable(23) @.str.30, i64 22) #22
  %i.ao = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxChainSize, i64 10), align 2
  %i.ap = and i16 %i.ao, -97
  %i.aq = or disjoint i16 %i.ap, 64
  store i16 %i.aq, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxChainSize, i64 10), align 2
  store i32 512, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxChainSize, i64 120), align 8, !tbaa !143
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxChainSize, i64 140), align 4, !tbaa !209
  store i32 512, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxChainSize, i64 136), align 8, !tbaa !779
  store ptr @.str.31, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxChainSize, i64 32), align 8, !tbaa !777
  store i64 37, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxChainSize, i64 40), align 8, !tbaa !42
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL12MaxChainSize) #22
  %i.ar = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL12MaxChainSize, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL19ChainSplitThreshold, i32 noundef 0, i32 noundef 0) #22
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL19ChainSplitThreshold, i64 120), align 8, !tbaa !143
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL19ChainSplitThreshold, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL19ChainSplitThreshold, i64 128), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL19ChainSplitThreshold, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL19ChainSplitThreshold, i64 144), align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL19ChainSplitThreshold, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL19ChainSplitThreshold, ptr nonnull align 1 dereferenceable(30) @.str.33, i64 29) #22
  %i.as = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL19ChainSplitThreshold, i64 10), align 2
  %i.at = and i16 %i.as, -97
  %i.au = or disjoint i16 %i.at, 64
  store i16 %i.au, ptr getelementptr inbounds nuw (i8, ptr @_ZL19ChainSplitThreshold, i64 10), align 2
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @_ZL19ChainSplitThreshold, i64 120), align 8, !tbaa !143
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL19ChainSplitThreshold, i64 140), align 4, !tbaa !209
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @_ZL19ChainSplitThreshold, i64 136), align 8, !tbaa !779
  store ptr @.str.34, ptr getelementptr inbounds nuw (i8, ptr @_ZL19ChainSplitThreshold, i64 32), align 8, !tbaa !777
  store i64 46, ptr getelementptr inbounds nuw (i8, ptr @_ZL19ChainSplitThreshold, i64 40), align 8, !tbaa !42
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL19ChainSplitThreshold) #22
  %i.av = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL19ChainSplitThreshold, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL20MaxMergeDensityRatio, i32 noundef 0, i32 noundef 0) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL20MaxMergeDensityRatio, i64 120), i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIdEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL20MaxMergeDensityRatio, i64 128), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIdLb0ENS0_6parserIdEEEE, i64 16), ptr @_ZL20MaxMergeDensityRatio, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIdEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL20MaxMergeDensityRatio, i64 152), align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL20MaxMergeDensityRatio, i64 160), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) @_ZL20MaxMergeDensityRatio, ptr nonnull align 1 dereferenceable(32) @.str.36, i64 31) #22
  %i.aw = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL20MaxMergeDensityRatio, i64 10), align 2
  %i.ax = and i16 %i.aw, -97
  %i.ay = or disjoint i16 %i.ax, 64
  store i16 %i.ay, ptr getelementptr inbounds nuw (i8, ptr @_ZL20MaxMergeDensityRatio, i64 10), align 2
  store double 1.000000e+02, ptr getelementptr inbounds nuw (i8, ptr @_ZL20MaxMergeDensityRatio, i64 120), align 8, !tbaa !157
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL20MaxMergeDensityRatio, i64 144), align 8, !tbaa !202
  store double 1.000000e+02, ptr getelementptr inbounds nuw (i8, ptr @_ZL20MaxMergeDensityRatio, i64 136), align 8, !tbaa !778
  store ptr @.str.37, ptr getelementptr inbounds nuw (i8, ptr @_ZL20MaxMergeDensityRatio, i64 32), align 8, !tbaa !777
  store i64 61, ptr getelementptr inbounds nuw (i8, ptr @_ZL20MaxMergeDensityRatio, i64 40), align 8, !tbaa !42
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(192) @_ZL20MaxMergeDensityRatio) #22
  %i.az = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIdLb0ENS0_6parserIdEEED2Ev, ptr nonnull @_ZL20MaxMergeDensityRatio, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL12CacheEntries, i32 noundef 0, i32 noundef 0) #22
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12CacheEntries, i64 120), align 8, !tbaa !143
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12CacheEntries, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL12CacheEntries, i64 128), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL12CacheEntries, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL12CacheEntries, i64 144), align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL12CacheEntries, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL12CacheEntries, ptr nonnull align 1 dereferenceable(21) @.str.39, i64 20) #22
  %i.ba = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL12CacheEntries, i64 10), align 2
  %i.bb = and i16 %i.ba, -97
  %i.bc = or disjoint i16 %i.bb, 64
  store i16 %i.bc, ptr getelementptr inbounds nuw (i8, ptr @_ZL12CacheEntries, i64 10), align 2
  store ptr @.str.40, ptr getelementptr inbounds nuw (i8, ptr @_ZL12CacheEntries, i64 32), align 8, !tbaa !777
  store i64 21, ptr getelementptr inbounds nuw (i8, ptr @_ZL12CacheEntries, i64 40), align 8, !tbaa !42
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL12CacheEntries) #22
  %i.bd = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL12CacheEntries, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL9CacheSize, i32 noundef 0, i32 noundef 0) #22
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL9CacheSize, i64 120), align 8, !tbaa !143
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL9CacheSize, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL9CacheSize, i64 128), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL9CacheSize, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL9CacheSize, i64 144), align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL9CacheSize, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL9CacheSize, ptr nonnull align 1 dereferenceable(18) @.str.42, i64 17) #22
  %i.be = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL9CacheSize, i64 10), align 2
  %i.bf = and i16 %i.be, -97
  %i.bg = or disjoint i16 %i.bf, 64
  store i16 %i.bg, ptr getelementptr inbounds nuw (i8, ptr @_ZL9CacheSize, i64 10), align 2
  store ptr @.str.43, ptr getelementptr inbounds nuw (i8, ptr @_ZL9CacheSize, i64 32), align 8, !tbaa !777
  store i64 31, ptr getelementptr inbounds nuw (i8, ptr @_ZL9CacheSize, i64 40), align 8, !tbaa !42
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL9CacheSize) #22
  %i.bh = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL9CacheSize, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL14CDMaxChainSize, i32 noundef 0, i32 noundef 0) #22
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CDMaxChainSize, i64 120), align 8, !tbaa !143
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CDMaxChainSize, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL14CDMaxChainSize, i64 128), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL14CDMaxChainSize, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL14CDMaxChainSize, i64 144), align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL14CDMaxChainSize, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL14CDMaxChainSize, ptr nonnull align 1 dereferenceable(22) @.str.45, i64 21) #22
  %i.bi = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CDMaxChainSize, i64 10), align 2
  %i.bj = and i16 %i.bi, -97
  %i.bk = or disjoint i16 %i.bj, 64
  store i16 %i.bk, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CDMaxChainSize, i64 10), align 2
  store ptr @.str.31, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CDMaxChainSize, i64 32), align 8, !tbaa !777
  store i64 37, ptr getelementptr inbounds nuw (i8, ptr @_ZL14CDMaxChainSize, i64 40), align 8, !tbaa !42
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL14CDMaxChainSize) #22
  %i.bl = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL14CDMaxChainSize, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL13DistancePower, i32 noundef 0, i32 noundef 0) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL13DistancePower, i64 120), i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIdEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL13DistancePower, i64 128), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIdLb0ENS0_6parserIdEEEE, i64 16), ptr @_ZL13DistancePower, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIdEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL13DistancePower, i64 152), align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL13DistancePower, i64 160), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) @_ZL13DistancePower, ptr nonnull align 1 dereferenceable(22) @.str.47, i64 21) #22
  %i.bm = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL13DistancePower, i64 10), align 2
  %i.bn = and i16 %i.bm, -97
  %i.bo = or disjoint i16 %i.bn, 64
  store i16 %i.bo, ptr getelementptr inbounds nuw (i8, ptr @_ZL13DistancePower, i64 10), align 2
  store ptr @.str.48, ptr getelementptr inbounds nuw (i8, ptr @_ZL13DistancePower, i64 32), align 8, !tbaa !777
  store i64 50, ptr getelementptr inbounds nuw (i8, ptr @_ZL13DistancePower, i64 40), align 8, !tbaa !42
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(192) @_ZL13DistancePower) #22
  %i.bp = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIdLb0ENS0_6parserIdEEED2Ev, ptr nonnull @_ZL13DistancePower, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL14FrequencyScale, i32 noundef 0, i32 noundef 0) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL14FrequencyScale, i64 120), i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIdEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL14FrequencyScale, i64 128), align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIdLb0ENS0_6parserIdEEEE, i64 16), ptr @_ZL14FrequencyScale, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIdEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL14FrequencyScale, i64 152), align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL14FrequencyScale, i64 160), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) @_ZL14FrequencyScale, ptr nonnull align 1 dereferenceable(23) @.str.50, i64 22) #22
  %i.bq = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL14FrequencyScale, i64 10), align 2
  %i.br = and i16 %i.bq, -97
  %i.bs = or disjoint i16 %i.br, 64
  store i16 %i.bs, ptr getelementptr inbounds nuw (i8, ptr @_ZL14FrequencyScale, i64 10), align 2
  store ptr @.str.51, ptr getelementptr inbounds nuw (i8, ptr @_ZL14FrequencyScale, i64 32), align 8, !tbaa !777
  store i64 49, ptr getelementptr inbounds nuw (i8, ptr @_ZL14FrequencyScale, i64 40), align 8, !tbaa !42
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(192) @_ZL14FrequencyScale) #22
  %i.bt = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIdLb0ENS0_6parserIdEEED2Ev, ptr nonnull @_ZL14FrequencyScale, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_ZN12_GLOBAL__N_19EmptyListE, i8 0, i64 24, i1 false)
  %i.bu = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EED2Ev, ptr nonnull @_ZN12_GLOBAL__N_19EmptyListE, ptr nonnull @__dso_handle) #22 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind allocsize(0) }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{null}
!1 = distinct !{!1, !80}
!2 = distinct !{!2, !80}
!3 = distinct !{!3, !80}
!4 = distinct !{!4, !80}
!5 = distinct !{!5, !80}
!6 = distinct !{!6, !80}
!7 = distinct !{!7, !80}
!8 = distinct !{!8, !80}
!9 = distinct !{!9, !80}
!10 = distinct !{!10, !80}
!11 = distinct !{!11, !80}
!12 = distinct !{!12, !80}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"vtable pointer", !16, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"any pointer", !17, i64 0}
!24 = !{!"_ZTSSt14_Function_base", !17, i64 0, !23, i64 16}
!25 = !{!24, !23, i64 16}
!26 = !{!"any p2 pointer", !23, i64 0}
!27 = !{!"bool", !17, i64 0}
!28 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !26, i64 0, !18, i64 8, !18, i64 12, !27, i64 16}
!29 = !{!28, !27, i64 16}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!28, !26, i64 0}
!33 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !23, i64 0, !18, i64 8, !18, i64 12}
!34 = !{!33, !23, i64 0}
!35 = !{!"p2 _ZTSN12_GLOBAL__N_15NodeTE", !26, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIPN12_GLOBAL__N_15NodeTESaIS2_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!36, !35, i64 0}
!38 = !{!36, !35, i64 16}
!39 = !{!"p1 _ZTSN4llvm10codelayout9EdgeCountE", !23, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"long", !17, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"p1 _ZTSSt6vectorImSaImEE", !23, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!45 = !{!"_ZTSNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE12_Vector_implE", !44, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseISt6vectorImSaImEESaIS2_EE", !45, i64 0}
!47 = !{!"_ZTSSt6vectorIS_ImSaImEESaIS1_EE", !46, i64 0}
!48 = !{!"p1 _ZTSN12_GLOBAL__N_15NodeTE", !23, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_15NodeTESaIS1_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!50 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_15NodeTESaIS1_EE12_Vector_implE", !49, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIN12_GLOBAL__N_15NodeTESaIS1_EE", !50, i64 0}
!52 = !{!"_ZTSSt6vectorIN12_GLOBAL__N_15NodeTESaIS1_EE", !51, i64 0}
!53 = !{!"p1 _ZTSN12_GLOBAL__N_15JumpTE", !23, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_15JumpTESaIS1_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_15JumpTESaIS1_EE12_Vector_implE", !54, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIN12_GLOBAL__N_15JumpTESaIS1_EE", !55, i64 0}
!57 = !{!"_ZTSSt6vectorIN12_GLOBAL__N_15JumpTESaIS1_EE", !56, i64 0}
!58 = !{!"p1 _ZTSN12_GLOBAL__N_16ChainTE", !23, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_16ChainTESaIS1_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_16ChainTESaIS1_EE12_Vector_implE", !59, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIN12_GLOBAL__N_16ChainTESaIS1_EE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorIN12_GLOBAL__N_16ChainTESaIS1_EE", !61, i64 0}
!63 = !{!"p1 _ZTSN12_GLOBAL__N_19ChainEdgeE", !23, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_19ChainEdgeESaIS1_EE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_19ChainEdgeESaIS1_EE12_Vector_implE", !64, i64 0}
!66 = !{!"_ZTSSt12_Vector_baseIN12_GLOBAL__N_19ChainEdgeESaIS1_EE", !65, i64 0}
!67 = !{!"_ZTSSt6vectorIN12_GLOBAL__N_19ChainEdgeESaIS1_EE", !66, i64 0}
!68 = !{!"p2 _ZTSN12_GLOBAL__N_16ChainTE", !26, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIPN12_GLOBAL__N_16ChainTESaIS2_EE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!70 = !{!44, !43, i64 8}
!71 = !{!44, !43, i64 0}
!72 = !{!49, !48, i64 0}
!73 = !{!49, !48, i64 8}
!74 = !{!49, !48, i64 16}
!75 = !{!44, !43, i64 16}
!76 = !{!"p1 long", !23, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!79 = !{!78, !76, i64 16}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!78, !76, i64 0}
!82 = !{!54, !53, i64 0}
!83 = !{!54, !53, i64 16}
!84 = !{!54, !53, i64 8}
!85 = !{!48, !48, i64 0}
!86 = !{!27, !27, i64 0}
!87 = !{i64 0, i64 8, !85, i64 8, i64 8, !85, i64 16, i64 8, !42, i64 24, i64 1, !86, i64 32, i64 8, !42}
!88 = !{!"llvm.loop.peeled.count", i32 1}
!89 = !{!53, !53, i64 0}
!90 = !{!78, !76, i64 8}
!91 = !{!"_ZTSN12_GLOBAL__N_15JumpTE", !48, i64 0, !48, i64 8, !41, i64 16, !27, i64 24, !41, i64 32}
!92 = !{!91, !48, i64 0}
!93 = !{!91, !48, i64 8}
!94 = !{!91, !41, i64 16}
!95 = !{!91, !27, i64 24}
!96 = !{!91, !41, i64 32}
!97 = !{!"p2 _ZTSN12_GLOBAL__N_15JumpTE", !26, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseIPN12_GLOBAL__N_15JumpTESaIS2_EE17_Vector_impl_dataE", !97, i64 0, !97, i64 8, !97, i64 16}
!99 = !{!98, !97, i64 8}
!100 = !{!98, !97, i64 16}
!101 = !{!98, !97, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIPN12_GLOBAL__N_15JumpTESaIS2_EE12_Vector_implE", !98, i64 0}
!103 = !{!"_ZTSSt12_Vector_baseIPN12_GLOBAL__N_15JumpTESaIS2_EE", !102, i64 0}
!104 = !{!"_ZTSSt6vectorIPN12_GLOBAL__N_15JumpTESaIS2_EE", !103, i64 0}
!105 = !{!"_ZTSN12_GLOBAL__N_15NodeTE", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !58, i64 32, !41, i64 40, !48, i64 48, !48, i64 56, !104, i64 64, !104, i64 88}
!106 = !{!105, !41, i64 24}
!107 = !{!59, !58, i64 0}
!108 = !{!59, !58, i64 16}
!109 = !{!59, !58, i64 8}
!110 = !{!35, !35, i64 0}
!111 = !{!"p1 _ZTSSt4pairIPN12_GLOBAL__N_16ChainTEPNS0_9ChainEdgeEE", !23, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!113 = !{!112, !111, i64 0}
!114 = !{!111, !111, i64 0}
!115 = !{!23, !23, i64 0}
!116 = !{!69, !68, i64 8}
!117 = !{!105, !41, i64 0}
!118 = !{!64, !63, i64 0}
!119 = !{!64, !63, i64 16}
!120 = !{!64, !63, i64 8}
!121 = !{!97, !97, i64 0}
!122 = !{!58, !58, i64 0}
!123 = !{!105, !58, i64 32}
!124 = !{!"double", !17, i64 0}
!125 = !{!"_ZTSN12_GLOBAL__N_110MergeGainTE", !124, i64 0, !41, i64 8, !17, i64 16}
!126 = !{!"_ZTSN12_GLOBAL__N_19ChainEdgeE", !58, i64 0, !58, i64 8, !104, i64 16, !125, i64 40, !125, i64 64, !125, i64 88, !27, i64 112, !27, i64 113}
!127 = !{!126, !58, i64 0}
!128 = !{!126, !58, i64 8}
!129 = !{!125, !124, i64 0}
!130 = !{!125, !41, i64 8}
!131 = !{!125, !17, i64 16}
!132 = !{!126, !27, i64 112}
!133 = !{!126, !27, i64 113}
!134 = !{!112, !111, i64 8}
!135 = !{!112, !111, i64 16}
!136 = !{!63, !63, i64 0}
!137 = !{!36, !35, i64 8}
!138 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!139 = !{!"_ZTSN4llvm2cl15OptionValueCopyIjEE", !138, i64 0, !18, i64 8, !27, i64 12}
!140 = !{!"_ZTSN4llvm2cl15OptionValueBaseIjLb0EEE", !139, i64 0}
!141 = !{!"_ZTSN4llvm2cl11OptionValueIjEE", !140, i64 0}
!142 = !{!"_ZTSN4llvm2cl11opt_storageIjLb0ELb0EEE", !18, i64 0, !141, i64 8}
!143 = !{!142, !18, i64 0}
!144 = !{!"_ZTSNSt12_Vector_baseIPN12_GLOBAL__N_15NodeTESaIS2_EE12_Vector_implE", !36, i64 0}
!145 = !{!"_ZTSSt12_Vector_baseIPN12_GLOBAL__N_15NodeTESaIS2_EE", !144, i64 0}
!146 = !{!"_ZTSSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE", !145, i64 0}
!147 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE12_Vector_implE", !112, i64 0}
!148 = !{!"_ZTSSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE", !147, i64 0}
!149 = !{!"_ZTSSt6vectorISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE", !148, i64 0}
!150 = !{!"_ZTSN12_GLOBAL__N_16ChainTE", !41, i64 0, !124, i64 8, !124, i64 16, !41, i64 24, !146, i64 32, !149, i64 56}
!151 = !{!150, !124, i64 16}
!152 = !{!150, !41, i64 24}
!153 = !{!"_ZTSN4llvm2cl15OptionValueCopyIdEE", !138, i64 0, !124, i64 8, !27, i64 16}
!154 = !{!"_ZTSN4llvm2cl15OptionValueBaseIdLb0EEE", !153, i64 0}
!155 = !{!"_ZTSN4llvm2cl11OptionValueIdEE", !154, i64 0}
!156 = !{!"_ZTSN4llvm2cl11opt_storageIdLb0ELb0EEE", !124, i64 0, !155, i64 8}
!157 = !{!156, !124, i64 0}
!158 = !{!124, !124, i64 0}
!159 = !{!150, !124, i64 8}
!160 = !{!105, !41, i64 8}
!161 = !{!17, !17, i64 0}
!162 = !{!33, !18, i64 12}
!163 = !{!33, !18, i64 8}
!164 = !{!18, !18, i64 0}
end_hunk_1
