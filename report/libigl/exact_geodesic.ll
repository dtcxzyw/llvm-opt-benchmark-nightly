Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/exact_geodesic?download=true
inline.NumInlined: 2805
inline.NumDeleted: 1107
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN3igl8geodesic22GeodesicAlgorithmExact21update_list_and_queueEPNS0_12IntervalListEPNS0_16IntervalWithStopEj:bb.a
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
  %i.c = mul nsw i64 %i.b, 3                      ; 2 uses
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
  %i.e = mul i64 %i.b, 24                         ; 3 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 5 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !171
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !304
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !87
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.idx.i.i.i.i.i.i.i = add i64 %i.e, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !87
  %i.j = getelementptr i8, ptr %i.f, i64 %i.e
  br label %bb.b

bb.b:                                             ; preds = %.noexc107, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.j, %.noexc107 ]
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
  %i.z = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.s, %.noexc112 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 5 uses
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
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = ashr exact i64 %i.ak, 2                 ; 2 uses
  %i.am = load ptr, ptr %1, align 8, !tbaa !311   ; 3 uses
  %i.an = load i64, ptr %i.l, align 8, !tbaa !307 ; 3 uses
  %13 = icmp eq i64 %i.ak, 4
  br i1 %13, label %.epil.preheader, label %.lr.ph323.new

.lr.ph323.new:                                    ; preds = %.lr.ph323
  %unroll_iter = and i64 %i.al, -2
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

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.j
  %14 = and i64 %i.ak, 4
  %lcmp.mod.not = icmp eq i64 %14, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph323
  %indvars.iv366.epil.init = phi i64 [ 0, %.lr.ph323 ], [ %indvars.iv.next367.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod469 = trunc i64 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod469)
  %15 = trunc nuw nsw i64 %indvars.iv366.epil.init to i32 ; 2 uses
  %16 = udiv i32 %15, 3
  %17 = zext nneg i32 %16 to i64
  %18 = urem i32 %15, 3
  %19 = zext nneg i32 %18 to i64
  %20 = mul nsw i64 %i.an, %19
  %21 = getelementptr [4 x i8], ptr %i.am, i64 %17
  %22 = getelementptr [4 x i8], ptr %21, i64 %20
  %23 = load i32, ptr %22, align 4, !tbaa !35
  %24 = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv366.epil.init
  store i32 %23, ptr %24, align 4, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader288
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN3igl8geodesic4MeshC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.k unwind label %bb.p

