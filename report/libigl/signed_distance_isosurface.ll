Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/signed_distance_isosurface?download=true
inline.NumInlined: 15413
inline.NumDeleted: 5213
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN4CGAL17make_surface_meshINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS5_NS_27Triangulation_vertex_base_3IS5_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS5_NS_24Surface_mesh_cell_base_3IS5_NS_34Delaunay_triangulation_cell_base_3IS5_NS_25Triangulation_cell_base_3IS5_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESP_EEvEENS_14Surface_mesher25Implicit_surface_oracle_3IS5_NS_18Implicit_surface_3IS5_St8functionIFdNS_7Point_3IS4_EEEEEENS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENSS_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSX_EENSS_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISQ_EENS_12Manifold_tagEEEvRT_RKNT0_9Surface_3ERKS1K_RKT1_T2_i:bb.a
bb.az:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i
  %i.rl = load ptr, ptr %i.mf, align 8, !tbaa !510
  %i.rm = ptrtoint ptr %i.rl to i64
  %i.rn = ptrtoint ptr %i.rk to i64
  %i.ro = sub i64 %i.rm, %i.rn
  call void @_ZdlPvm(ptr noundef nonnull %i.rk, i64 noundef %i.ro) #43
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i.i.i:      ; preds = %bb.az, %.loopexit.split-lp.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #38
  br label %.body

_ZNK4CGAL31Surface_mesh_default_criteria_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEE6is_badERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSC_IS4_NSD_IS4_NSE_IS4_NSF_IS4_NSG_ISN_EEEEEEEEEESO_SO_SO_EELb0EEEiERSt6vectorIdSaIdEE.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.ay, %_ZNK4CGAL31Surface_mesh_default_criteria_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEE6is_badERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSC_IS4_NSD_IS4_NSE_IS4_NSF_IS4_NSG_ISN_EEEEEEEEEESO_SO_SO_EELb0EEEiERSt6vectorIdSaIdEE.exit.i.i.i.i.i.i.i, %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i.i.i.i.i.i.i.i.i, %.noexc17
  %i.rp = load ptr, ptr %43, align 8, !tbaa !508  ; 3 uses
  %.not.i.i.i6.i.i.i.i.i.i.i = icmp eq ptr %i.rp, null
  br i1 %.not.i.i.i6.i.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit7.i.i.i.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNK4CGAL31Surface_mesh_default_criteria_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEE6is_badERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSC_IS4_NSD_IS4_NSE_IS4_NSF_IS4_NSG_ISN_EEEEEEEEEESO_SO_SO_EELb0EEEiERSt6vectorIdSaIdEE.exit.thread.i.i.i.i.i.i.i
  %i.rq = load ptr, ptr %i.mf, align 8, !tbaa !510
  %i.rr = ptrtoint ptr %i.rq to i64
  %i.rs = ptrtoint ptr %i.rp to i64
  %i.rt = sub i64 %i.rr, %i.rs
  call void @_ZdlPvm(ptr noundef nonnull %i.rp, i64 noundef %i.rt) #43
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit7.i.i.i.i.i.i.i

_ZNSt6vectorIdSaIdEED2Ev.exit7.i.i.i.i.i.i.i:     ; preds = %bb.ba, %_ZNK4CGAL31Surface_mesh_default_criteria_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEE6is_badERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSC_IS4_NSD_IS4_NSE_IS4_NSF_IS4_NSG_ISN_EEEEEEEEEESO_SO_SO_EELb0EEEiERSt6vectorIdSaIdEE.exit.thread.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #38
  br label %.noexc18

bb.bb:                                            ; preds = %.noexc16
  invoke void @_ZN4CGAL28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEvE24change_in_complex_statusILb0ELb0EEEvNS_8internal11CC_iteratorINS_17Compact_containerINSC_IS4_NSD_IS4_NSE_IS4_NSF_IS4_NSG_ISN_EEEEEEEEEESO_SO_SO_EELb0EEEi(ptr noundef nonnull align 8 dereferenceable(112) %i.qc, ptr %.sroa.0.0.copyload.i.i.cast.i.i.i.i.i.i.i, i32 noundef %i.qe)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit

