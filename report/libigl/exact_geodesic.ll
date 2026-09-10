Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/exact_geodesic?download=true
inline.NumInlined: 2805
inline.NumDeleted: 1107
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN3igl8geodesic22GeodesicAlgorithmExact21update_list_and_queueEPNS0_12IntervalListEPNS0_16IntervalWithStopEj:bb.a
  %i.aey = getelementptr inbounds nuw i8, ptr %.0437.lcssa, i64 24
  %i.aez = load double, ptr %i.aey, align 8, !tbaa !147 ; 3 uses
  %i.afa = fcmp oeq double %i.aez, 0.000000e+00
  br i1 %i.afa, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.afb = tail call noundef double @llvm.fabs.f64(double %i.aex)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i307

bb.gg:                                            ; preds = %bb.ge
  %i.afc = fmul double %i.aez, %i.aez
  %i.afd = tail call double @llvm.fmuladd.f64(double %i.aex, double %i.aex, double %i.afc)
  %sqrt.i6.i306 = tail call double @llvm.sqrt.f64(double %i.afd)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit10.i307

_ZN3igl8geodesic8Interval6signalEd.exit10.i307:   ; preds = %bb.gg, %bb.gf
  %.pn.i7.i308 = phi double [ %i.afb, %bb.gf ], [ %sqrt.i6.i306, %bb.gg ]
  %.0.i8.i309 = fadd double %i.aej, %.pn.i7.i308
  br label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit314

bb.gh:                                            ; preds = %bb.gd
  %i.afe = getelementptr inbounds nuw i8, ptr %.0437.lcssa, i64 24
  %i.aff = load double, ptr %i.afe, align 8, !tbaa !147
  %i.afg = fsub double %i.aej, %i.aff
  br label %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit314

_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit314: ; preds = %bb.fy, %_ZN3igl8geodesic8Interval6signalEd.exit.i311, %_ZN3igl8geodesic8Interval6signalEd.exit10.i307, %bb.gh
  %.0.i.sink.i305 = phi double [ %.0.i.i313, %_ZN3igl8geodesic8Interval6signalEd.exit.i311 ], [ %i.afg, %bb.gh ], [ %.0.i8.i309, %_ZN3igl8geodesic8Interval6signalEd.exit10.i307 ], [ 1.000000e+100, %bb.fy ] ; 7 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %.0437.lcssa, i64 32
  store double %.0.i.sink.i305, ptr %i.afh, align 8, !tbaa !148
  %.02229.i380 = load ptr, ptr %i.h, align 8, !tbaa !154 ; 2 uses
  %.not30.i381 = icmp eq ptr %.02229.i380, null
  br i1 %.not30.i381, label %._crit_edge.thread.i399, label %.lr.ph.i382.preheader

.lr.ph.i382.preheader:                            ; preds = %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit314
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aef, i64 48
  br label %.lr.ph.i382

.lr.ph.i382:                                      ; preds = %.lr.ph.i382.backedge, %.lr.ph.i382.preheader
  %.02231.i383 = phi ptr [ %.02229.i380, %.lr.ph.i382.preheader ], [ %.02231.i383.be, %.lr.ph.i382.backedge ] ; 5 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %.02231.i383, i64 32
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !85 ; 4 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 32
  %i.afm = load double, ptr %i.afl, align 8, !tbaa !87 ; 3 uses
  %i.afn = fcmp une double %.0.i.sink.i305, %i.afm
  br i1 %i.afn, label %.split.i402, label %bb.gi

.split.i402:                                      ; preds = %.lr.ph.i382
  %i.afo = fcmp olt double %.0.i.sink.i305, %i.afm
  br i1 %i.afo, label %bb.gj, label %.thread481