bb.j:                                             ; preds = %bb.j, %.lr.ph323.new
  %indvars.iv366 = phi i64 [ 0, %.lr.ph323.new ], [ %indvars.iv.next367.1, %bb.j ] ; 4 uses
  %indvars.iv366.a = phi i64 [ 0, %.lr.ph323.new ], [ %indvars.iv.next367.a, %bb.j ]
  %25 = trunc nuw nsw i64 %indvars.iv366 to i32   ; 2 uses
  %26 = udiv i32 %25, 3
  %27 = zext nneg i32 %26 to i64
  %28 = urem i32 %25, 3
  %29 = zext nneg i32 %28 to i64
  %30 = mul nsw i64 %i.an, %29
  %31 = getelementptr [4 x i8], ptr %i.am, i64 %27
  %32 = getelementptr [4 x i8], ptr %31, i64 %30
  %33 = load i32, ptr %32, align 4, !tbaa !35
  %34 = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv366
  store i32 %33, ptr %34, align 4, !tbaa !35
  %indvars.iv.next367 = or disjoint i64 %indvars.iv366, 1 ; 2 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv.next367 to i32 ; 2 uses
  %i.bg = udiv i32 %i.bf, 3
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = urem i32 %i.bf, 3
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = mul nsw i64 %i.an, %i.bj
  %i.bl = getelementptr [4 x i8], ptr %i.am, i64 %i.bh
  %i.bm = getelementptr [4 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !35
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next367
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !35
  %indvars.iv.next367.1 = add nuw nsw i64 %indvars.iv366, 2 ; 2 uses
  %indvars.iv.next367.a = add i64 %indvars.iv366.a, 2 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367.a, %unroll_iter
  br i1 %exitcond370.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.j, !llvm.loop !280

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
  %.not429 = icmp eq i64 %i.cj, 0
  br i1 %.not429, label %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN3igl8geodesic12SurfacePointESaIS2_EE11_M_allocateEm.exit.i

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
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %.not.i.i.i.i114 = icmp eq ptr %i.cr, %i.cq
  br i1 %.not.i.i.i.i114, label %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc116
  %.not.i8.i = icmp eq ptr %i.cp, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN3igl8geodesic12SurfacePointESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.ct = load ptr, ptr %i.cl, align 8, !tbaa !175
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cp to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cw) #23
  br label %_ZNSt12_Vector_baseIN3igl8geodesic12SurfacePointESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN3igl8geodesic12SurfacePointESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.co, ptr %11, align 8, !tbaa !116
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !115
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.cj ; 2 uses
  store ptr %i.cx, ptr %i.cl, align 8, !tbaa !175
  %.pre = load i64, ptr %i.cf, align 8, !tbaa !315
  br label %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE7reserveEm.exit: ; preds = %bb.n, %_ZNSt12_Vector_baseIN3igl8geodesic12SurfacePointESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.cy = phi ptr [ null, %bb.n ], [ %i.cx, %_ZNSt12_Vector_baseIN3igl8geodesic12SurfacePointESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %i.cz = phi ptr [ null, %bb.n ], [ %i.co, %_ZNSt12_Vector_baseIN3igl8geodesic12SurfacePointESaIS2_EE13_M_deallocateEPS2_m.exit.i ] ; 3 uses
  %i.da = phi i64 [ %i.cg, %bb.n ], [ %.pre, %_ZNSt12_Vector_baseIN3igl8geodesic12SurfacePointESaIS2_EE13_M_deallocateEPS2_m.exit.i ] ; 2 uses
  %i.db = icmp sgt i64 %i.da, 0
  br i1 %i.db, label %.preheader282.lr.ph, label %.preheader281

.preheader282.lr.ph:                              ; preds = %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE7reserveEm.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  br label %.preheader282

.preheader282:                                    ; preds = %.preheader282.lr.ph, %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE12emplace_backIJPNS1_6VertexEEEERS2_DpOT_.exit
  %i.dd = phi i64 [ %i.da, %.preheader282.lr.ph ], [ %i.fi, %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE12emplace_backIJPNS1_6VertexEEEERS2_DpOT_.exit ]
  %i.de = phi ptr [ %i.cz, %.preheader282.lr.ph ], [ %i.fj, %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE12emplace_backIJPNS1_6VertexEEEERS2_DpOT_.exit ] ; 6 uses
  %i.df = phi ptr [ %i.cy, %.preheader282.lr.ph ], [ %i.fk, %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE12emplace_backIJPNS1_6VertexEEEERS2_DpOT_.exit ] ; 5 uses
  %i.dg = phi ptr [ %i.cz, %.preheader282.lr.ph ], [ %i.fl, %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE12emplace_backIJPNS1_6VertexEEEERS2_DpOT_.exit ] ; 6 uses
  %indvars.iv371 = phi i64 [ 0, %.preheader282.lr.ph ], [ %indvars.iv.next372, %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE12emplace_backIJPNS1_6VertexEEEERS2_DpOT_.exit ] ; 2 uses
  %i.dh = load ptr, ptr %2, align 8, !tbaa !317
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv371
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !35
  %i.dk = sext i32 %i.dj to i64
  %i.dl = load ptr, ptr %9, align 8, !tbaa !177
  %i.dm = getelementptr inbounds nuw [88 x i8], ptr %i.dl, i64 %i.dk ; 8 uses
  %.not.i = icmp eq ptr %i.dg, %i.df
  br i1 %.not.i, label %bb.u, label %bb.t

.preheader281:                                    ; preds = %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE12emplace_backIJPNS1_6VertexEEEERS2_DpOT_.exit, %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE7reserveEm.exit
  %i.dn = phi ptr [ %i.cz, %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE7reserveEm.exit ], [ %i.fl, %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE12emplace_backIJPNS1_6VertexEEEERS2_DpOT_.exit ]
  %i.do = load i64, ptr %i.ch, align 8, !tbaa !315
  %i.dp = icmp sgt i64 %i.do, 0
  br i1 %i.dp, label %.preheader275.lr.ph, label %._crit_edge326

.preheader275.lr.ph:                              ; preds = %.preheader281
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %.preheader275

bb.p:                                             ; preds = %._crit_edge
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.q:                                             ; preds = %bb.k
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.r:                                             ; preds = %_ZN3igl8geodesic4Mesh20initialize_mesh_dataISt6vectorIdSaIdEES3_IiSaIiEEEEvRT_RT0_.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIN3igl8geodesic12SurfacePointESaIS2_EE11_M_allocateEm.exit.i, %bb.m
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EED2Ev.exit153

bb.t:                                             ; preds = %.preheader282
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !87
  store double %i.dx, ptr %i.dg, align 8, !tbaa !87
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !87
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store double %i.dz, ptr %i.ea, align 8, !tbaa !87
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 72
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !87
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store double %i.ec, ptr %i.ed, align 8, !tbaa !87
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store ptr %i.dm, ptr %i.ee, align 8, !tbaa !178
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 2 uses
  store ptr %i.ef, ptr %i.dc, align 8, !tbaa !115
  br label %_ZNSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE12emplace_backIJPNS1_6VertexEEEERS2_DpOT_.exit

bb.u:                                             ; preds = %.preheader282
  %i.eg = ptrtoint ptr %i.df to i64
  %i.eh = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.ei = sub i64 %i.eg, %i.eh                    ; 3 uses
  %i.ej = icmp eq i64 %i.ei, 9223372036854775776
  br i1 %i.ej, label %bb.v, label %_ZNKSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
          to label %.noexc168 unwind label %.loopexit.split-lp284

.noexc168:                                        ; preds = %bb.v
  unreachable

_ZNKSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.u
  %i.ek = ashr exact i64 %i.ei, 5                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ek, i64 1)
  %i.el = add nsw i64 %.sroa.speculated.i.i, %i.ek ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ek
  %i.en = call i64 @llvm.umin.i64(i64 %i.el, i64 288230376151711743)
  %i.eo = select i1 %i.em, i64 288230376151711743, i64 %i.en ; 3 uses
  %.not.i.i160 = icmp ne i64 %i.eo, 0
  call void @llvm.assume(i1 %.not.i.i160)
  %i.ep = shl nuw nsw i64 %i.eo, 5
  %i.eq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #25
          to label %.noexc169 unwind label %.loopexit283 ; 6 uses

.noexc169:                                        ; preds = %_ZNKSt6vectorIN3igl8geodesic12SurfacePointESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ei ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.et = load double, ptr %i.es, align 8, !tbaa !87
  store double %i.et, ptr %i.er, align 8, !tbaa !87
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !87
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 8
end_hunk_0