.noexc18:                                         ; preds = %bb.bb, %_ZNSt6vectorIdSaIdEED2Ev.exit7.i.i.i.i.i.i.i, %_ZN4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE9new_facetILb1EEEvRKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE
  %i.ru = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4CGAL15Filter_iteratorINS_8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS7_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS7_NS_24Surface_mesh_cell_base_3IS7_NS_34Delaunay_triangulation_cell_base_3IS7_NS_25Triangulation_cell_base_3IS7_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEEENS_15Triangulation_3IS7_SO_NS_7DefaultEE15Infinite_testerEEppEv(ptr noundef nonnull align 8 dereferenceable(72) %42)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc19:                                         ; preds = %.noexc18
  %i.rv = load ptr, ptr %i.hp, align 8, !tbaa !498, !nonnull !83, !align !332 ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 64
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !347, !noalias !1495
  %i.rz = load i32, ptr %i.rw, align 8, !tbaa !166, !noalias !1495 ; 2 uses
  %i.sa = icmp eq i32 %i.rz, 2
  %spec.select.i3.i.i.i.i.i.i.i = select i1 %i.sa, i32 3, i32 0
  %i.sb = load ptr, ptr %i.lv, align 8, !tbaa !503
  %i.sc = icmp ne ptr %i.sb, %i.rw
  %i.sd = load ptr, ptr %i.lw, align 8            ; 2 uses
  %i.se = icmp ne ptr %i.sd, %i.ry
  %or.cond.not36.i.i.i.i.i.i.i = select i1 %i.sc, i1 true, i1 %i.se
  %i.sf = load i32, ptr %i.lx, align 8            ; 2 uses
  %i.sg = icmp ne i32 %i.sf, %spec.select.i3.i.i.i.i.i.i.i
  %or.cond34.i.i.i.i.i.i.i = select i1 %or.cond.not36.i.i.i.i.i.i.i, i1 true, i1 %i.sg
  %i.sh = ptrtoint ptr %i.sd to i64
  br i1 %or.cond34.i.i.i.i.i.i.i, label %_ZN4CGALneINS_8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS7_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS7_NS_24Surface_mesh_cell_base_3IS7_NS_34Delaunay_triangulation_cell_base_3IS7_NS_25Triangulation_cell_base_3IS7_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEEENS_15Triangulation_3IS7_SO_NS_7DefaultEE15Infinite_testerEEEbRKNS_15Filter_iteratorIT_T0_EESZ_.exit.thread.i.i.i.i.i.i.i, label %.loopexit45, !llvm.loop !1416

.loopexit45:                                      ; preds = %.noexc19, %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE19finite_facets_beginEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #38
  store i8 1, ptr %i.iu, align 2, !tbaa !1488
  %i.si = invoke fastcc noundef zeroext i1 @_ZN4CGAL12Mesher_levelINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EENS_14Surface_mesher14Surface_mesherINSQ_28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3ISP_vEENS_18Implicit_surface_3IS4_St8functionIFdNS_7Point_3IS3_EEEEEENSQ_25Implicit_surface_oracle_3IS4_S11_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENSQ_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSY_EENSQ_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISP_EENSQ_33Surface_mesher_regular_edges_baseISU_S11_S1G_S1I_Lb0EEEEESt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSC_IS4_NSD_IS4_NSE_IS4_NSF_IS4_NSG_ISN_EEEEEEEEEESO_SO_SO_EELb0EEEiENS_17Null_mesher_levelELNSQ_12Verbose_flagE1EEES1X_S1Y_NS_35Triangulation_mesher_level_traits_3ISP_EEE27no_longer_element_to_refineEv(ptr noundef nonnull align 8 dereferenceable(8) %i.is)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %.loopexit45
  br i1 %i.si, label %.loopexit41, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc20
  %i.sj = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.sk = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.sl = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 5 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %34, i64 20
  %i.so = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %34, i64 48 ; 6 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %34, i64 24 ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %34, i64 72 ; 4 uses
  %i.ss = ptrtoint ptr %i.sr to i64
  %i.st = getelementptr inbounds nuw i8, ptr %30, i64 72
  %i.su = getelementptr inbounds nuw i8, ptr %30, i64 88
  %i.sv = getelementptr inbounds nuw i8, ptr %30, i64 48
  %i.sw = getelementptr inbounds nuw i8, ptr %30, i64 64
  %i.sx = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.sy = getelementptr inbounds nuw i8, ptr %30, i64 40
  %i.sz = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.ta = getelementptr inbounds nuw i8, ptr %26, i64 88
  %i.tb = getelementptr inbounds nuw i8, ptr %26, i64 48
  %i.tc = getelementptr inbounds nuw i8, ptr %26, i64 64
  %i.td = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.te = getelementptr inbounds nuw i8, ptr %26, i64 40
  %i.tf = getelementptr inbounds nuw i8, ptr %34, i64 56 ; 6 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %47, i64 168 ; 4 uses
  %i.th = getelementptr inbounds nuw i8, ptr %34, i64 80 ; 4 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.tj = getelementptr inbounds nuw i8, ptr %47, i64 112 ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.tl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.tm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.tn = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.to = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.tq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.tx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ty = getelementptr inbounds nuw i8, ptr %34, i64 88
  %i.tz = getelementptr inbounds nuw i8, ptr %34, i64 64
  %i.ua = getelementptr inbounds nuw i8, ptr %34, i64 40
  %i.ub = insertelement <2 x ptr> poison, ptr %i.im, i64 0
  %i.uc = shufflevector <2 x ptr> %i.ub, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ud = insertelement <2 x ptr> poison, ptr %i.im, i64 0
  %i.ue = shufflevector <2 x ptr> %i.ud, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.uf = insertelement <2 x ptr> poison, ptr %i.im, i64 0
  %i.ug = shufflevector <2 x ptr> %i.uf, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.uh = insertelement <2 x ptr> poison, ptr %i.im, i64 0
  %i.ui = shufflevector <2 x ptr> %i.uh, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.uj = insertelement <2 x ptr> poison, ptr %i.ig, i64 0
  %i.uk = shufflevector <2 x ptr> %i.uj, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ul = insertelement <2 x ptr> poison, ptr %i.ig, i64 0
  %i.um = shufflevector <2 x ptr> %i.ul, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.un = insertelement <2 x ptr> poison, ptr %i.ig, i64 0
  %i.uo = shufflevector <2 x ptr> %i.un, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.bc