bb.gi:                                            ; preds = %.lr.ph.i382
  %i.afp = load double, ptr %.0437.lcssa, align 8, !tbaa !87 ; 2 uses
  %i.afq = load double, ptr %i.afk, align 8, !tbaa !87 ; 2 uses
  %i.afr = fcmp une double %i.afp, %i.afq
  br i1 %i.afr, label %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i401, label %.split26.i384

.split26.i384:                                    ; preds = %bb.gi
  %i.afs = load i32, ptr %i.afi, align 4, !tbaa !35
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afk, i64 48
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !86
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 48
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !35
  %i.afx = icmp ult i32 %i.afs, %i.afw
  br i1 %i.afx, label %bb.gj, label %.thread481

_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i401:   ; preds = %bb.gi
  %i.afy = fcmp olt double %i.afp, %i.afq
  br i1 %i.afy, label %bb.gj, label %.thread481

bb.gj:                                            ; preds = %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i401, %.split26.i384, %.split.i402
  %i.afz = getelementptr inbounds nuw i8, ptr %.02231.i383, i64 16
  %.022.i387 = load ptr, ptr %i.afz, align 8, !tbaa !154 ; 2 uses
  %.not.i388 = icmp eq ptr %.022.i387, null
  br i1 %.not.i388, label %._crit_edge.thread.i399, label %.lr.ph.i382.backedge

.lr.ph.i382.backedge:                             ; preds = %bb.gj, %.thread481
  %.02231.i383.be = phi ptr [ %.022.i387484, %.thread481 ], [ %.022.i387, %bb.gj ]
  br label %.lr.ph.i382, !llvm.loop !1

.thread481:                                       ; preds = %.split.i402, %.split26.i384, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit.i401
  %i.aga = getelementptr inbounds nuw i8, ptr %.02231.i383, i64 24
  %.022.i387484 = load ptr, ptr %i.aga, align 8, !tbaa !154 ; 2 uses
  %.not.i388485 = icmp eq ptr %.022.i387484, null
  br i1 %.not.i388485, label %._crit_edge.i389.thread, label %.lr.ph.i382.backedge

._crit_edge.thread.i399:                          ; preds = %bb.gj, %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit314
  %.021.lcssa43.i400 = phi ptr [ %i.i, %_ZN3igl8geodesic8Interval20compute_min_distanceEd.exit314 ], [ %.02231.i383, %bb.gj ] ; 4 uses
  %i.agb = load ptr, ptr %i.w, align 8, !tbaa !84
  %i.agc = icmp eq ptr %.021.lcssa43.i400, %i.agb
  br i1 %i.agc, label %bb.gm, label %bb.gk

bb.gk:                                            ; preds = %._crit_edge.thread.i399
  %i.agd = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa43.i400) #26
  %.phi.trans.insert564 = getelementptr inbounds nuw i8, ptr %i.agd, i64 32
  %.pre565 = load ptr, ptr %.phi.trans.insert564, align 8, !tbaa !85 ; 2 uses
  %.phi.trans.insert566 = getelementptr inbounds nuw i8, ptr %.pre565, i64 32
  %.pre567 = load double, ptr %.phi.trans.insert566, align 8, !tbaa !87
  br label %._crit_edge.i389.thread

._crit_edge.i389.thread:                          ; preds = %.thread481, %bb.gk
  %i.age = phi double [ %.pre567, %bb.gk ], [ %i.afm, %.thread481 ] ; 2 uses
  %i.agf = phi ptr [ %.pre565, %bb.gk ], [ %i.afk, %.thread481 ] ; 2 uses
  %.021.lcssa42.i390 = phi ptr [ %.021.lcssa43.i400, %bb.gk ], [ %.02231.i383, %.thread481 ] ; 3 uses
  %i.agg = fcmp une double %i.age, %.0.i.sink.i305
  br i1 %i.agg, label %.split27.i398, label %bb.gl

.split27.i398:                                    ; preds = %._crit_edge.i389.thread
  %i.agh = fcmp olt double %i.age, %.0.i.sink.i305
  br i1 %i.agh, label %bb.gm, label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit323