bb.bc:                                            ; preds = %.noexc25, %.lr.ph.i.i.i
  %i.up = invoke fastcc noundef zeroext i1 @_ZN4CGAL12Mesher_levelINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EENS_14Surface_mesher14Surface_mesherINSQ_28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3ISP_vEENS_18Implicit_surface_3IS4_St8functionIFdNS_7Point_3IS3_EEEEEENSQ_25Implicit_surface_oracle_3IS4_S11_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENSQ_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSY_EENSQ_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISP_EENSQ_33Surface_mesher_regular_edges_baseISU_S11_S1G_S1I_Lb0EEEEESt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSC_IS4_NSD_IS4_NSE_IS4_NSF_IS4_NSG_ISN_EEEEEEEEEESO_SO_SO_EELb0EEEiENS_17Null_mesher_levelELNSQ_12Verbose_flagE1EEES1X_S1Y_NS_35Triangulation_mesher_level_traits_3ISP_EEE27no_longer_element_to_refineEv(ptr noundef nonnull align 8 dereferenceable(8) %i.is)
          to label %.noexc21 unwind label %.loopexit

.noexc21:                                         ; preds = %bb.bc
  br i1 %i.up, label %bb.ie, label %bb.bd

bb.bd:                                            ; preds = %.noexc21
  %i.uq = invoke fastcc noundef zeroext i1 @_ZNK4CGAL14Surface_mesher33Surface_mesher_regular_edges_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EELb0EE32no_longer_element_to_refine_implEv(ptr noundef nonnull align 8 dereferenceable(235) %47)
          to label %.noexc22 unwind label %.loopexit

.noexc22:                                         ; preds = %bb.bd
  br i1 %i.uq, label %bb.bp, label %bb.be

bb.be:                                            ; preds = %.noexc22
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ie, align 8, !tbaa !512
  %i.ur = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 8
  %.val.val.i.i.i.i.i.i.i = load i64, ptr %i.ur, align 8, !tbaa !461
  %i.us = icmp eq i64 %.val.val.i.i.i.i.i.i.i, 0
  br i1 %i.us, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val7.i.i.i.i.i.i.i = load ptr, ptr %i.if, align 8, !tbaa !1496
  %i.ut = getelementptr i8, ptr %.val7.i.i.i.i.i.i.i, i64 -8
  %.val7.val.i.i.i.i.i.i.i = load ptr, ptr %i.ut, align 8, !tbaa !447
  %i.uu = getelementptr i8, ptr %.val7.val.i.i.i.i.i.i.i, i64 72
  %.val7.val.val.i.i.i.i.i.i.i = load ptr, ptr %i.uu, align 8, !tbaa !449 ; 2 uses
  %i.uv = getelementptr inbounds i8, ptr %.val7.val.val.i.i.i.i.i.i.i, i64 -64
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.uv, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.val7.val.val.i.i.i.i.i.i.i, i64 -56
  %.sroa.2.0.copyload.i.i.i.i.i.i1.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  br label %_ZN4CGAL12Mesher_levelINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EENS_14Surface_mesher14Surface_mesherINSQ_28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3ISP_vEENS_18Implicit_surface_3IS4_St8functionIFdNS_7Point_3IS3_EEEEEENSQ_25Implicit_surface_oracle_3IS4_S11_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENSQ_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSY_EENSQ_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISP_EENSQ_33Surface_mesher_regular_edges_baseISU_S11_S1G_S1I_Lb0EEEEESt4pairINS_8internal11CC

bb.bg:                                            ; preds = %bb.be
  %i.uw = load ptr, ptr %i.ii, align 8, !tbaa !178 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 32
  %.val8.i.i.i.i.i.i.i = load ptr, ptr %i.hp, align 8, !tbaa !498
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.ux, align 8, !tbaa !171
  %i.uy = getelementptr i8, ptr %i.uw, i64 40
  %.val10.i.i.i.i.i.i.i = load ptr, ptr %i.uy, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #38
  store ptr null, ptr %36, align 8, !tbaa !298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #38
  store i32 -1, ptr %i.j, align 4, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #38
  store i32 -1, ptr %i.k, align 4, !tbaa !217
  %i.uz = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i.i.i.i, i64 8
  %i.va = invoke noundef zeroext i1 @_ZNK4CGAL30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEE7is_edgeENS_8internal11CC_iteratorINS_17Compact_containerINS1_IS4_NS5_IS4_NS6_ISL_EEEEEENS_7DefaultESS_SS_EELb0EEESU_RNSN_INSO_INSA_IS4_NSB_IS4_NSC_IS4_NSD_IS4_NSE_ISL_EEEEEEEEEESS_SS_SS_EELb0EEERiS13_(ptr noundef nonnull align 8 dereferenceable(184) %i.uz, ptr %.val9.i.i.i.i.i.i.i, ptr %.val10.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %.noexc23 unwind label %.loopexit ; 0 uses

.noexc23:                                         ; preds = %bb.bg
  %i.vb = load i64, ptr %36, align 8, !tbaa !345
  %i.vc = inttoptr i64 %i.vb to ptr
  %i.vd = load i32, ptr %i.j, align 4, !tbaa !217 ; 2 uses
  %i.ve = load i32, ptr %i.k, align 4, !tbaa !217 ; 2 uses
  %.sroa.4.8.insert.ext.i.i.i.i.i.i.i.i.i = zext nneg i32 %i.ve to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #38
  %.val11.i.i.i.i.i.i.i = load ptr, ptr %i.ho, align 8, !tbaa !505 ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i11.i.i = icmp ult i32 %i.vd, 4
  call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i.i11.i.i)
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 32 ; 2 uses
  %i.vg = zext nneg i32 %i.vd to i64
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.vf, i64 %i.vg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i12.i.i = load ptr, ptr %i.vh, align 8, !tbaa !171 ; 3 uses
  %or.cond.i7.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.ve, 4
  call void @llvm.assume(i1 %or.cond.i7.i.i.i.i.i.i.i.i.i)
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.vf, i64 %.sroa.4.8.insert.ext.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i8.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.vi, align 8, !tbaa !171 ; 3 uses
  %i.vj = icmp ult ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i12.i.i, %.sroa.0.0.copyload.i8.i.i.i.i.i.i.i.i.i ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i = select i1 %i.vj, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i12.i.i, ptr %.sroa.0.0.copyload.i8.i.i.i.i.i.i.i.i.i ; 7 uses
  %.10.i.i.i.i.i.i.i.i.i.i = select i1 %i.vj, ptr %.sroa.0.0.copyload.i8.i.i.i.i.i.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i12.i.i ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.val11.i.i.i.i.i.i.i, i64 72
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !177, !nonnull !83, !noundef !83
  %i.vm = getelementptr inbounds nuw i8, ptr %.val11.i.i.i.i.i.i.i, i64 64 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread10.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc23
  %.013.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread10.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.vl, %.noexc23 ] ; 5 uses
  %.0812.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread10.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.vm, %.noexc23 ]
  %i.vn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !170 ; 2 uses
  %i.vp = icmp ult ptr %i.vo, %..i.i.i.i.i.i.i.i.i.i
  br i1 %i.vp, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vq = icmp ult ptr %..i.i.i.i.i.i.i.i.i.i, %i.vo
  br i1 %i.vq, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread10.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bh
  %i.vr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !170
  %i.vt = icmp ult ptr %i.vs, %.10.i.i.i.i.i.i.i.i.i.i
  br i1 %i.vt, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread10.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread10.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread10.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bh
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ 16, %bb.bh ], [ 16, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.19.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0812.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bh ], [ %.013.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sink.i.i.i.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.vu, align 8, !tbaa !319 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_ES0_IKSX_S0_IiSt3setIS0_INS3_INS4_INSF_IS8_NSG_IS8_NSH_IS8_NSI_IS8_NSJ_ISQ_EEEEEEEEEESU_SU_SU_EELb0EEEiESt4lessIS17_ESaIS17_EEEESt10_Select1stIS1D_ES18_ISX_ESaIS1D_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1D_EPSt18_Rb_tree_node_baseRSY_.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !34

_ZNSt8_Rb_treeISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_ES0_IKSX_S0_IiSt3setIS0_INS3_INS4_INSF_IS8_NSG_IS8_NSH_IS8_NSI_IS8_NSJ_ISQ_EEEEEEEEEESU_SU_SU_EELb0EEEiESt4lessIS17_ESaIS17_EEEESt10_Select1stIS1D_ES18_ISX_ESaIS1D_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1D_EPSt18_Rb_tree_node_baseRSY_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.thread10.i.i.i.i.i.i.i.i.i.i.i.i
  %48 = icmp ne ptr %.19.i.i.i.i.i.i.i.i.i.i.i.i, %i.vm
  call void @llvm.assume(i1 %48)
  %49 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %50 = load ptr, ptr %49, align 8, !tbaa !170    ; 2 uses
  %51 = icmp uge ptr %..i.i.i.i.i.i.i.i.i.i, %50
  call void @llvm.assume(i1 %51)
  %52 = icmp ult ptr %50, %..i.i.i.i.i.i.i.i.i.i
  br i1 %52, label %_ZNSt3mapISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_ES0_IiSt3setIS0_INS3_INS4_INSF_IS8_NSG_IS8_NSH_IS8_NSI_IS8_NSJ_ISQ_EEEEEEEEEESU_SU_SU_EELb0EEEiESt4lessIS16_ESaIS16_EEES17_ISX_ESaIS0_IKSX_S1B_EEE4findERS1D_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8_Rb_treeISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_ES0_IKSX_S0_IiSt3setIS0_INS3_INS4_INSF_IS8_NSG_IS8_NSH_IS8_NSI_IS8_NSJ_ISQ_EEEEEEEEEESU_SU_SU_EELb0EEEiESt4lessIS17_ESaIS17_EEEESt10_Select1stIS1D_ES18_ISX_ESaIS1D_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1D_EPSt18_Rb_tree_node_baseRSY_.exit.i.i.i.i.i.i.i.i.i.i.i
  %53 = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  %54 = load ptr, ptr %53, align 8, !tbaa !170
  %55 = icmp uge ptr %.10.i.i.i.i.i.i.i.i.i.i, %54
  call void @llvm.assume(i1 %55)
  br label %_ZNSt3mapISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_ES0_IiSt3setIS0_INS3_INS4_INSF_IS8_NSG_IS8_NSH_IS8_NSI_IS8_NSJ_ISQ_EEEEEEEEEESU_SU_SU_EELb0EEEiESt4lessIS16_ESaIS16_EEES17_ISX_ESaIS0_IKSX_S1B_EEE4findERS1D_.exit.i.i.i.i.i.i.i.i.i

_ZNSt3mapISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_ES0_IiSt3setIS0_INS3_INS4_INSF_IS8_NSG_IS8_NSH_IS8_NSI_IS8_NSJ_ISQ_EEEEEEEEEESU_SU_SU_EELb0EEEiESt4lessIS16_ESaIS16_EEES17_ISX_ESaIS0_IKSX_S1B_EEE4findERS1D_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_EEclERKSX_S10_.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt8_Rb_treeISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_ES0_IKSX_S0_IiSt3setIS0_INS3_INS4_INSF_IS8_NSG_IS8_NSH_IS8_NSI_IS8_NSJ_ISQ_EEEEEEEEEESU_SU_SU_EELb0EEEiESt4lessIS17_ESaIS17_EEEESt10_Select1stIS1D_ES18_ISX_ESaIS1D_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1D_EPSt18_Rb_tree_node_baseRSY_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.vv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i.i.i.i.i, i64 80
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !178 ; 5 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 32
  %.sroa.04.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.vx, align 8 ; 8 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.vw, i64 40
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8 ; 5 uses
  %i.vy = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.vw) #49 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.wa = icmp eq ptr %i.vy, %i.vz
  %spec.select37.i.i.i.i.i.i.i.i.a = select i1 %i.wa, ptr %i.vw, ptr %i.vy ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %spec.select37.i.i.i.i.i.i.i.i.a, i64 32
  %i.wc = load ptr, ptr %i.wb, align 8            ; 2 uses
  %i.wd = icmp ne ptr %i.wc, %.sroa.04.0.copyload.i.i.i.i.i.i.i.i
  %i.we = getelementptr inbounds nuw i8, ptr %spec.select37.i.i.i.i.i.i.i.i.a, i64 40
  %i.wf = load i32, ptr %i.we, align 8            ; 2 uses
  %i.wg = icmp ne i32 %i.wf, %.sroa.6.0.copyload.i.i.i.i.i.i.i.i
  %.not3.i26.i.i.i.i.i.i.i.i = select i1 %i.wd, i1 true, i1 %i.wg
  br i1 %.not3.i26.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN4CGAL12Mesher_levelINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EENS_14Surface_mesher14Surface_mesherINSQ_28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3ISP_vEENS_18Implicit_surface_3IS4_St8functionIFdNS_7Point_3IS3_EEEEEENSQ_25Implicit_surface_oracle_3IS4_S11_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENSQ_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSY_EENSQ_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISP_EENSQ_33Surface_mesher_regular_edges_baseISU_S11_S1G_S1I_Lb0EEEEESt4pairINS_8internal11CC

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNSt3mapISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS5_IS8_NS9_IS8_NSA_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS8_NS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEENS1_7DefaultESU_SU_EELb0EEESW_ES0_IiSt3setIS0_INS3_INS4_INSF_IS8_NSG_IS8_NSH_IS8_NSI_IS8_NSJ_ISQ_EEEEEEEEEESU_SU_SU_EELb0EEEiESt4lessIS16_ESaIS16_EEES17_ISX_ESaIS0_IKSX_S1B_EEE4findERS1D_.exit.i.i.i.i.i.i.i.i.i
  %i.wh = sext i32 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i to i64
  %i.wi = getelementptr inbounds [8 x i8], ptr %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, i64 %i.wh
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i13.i.i = load ptr, ptr %i.wi, align 8, !tbaa !345 ; 4 uses
  %i.wj = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i13.i.i, align 8, !tbaa !298
  %i.wk = icmp eq ptr %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, %i.wj
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i13.i.i, i64 8
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i13.i.i, i64 16
  %i.wn = getelementptr inbounds nuw i8, ptr %..i.i.i.i.i.i.i.i.i.i, i64 16
  %i.wo = getelementptr inbounds nuw i8, ptr %..i.i.i.i.i.i.i.i.i.i, i64 24
  %i.wp = getelementptr inbounds nuw i8, ptr %..i.i.i.i.i.i.i.i.i.i, i64 32
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.wq = phi i32 [ %i.wf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.zk, %_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.wr = phi ptr [ %i.wc, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.zh, %_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i ] ; 7 uses
  %.sroa.622.029.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.622.2.i.i.i.i.i.i.i.i, %_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.021.028.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.021.2.i.i.i.i.i.i.i.i, %_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.513.127.i.i.i.i.i.i.i.i = phi ptr [ %spec.select37.i.i.i.i.i.i.i.i.a, %.lr.ph.i.i.i.i.i.i.i.i ], [ %spec.select38.i.i.i.i.i.i.i.i, %_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i ]
  br i1 %i.wk, label %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE16, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ws = load ptr, ptr %i.wl, align 8, !tbaa !298
  %i.wt = icmp eq ptr %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, %i.ws
  br i1 %i.wt, label %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE16, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.wu = load ptr, ptr %i.wm, align 8, !tbaa !298
  %i.wv = icmp eq ptr %.sroa.04.0.copyload.i.i.i.i.i.i.i.i, %i.wu
  %..i.i.i.i.i.i.i.i.i.i14.i.i = select i1 %i.wv, i32 2, i32 3
  br label %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE16

_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE16: ; preds = %bb.bk, %bb.bj, %bb.bi
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 1, %bb.bj ], [ 0, %bb.bi ], [ %..i.i.i.i.i.i.i.i.i.i14.i.i, %bb.bk ]
  %i.ww = icmp ne ptr %i.wr, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i13.i.i
  %i.wx = icmp ne i32 %i.wq, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  %.not3.i29.i.i.i.i.i.i.i.i = select i1 %i.ww, i1 true, i1 %i.wx
  br i1 %.not3.i29.i.i.i.i.i.i.i.i, label %bb.bl, label %_ZN4CGAL12Mesher_levelINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EENS_14Surface_mesher14Surface_mesherINSQ_28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3ISP_vEENS_18Implicit_surface_3IS4_St8functionIFdNS_7Point_3IS3_EEEEEENSQ_25Implicit_surface_oracle_3IS4_S11_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENSQ_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSY_EENSQ_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISP_EENSQ_33Surface_mesher_regular_edges_baseISU_S11_S1G_S1I_Lb0EEEEESt4pairINS_8internal11CC