bb.gl:                                            ; preds = %._crit_edge.i389.thread
  %i.agi = load double, ptr %i.agf, align 8, !tbaa !87 ; 2 uses
  %i.agj = load double, ptr %.0437.lcssa, align 8, !tbaa !87 ; 2 uses
  %i.agk = fcmp une double %i.agi, %i.agj
  br i1 %i.agk, label %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i397, label %.split28.i392

.split28.i392:                                    ; preds = %bb.gl
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agf, i64 48
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !86
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 48
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !35
  %i.agp = getelementptr inbounds nuw i8, ptr %i.aef, i64 48
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !35
  %i.agr = icmp ult i32 %i.ago, %i.agq
  br i1 %i.agr, label %bb.gm, label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit323

_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i397:  ; preds = %bb.gl
  %i.ags = fcmp olt double %i.agi, %i.agj
  br i1 %i.ags, label %bb.gm, label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit323

bb.gm:                                            ; preds = %._crit_edge.thread.i399, %.split28.i392, %.split27.i398, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i397
  %.sroa.4.0.i394.ph = phi ptr [ %.021.lcssa42.i390, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i397 ], [ %.021.lcssa42.i390, %.split27.i398 ], [ %.021.lcssa42.i390, %.split28.i392 ], [ %.021.lcssa43.i400, %._crit_edge.thread.i399 ] ; 3 uses
  %i.agt = icmp eq ptr %.sroa.4.0.i394.ph, %i.i
  br i1 %i.agt, label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i318, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.agu = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i394.ph, i64 32
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !85 ; 3 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 32
  %i.agx = load double, ptr %i.agw, align 8, !tbaa !87 ; 2 uses
  %i.agy = fcmp une double %.0.i.sink.i305, %i.agx
  br i1 %i.agy, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.agz = fcmp olt double %.0.i.sink.i305, %i.agx
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i318

bb.gp:                                            ; preds = %bb.gn
  %i.aha = load double, ptr %.0437.lcssa, align 8, !tbaa !87 ; 2 uses
  %i.ahb = load double, ptr %i.agv, align 8, !tbaa !87 ; 2 uses
  %i.ahc = fcmp une double %i.aha, %i.ahb
  br i1 %i.ahc, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.ahd = fcmp olt double %i.aha, %i.ahb
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i318

bb.gr:                                            ; preds = %bb.gp
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.aef, i64 48
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !35
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agv, i64 48
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !86
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 48
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !35
  %i.ahk = icmp ult i32 %i.ahf, %i.ahj
  br label %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i318

_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i318: ; preds = %bb.gr, %bb.gq, %bb.go, %bb.gm
  %i.ahl = phi i1 [ %i.ahk, %bb.gr ], [ true, %bb.gm ], [ %i.agz, %bb.go ], [ %i.ahd, %bb.gq ]
  %i.ahm = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 32
  store ptr %.0437.lcssa, ptr %i.ahn, align 8, !tbaa !85
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ahl, ptr noundef nonnull %i.ahm, ptr noundef nonnull %.sroa.4.0.i394.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #22
  %i.aho = load i64, ptr %i.j, align 8, !tbaa !83
  %i.ahp = add i64 %i.aho, 1
  store i64 %i.ahp, ptr %i.j, align 8, !tbaa !83
  br label %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit323

_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit323: ; preds = %bb.ax, %_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE10_M_insert_IRKS3_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i318, %.split27.i398, %.split28.i392, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit6.i397, %.critedge2
  %indvars.iv.next547 = add nuw nsw i64 %indvars.iv546, 1 ; 2 uses
  %exitcond550.not = icmp eq i64 %indvars.iv.next547, %wide.trip.count549
  br i1 %exitcond550.not, label %.loopexit, label %bb.aw, !llvm.loop !274