bb.bl:                                            ; preds = %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE16
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wr, i64 80
  %i.wz = sext i32 %i.wq to i64                   ; 2 uses
  %i.xa = getelementptr inbounds [24 x i8], ptr %i.wy, i64 %i.wz ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 16
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !95, !noalias !1497
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.021.028.i.i.i.i.i.i.i.i, i64 80
  %i.xe = sext i32 %.sroa.622.029.i.i.i.i.i.i.i.i to i64
  %i.xf = getelementptr inbounds [24 x i8], ptr %i.xd, i64 %i.xe ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %i.xh = load double, ptr %i.xg, align 8, !tbaa !95, !noalias !1498
  %i.xi = load double, ptr %i.wn, align 8, !tbaa !95, !noalias !1497 ; 2 uses
  %i.xj = load double, ptr %i.wo, align 8, !tbaa !95, !noalias !1497 ; 2 uses
  %i.xk = load <2 x double>, ptr %i.xa, align 8, !tbaa !95, !noalias !1497 ; 2 uses
  %i.xl = load double, ptr %i.wp, align 8, !tbaa !95, !noalias !1497 ; 2 uses
  %i.xm = load <2 x double>, ptr %i.xf, align 8, !tbaa !95, !noalias !1498 ; 2 uses
  %i.xn = insertelement <2 x double> poison, double %i.xi, i64 0
  %i.xo = shufflevector <2 x double> %i.xn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xp = shufflevector <2 x double> %i.xk, <2 x double> %i.xm, <2 x i32> <i32 0, i32 2>
  %i.xq = fsub <2 x double> %i.xo, %i.xp          ; 2 uses
  %i.xr = insertelement <2 x double> poison, double %i.xj, i64 0
  %i.xs = shufflevector <2 x double> %i.xr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xt = shufflevector <2 x double> %i.xk, <2 x double> %i.xm, <2 x i32> <i32 1, i32 3>
  %i.xu = fsub <2 x double> %i.xs, %i.xt          ; 2 uses
  %i.xv = insertelement <2 x double> poison, double %i.xl, i64 0
  %i.xw = shufflevector <2 x double> %i.xv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xx = insertelement <2 x double> poison, double %i.xc, i64 0
  %i.xy = insertelement <2 x double> %i.xx, double %i.xh, i64 1
  %i.xz = fsub <2 x double> %i.xw, %i.xy          ; 2 uses
  %i.ya = fmul <2 x double> %i.xu, %i.xu
  %i.yb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xq, <2 x double> %i.xq, <2 x double> %i.ya)
  %i.yc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xz, <2 x double> %i.xz, <2 x double> %i.yb) ; 2 uses
  %i.yd = extractelement <2 x double> %i.yc, i64 0
  %i.ye = extractelement <2 x double> %i.yc, i64 1 ; 2 uses
  %i.yf = fcmp ogt double %i.yd, %i.ye
  br i1 %i.yf, label %_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.yg = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.wz
  %.sroa.0.0.copyload.i.i.i.i35.i.i.i.i.i.i.i.i = load ptr, ptr %i.yg, align 8, !tbaa !345 ; 5 uses
  %i.yh = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i35.i.i.i.i.i.i.i.i, align 8, !tbaa !298
  %i.yi = icmp eq ptr %i.wr, %i.yh
  br i1 %i.yi, label %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE41, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.yj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i35.i.i.i.i.i.i.i.i, i64 8
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !298
  %i.yl = icmp eq ptr %i.wr, %i.yk
  br i1 %i.yl, label %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE41, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ym = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i35.i.i.i.i.i.i.i.i, i64 16
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !298
  %i.yo = icmp eq ptr %i.wr, %i.yn
  %..i.i.i.i36.i.i.i.i.i.i.i.i = select i1 %i.yo, i32 2, i32 3
  br label %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE41

_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE41: ; preds = %bb.bo, %bb.bn, %bb.bm
  %.0.i.i.i.i37.i.i.i.i.i.i.i.i = phi i32 [ 1, %bb.bn ], [ 0, %bb.bm ], [ %..i.i.i.i36.i.i.i.i.i.i.i.i, %bb.bo ] ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i35.i.i.i.i.i.i.i.i, i64 80
  %i.yq = zext nneg i32 %.0.i.i.i.i37.i.i.i.i.i.i.i.i to i64
  %i.yr = getelementptr inbounds nuw [24 x i8], ptr %i.yp, i64 %i.yq ; 3 uses
  %i.ys = load double, ptr %i.yr, align 8, !tbaa !95, !noalias !1499
  %i.yt = fsub double %i.xi, %i.ys                ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !95, !noalias !1499
  %i.yw = fsub double %i.xj, %i.yv                ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  %i.yy = load double, ptr %i.yx, align 8, !tbaa !95, !noalias !1499
  %i.yz = fsub double %i.xl, %i.yy                ; 2 uses
  %i.za = fmul double %i.yw, %i.yw
  %i.zb = call double @llvm.fmuladd.f64(double %i.yt, double %i.yt, double %i.za)
  %i.zc = call noundef double @llvm.fmuladd.f64(double %i.yz, double %i.yz, double %i.zb)
  %i.zd = fcmp ogt double %i.zc, %i.ye            ; 2 uses
  %spec.select.i.i.i.i.i.i17.i.i = select i1 %i.zd, ptr %.sroa.0.0.copyload.i.i.i.i35.i.i.i.i.i.i.i.i, ptr %.sroa.021.028.i.i.i.i.i.i.i.i
  %spec.select25.i.i.i.i.i.i.i.i = select i1 %i.zd, i32 %.0.i.i.i.i37.i.i.i.i.i.i.i.i, i32 %.sroa.622.029.i.i.i.i.i.i.i.i
  br label %_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i