.loopexit:                                        ; preds = %_ZNSt3setIPN3igl8geodesic8IntervalES2_SaIS3_EE6insertERKS3_.exit323, %.preheader495, %bb.au, %bb.av
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl14exact_geodesicIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES5_S5_S5_NS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERKNS7_IT3_EERKNS7_IT4_EERNS1_15PlainObjectBaseIT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::vector.39", align 8    ; 14 uses
  %8 = alloca %"class.std::vector.46", align 8    ; 13 uses
  %9 = alloca %"class.igl::geodesic::Mesh", align 8 ; 12 uses
  %10 = alloca %"class.igl::geodesic::GeodesicAlgorithmExact", align 8 ; 8 uses
  %11 = alloca %"class.std::vector.32", align 8   ; 17 uses
  %12 = alloca %"class.std::vector.32", align 8   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !303  ; 3 uses
  %i.c = mul nsw i64 %i.b, 3                      ; 3 uses
  %i.d = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.d, label %.noexc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %.noexc107

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc107:                                        ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.e = mul nuw nsw i64 %i.b, 24
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 4 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !171
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !304
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !87
  %i.i = getelementptr i8, ptr %i.f, i64 8        ; 3 uses
  %i.j = add nsw i64 %i.c, -1                     ; 2 uses
  %13 = icmp eq i64 %i.j, 0
  br i1 %13, label %bb.b, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc107
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.j, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !87
  %14 = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc107, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.i, %.noexc107 ], [ %14, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.k, align 8, !tbaa !305
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !307
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !308
  %i.p = mul nsw i64 %i.o, %i.m                   ; 5 uses
  %i.q = icmp ugt i64 %i.p, 2305843009213693951
  br i1 %i.q, label %bb.c, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
          to label %.noexc111 unwind label %bb.e

.noexc111:                                        ; preds = %bb.c
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not.i.i.i.i108 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i108, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #25
          to label %.noexc112 unwind label %bb.e  ; 6 uses

.noexc112:                                        ; preds = %bb.d
  store ptr %i.s, ptr %8, align 8, !tbaa !174
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !309
  store i32 0, ptr %i.s, align 4, !tbaa !35
  %i.v = getelementptr i8, ptr %i.s, i64 4        ; 3 uses
  %i.w = add nsw i64 %i.p, -1                     ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc112
  %.idx.i.i.i.i.i.i.i109 = shl nuw nsw i64 %i.w, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 0, i64 %.idx.i.i.i.i.i.i.i109, i1 false), !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i109
  br label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc112
  %i.z = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.s, %.noexc112 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.0.i.i.i.i.i110 = phi ptr [ %i.y, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.v, %.noexc112 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i110, ptr %i.aa, align 8, !tbaa !310
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !305 ; 2 uses
  %i.ac = load ptr, ptr %7, align 8, !tbaa !171   ; 3 uses
  %.not350 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not350, label %.preheader288, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

.preheader288:                                    ; preds = %bb.i, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
  %.not351 = icmp eq ptr %.0.i.i.i.i.i110, %i.z
  br i1 %.not351, label %._crit_edge, label %.lr.ph323

.lr.ph323:                                        ; preds = %.preheader288
  %i.ai = ptrtoint ptr %.0.i.i.i.i.i110 to i64
  %i.aj = ptrtoint ptr %i.z to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2
  %i.am = load ptr, ptr %1, align 8, !tbaa !311
  %i.an = load i64, ptr %i.l, align 8, !tbaa !307
  br label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit157

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.aq = urem i32 %i.ap, 3                       ; 2 uses
  %i.ar = udiv i32 %i.ap, 3
  %i.as = icmp samesign ult i32 %i.aq, 2
  br i1 %i.as, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !312
  %i.au = icmp eq i64 %i.at, 3
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.av = zext nneg i32 %i.ar to i64
  %i.aw = zext nneg i32 %i.aq to i64
  %i.ax = load ptr, ptr %0, align 8, !tbaa !313
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !303
  %i.az = mul nsw i64 %i.ay, %i.aw
  %i.ba = getelementptr [8 x i8], ptr %i.ax, i64 %i.av
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !87
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bd = phi double [ %i.bc, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  store double %i.bd, ptr %i.be, align 8, !tbaa !87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ag
  br i1 %exitcond.not, label %.preheader288, label %bb.f, !llvm.loop !279

._crit_edge:                                      ; preds = %bb.j, %.preheader288
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN3igl8geodesic4MeshC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.k unwind label %bb.p

bb.j:                                             ; preds = %.lr.ph323, %bb.j
  %indvars.iv366 = phi i64 [ 0, %.lr.ph323 ], [ %indvars.iv.next367, %bb.j ] ; 3 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv366 to i32 ; 2 uses
  %i.bg = udiv i32 %i.bf, 3
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = urem i32 %i.bf, 3
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = mul nsw i64 %i.an, %i.bj
  %i.bl = getelementptr [4 x i8], ptr %i.am, i64 %i.bh
  %i.bm = getelementptr [4 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !35
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv366
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !35
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %i.al
  br i1 %exitcond370.not, label %._crit_edge, label %bb.j, !llvm.loop !280

bb.k:                                             ; preds = %._crit_edge
  %i.bp = load ptr, ptr %i.k, align 8, !tbaa !305
  %i.bq = load ptr, ptr %7, align 8, !tbaa !171
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3
  %i.bv = udiv i64 %i.bu, 3
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = load ptr, ptr %i.aa, align 8, !tbaa !310
  %i.by = load ptr, ptr %8, align 8, !tbaa !174
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 2
  %i.cd = udiv i64 %i.cc, 3
  %i.ce = trunc i64 %i.cd to i32
  invoke void @_ZN3igl8geodesic4Mesh20initialize_mesh_dataISt6vectorIdSaIdEES3_IiSaIiEEEEvjRT_jRT0_(ptr noundef nonnull align 8 dereferenceable(112) %9, i32 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZN3igl8geodesic4Mesh20initialize_mesh_dataISt6vectorIdSaIdEES3_IiSaIiEEEEvRT_RT0_.exit unwind label %bb.q

_ZN3igl8geodesic4Mesh20initialize_mesh_dataISt6vectorIdSaIdEES3_IiSaIiEEEEvRT_RT0_.exit: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN3igl8geodesic22GeodesicAlgorithmExactC2EPNS0_4MeshE(ptr noundef nonnull align 8 dereferenceable(512) %10, ptr noundef nonnull %9)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %_ZN3igl8geodesic4Mesh20initialize_mesh_dataISt6vectorIdSaIdEES3_IiSaIiEEEEvRT_RT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !315 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !315
  %i.cj = add nsw i64 %i.ci, %i.cg                ; 4 uses
  %i.ck = icmp ugt i64 %i.cj, 288230376151711743
  br i1 %i.ck, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #27
          to label %.noexc115 unwind label %bb.s

.noexc115:                                        ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  %.not430 = icmp eq i64 %i.cj, 0
  br i1 %.not430, label %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN3igl8geodesic12SurfacePointESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN3igl8geodesic12SurfacePointESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cn = shl nuw nsw i64 %i.cj, 5
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #25
          to label %.noexc116 unwind label %bb.s  ; 5 uses

.noexc116:                                        ; preds = %_ZNSt12_Vector_baseIN3igl8geodesic12SurfacePointESaIS2_EE11_M_allocateEm.exit.i
  %i.cp = load ptr, ptr %11, align 8, !tbaa !116  ; 5 uses
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !115 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.cp, %i.cq
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc116, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i ], [ %i.co, %.noexc116 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i ], [ %i.cp, %.noexc116 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i, i64 32, i1 false), !alias.scope !316
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
end_hunk_0