_ZN4CGAL31Const_circulator_from_containerISt3setISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS9_NS_34Delaunay_triangulation_cell_base_3IS9_NS_25Triangulation_cell_base_3IS9_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS9_NS_27Triangulation_vertex_base_3IS9_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESX_SX_EELb0EEEiESt4lessIS10_ESaIS10_EEEppEv.exit42.i.i.i.i.i.i.i.i: ; preds = %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE41, %bb.bl
  %.sroa.021.2.i.i.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i17.i.i, %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE41 ], [ %i.wr, %bb.bl ] ; 2 uses
  %.sroa.622.2.i.i.i.i.i.i.i.i = phi i32 [ %spec.select25.i.i.i.i.i.i.i.i, %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EE41 ], [ %i.wq, %bb.bl ] ; 2 uses
  %i.ze = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.513.127.i.i.i.i.i.i.i.i) #49 ; 2 uses
  %i.zf = icmp eq ptr %i.ze, %i.vz
  %spec.select38.i.i.i.i.i.i.i.i = select i1 %i.zf, ptr %i.vw, ptr %i.ze ; 3 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %spec.select38.i.i.i.i.i.i.i.i, i64 32
  %i.zh = load ptr, ptr %i.zg, align 8            ; 2 uses
  %i.zi = icmp ne ptr %i.zh, %.sroa.04.0.copyload.i.i.i.i.i.i.i.i
  %i.zj = getelementptr inbounds nuw i8, ptr %spec.select38.i.i.i.i.i.i.i.i, i64 40
  %i.zk = load i32, ptr %i.zj, align 8            ; 2 uses
  %i.zl = icmp ne i32 %i.zk, %.sroa.6.0.copyload.i.i.i.i.i.i.i.i
  %.not3.i.i.i.i.i.i.i.i.i = select i1 %i.zi, i1 true, i1 %i.zl
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %bb.bi, label %_ZN4CGAL12Mesher_levelINS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EENS_14Surface_mesher14Surface_mesherINSQ_28Surface_mesher_manifold_baseINS_28Complex_2_in_triangulation_3ISP_vEENS_18Implicit_surface_3IS4_St8functionIFdNS_7Point_3IS3_EEEEEENSQ_25Implicit_surface_oracle_3IS4_S11_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENSQ_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSY_EENSQ_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISP_EENSQ_33Surface_mesher_regular_edges_baseISU_S11_S1G_S1I_Lb0EEEEESt4pairINS_8internal11CC, !llvm.loop !1435

bb.bp:                                            ; preds = %.noexc22
  %i.zm = load ptr, ptr %i.io, align 8, !tbaa !178
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 32
  %.sroa.02.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.zn, align 8, !tbaa !171 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #38
  store ptr %35, ptr %i.sj, align 8, !tbaa !132
  store ptr %35, ptr %35, align 8, !tbaa !133
  store i64 0, ptr %i.sk, align 8, !tbaa !1500
  %i.zo = load ptr, ptr %i.ho, align 8, !tbaa !505, !nonnull !83, !align !332 ; 3 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 48
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !430, !nonnull !83, !align !332
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 8 ; 3 uses
  %i.zs = load i32, ptr %i.zr, align 8, !tbaa !166
  %i.zt = icmp eq i32 %i.zs, 3
  br i1 %i.zt, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.zu = invoke { ptr, ptr } @_ZNK4CGAL30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEE20visit_incident_cellsINSL_15Facet_extractorINS_22Filter_output_iteratorISt20back_insert_iteratorINSt7__cxx114listISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSA_IS4_NSB_IS4_NSC_IS4_NSD_IS4_NSE_ISL_EEEEEEEEEENS_7DefaultES11_S11_EELb0EEEiESaIS14_EEEENS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3IS4_SL_S11_S11_EEvE20Facet_not_in_complexEEENSL_12False_filterEEES1D_S1E_EET0_NSU_INSV_INS1_IS4_NS5_IS4_NS6_ISL_EEEEEES11_S11_S11_EELb0EEES1G_T1_(ptr noundef nonnull align 8 dereferenceable(184) %i.zr, ptr %.sroa.02.0.copyload.i.i.i.i.i.i, ptr nonnull %35, ptr nonnull align 8 dereferenceable(112) %i.zo)
          to label %_ZN4CGAL28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEvE15incident_facetsISt20back_insert_iteratorINSt7__cxx114listISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSC_IS4_NSD_IS4_NSE_IS4_NSF_IS4_NSG_ISN_EEEEEEEEEESO_SO_SO_EELb0EEEiESaIS16_EEEEEET_NSX_INSY_INS6_IS4_NS7_IS4_NS8_ISN_EEEEEESO_SO_SO_EELb0EEES1A_.exit.i.i.i.i.i.i.i unwind label %bb.bt ; 0 uses

bb.br:                                            ; preds = %bb.bp
  %i.zv = invoke { ptr, ptr } @_ZNK4CGAL30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEE20visit_incident_cellsINSL_26DegCell_as_Facet_extractorINS_22Filter_output_iteratorISt20back_insert_iteratorINSt7__cxx114listISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSA_IS4_NSB_IS4_NSC_IS4_NSD_IS4_NSE_ISL_EEEEEEEEEENS_7DefaultES11_S11_EELb0EEEiESaIS14_EEEENS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3IS4_SL_S11_S11_EEvE20Facet_not_in_complexEEENSL_12False_filterEEES1D_S1E_EET0_NSU_INSV_INS1_IS4_NS5_IS4_NS6_ISL_EEEEEES11_S11_S11_EELb0EEES1G_T1_(ptr noundef nonnull align 8 dereferenceable(184) %i.zr, ptr %.sroa.02.0.copyload.i.i.i.i.i.i, ptr nonnull %35, ptr nonnull align 8 dereferenceable(112) %i.zo)
          to label %_ZN4CGAL28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEvE15incident_facetsISt20back_insert_iteratorINSt7__cxx114listISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSC_IS4_NSD_IS4_NSE_IS4_NSF_IS4_NSG_ISN_EEEEEEEEEESO_SO_SO_EELb0EEEiESaIS16_EEEEEET_NSX_INSY_INS6_IS4_NS7_IS4_NS8_ISN_EEEEEESO_SO_SO_EELb0EEES1A_.exit.i.i.i.i.i.i.i unwind label %bb.bt ; 0 uses

_ZN4CGAL28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEvE15incident_facetsISt20back_insert_iteratorINSt7__cxx114listISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSC_IS4_NSD_IS4_NSE_IS4_NSF_IS4_NSG_ISN_EEEEEEEEEESO_SO_SO_EELb0EEEiESaIS16_EEEEEET_NSX_INSY_INS6_IS4_NS7_IS4_NS8_ISN_EEEEEESO_SO_SO_EELb0EEES1A_.exit.i.i.i.i.i.i.i: ; preds = %bb.br, %bb.bq
  %i.zw = load ptr, ptr %35, align 8, !tbaa !133  ; 5 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 16
  %.sroa.026.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.zx, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.zw, i64 24
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8 ; 3 uses
  %.sroa.021.028.i.i.i.i.i.i.i = load ptr, ptr %i.zw, align 8, !tbaa !133 ; 2 uses
  %.not29.i.i.i.i.i.i.i = icmp eq ptr %.sroa.021.028.i.i.i.i.i.i.i, %35
  br i1 %.not29.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN4CGAL28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_34Delaunay_triangulation_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESO_EEvE15incident_facetsISt20back_insert_iteratorINSt7__cxx114listISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSC_IS4_NSD_IS4_NSE_IS4_NSF_IS4_NSG_ISN_EEEEEEEEEESO_SO_SO_EELb0EEEiESaIS16_EEEEEET_NSX_INSY_INS6_IS4_NS7_IS4_NS8_ISN_EEEEEESO_SO_SO_EELb0EEES1A_.exit.i.i.i.i.i.i.i
  %i.zy = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i, i64 16
  %i.zz = load <3 x double>, ptr %i.zy, align 8, !tbaa !95, !noalias !1501 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i18.i.i = getelementptr inbounds nuw i8, ptr %.sroa.026.0.copyload.i.i.i.i.i.i.i, i64 80
  %.phi.trans.insert34.i.i.i.i.i.i.i = sext i32 %.sroa.4.0.copyload.i.i.i.i.i.i.i to i64
  %.phi.trans.insert35.i.i.i.i.i.i.i = getelementptr inbounds [24 x i8], ptr %.phi.trans.insert.i.i.i.i.i18.i.i, i64 %.phi.trans.insert34.i.i.i.i.i.i.i ; 3 uses
  %.pre.i.i.i.i.i19.i.i = load double, ptr %.phi.trans.insert35.i.i.i.i.i.i.i, align 8, !tbaa !95, !noalias !1502
  %.phi.trans.insert36.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert35.i.i.i.i.i.i.i, i64 8
  %.pre37.i.i.i.i.i.i.i = load double, ptr %.phi.trans.insert36.i.i.i.i.i.i.i, align 8, !tbaa !95, !noalias !1502
  %.phi.trans.insert38.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert35.i.i.i.i.i.i.i, i64 16
  %.pre39.i.i.i.i.i.i.i = load double, ptr %.phi.trans.insert38.i.i.i.i.i.i.i, align 8, !tbaa !95, !noalias !1502
  %i.aaa = shufflevector <3 x double> %i.zz, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.aab = shufflevector <3 x double> %i.zz, <3 x double> poison, <2 x i32> zeroinitializer
  %i.aac = shufflevector <3 x double> %i.zz, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.bs
end_hunk_0
