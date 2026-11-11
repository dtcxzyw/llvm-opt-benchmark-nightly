Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/signed_distance_isosurface?download=true
inline.NumInlined: 15413
inline.NumDeleted: 5213
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE19is_facet_on_surfaceERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EELb0EEEiERSW_:bb.a
bb.ab:                                            ; preds = %bb.m, %bb.t, %bb.s, %bb.e
  %.pn38 = phi { ptr, i32 } [ %i.am, %bb.e ], [ %i.fa, %bb.s ], [ %i.ec, %bb.m ], [ %i.fb, %bb.t ]
  call void @_ZN4CGAL6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  call void @_ZN4CGAL6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  resume { ptr, i32 } %.pn38

bb.ac:                                            ; preds = %_ZNK5boost3any4typeEv.exit.i.i99, %_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKT0_RKNS0_17type_index_facadeIT_S4_EE.exit.i.i101
  %i.gl = load ptr, ptr %i.fx, align 8, !tbaa !435
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.gm, i64 24, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.ac, %_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKT0_RKNS0_17type_index_facadeIT_S4_EE.exit.i.i101, %.critedge41
  %.4 = phi i1 [ false, %_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKT0_RKNS0_17type_index_facadeIT_S4_EE.exit.i.i101 ], [ false, %.critedge41 ], [ true, %bb.ac ] ; 4 uses
  %.not.i.i.i104 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i104, label %_ZN4CGAL6ObjectD2Ev.exit108, label %bb.ad

bb.ad:                                            ; preds = %.critedge
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 4 uses
  %i.go = load atomic i64, ptr %i.gn acquire, align 8 ; 2 uses
  %i.gp = icmp eq i64 %i.go, 4294967297
  %i.gq = trunc i64 %i.go to i32                  ; 2 uses
  br i1 %i.gp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.gn, align 8, !tbaa !312
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 0, ptr %i.gr, align 4, !tbaa !313
  %i.gs = load ptr, ptr %i.fw, align 8, !tbaa !134
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #38, !inline_history !2355
  %i.gv = load ptr, ptr %i.fw, align 8, !tbaa !134
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #38, !inline_history !2355
  br label %_ZN4CGAL6ObjectD2Ev.exit108

bb.af:                                            ; preds = %bb.ad
  %i.gy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i.i.i105 = icmp eq i8 %i.gy, 0
  br i1 %.not.i.i.i.i105, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gz = add nsw i32 %i.gq, -1
  store i32 %i.gz, ptr %i.gn, align 8, !tbaa !215
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i106

bb.ah:                                            ; preds = %bb.af
  %i.ha = atomicrmw volatile add ptr %i.gn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i106

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i106: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i107 = phi i32 [ %i.gq, %bb.ag ], [ %i.ha, %bb.ah ]
  %i.hb = icmp eq i32 %.0.i.i.i.i.i107, 1
  br i1 %i.hb, label %bb.ai, label %_ZN4CGAL6ObjectD2Ev.exit108, !prof !259

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i106
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #38
  br label %_ZN4CGAL6ObjectD2Ev.exit108

_ZN4CGAL6ObjectD2Ev.exit108:                      ; preds = %_ZNK4CGAL8internal25Static_filters_predicates15Is_degenerate_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEENS0_14Static_filtersIS9_EEEclERKNS_5Ray_3IS6_EE.exit, %_ZNK4CGAL8internal25Static_filters_predicates15Is_degenerate_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEENS0_14Static_filtersIS9_EEEclERKNS_9Segment_3IS6_EE.exit, %.critedge, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i106, %bb.ai
  %.440 = phi i1 [ %.4, %bb.ai ], [ %.4, %.critedge ], [ %.4, %bb.ae ], [ %.4, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i106 ], [ false, %_ZNK4CGAL8internal25Static_filters_predicates15Is_degenerate_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEENS0_14Static_filtersIS9_EEEclERKNS_9Segment_3IS6_EE.exit ], [ false, %_ZNK4CGAL8internal25Static_filters_predicates15Is_degenerate_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEENS0_14Static_filtersIS9_EEEclERKNS_5Ray_3IS6_EE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  %i.hc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !310 ; 8 uses
  %.not.i.i.i109 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i109, label %_ZN4CGAL6ObjectD2Ev.exit113, label %bb.aj

bb.aj:                                            ; preds = %_ZN4CGAL6ObjectD2Ev.exit108
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 4 uses
  %i.hf = load atomic i64, ptr %i.he acquire, align 8 ; 2 uses
  %i.hg = icmp eq i64 %i.hf, 4294967297
  %i.hh = trunc i64 %i.hf to i32                  ; 2 uses
  br i1 %i.hg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.he, align 8, !tbaa !312
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 12
  store i32 0, ptr %i.hi, align 4, !tbaa !313
  %i.hj = load ptr, ptr %i.hd, align 8, !tbaa !134
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #38, !inline_history !2355
  %i.hm = load ptr, ptr %i.hd, align 8, !tbaa !134
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #38, !inline_history !2355
  br label %_ZN4CGAL6ObjectD2Ev.exit113

bb.al:                                            ; preds = %bb.aj
  %i.hp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i.i.i110 = icmp eq i8 %i.hp, 0
  br i1 %.not.i.i.i.i110, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hq = add nsw i32 %i.hh, -1
  store i32 %i.hq, ptr %i.he, align 8, !tbaa !215
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i111

bb.an:                                            ; preds = %bb.al
  %i.hr = atomicrmw volatile add ptr %i.he, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i111

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i111: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i112 = phi i32 [ %i.hh, %bb.am ], [ %i.hr, %bb.an ]
  %i.hs = icmp eq i32 %.0.i.i.i.i.i112, 1
  br i1 %i.hs, label %bb.ao, label %_ZN4CGAL6ObjectD2Ev.exit113, !prof !259

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i111
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #38
  br label %_ZN4CGAL6ObjectD2Ev.exit113

_ZN4CGAL6ObjectD2Ev.exit113:                      ; preds = %_ZN4CGAL6ObjectD2Ev.exit108, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i111, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  ret i1 %.440
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4CGAL10Double_mapISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS8_NS_34Delaunay_triangulation_cell_base_3IS8_NS_25Triangulation_cell_base_3IS8_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS8_NS_27Triangulation_vertex_base_3IS8_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESW_SW_EELb0EEEiESt6vectorIdSaIdEESt4lessISZ_ES13_IS12_EE6insertERKSZ_RKS12_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.boost::bimaps::relation::structured_pair", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !510, !nonnull !81
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.2.0..0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..0..sroa_idx.i.i, align 8 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !445  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !90
  %i.h = and i64 %i.g, -2                         ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.critedge, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.j = inttoptr i64 %i.h to ptr
  br label %.outer

.outer:                                           ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread11.i.i.i.i, %.lr.ph.i.i.i.i
  %.pn.i.i.ph = phi ptr [ %i.r, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread11.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i ]
  %.0913.i.i.i.i.ph = phi ptr [ %.014.i.i.i.i.le, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread11.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i.i ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread.i.i.i.i
  %.pn.i.i = phi ptr [ %i.u, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread.i.i.i.i ], [ %.pn.i.i.ph, %.outer ] ; 5 uses
  %.014.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -40
  %i.k = load ptr, ptr %.014.i.i.i.i, align 8, !tbaa !296 ; 2 uses
  %i.l = icmp ult ptr %i.k, %.sroa.0.0.copyload.i.i
  br i1 %i.l, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.k
  br i1 %i.m, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread11.i.i.i.i, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.i.i.i.i

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.i.i.i.i: ; preds = %bb.c
  %i.n = getelementptr inbounds i8, ptr %.pn.i.i, i64 -32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !406
  %i.p = icmp slt i32 %i.o, %.sroa.2.0.copyload.i.i
  br i1 %i.p, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread.i.i.i.i, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread11.i.i.i.i

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.i.i.i.i, %bb.c
  %.014.i.i.i.i.le = getelementptr inbounds i8, ptr %.pn.i.i, i64 -40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !447  ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN5boost6bimaps17container_adaptor37ordered_associative_container_adaptorINS_11multi_index6detail13ordered_indexINS3_6memberINS0_8relation6detail16relation_storageINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINSD_17Compact_containerINSD_52Delaunay_triangulation_cell_base_with_circumcenter_3INSD_28Robust_circumcenter_traits_3INSD_5EpickEEENSD_24Surface_mesh_cell_base_3ISK_NSD_34Delaunay_triangulation_cell_base_3ISK_NSD_25Triangulation_cell_base_3ISK_NSD_28Triangulation_ds_cell_base_3INSD_30Triangulation_data_structure_3INSD_26Surface_mesh_vertex_base_3ISK_NSD_27Triangulation_vertex_base_3ISK_NSD_30Triangulation_ds_vertex_base_3IvEEEEEENSH_ISK_NSL_ISK_NSM_ISK_NSN_ISK_NSO_IvEEEEEEEEEENSD_14Sequential_tagEEEEEEEEEEEEENSD_7DefaultES18_S18_EELb0EEEiENS7_9member_at4leftEEENSB_IKSt6vectorIdSaIdEENS1D_5rightEEELb1EEES1B_XadL_ZNS1M_4leftEEEEESt4lessIS1B_ENS4_9nth_layerILi2ENS7_15mutant_relationIS1F_S1L_N4mpl_2naELb1EEENS0_6detail10bimap_coreINS0_6set_ofIS1B_S1P_EENS0_11multiset_ofIS1I_S1O_IS1I_EEES1T_S1T_S1T, label %.outer, !llvm.loop !2361

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.i.i.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !447  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN5boost6bimaps17container_adaptor37ordered_associative_container_adaptorINS_11multi_index6detail13ordered_indexINS3_6memberINS0_8relation6detail16relation_storageINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINSD_17Compact_containerINSD_52Delaunay_triangulation_cell_base_with_circumcenter_3INSD_28Robust_circumcenter_traits_3INSD_5EpickEEENSD_24Surface_mesh_cell_base_3ISK_NSD_34Delaunay_triangulation_cell_base_3ISK_NSD_25Triangulation_cell_base_3ISK_NSD_28Triangulation_ds_cell_base_3INSD_30Triangulation_data_structure_3INSD_26Surface_mesh_vertex_base_3ISK_NSD_27Triangulation_vertex_base_3ISK_NSD_30Triangulation_ds_vertex_base_3IvEEEEEENSH_ISK_NSL_ISK_NSM_ISK_NSN_ISK_NSO_IvEEEEEEEEEENSD_14Sequential_tagEEEEEEEEEEEEENSD_7DefaultES18_S18_EELb0EEEiENS7_9member_at4leftEEENSB_IKSt6vectorIdSaIdEENS1D_5rightEEELb1EEES1B_XadL_ZNS1M_4leftEEEEESt4lessIS1B_ENS4_9nth_layerILi2ENS7_15mutant_relationIS1F_S1L_N4mpl_2naELb1EEENS0_6detail10bimap_coreINS0_6set_ofIS1B_S1P_EENS0_11multiset_ofIS1I_S1O_IS1I_EEES1T_S1T_S1T, label %bb.b, !llvm.loop !2361

_ZN5boost6bimaps17container_adaptor37ordered_associative_container_adaptorINS_11multi_index6detail13ordered_indexINS3_6memberINS0_8relation6detail16relation_storageINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINSD_17Compact_containerINSD_52Delaunay_triangulation_cell_base_with_circumcenter_3INSD_28Robust_circumcenter_traits_3INSD_5EpickEEENSD_24Surface_mesh_cell_base_3ISK_NSD_34Delaunay_triangulation_cell_base_3ISK_NSD_25Triangulation_cell_base_3ISK_NSD_28Triangulation_ds_cell_base_3INSD_30Triangulation_data_structure_3INSD_26Surface_mesh_vertex_base_3ISK_NSD_27Triangulation_vertex_base_3ISK_NSD_30Triangulation_ds_vertex_base_3IvEEEEEENSH_ISK_NSL_ISK_NSM_ISK_NSN_ISK_NSO_IvEEEEEEEEEENSD_14Sequential_tagEEEEEEEEEEEEENSD_7DefaultES18_S18_EELb0EEEiENS7_9member_at4leftEEENSB_IKSt6vectorIdSaIdEENS1D_5rightEEELb1EEES1B_XadL_ZNS1M_4leftEEEEESt4lessIS1B_ENS4_9nth_layerILi2ENS7_15mutant_relationIS1F_S1L_N4mpl_2naELb1EEENS0_6detail10bimap_coreINS0_6set_ofIS1B_S1P_EENS0_11multiset_ofIS1I_S1O_IS1I_EEES1T_S1T_S1T: ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread11.i.i.i.i, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread.i.i.i.i
  %.09.lcssa.i.i.i.i = phi ptr [ %.0913.i.i.i.i.ph, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i.le, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread11.i.i.i.i ] ; 5 uses
  %.not = icmp eq ptr %.09.lcssa.i.i.i.i, %i.e
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZN5boost6bimaps17container_adaptor37ordered_associative_container_adaptorINS_11multi_index6detail13ordered_indexINS3_6memberINS0_8relation6detail16relation_storageINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINSD_17Compact_containerINSD_52Delaunay_triangulation_cell_base_with_circumcenter_3INSD_28Robust_circumcenter_traits_3INSD_5EpickEEENSD_24Surface_mesh_cell_base_3ISK_NSD_34Delaunay_triangulation_cell_base_3ISK_NSD_25Triangulation_cell_base_3ISK_NSD_28Triangulation_ds_cell_base_3INSD_30Triangulation_data_structure_3INSD_26Surface_mesh_vertex_base_3ISK_NSD_27Triangulation_vertex_base_3ISK_NSD_30Triangulation_ds_vertex_base_3IvEEEEEENSH_ISK_NSL_ISK_NSM_ISK_NSN_ISK_NSO_IvEEEEEEEEEENSD_14Sequential_tagEEEEEEEEEEEEENSD_7DefaultES18_S18_EELb0EEEiENS7_9member_at4leftEEENSB_IKSt6vectorIdSaIdEENS1D_5rightEEELb1EEES1B_XadL_ZNS1M_4leftEEEEESt4lessIS1B_ENS4_9nth_layerILi2ENS7_15mutant_relationIS1F_S1L_N4mpl_2naELb1EEENS0_6detail10bimap_coreINS0_6set_ofIS1B_S1P_EENS0_11multiset_ofIS1I_S1O_IS1I_EEES1T_S1T_S1T
  %i.w = load ptr, ptr %.09.lcssa.i.i.i.i, align 8, !tbaa !296
  %i.x = icmp eq ptr %i.w, %.sroa.0.0.copyload.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i.i, i64 8
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = icmp eq i32 %i.z, %.sroa.2.0.copyload.i.i
  %i.ab = select i1 %i.x, i1 %i.aa, i1 false
  br i1 %i.ab, label %bb.o, label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZN5boost6bimaps17container_adaptor37ordered_associative_container_adaptorINS_11multi_index6detail13ordered_indexINS3_6memberINS0_8relation6detail16relation_storageINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINSD_17Compact_containerINSD_52Delaunay_triangulation_cell_base_with_circumcenter_3INSD_28Robust_circumcenter_traits_3INSD_5EpickEEENSD_24Surface_mesh_cell_base_3ISK_NSD_34Delaunay_triangulation_cell_base_3ISK_NSD_25Triangulation_cell_base_3ISK_NSD_28Triangulation_ds_cell_base_3INSD_30Triangulation_data_structure_3INSD_26Surface_mesh_vertex_base_3ISK_NSD_27Triangulation_vertex_base_3ISK_NSD_30Triangulation_ds_vertex_base_3IvEEEEEENSH_ISK_NSL_ISK_NSM_ISK_NSN_ISK_NSO_IvEEEEEEEEEENSD_14Sequential_tagEEEEEEEEEEEEENSD_7DefaultES18_S18_EELb0EEEiENS7_9member_at4leftEEENSB_IKSt6vectorIdSaIdEENS1D_5rightEEELb1EEES1B_XadL_ZNS1M_4leftEEEEESt4lessIS1B_ENS4_9nth_layerILi2ENS7_15mutant_relationIS1F_S1L_N4mpl_2naELb1EEENS0_6detail10bimap_coreINS0_6set_ofIS1B_S1P_EENS0_11multiset_ofIS1I_S1O_IS1I_EEES1T_S1T_S1T, %bb.d
  %.09.lcssa.i.i.i.i15 = phi ptr [ %.09.lcssa.i.i.i.i, %bb.d ], [ %.09.lcssa.i.i.i.i, %_ZN5boost6bimaps17container_adaptor37ordered_associative_container_adaptorINS_11multi_index6detail13ordered_indexINS3_6memberINS0_8relation6detail16relation_storageINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINSD_17Compact_containerINSD_52Delaunay_triangulation_cell_base_with_circumcenter_3INSD_28Robust_circumcenter_traits_3INSD_5EpickEEENSD_24Surface_mesh_cell_base_3ISK_NSD_34Delaunay_triangulation_cell_base_3ISK_NSD_25Triangulation_cell_base_3ISK_NSD_28Triangulation_ds_cell_base_3INSD_30Triangulation_data_structure_3INSD_26Surface_mesh_vertex_base_3ISK_NSD_27Triangulation_vertex_base_3ISK_NSD_30Triangulation_ds_vertex_base_3IvEEEEEENSH_ISK_NSL_ISK_NSM_ISK_NSN_ISK_NSO_IvEEEEEEEEEENSD_14Sequential_tagEEEEEEEEEEEEENSD_7DefaultES18_S18_EELb0EEEiENS7_9member_at4leftEEENSB_IKSt6vectorIdSaIdEENS1D_5rightEEELb1EEES1B_XadL_ZNS1M_4leftEEEEESt4lessIS1B_ENS4_9nth_layerILi2ENS7_15mutant_relationIS1F_S1L_N4mpl_2naELb1EEENS0_6detail10bimap_coreINS0_6set_ofIS1B_S1P_EENS0_11multiset_ofIS1I_S1O_IS1I_EEES1T_S1T_S1T ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !507 ; 2 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !506   ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.aj = icmp ugt i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !259

.noexc.i.i.i.i.i:                                 ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #47
  %.pre = load ptr, ptr %2, align 8, !tbaa !186   ; 2 uses
  %.pre17 = load ptr, ptr %i.ad, align 8, !tbaa !186
  %.pre18 = ptrtoint ptr %.pre17 to i64
  %.pre19 = ptrtoint ptr %.pre to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.critedge
  %.pre-phi20 = phi i64 [ %.pre19, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i ], [ %i.ah, %.critedge ]
  %.pre-phi = phi i64 [ %.pre18, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i ], [ %i.ag, %.critedge ]
  %i.al = phi ptr [ %.pre, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i ], [ %i.af, %.critedge ] ; 2 uses
  %i.am = phi ptr [ %i.ak, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i ], [ null, %.critedge ] ; 5 uses
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !506
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ai
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !508
  %i.aq = sub i64 %.pre-phi, %.pre-phi20          ; 4 uses
  %i.ar = icmp sgt i64 %i.aq, 8
  br i1 %i.ar, label %bb.g, label %bb.h, !prof !417

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.am, ptr align 8 %i.al, i64 %i.aq, i1 false)
  br label %_ZN5boost6bimaps8relation15structured_pairINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_52Delaunay_triangulation_cell_base_with_circumcenter_3INS6_28Robust_circumcenter_traits_3INS6_5EpickEEENS6_24Surface_mesh_cell_base_3ISD_NS6_34Delaunay_triangulation_cell_base_3ISD_NS6_25Triangulation_cell_base_3ISD_NS6_28Triangulation_ds_cell_base_3INS6_30Triangulation_data_structure_3INS6_26Surface_mesh_vertex_base_3ISD_NS6_27Triangulation_vertex_base_3ISD_NS6_30Triangulation_ds_vertex_base_3IvEEEEEENSA_ISD_NSE_ISD_NSF_ISD_NSG_ISD_NSH_IvEEEEEEEEEENS6_14Sequential_tagEEEEEEEEEEEEENS6_7DefaultES11_S11_EELb0EEEiENS1_9member_at4leftEEENS4_IKSt6vectorIdSaIdEENS16_5rightEEEN4mpl_2naENS1_13normal_layoutEEC2ERS15_RS1C_.exit

bb.h:                                             ; preds = %bb.f
  %i.as = icmp eq i64 %i.aq, 8
  br i1 %i.as, label %bb.i, label %_ZN5boost6bimaps8relation15structured_pairINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_52Delaunay_triangulation_cell_base_with_circumcenter_3INS6_28Robust_circumcenter_traits_3INS6_5EpickEEENS6_24Surface_mesh_cell_base_3ISD_NS6_34Delaunay_triangulation_cell_base_3ISD_NS6_25Triangulation_cell_base_3ISD_NS6_28Triangulation_ds_cell_base_3INS6_30Triangulation_data_structure_3INS6_26Surface_mesh_vertex_base_3ISD_NS6_27Triangulation_vertex_base_3ISD_NS6_30Triangulation_ds_vertex_base_3IvEEEEEENSA_ISD_NSE_ISD_NSF_ISD_NSG_ISD_NSH_IvEEEEEEEEEENS6_14Sequential_tagEEEEEEEEEEEEENS6_7DefaultES11_S11_EELb0EEEiENS1_9member_at4leftEEENS4_IKSt6vectorIdSaIdEENS16_5rightEEEN4mpl_2naENS1_13normal_layoutEEC2ERS15_RS1C_.exit

bb.i:                                             ; preds = %bb.h
  %i.at = load double, ptr %i.al, align 8, !tbaa !93
  store double %i.at, ptr %i.am, align 8, !tbaa !93
  br label %_ZN5boost6bimaps8relation15structured_pairINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_52Delaunay_triangulation_cell_base_with_circumcenter_3INS6_28Robust_circumcenter_traits_3INS6_5EpickEEENS6_24Surface_mesh_cell_base_3ISD_NS6_34Delaunay_triangulation_cell_base_3ISD_NS6_25Triangulation_cell_base_3ISD_NS6_28Triangulation_ds_cell_base_3INS6_30Triangulation_data_structure_3INS6_26Surface_mesh_vertex_base_3ISD_NS6_27Triangulation_vertex_base_3ISD_NS6_30Triangulation_ds_vertex_base_3IvEEEEEENSA_ISD_NSE_ISD_NSF_ISD_NSG_ISD_NSH_IvEEEEEEEEEENS6_14Sequential_tagEEEEEEEEEEEEENS6_7DefaultES11_S11_EELb0EEEiENS1_9member_at4leftEEENS4_IKSt6vectorIdSaIdEENS16_5rightEEEN4mpl_2naENS1_13normal_layoutEEC2ERS15_RS1C_.exit

_ZN5boost6bimaps8relation15structured_pairINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_52Delaunay_triangulation_cell_base_with_circumcenter_3INS6_28Robust_circumcenter_traits_3INS6_5EpickEEENS6_24Surface_mesh_cell_base_3ISD_NS6_34Delaunay_triangulation_cell_base_3ISD_NS6_25Triangulation_cell_base_3ISD_NS6_28Triangulation_ds_cell_base_3INS6_30Triangulation_data_structure_3INS6_26Surface_mesh_vertex_base_3ISD_NS6_27Triangulation_vertex_base_3ISD_NS6_30Triangulation_ds_vertex_base_3IvEEEEEENSA_ISD_NSE_ISD_NSF_ISD_NSG_ISD_NSH_IvEEEEEEEEEENS6_14Sequential_tagEEEEEEEEEEEEENS6_7DefaultES11_S11_EELb0EEEiENS1_9member_at4leftEEENS4_IKSt6vectorIdSaIdEENS16_5rightEEEN4mpl_2naENS1_13normal_layoutEEC2ERS15_RS1C_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.au = getelementptr inbounds i8, ptr %i.am, i64 %i.aq
  store ptr %i.au, ptr %i.an, align 8, !tbaa !507
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !510, !nonnull !81 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store ptr null, ptr %i.a, align 8, !tbaa !606
  %i.aw = invoke noundef ptr @_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberINS_6bimaps8relation6detail16relation_storageINS4_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINSB_17Compact_containerINSB_52Delaunay_triangulation_cell_base_with_circumcenter_3INSB_28Robust_circumcenter_traits_3INSB_5EpickEEENSB_24Surface_mesh_cell_base_3ISI_NSB_34Delaunay_triangulation_cell_base_3ISI_NSB_25Triangulation_cell_base_3ISI_NSB_28Triangulation_ds_cell_base_3INSB_30Triangulation_data_structure_3INSB_26Surface_mesh_vertex_base_3ISI_NSB_27Triangulation_vertex_base_3ISI_NSB_30Triangulation_ds_vertex_base_3IvEEEEEENSF_ISI_NSJ_ISI_NSK_ISI_NSL_ISI_NSM_IvEEEEEEEEEENSB_14Sequential_tagEEEEEEEEEEEEENSB_7DefaultES16_S16_EELb0EEEiENS5_9member_at4leftEEENS9_IKSt6vectorIdSaIdEENS1B_5rightEEELb1EEES1G_XadL_ZNS1K_5rightEEEEESt4lessIS1G_ENS1_9nth_layerILi1ENS5_15mutant_relationIS1D_S1J_N4mpl_2naELb1EEENS4_6detail10bimap_coreINS4_6set_ofIS19_S1M_IS19_EEENS4_11multiset_ofIS1G_S1N_EES1R_S1R_S1R_E12core_indicesESaIS1S_EEENS_3mpl6v_itemIS1I_NS24_7vector0IS1R_EELi0EEENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE7insert_INS1_10lvalue_tagEEEPNS1_18ordered_index_nodeIS2A_NS2E_IS2A_NS1_15index_node_baseIS1S_S22_EEEEEERKS1S_S2J_RS2J_T_(ptr noundef nonnull align 1 dereferenceable(4) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %.09.lcssa.i.i.i.i15, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %_ZN5boost6bimaps8relation15structured_pairINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_52Delaunay_triangulation_cell_base_with_circumcenter_3INS6_28Robust_circumcenter_traits_3INS6_5EpickEEENS6_24Surface_mesh_cell_base_3ISD_NS6_34Delaunay_triangulation_cell_base_3ISD_NS6_25Triangulation_cell_base_3ISD_NS6_28Triangulation_ds_cell_base_3INS6_30Triangulation_data_structure_3INS6_26Surface_mesh_vertex_base_3ISD_NS6_27Triangulation_vertex_base_3ISD_NS6_30Triangulation_ds_vertex_base_3IvEEEEEENSA_ISD_NSE_ISD_NSF_ISD_NSG_ISD_NSH_IvEEEEEEEEEENS6_14Sequential_tagEEEEEEEEEEEEENS6_7DefaultES11_S11_EELb0EEEiENS1_9member_at4leftEEENS4_IKSt6vectorIdSaIdEENS16_5rightEEEN4mpl_2naENS1_13normal_layoutEEC2ERS15_RS1C_.exit
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !606
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !459
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !459
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.bc = load ptr, ptr %i.ac, align 8, !tbaa !506 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %_ZN5boost6bimaps8relation6detail14normal_storageINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINS7_17Compact_containerINS7_52Delaunay_triangulation_cell_base_with_circumcenter_3INS7_28Robust_circumcenter_traits_3INS7_5EpickEEENS7_24Surface_mesh_cell_base_3ISE_NS7_34Delaunay_triangulation_cell_base_3ISE_NS7_25Triangulation_cell_base_3ISE_NS7_28Triangulation_ds_cell_base_3INS7_30Triangulation_data_structure_3INS7_26Surface_mesh_vertex_base_3ISE_NS7_27Triangulation_vertex_base_3ISE_NS7_30Triangulation_ds_vertex_base_3IvEEEEEENSB_ISE_NSF_ISE_NSG_ISE_NSH_ISE_NSI_IvEEEEEEEEEENS7_14Sequential_tagEEEEEEEEEEEEENS7_7DefaultES12_S12_EELb0EEEiENS1_9member_at4leftEEENS5_IKSt6vectorIdSaIdEENS17_5rightEEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr %i.ap, align 8, !tbaa !508
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #43
  br label %_ZN5boost6bimaps8relation6detail14normal_storageINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINS7_17Compact_containerINS7_52Delaunay_triangulation_cell_base_with_circumcenter_3INS7_28Robust_circumcenter_traits_3INS7_5EpickEEENS7_24Surface_mesh_cell_base_3ISE_NS7_34Delaunay_triangulation_cell_base_3ISE_NS7_25Triangulation_cell_base_3ISE_NS7_28Triangulation_ds_cell_base_3INS7_30Triangulation_data_structure_3INS7_26Surface_mesh_vertex_base_3ISE_NS7_27Triangulation_vertex_base_3ISE_NS7_30Triangulation_ds_vertex_base_3IvEEEEEENSB_ISE_NSF_ISE_NSG_ISE_NSH_ISE_NSI_IvEEEEEEEEEENS7_14Sequential_tagEEEEEEEEEEEEENS7_7DefaultES12_S12_EELb0EEEiENS1_9member_at4leftEEENS5_IKSt6vectorIdSaIdEENS17_5rightEEEED2Ev.exit

_ZN5boost6bimaps8relation6detail14normal_storageINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINS7_17Compact_containerINS7_52Delaunay_triangulation_cell_base_with_circumcenter_3INS7_28Robust_circumcenter_traits_3INS7_5EpickEEENS7_24Surface_mesh_cell_base_3ISE_NS7_34Delaunay_triangulation_cell_base_3ISE_NS7_25Triangulation_cell_base_3ISE_NS7_28Triangulation_ds_cell_base_3INS7_30Triangulation_data_structure_3INS7_26Surface_mesh_vertex_base_3ISE_NS7_27Triangulation_vertex_base_3ISE_NS7_30Triangulation_ds_vertex_base_3IvEEEEEENSB_ISE_NSF_ISE_NSG_ISE_NSH_ISE_NSI_IvEEEEEEEEEENS7_14Sequential_tagEEEEEEEEEEEEENS7_7DefaultES12_S12_EELb0EEEiENS1_9member_at4leftEEENS5_IKSt6vectorIdSaIdEENS17_5rightEEEED2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.o

bb.m:                                             ; preds = %_ZN5boost6bimaps8relation15structured_pairINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_52Delaunay_triangulation_cell_base_with_circumcenter_3INS6_28Robust_circumcenter_traits_3INS6_5EpickEEENS6_24Surface_mesh_cell_base_3ISD_NS6_34Delaunay_triangulation_cell_base_3ISD_NS6_25Triangulation_cell_base_3ISD_NS6_28Triangulation_ds_cell_base_3INS6_30Triangulation_data_structure_3INS6_26Surface_mesh_vertex_base_3ISD_NS6_27Triangulation_vertex_base_3ISD_NS6_30Triangulation_ds_vertex_base_3IvEEEEEENSA_ISD_NSE_ISD_NSF_ISD_NSG_ISD_NSH_IvEEEEEEEEEENS6_14Sequential_tagEEEEEEEEEEEEENS6_7DefaultES11_S11_EELb0EEEiENS1_9member_at4leftEEENS4_IKSt6vectorIdSaIdEENS16_5rightEEEN4mpl_2naENS1_13normal_layoutEEC2ERS15_RS1C_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %i.ac, align 8, !tbaa !506 ; 3 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i8, label %_ZN5boost6bimaps8relation6detail14normal_storageINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINS7_17Compact_containerINS7_52Delaunay_triangulation_cell_base_with_circumcenter_3INS7_28Robust_circumcenter_traits_3INS7_5EpickEEENS7_24Surface_mesh_cell_base_3ISE_NS7_34Delaunay_triangulation_cell_base_3ISE_NS7_25Triangulation_cell_base_3ISE_NS7_28Triangulation_ds_cell_base_3INS7_30Triangulation_data_structure_3INS7_26Surface_mesh_vertex_base_3ISE_NS7_27Triangulation_vertex_base_3ISE_NS7_30Triangulation_ds_vertex_base_3IvEEEEEENSB_ISE_NSF_ISE_NSG_ISE_NSH_ISE_NSI_IvEEEEEEEEEENS7_14Sequential_tagEEEEEEEEEEEEENS7_7DefaultES12_S12_EELb0EEEiENS1_9member_at4leftEEENS5_IKSt6vectorIdSaIdEENS17_5rightEEEED2Ev.exit9, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = load ptr, ptr %i.ap, align 8, !tbaa !508
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #43
  br label %_ZN5boost6bimaps8relation6detail14normal_storageINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINS7_17Compact_containerINS7_52Delaunay_triangulation_cell_base_with_circumcenter_3INS7_28Robust_circumcenter_traits_3INS7_5EpickEEENS7_24Surface_mesh_cell_base_3ISE_NS7_34Delaunay_triangulation_cell_base_3ISE_NS7_25Triangulation_cell_base_3ISE_NS7_28Triangulation_ds_cell_base_3INS7_30Triangulation_data_structure_3INS7_26Surface_mesh_vertex_base_3ISE_NS7_27Triangulation_vertex_base_3ISE_NS7_30Triangulation_ds_vertex_base_3IvEEEEEENSB_ISE_NSF_ISE_NSG_ISE_NSH_ISE_NSI_IvEEEEEEEEEENS7_14Sequential_tagEEEEEEEEEEEEENS7_7DefaultES12_S12_EELb0EEEiENS1_9member_at4leftEEENS5_IKSt6vectorIdSaIdEENS17_5rightEEEED2Ev.exit9

_ZN5boost6bimaps8relation6detail14normal_storageINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINS7_17Compact_containerINS7_52Delaunay_triangulation_cell_base_with_circumcenter_3INS7_28Robust_circumcenter_traits_3INS7_5EpickEEENS7_24Surface_mesh_cell_base_3ISE_NS7_34Delaunay_triangulation_cell_base_3ISE_NS7_25Triangulation_cell_base_3ISE_NS7_28Triangulation_ds_cell_base_3INS7_30Triangulation_data_structure_3INS7_26Surface_mesh_vertex_base_3ISE_NS7_27Triangulation_vertex_base_3ISE_NS7_30Triangulation_ds_vertex_base_3IvEEEEEENSB_ISE_NSF_ISE_NSG_ISE_NSH_ISE_NSI_IvEEEEEEEEEENS7_14Sequential_tagEEEEEEEEEEEEENS7_7DefaultES12_S12_EELb0EEEiENS1_9member_at4leftEEENS5_IKSt6vectorIdSaIdEENS17_5rightEEEED2Ev.exit9: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  resume { ptr, i32 } %i.bh

bb.o:                                             ; preds = %bb.d, %_ZN5boost6bimaps8relation6detail14normal_storageINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINS7_17Compact_containerINS7_52Delaunay_triangulation_cell_base_with_circumcenter_3INS7_28Robust_circumcenter_traits_3INS7_5EpickEEENS7_24Surface_mesh_cell_base_3ISE_NS7_34Delaunay_triangulation_cell_base_3ISE_NS7_25Triangulation_cell_base_3ISE_NS7_28Triangulation_ds_cell_base_3INS7_30Triangulation_data_structure_3INS7_26Surface_mesh_vertex_base_3ISE_NS7_27Triangulation_vertex_base_3ISE_NS7_30Triangulation_ds_vertex_base_3IvEEEEEENSB_ISE_NSF_ISE_NSG_ISE_NSH_ISE_NSI_IvEEEEEEEEEENS7_14Sequential_tagEEEEEEEEEEEEENS7_7DefaultES12_S12_EELb0EEEiENS1_9member_at4leftEEENS5_IKSt6vectorIdSaIdEENS17_5rightEEEED2Ev.exit
  %.0 = phi i1 [ true, %_ZN5boost6bimaps8relation6detail14normal_storageINS0_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINS7_17Compact_containerINS7_52Delaunay_triangulation_cell_base_with_circumcenter_3INS7_28Robust_circumcenter_traits_3INS7_5EpickEEENS7_24Surface_mesh_cell_base_3ISE_NS7_34Delaunay_triangulation_cell_base_3ISE_NS7_25Triangulation_cell_base_3ISE_NS7_28Triangulation_ds_cell_base_3INS7_30Triangulation_data_structure_3INS7_26Surface_mesh_vertex_base_3ISE_NS7_27Triangulation_vertex_base_3ISE_NS7_30Triangulation_ds_vertex_base_3IvEEEEEENSB_ISE_NSF_ISE_NSG_ISE_NSH_ISE_NSI_IvEEEEEEEEEENS7_14Sequential_tagEEEEEEEEEEEEENS7_7DefaultES12_S12_EELb0EEEiENS1_9member_at4leftEEENS5_IKSt6vectorIdSaIdEENS17_5rightEEEED2Ev.exit ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN4CGAL15Filter_iteratorINS_8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS7_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS7_NS_24Surface_mesh_cell_base_3IS7_NS_34Delaunay_triangulation_cell_base_3IS7_NS_25Triangulation_cell_base_3IS7_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEEENS_15Triangulation_3IS7_SO_NS_7DefaultEE15Infinite_testerEEppEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !501  ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !164  ; 2 uses
  %i.d = icmp slt i32 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load ptr, ptr %0, align 8
  %.fr46 = freeze ptr %i.h
  %i.i = icmp eq ptr %i.b, %.fr46                 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 200 ; 3 uses
  br i1 %i.d, label %.split3.us, label %.split3

.split3.us:                                       ; preds = %bb.a
  %i.r = load i32, ptr %i.f, align 8
  %.not.us = icmp ne i32 %i.r, %i.m
  %i.s = load i64, ptr %i.e, align 8              ; 2 uses
  %.sroa.0.0.copyload.i.cast.i.us = inttoptr i64 %i.s to ptr
  %i.t = icmp ne ptr %i.k, %.sroa.0.0.copyload.i.cast.i.us
  %not. = xor i1 %i.i, true
  %or.cond80 = select i1 %not., i1 true, i1 %i.t
  %brmerge81 = select i1 %or.cond80, i1 true, i1 %.not.us
  br i1 %brmerge81, label %.critedge.sink.split, label %.critedge

.split3:                                          ; preds = %bb.a
  %i.u = icmp eq i32 %i.c, 3
  %.promoted.i.us.pre = load i32, ptr %i.f, align 8 ; 5 uses
  br i1 %i.u, label %.preheader.i.us, label %.split3.split

.preheader.i.us:                                  ; preds = %.split3, %.preheader.i.us.backedge
  %i.v = phi i32 [ %i.ah, %.preheader.i.us.backedge ], [ %.promoted.i.us.pre, %.split3 ] ; 2 uses
  %i.w = icmp eq i32 %i.v, 3
  br i1 %i.w, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i.us
  %i.x = add nsw i32 %i.v, 1                      ; 2 uses
  store i32 %i.x, ptr %i.f, align 8, !tbaa !502
  %.pre.i.us = load ptr, ptr %i.e, align 8
  br label %_ZN4CGAL8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEE9incrementEv.exit.i.us

bb.c:                                             ; preds = %.preheader.i.us
  store i32 0, ptr %i.f, align 8, !tbaa !502
  %.promoted.i.i.i.i.us = load ptr, ptr %i.e, align 8, !tbaa !296
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %bb.c
  %i.y = phi ptr [ %.promoted.i.i.i.i.us, %bb.c ], [ %.be, %.backedge ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 192 ; 5 uses
  store ptr %i.z, ptr %i.e, align 8, !tbaa !296
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !296
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 3
  switch i32 %i.ad, label %.unreachabledefault [
    i32 0, label %_ZN4CGAL8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEE9incrementEv.exit.i.us
    i32 3, label %_ZN4CGAL8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEE9incrementEv.exit.i.us
    i32 1, label %bb.e
    i32 2, label %.backedge
  ]

bb.e:                                             ; preds = %bb.d
  %i.ae = and i64 %i.ab, -4
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  store ptr %i.af, ptr %i.e, align 8, !tbaa !296
  br label %.backedge

.backedge:                                        ; preds = %bb.e, %bb.d
  %.be = phi ptr [ %i.z, %bb.d ], [ %i.af, %bb.e ]
  br label %bb.d, !llvm.loop !13

_ZN4CGAL8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEE9incrementEv.exit.i.us: ; preds = %bb.d, %bb.d, %bb.b
  %i.ag = phi ptr [ %.pre.i.us, %bb.b ], [ %i.z, %bb.d ], [ %i.z, %bb.d ] ; 6 uses
  %i.ah = phi i32 [ %i.x, %bb.b ], [ 0, %bb.d ], [ 0, %bb.d ] ; 6 uses
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !345
  %.not.i.us = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i.us, label %_ZN4CGAL8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEEppEv.exit.loopexit.us, label %bb.f

bb.f:                                             ; preds = %_ZN4CGAL8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEE9incrementEv.exit.i.us
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.aj
  %.sroa.0.0.copyload.i.i.us = load ptr, ptr %i.ak, align 8, !tbaa !343
  %i.al = icmp ult ptr %.sroa.0.0.copyload.i.i.us, %i.ag
  br i1 %i.al, label %.preheader.i.us.backedge, label %_ZN4CGAL8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEEppEv.exit.loopexit.us

.preheader.i.us.backedge:                         ; preds = %bb.f, %_ZNK4CGAL8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEEneERKSO_.exit.thread.us7, %bb.g, %.split.us12
  br label %.preheader.i.us

_ZN4CGAL8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEEppEv.exit.loopexit.us: ; preds = %bb.f, %_ZN4CGAL8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEE9incrementEv.exit.i.us
  %i.am = icmp eq ptr %i.ag, %i.k
  %or.cond = select i1 %i.i, i1 %i.am, i1 false
  %.not.us6 = icmp eq i32 %i.ah, %i.m
  %or.cond74 = select i1 %or.cond, i1 %.not.us6, i1 false
  br i1 %or.cond74, label %.critedge, label %_ZNK4CGAL8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEEneERKSO_.exit.thread.us7

_ZNK4CGAL8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEEneERKSO_.exit.thread.us7: ; preds = %_ZN4CGAL8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEEEppEv.exit.loopexit.us
  %i.an = ptrtoint ptr %i.ag to i64
  store i64 %i.an, ptr %i.p, align 8, !tbaa !343
  %i.ao = icmp slt i32 %i.ah, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 3 uses
  %i.aq = zext i1 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %.sroa.0.0.copyload.i.i.i.i.us9 = load ptr, ptr %i.ar, align 8, !tbaa !169
  %.sroa.0.0.copyload.i.i.i.i.i.us10 = load ptr, ptr %i.q, align 8, !tbaa !169 ; 3 uses
  %i.as = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.us9, %.sroa.0.0.copyload.i.i.i.i.i.us10
  br i1 %i.as, label %.preheader.i.us.backedge, label %bb.g
end_hunk_0
begin_hunk_1_@_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberINS_6bimaps8relation6detail16relation_storageINS4_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINSB_17Compact_containerINSB_52Delaunay_triangulation_cell_base_with_circumcenter_3INSB_28Robust_circumcenter_traits_3INSB_5EpickEEENSB_24Surface_mesh_cell_base_3ISI_NSB_34Delaunay_triangulation_cell_base_3ISI_NSB_25Triangulation_cell_base_3ISI_NSB_28Triangulation_ds_cell_base_3INSB_30Triangulation_data_structure_3INSB_26Surface_mesh_vertex_base_3ISI_NSB_27Triangulation_vertex_base_3ISI_NSB_30Triangulation_ds_vertex_base_3IvEEEEEENSF_ISI_NSJ_ISI_NSK_ISI_NSL_ISI_NSM_IvEEEEEEEEEENSB_14Sequential_tagEEEEEEEEEEEEENSB_7DefaultES16_S16_EELb0EEEiENS5_9member_at4leftEEENS9_IKSt6vectorIdSaIdEENS1B_5rightEEELb1EEES19_XadL_ZNS1K_4leftEEEEESt4lessIS19_ENS1_9nth_layerILi2ENS5_15mutant_relationIS1D_S1J_N4mpl_2naELb1EEENS4_6detail10bimap_coreINS4_6set_ofIS19_S1N_EENS4_11multiset_ofIS1G_S1M_IS1G_EEES1R_S1R_S1R_E12core_indicesESaIS1S_EEENS_3mpl6v_itemIS1C_NS24_7vector0IS1R_EELi0EEENS1_18ordered_unique_tagENS1_19null_augment_policyEE17hinted_link_pointERS1A_PNS1_18ordered_index_nodeIS2A_NS1_15index_node_baseIS1S_S22_EEEERNS2B_9link_infoES29_:bb.a

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit30: ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !406
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !406
  %i.bu = icmp slt i32 %i.br, %i.bt
  br i1 %i.bu, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit30.thread, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit29.thread36

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit30.thread: ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit29.thread, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit30
  %i.bv = getelementptr inbounds nuw i8, ptr %.019.lcssa.sink.i.i, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !447
  %i.bx = icmp eq ptr %i.bw, null
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit30.thread
  store i32 1, ptr %3, align 8, !tbaa !623
  store ptr %.019.lcssa.sink.i.i, ptr %i.by, align 8, !tbaa !624
  br label %bb.o

bb.n:                                             ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit30.thread
  store i32 0, ptr %3, align 8, !tbaa !623
  store ptr %i.a, ptr %i.by, align 8, !tbaa !624
  br label %bb.o

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit29.thread36: ; preds = %bb.l, %bb.k, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit30, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit29
  %i.bz = tail call noundef zeroext i1 @_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberINS_6bimaps8relation6detail16relation_storageINS4_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINSB_17Compact_containerINSB_52Delaunay_triangulation_cell_base_with_circumcenter_3INSB_28Robust_circumcenter_traits_3INSB_5EpickEEENSB_24Surface_mesh_cell_base_3ISI_NSB_34Delaunay_triangulation_cell_base_3ISI_NSB_25Triangulation_cell_base_3ISI_NSB_28Triangulation_ds_cell_base_3INSB_30Triangulation_data_structure_3INSB_26Surface_mesh_vertex_base_3ISI_NSB_27Triangulation_vertex_base_3ISI_NSB_30Triangulation_ds_vertex_base_3IvEEEEEENSF_ISI_NSJ_ISI_NSK_ISI_NSL_ISI_NSM_IvEEEEEEEEEENSB_14Sequential_tagEEEEEEEEEEEEENSB_7DefaultES16_S16_EELb0EEEiENS5_9member_at4leftEEENS9_IKSt6vectorIdSaIdEENS1B_5rightEEELb1EEES19_XadL_ZNS1K_4leftEEEEESt4lessIS19_ENS1_9nth_layerILi2ENS5_15mutant_relationIS1D_S1J_N4mpl_2naELb1EEENS4_6detail10bimap_coreINS4_6set_ofIS19_S1N_EENS4_11multiset_ofIS1G_S1M_IS1G_EEES1R_S1R_S1R_E12core_indicesESaIS1S_EEENS_3mpl6v_itemIS1C_NS24_7vector0IS1R_EELi0EEENS1_18ordered_unique_tagENS1_19null_augment_policyEE10link_pointERS1A_RNS2B_9link_infoES29_(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit29.thread36, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit28.thread35, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit28.thread, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread34, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread
  %.1 = phi i1 [ true, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread ], [ %i.s, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread34 ], [ true, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit28.thread ], [ %i.ah, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit28.thread35 ], [ true, %bb.m ], [ true, %bb.n ], [ %i.bz, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit29.thread36 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberINS_6bimaps8relation6detail16relation_storageINS4_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINSB_17Compact_containerINSB_52Delaunay_triangulation_cell_base_with_circumcenter_3INSB_28Robust_circumcenter_traits_3INSB_5EpickEEENSB_24Surface_mesh_cell_base_3ISI_NSB_34Delaunay_triangulation_cell_base_3ISI_NSB_25Triangulation_cell_base_3ISI_NSB_28Triangulation_ds_cell_base_3INSB_30Triangulation_data_structure_3INSB_26Surface_mesh_vertex_base_3ISI_NSB_27Triangulation_vertex_base_3ISI_NSB_30Triangulation_ds_vertex_base_3IvEEEEEENSF_ISI_NSJ_ISI_NSK_ISI_NSL_ISI_NSM_IvEEEEEEEEEENSB_14Sequential_tagEEEEEEEEEEEEENSB_7DefaultES16_S16_EELb0EEEiENS5_9member_at4leftEEENS9_IKSt6vectorIdSaIdEENS1B_5rightEEELb1EEES19_XadL_ZNS1K_4leftEEEEESt4lessIS19_ENS1_9nth_layerILi2ENS5_15mutant_relationIS1D_S1J_N4mpl_2naELb1EEENS4_6detail10bimap_coreINS4_6set_ofIS19_S1N_EENS4_11multiset_ofIS1G_S1M_IS1G_EEES1R_S1R_S1R_E12core_indicesESaIS1S_EEENS_3mpl6v_itemIS1C_NS24_7vector0IS1R_EELi0EEENS1_18ordered_unique_tagENS1_19null_augment_policyEE10link_pointERS1A_RNS2B_9link_infoES29_(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !445  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !90
  %i.e = and i64 %i.d, -2                         ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %select.unfold._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = inttoptr i64 %i.e to ptr
  %i.h = load ptr, ptr %1, align 8, !tbaa !296    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %select.unfold
  %.pn = phi ptr [ %i.g, %.lr.ph ], [ %i.s, %select.unfold ] ; 2 uses
  %.01931 = getelementptr inbounds i8, ptr %.pn, i64 -40 ; 5 uses
  %i.k = load ptr, ptr %.01931, align 8, !tbaa !296 ; 2 uses
  %i.l = icmp ult ptr %i.h, %i.k
  br i1 %i.l, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult ptr %i.k, %i.h
  br i1 %i.m, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread27, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds i8, ptr %.pn, i64 -32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !406
  %i.p = icmp slt i32 %i.j, %i.o
  br i1 %i.p, label %select.unfold, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread27

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread27: ; preds = %bb.c, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit
  br label %select.unfold

select.unfold:                                    ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit, %bb.b, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread27
  %.sink = phi i64 [ 56, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread27 ], [ 48, %bb.b ], [ 48, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit ]
  %i.q = phi i1 [ false, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread27 ], [ true, %bb.b ], [ true, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %.01931, i64 %.sink
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !447  ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %select.unfold._crit_edge, label %bb.b

select.unfold._crit_edge:                         ; preds = %select.unfold
  br i1 %i.q, label %select.unfold._crit_edge.thread, label %bb.g

select.unfold._crit_edge.thread:                  ; preds = %bb.a, %select.unfold._crit_edge
  %.020.lcssa42 = phi ptr [ %.01931, %select.unfold._crit_edge ], [ %i.b, %bb.a ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !447  ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -40
  %i.y = select i1 %i.w, ptr null, ptr %i.x
  %i.z = icmp eq ptr %.020.lcssa42, %i.y
  br i1 %i.z, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit22.thread28.sink.split, label %bb.d

bb.d:                                             ; preds = %select.unfold._crit_edge.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %.020.lcssa42, i64 40 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !90 ; 3 uses
  %i.ac = and i64 %i.ab, 1
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %.critedge.i.i

bb.e:                                             ; preds = %bb.d
  %i.ae = inttoptr i64 %i.ab to ptr
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !90
  %i.ag = and i64 %i.af, -2
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = icmp eq ptr %i.aa, %i.ah
  br i1 %i.ai, label %bb.f, label %.critedge.i.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.020.lcssa42, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !447
  br label %_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseINS_6bimaps8relation15mutant_relationINS5_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINSB_17Compact_containerINSB_52Delaunay_triangulation_cell_base_with_circumcenter_3INSB_28Robust_circumcenter_traits_3INSB_5EpickEEENSB_24Surface_mesh_cell_base_3ISI_NSB_34Delaunay_triangulation_cell_base_3ISI_NSB_25Triangulation_cell_base_3ISI_NSB_28Triangulation_ds_cell_base_3INSB_30Triangulation_data_structure_3INSB_26Surface_mesh_vertex_base_3ISI_NSB_27Triangulation_vertex_base_3ISI_NSB_30Triangulation_ds_vertex_base_3IvEEEEEENSF_ISI_NSJ_ISI_NSK_ISI_NSL_ISI_NSM_IvEEEEEEEEEENSB_14Sequential_tagEEEEEEEEEEEEENSB_7DefaultES16_S16_EELb0EEEiENS6_9member_at4leftEEENS9_IKSt6vectorIdSaIdEENS1B_5rightEEEN4mpl_2naELb1EEESaIS1M_EEEE9decrementERPS1P_.exit

.critedge.i.i:                                    ; preds = %bb.e, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %.020.lcssa42, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !447 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %.preheader.i.i, label %.preheader25.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.0.in26.i.i = and i64 %i.ab, -2
  %.027.i.i = inttoptr i64 %.0.in26.i.i to ptr    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !447
  %i.ap = icmp eq ptr %i.aa, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i, label %_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseINS_6bimaps8relation15mutant_relationINS5_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINSB_17Compact_containerINSB_52Delaunay_triangulation_cell_base_with_circumcenter_3INSB_28Robust_circumcenter_traits_3INSB_5EpickEEENSB_24Surface_mesh_cell_base_3ISI_NSB_34Delaunay_triangulation_cell_base_3ISI_NSB_25Triangulation_cell_base_3ISI_NSB_28Triangulation_ds_cell_base_3INSB_30Triangulation_data_structure_3INSB_26Surface_mesh_vertex_base_3ISI_NSB_27Triangulation_vertex_base_3ISI_NSB_30Triangulation_ds_vertex_base_3IvEEEEEENSF_ISI_NSJ_ISI_NSK_ISI_NSL_ISI_NSM_IvEEEEEEEEEENSB_14Sequential_tagEEEEEEEEEEEEENSB_7DefaultES16_S16_EELb0EEEiENS6_9member_at4leftEEENS9_IKSt6vectorIdSaIdEENS1B_5rightEEEN4mpl_2naELb1EEESaIS1M_EEEE9decrementERPS1P_.exit

.preheader25.i.i:                                 ; preds = %.critedge.i.i, %.preheader25.i.i
  %.019.i.i = phi ptr [ %i.ar, %.preheader25.i.i ], [ %i.am, %.critedge.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !447 ; 2 uses
  %.not20.i.i = icmp eq ptr %i.ar, null
  br i1 %.not20.i.i, label %_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseINS_6bimaps8relation15mutant_relationINS5_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINSB_17Compact_containerINSB_52Delaunay_triangulation_cell_base_with_circumcenter_3INSB_28Robust_circumcenter_traits_3INSB_5EpickEEENSB_24Surface_mesh_cell_base_3ISI_NSB_34Delaunay_triangulation_cell_base_3ISI_NSB_25Triangulation_cell_base_3ISI_NSB_28Triangulation_ds_cell_base_3INSB_30Triangulation_data_structure_3INSB_26Surface_mesh_vertex_base_3ISI_NSB_27Triangulation_vertex_base_3ISI_NSB_30Triangulation_ds_vertex_base_3IvEEEEEENSF_ISI_NSJ_ISI_NSK_ISI_NSL_ISI_NSM_IvEEEEEEEEEENSB_14Sequential_tagEEEEEEEEEEEEENSB_7DefaultES16_S16_EELb0EEEiENS6_9member_at4leftEEENS9_IKSt6vectorIdSaIdEENS1B_5rightEEEN4mpl_2naELb1EEESaIS1M_EEEE9decrementERPS1P_.exit, label %.preheader25.i.i, !llvm.loop !50

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.028.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.027.i.i, %.preheader.i.i ] ; 2 uses
  %i.as = load i64, ptr %.028.i.i, align 8, !tbaa !90
  %.0.in.i.i = and i64 %i.as, -2
  %.0.i.i = inttoptr i64 %.0.in.i.i to ptr        ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !447
  %i.av = icmp eq ptr %.028.i.i, %i.au
  br i1 %i.av, label %.lr.ph.i.i, label %_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseINS_6bimaps8relation15mutant_relationINS5_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINSB_17Compact_containerINSB_52Delaunay_triangulation_cell_base_with_circumcenter_3INSB_28Robust_circumcenter_traits_3INSB_5EpickEEENSB_24Surface_mesh_cell_base_3ISI_NSB_34Delaunay_triangulation_cell_base_3ISI_NSB_25Triangulation_cell_base_3ISI_NSB_28Triangulation_ds_cell_base_3INSB_30Triangulation_data_structure_3INSB_26Surface_mesh_vertex_base_3ISI_NSB_27Triangulation_vertex_base_3ISI_NSB_30Triangulation_ds_vertex_base_3IvEEEEEENSF_ISI_NSJ_ISI_NSK_ISI_NSL_ISI_NSM_IvEEEEEEEEEENSB_14Sequential_tagEEEEEEEEEEEEENSB_7DefaultES16_S16_EELb0EEEiENS6_9member_at4leftEEENS9_IKSt6vectorIdSaIdEENS1B_5rightEEEN4mpl_2naELb1EEESaIS1M_EEEE9decrementERPS1P_.exit, !llvm.loop !51

_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseINS_6bimaps8relation15mutant_relationINS5_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINSB_17Compact_containerINSB_52Delaunay_triangulation_cell_base_with_circumcenter_3INSB_28Robust_circumcenter_traits_3INSB_5EpickEEENSB_24Surface_mesh_cell_base_3ISI_NSB_34Delaunay_triangulation_cell_base_3ISI_NSB_25Triangulation_cell_base_3ISI_NSB_28Triangulation_ds_cell_base_3INSB_30Triangulation_data_structure_3INSB_26Surface_mesh_vertex_base_3ISI_NSB_27Triangulation_vertex_base_3ISI_NSB_30Triangulation_ds_vertex_base_3IvEEEEEENSF_ISI_NSJ_ISI_NSK_ISI_NSL_ISI_NSM_IvEEEEEEEEEENSB_14Sequential_tagEEEEEEEEEEEEENSB_7DefaultES16_S16_EELb0EEEiENS6_9member_at4leftEEENS9_IKSt6vectorIdSaIdEENS1B_5rightEEEN4mpl_2naELb1EEESaIS1M_EEEE9decrementERPS1P_.exit: ; preds = %.preheader25.i.i, %.lr.ph.i.i, %bb.f, %.preheader.i.i
  %.019.lcssa.sink.i.i = phi ptr [ %i.ak, %bb.f ], [ %.0.i.i, %.lr.ph.i.i ], [ %.027.i.i, %.preheader.i.i ], [ %.019.i.i, %.preheader25.i.i ] ; 2 uses
  %i.aw = icmp eq ptr %.019.lcssa.sink.i.i, null
  %i.ax = getelementptr inbounds i8, ptr %.019.lcssa.sink.i.i, i64 -40
  %i.ay = select i1 %i.aw, ptr null, ptr %i.ax
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseINS_6bimaps8relation15mutant_relationINS5_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINSB_17Compact_containerINSB_52Delaunay_triangulation_cell_base_with_circumcenter_3INSB_28Robust_circumcenter_traits_3INSB_5EpickEEENSB_24Surface_mesh_cell_base_3ISI_NSB_34Delaunay_triangulation_cell_base_3ISI_NSB_25Triangulation_cell_base_3ISI_NSB_28Triangulation_ds_cell_base_3INSB_30Triangulation_data_structure_3INSB_26Surface_mesh_vertex_base_3ISI_NSB_27Triangulation_vertex_base_3ISI_NSB_30Triangulation_ds_vertex_base_3IvEEEEEENSF_ISI_NSJ_ISI_NSK_ISI_NSL_ISI_NSM_IvEEEEEEEEEENSB_14Sequential_tagEEEEEEEEEEEEENSB_7DefaultES16_S16_EELb0EEEiENS6_9member_at4leftEEENS9_IKSt6vectorIdSaIdEENS1B_5rightEEEN4mpl_2naELb1EEESaIS1M_EEEE9decrementERPS1P_.exit, %select.unfold._crit_edge
  %not..0 = phi i32 [ 0, %_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseINS_6bimaps8relation15mutant_relationINS5_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINSB_17Compact_containerINSB_52Delaunay_triangulation_cell_base_with_circumcenter_3INSB_28Robust_circumcenter_traits_3INSB_5EpickEEENSB_24Surface_mesh_cell_base_3ISI_NSB_34Delaunay_triangulation_cell_base_3ISI_NSB_25Triangulation_cell_base_3ISI_NSB_28Triangulation_ds_cell_base_3INSB_30Triangulation_data_structure_3INSB_26Surface_mesh_vertex_base_3ISI_NSB_27Triangulation_vertex_base_3ISI_NSB_30Triangulation_ds_vertex_base_3IvEEEEEENSF_ISI_NSJ_ISI_NSK_ISI_NSL_ISI_NSM_IvEEEEEEEEEENSB_14Sequential_tagEEEEEEEEEEEEENSB_7DefaultES16_S16_EELb0EEEiENS6_9member_at4leftEEENS9_IKSt6vectorIdSaIdEENS1B_5rightEEEN4mpl_2naELb1EEESaIS1M_EEEE9decrementERPS1P_.exit ], [ 1, %select.unfold._crit_edge ] ; 2 uses
  %.020.lcssa41 = phi ptr [ %.020.lcssa42, %_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseINS_6bimaps8relation15mutant_relationINS5_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINSB_17Compact_containerINSB_52Delaunay_triangulation_cell_base_with_circumcenter_3INSB_28Robust_circumcenter_traits_3INSB_5EpickEEENSB_24Surface_mesh_cell_base_3ISI_NSB_34Delaunay_triangulation_cell_base_3ISI_NSB_25Triangulation_cell_base_3ISI_NSB_28Triangulation_ds_cell_base_3INSB_30Triangulation_data_structure_3INSB_26Surface_mesh_vertex_base_3ISI_NSB_27Triangulation_vertex_base_3ISI_NSB_30Triangulation_ds_vertex_base_3IvEEEEEENSF_ISI_NSJ_ISI_NSK_ISI_NSL_ISI_NSM_IvEEEEEEEEEENSB_14Sequential_tagEEEEEEEEEEEEENSB_7DefaultES16_S16_EELb0EEEiENS6_9member_at4leftEEENS9_IKSt6vectorIdSaIdEENS1B_5rightEEEN4mpl_2naELb1EEESaIS1M_EEEE9decrementERPS1P_.exit ], [ %.01931, %select.unfold._crit_edge ] ; 2 uses
  %.025 = phi ptr [ %i.ay, %_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseINS_6bimaps8relation15mutant_relationINS5_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINSB_17Compact_containerINSB_52Delaunay_triangulation_cell_base_with_circumcenter_3INSB_28Robust_circumcenter_traits_3INSB_5EpickEEENSB_24Surface_mesh_cell_base_3ISI_NSB_34Delaunay_triangulation_cell_base_3ISI_NSB_25Triangulation_cell_base_3ISI_NSB_28Triangulation_ds_cell_base_3INSB_30Triangulation_data_structure_3INSB_26Surface_mesh_vertex_base_3ISI_NSB_27Triangulation_vertex_base_3ISI_NSB_30Triangulation_ds_vertex_base_3IvEEEEEENSF_ISI_NSJ_ISI_NSK_ISI_NSL_ISI_NSM_IvEEEEEEEEEENSB_14Sequential_tagEEEEEEEEEEEEENSB_7DefaultES16_S16_EELb0EEEiENS6_9member_at4leftEEENS9_IKSt6vectorIdSaIdEENS1B_5rightEEEN4mpl_2naELb1EEESaIS1M_EEEE9decrementERPS1P_.exit ], [ %.01931, %select.unfold._crit_edge ] ; 4 uses
  %i.az = load ptr, ptr %.025, align 8, !tbaa !296 ; 2 uses
  %i.ba = load ptr, ptr %1, align 8, !tbaa !296   ; 2 uses
  %i.bb = icmp ult ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit22.thread28.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = icmp ult ptr %i.ba, %i.az
  br i1 %i.bc, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit22.thread28, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit22

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit22: ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %.025, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !406
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !406
  %i.bh = icmp slt i32 %i.be, %i.bg
  br i1 %i.bh, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit22.thread28.sink.split, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit22.thread28

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit22.thread28.sink.split: ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit22, %bb.g, %select.unfold._crit_edge.thread
  %.sink48 = phi i32 [ 0, %select.unfold._crit_edge.thread ], [ %not..0, %bb.g ], [ %not..0, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit22 ]
  %.025.sink.ph = phi ptr [ %.020.lcssa42, %select.unfold._crit_edge.thread ], [ %.020.lcssa41, %bb.g ], [ %.020.lcssa41, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit22 ]
  store i32 %.sink48, ptr %2, align 8, !tbaa !623
  br label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit22.thread28

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit22.thread28: ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit22.thread28.sink.split, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit22, %bb.h
  %.025.sink = phi ptr [ %.025, %bb.h ], [ %.025, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit22 ], [ %.025.sink.ph, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit22.thread28.sink.split ]
  %.021 = phi i1 [ false, %bb.h ], [ false, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit22 ], [ true, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit22.thread28.sink.split ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.025.sink, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !624
  ret i1 %.021
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost11multi_index6detail10index_baseINS_6bimaps8relation15mutant_relationINS3_4tags6taggedIKSt4pairIN4CGAL8internal11CC_iteratorINS9_17Compact_containerINS9_52Delaunay_triangulation_cell_base_with_circumcenter_3INS9_28Robust_circumcenter_traits_3INS9_5EpickEEENS9_24Surface_mesh_cell_base_3ISG_NS9_34Delaunay_triangulation_cell_base_3ISG_NS9_25Triangulation_cell_base_3ISG_NS9_28Triangulation_ds_cell_base_3INS9_30Triangulation_data_structure_3INS9_26Surface_mesh_vertex_base_3ISG_NS9_27Triangulation_vertex_base_3ISG_NS9_30Triangulation_ds_vertex_base_3IvEEEEEENSD_ISG_NSH_ISG_NSI_ISG_NSJ_ISG_NSK_IvEEEEEEEEEENS9_14Sequential_tagEEEEEEEEEEEEENS9_7DefaultES14_S14_EELb0EEEiENS4_9member_at4leftEEENS7_IKSt6vectorIdSaIdEENS19_5rightEEEN4mpl_2naELb1EEENS3_6detail10bimap_coreINS3_6set_ofIS17_St4lessIS17_EEENS3_11multiset_ofIS1E_S1O_IS1E_EEES1J_S1J_S1J_E12core_indicesESaIS1K_EE7insert_ERKS1K_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENS20_IS21_NS1_15index_node_baseIS1K_S1W_EEEEEENS1_10lvalue_tagE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #47 ; 5 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !606
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !507  ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !506  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !259

.noexc.i.i.i.i.i.i:                               ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #46
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #47
          to label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i..noexc8_crit_edge unwind label %bb.f

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i..noexc8_crit_edge: ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !186 ; 2 uses
  %.pre9 = load ptr, ptr %i.d, align 8, !tbaa !186
  %.pre10 = ptrtoint ptr %.pre9 to i64
  %.pre11 = ptrtoint ptr %.pre to i64
  br label %.noexc8

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i..noexc8_crit_edge, %bb.a
  %.pre-phi12 = phi i64 [ %.pre11, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i..noexc8_crit_edge ], [ %i.h, %bb.a ]
  %.pre-phi = phi i64 [ %.pre10, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i..noexc8_crit_edge ], [ %i.g, %bb.a ]
  %i.l = phi ptr [ %.pre, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i..noexc8_crit_edge ], [ %i.f, %bb.a ] ; 2 uses
  %i.m = phi ptr [ %i.k, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i..noexc8_crit_edge ], [ null, %bb.a ] ; 6 uses
  store ptr %i.m, ptr %i.c, align 8, !tbaa !506
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !507
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.o, ptr %i.p, align 8, !tbaa !508
  %i.q = sub i64 %.pre-phi, %.pre-phi12           ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.c, label %bb.d, !prof !417

bb.c:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.m, ptr align 8 %i.l, i64 %i.q, i1 false)
  br label %bb.h

bb.d:                                             ; preds = %.noexc8
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = load double, ptr %i.l, align 8, !tbaa !93
  store double %i.t, ptr %i.m, align 8, !tbaa !93
  br label %bb.h

bb.f:                                             ; preds = %.noexc.i.i.i.i.i.i, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #38 ; 0 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !606
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef 88) #43
  invoke void @__cxa_rethrow() #46
          to label %bb.k unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.z = getelementptr inbounds i8, ptr %i.m, i64 %i.q
  store ptr %i.z, ptr %i.n, align 8, !tbaa !507
  %i.aa = load ptr, ptr %2, align 8, !tbaa !606
  ret ptr %i.aa

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.y

bb.j:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #44
  unreachable

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE9rebalanceEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE(ptr noundef %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !90
  %i.b = and i64 %i.a, -2
  store i64 %i.b, ptr %0, align 8, !tbaa !90
  %i.c = load ptr, ptr %1, align 8, !tbaa !621    ; 10 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !90
  %i.e = and i64 %i.d, -2
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %.not99 = icmp eq ptr %0, %i.f
  br i1 %.not99, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !tbaa !90
  %i.h = and i64 %i.g, -2                         ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !90   ; 2 uses
  %i.k = and i64 %i.j, 1
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.lr.ph126, label %.critedge

.lr.ph:                                           ; preds = %bb.aj
  %i.m = load i64, ptr %.5, align 8, !tbaa !90
  %i.n = and i64 %i.m, -2                         ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !90   ; 2 uses
  %i.q = and i64 %i.p, 1
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.lr.ph126, label %.critedge, !llvm.loop !2516

.lr.ph126:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.s = phi i64 [ %i.p, %.lr.ph ], [ %i.j, %.lr.ph.preheader ] ; 5 uses
  %i.t = phi ptr [ %i.o, %.lr.ph ], [ %i.i, %.lr.ph.preheader ] ; 21 uses
  %i.u = phi i64 [ %i.n, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 4 uses
  %.0100125 = phi ptr [ %.5, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 12 uses
  %i.v = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !447  ; 5 uses
  %i.y = icmp eq ptr %i.x, %i.t
  br i1 %i.y, label %bb.b, label %bb.s

bb.b:                                             ; preds = %.lr.ph126
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !447 ; 4 uses
  %.not40 = icmp eq ptr %i.aa, null
  br i1 %.not40, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !90
  %i.ac = and i64 %i.ab, 1
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %bb.c
  %i.ae = or disjoint i64 %i.s, 1
  store i64 %i.ae, ptr %i.t, align 8, !tbaa !90
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !90
  %i.ag = or i64 %i.af, 1
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !90
  %i.ah = load i64, ptr %.0100125, align 8, !tbaa !90
  %i.ai = and i64 %i.ah, -2
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !90
  %i.al = and i64 %i.ak, -2
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !90
  %i.ao = and i64 %i.an, -2
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !90
  %i.ap = load i64, ptr %.0100125, align 8, !tbaa !90
  %i.aq = and i64 %i.ap, -2
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !90
  %i.at = and i64 %i.as, -2
  %i.au = inttoptr i64 %i.at to ptr
  br label %bb.aj

.critedge2:                                       ; preds = %bb.b, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !447 ; 6 uses
  %i.ax = icmp eq ptr %.0100125, %i.aw
  br i1 %i.ax, label %bb.e, label %bb.l

bb.e:                                             ; preds = %.critedge2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !447 ; 4 uses
  store ptr %i.az, ptr %i.av, align 8, !tbaa !447
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !90
  %i.bb = and i64 %i.ba, 1
  %i.bc = or disjoint i64 %i.bb, %i.u
  store i64 %i.bc, ptr %i.az, align 8, !tbaa !90
  %.pre103 = load i64, ptr %i.t, align 8, !tbaa !90
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bd = phi i64 [ %.pre103, %bb.f ], [ %i.s, %bb.e ]
  %i.be = and i64 %i.bd, -2
  %i.bf = load i64, ptr %i.aw, align 8, !tbaa !90
  %i.bg = and i64 %i.bf, 1
  %i.bh = or disjoint i64 %i.bg, %i.be
  store i64 %i.bh, ptr %i.aw, align 8, !tbaa !90
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !90  ; 2 uses
  %i.bj = and i64 %i.bi, -2
  %i.bk = icmp eq i64 %i.u, %i.bj
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = ptrtoint ptr %.0100125 to i64
  %i.bm = and i64 %i.bi, 1
  %i.bn = or i64 %i.bm, %i.bl
  store i64 %i.bn, ptr %i.c, align 8, !tbaa !90
  %.pre.i = load i64, ptr %i.t, align 8, !tbaa !90
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit

bb.i:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.t, align 8, !tbaa !90  ; 3 uses
  %i.bp = and i64 %i.bo, -2
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !447
  %i.bt = icmp eq ptr %i.bs, %i.t
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.aw, ptr %i.br, align 8, !tbaa !447
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit

bb.k:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %i.aw, ptr %i.bu, align 8, !tbaa !447
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit

_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit: ; preds = %bb.h, %bb.j, %bb.k
  %i.bv = phi i64 [ %i.bo, %bb.j ], [ %i.bo, %bb.k ], [ %.pre.i, %bb.h ]
  store ptr %i.t, ptr %i.ay, align 8, !tbaa !447
  %i.bw = ptrtoint ptr %.0100125 to i64           ; 2 uses
  %i.bx = and i64 %i.bv, 1
end_hunk_1
begin_hunk_2_@_ZN4CGAL6insertINS_5EpickEEERSoS2_RKNS_7Point_3IT_EERKNS_13Cartesian_tagE:bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !134
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 3 uses
  %i.h = load atomic i8, ptr @_ZGVZN4CGAL2IO6Static8get_modeEvE4mode acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZN4CGAL2IO6Static8get_modeEv.exit.i, !prof !235

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4CGAL2IO6Static8get_modeEvE4mode) #38
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZN4CGAL2IO6Static8get_modeEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef i32 @_ZNSt8ios_base6xallocEv() #38
  store i32 %i.k, ptr @_ZZN4CGAL2IO6Static8get_modeEvE4mode, align 4, !tbaa !215
  %i.l = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4CGAL2IO6Static8get_modeEvE4mode) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4CGAL2IO6Static8get_modeEvE4mode) #38
  br label %_ZN4CGAL2IO6Static8get_modeEv.exit.i

_ZN4CGAL2IO6Static8get_modeEv.exit.i:             ; preds = %bb.c, %bb.b, %bb.a
  %i.m = load i32, ptr @_ZZN4CGAL2IO6Static8get_modeEvE4mode, align 4, !tbaa !215 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.o = load i32, ptr %i.n, align 8, !tbaa !2866
  %i.p = icmp ult i32 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4CGAL2IO6Static8get_modeEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2867
  %i.s = sext i32 %i.m to i64
  %i.t = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.s
  br label %_ZN4CGAL2IO8get_modeERSt9basic_iosIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %_ZN4CGAL2IO6Static8get_modeEv.exit.i
  %i.u = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt8ios_base13_M_grow_wordsEib(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.m, i1 noundef zeroext true)
  br label %_ZN4CGAL2IO8get_modeERSt9basic_iosIcSt11char_traitsIcEE.exit

_ZN4CGAL2IO8get_modeERSt9basic_iosIcSt11char_traitsIcEE.exit: ; preds = %bb.d, %bb.e
  %i.v = phi ptr [ %i.t, %bb.d ], [ %i.u, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !90
  %i.y = trunc i64 %i.x to i32
  switch i32 %i.y, label %bb.l [
    i32 0, label %bb.f
    i32 2, label %bb.k
  ]

bb.f:                                             ; preds = %_ZN4CGAL2IO8get_modeERSt9basic_iosIcSt11char_traitsIcEE.exit
  %i.z = load double, ptr %1, align 8, !tbaa !93
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.z) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 32, ptr %i.c, align 1, !tbaa !89
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !134
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !659
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.c, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.ah, %bb.g ], [ %i.aa, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !93
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, double noundef %i.ak) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !89
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !134
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !659
  %.not.i17 = icmp eq i64 %i.ar, 0
  br i1 %.not.i17, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19: ; preds = %bb.i, %bb.j
  %.0.i18 = phi ptr [ %i.as, %bb.i ], [ %i.al, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load double, ptr %i.au, align 8, !tbaa !93
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i18, double noundef %i.av)
  br label %bb.o

bb.k:                                             ; preds = %_ZN4CGAL2IO8get_modeERSt9basic_iosIcSt11char_traitsIcEE.exit
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8) ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i64 noundef 8) ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i64 noundef 8) ; 0 uses
  br label %bb.o

bb.l:                                             ; preds = %_ZN4CGAL2IO8get_modeERSt9basic_iosIcSt11char_traitsIcEE.exit
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.147, i64 noundef 8) ; 0 uses
  %i.bd = load double, ptr %1, align 8, !tbaa !93
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.bd) ; 2 uses
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.22, i64 noundef 2) ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !93
  %i.bi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.be, double noundef %i.bh) ; 2 uses
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.22, i64 noundef 2) ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !93
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, double noundef %i.bl) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 41, ptr %i.a, align 1, !tbaa !89
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !134
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !659
  %.not.i20 = icmp eq i64 %i.bs, 0
  br i1 %.not.i20, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit22

bb.n:                                             ; preds = %bb.l
  %i.bu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i8 noundef signext 41) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit22

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit22: ; preds = %bb.m, %bb.n
  %.0.i21 = phi ptr [ %i.bt, %bb.m ], [ %i.bm, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit22, %bb.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19
  %.0 = phi ptr [ %.0.i21, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit22 ], [ %i.aw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19 ], [ %0, %bb.k ]
  ret ptr %.0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt8ios_base13_M_grow_wordsEib(ptr noundef nonnull align 8 dereferenceable(216), i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind
declare noundef i32 @_ZNSt8ios_base6xallocEv() local_unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK4CGAL14Surface_mesher33Surface_mesher_regular_edges_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EELb0EE14edges_in_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EELb0EEEiE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 24)) %0, i64 %.0.val, i32 %.8.val) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %.8.val.fr = freeze i32 %.8.val                 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = inttoptr i64 %.0.val to ptr              ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  switch i32 %.8.val.fr, label %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i [
    i32 0, label %.preheader.split.preheader.1.thread.thread
    i32 1, label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.thread
  ]

.split.us:                                        ; preds = %bb.k, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE17_M_realloc_insertIJSZ_EEEvN9__gnu_cxx17__normal_iteratorIPSZ_S11_EEDpOT_.exit.i.i.296
  %i.d = phi ptr [ %i.df, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE17_M_realloc_insertIJSZ_EEEvN9__gnu_cxx17__normal_iteratorIPSZ_S11_EEDpOT_.exit.i.i.296 ], [ %i.cm, %bb.k ] ; 3 uses
  %i.e = phi ptr [ %i.dk, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE17_M_realloc_insertIJSZ_EEEvN9__gnu_cxx17__normal_iteratorIPSZ_S11_EEDpOT_.exit.i.i.296 ], [ %i.cr, %bb.k ] ; 3 uses
  %i.f = phi ptr [ %i.dj, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE17_M_realloc_insertIJSZ_EEEvN9__gnu_cxx17__normal_iteratorIPSZ_S11_EEDpOT_.exit.i.i.296 ], [ %i.cs, %bb.k ] ; 3 uses
  switch i32 %.8.val.fr, label %.preheader.split.preheader.1.thread [
    i32 1, label %.preheader.split.preheader.2
    i32 2, label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.1.thread
  ]

.preheader.split.preheader.1.thread:              ; preds = %.split.us, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.175
  %i.g = phi ptr [ %i.d, %.split.us ], [ %i.cm, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.175 ] ; 2 uses
  %i.h = phi ptr [ %i.e, %.split.us ], [ %i.cr, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.175 ] ; 3 uses
  %i.i = phi ptr [ %i.f, %.split.us ], [ %i.cq, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.175 ] ; 4 uses
  %.not.i.i.1 = icmp eq ptr %i.i, %i.h
  br i1 %.not.i.i.1, label %.preheader.split.preheader.1.thread.thread, label %bb.a

bb.a:                                             ; preds = %.preheader.split.preheader.1.thread
  store ptr %i.a, ptr %i.i, align 8, !tbaa !343
  %.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 8589934593, ptr %.sroa.6.0..sroa_idx.1, align 8, !tbaa !215
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !2872
  br label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.1

.preheader.split.preheader.1.thread.thread:       ; preds = %.preheader, %.preheader.split.preheader.1.thread
  %i.k = phi ptr [ %i.h, %.preheader.split.preheader.1.thread ], [ null, %.preheader ] ; 5 uses
  %i.l = phi ptr [ %i.g, %.preheader.split.preheader.1.thread ], [ null, %.preheader ] ; 7 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775792
  br i1 %i.p, label %.loopexit34, label %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.1

_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.1: ; preds = %.preheader.split.preheader.1.thread.thread
  %i.q = ashr exact i64 %i.o, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i.1, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 576460752303423487)
  %i.u = select i1 %i.s, i64 576460752303423487, i64 %i.t ; 3 uses
  %.not.i.i.i.i.1 = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.1)
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #47
          to label %.noexc9.1 unwind label %.loopexit.loopexit.split-lp.loopexit ; 6 uses

.noexc9.1:                                        ; preds = %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.1
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o ; 2 uses
  store ptr %i.a, ptr %i.x, align 8, !tbaa !343
  %.sroa.6.0..sroa_idx2.1 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 8589934593, ptr %.sroa.6.0..sroa_idx2.1, align 8, !tbaa !215
  %.not10.i.i.i.i.i.i.1 = icmp eq ptr %i.l, %i.k
  br i1 %.not10.i.i.i.i.i.i.1, label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %.noexc9.1, %.lr.ph.i.i.i.i.i.i.1
  %.012.i.i.i.i.i.i.1 = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.1 ], [ %i.w, %.noexc9.1 ] ; 2 uses
  %.0911.i.i.i.i.i.i.1 = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.1 ], [ %i.l, %.noexc9.1 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.1, i64 16, i1 false), !tbaa.struct !2873, !alias.scope !2874
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.1, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.1, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %i.y, %i.k
  br i1 %.not.i.i.i.i.i.i.1, label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.1, !llvm.loop !2871

_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.1, %.noexc9.1
  %.0.lcssa.i.i.i.i.i.i.1 = phi ptr [ %i.w, %.noexc9.1 ], [ %i.z, %.lr.ph.i.i.i.i.i.i.1 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.1, i64 16 ; 2 uses
  %.not.i23.i.i.i.1 = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i.i.1, label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE17_M_realloc_insertIJSZ_EEEvN9__gnu_cxx17__normal_iteratorIPSZ_S11_EEDpOT_.exit.i.i.1, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #43
  br label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE17_M_realloc_insertIJSZ_EEEvN9__gnu_cxx17__normal_iteratorIPSZ_S11_EEDpOT_.exit.i.i.1

_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE17_M_realloc_insertIJSZ_EEEvN9__gnu_cxx17__normal_iteratorIPSZ_S11_EEDpOT_.exit.i.i.1: ; preds = %bb.b, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.1
  store ptr %i.w, ptr %0, align 8, !tbaa !539
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !2872
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u ; 2 uses
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !530
  br label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.1

_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.1: ; preds = %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE17_M_realloc_insertIJSZ_EEEvN9__gnu_cxx17__normal_iteratorIPSZ_S11_EEDpOT_.exit.i.i.1, %bb.a
  %i.ac = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE17_M_realloc_insertIJSZ_EEEvN9__gnu_cxx17__normal_iteratorIPSZ_S11_EEDpOT_.exit.i.i.1 ], [ %i.g, %bb.a ]
  %i.ad = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE17_M_realloc_insertIJSZ_EEEvN9__gnu_cxx17__normal_iteratorIPSZ_S11_EEDpOT_.exit.i.i.1 ], [ %i.h, %bb.a ]
  %i.ae = phi ptr [ %i.aa, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE17_M_realloc_insertIJSZ_EEEvN9__gnu_cxx17__normal_iteratorIPSZ_S11_EEDpOT_.exit.i.i.1 ], [ %i.j, %bb.a ]
  %.not8.1.1 = icmp eq i32 %.8.val.fr, 3
  br i1 %.not8.1.1, label %.split.us.2, label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.1.thread

_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.1.thread: ; preds = %.split.us, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.1
  %i.af = phi ptr [ %i.ae, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.1 ], [ %i.f, %.split.us ] ; 4 uses
  %i.ag = phi ptr [ %i.ad, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.1 ], [ %i.e, %.split.us ] ; 7 uses
  %i.ah = phi ptr [ %i.ac, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.1 ], [ %i.d, %.split.us ] ; 7 uses
  %.not.i.i.1.1 = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.1.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.1.thread
  store ptr %i.a, ptr %i.af, align 8, !tbaa !343
  %.sroa.6.0..sroa_idx.1.1 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 12884901889, ptr %.sroa.6.0..sroa_idx.1.1, align 8, !tbaa !215
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !2872
  br label %.split.us.1

bb.d:                                             ; preds = %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.1.thread
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 4 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775792
  br i1 %i.am, label %.loopexit34, label %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.1.1

_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.1.1: ; preds = %bb.d
  %i.an = ashr exact i64 %i.al, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.1.1 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add nsw i64 %.sroa.speculated.i.i.i.i.1.1, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 576460752303423487)
  %i.ar = select i1 %i.ap, i64 576460752303423487, i64 %i.aq ; 3 uses
  %.not.i.i.i.i.1.1 = icmp ne i64 %i.ar, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.1.1)
  %i.as = shl nuw nsw i64 %i.ar, 4
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #47
          to label %.noexc9.1.1 unwind label %.loopexit.loopexit.split-lp.loopexit ; 6 uses

.noexc9.1.1:                                      ; preds = %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.1.1
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al ; 2 uses
  store ptr %i.a, ptr %i.au, align 8, !tbaa !343
  %.sroa.6.0..sroa_idx2.1.1 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 12884901889, ptr %.sroa.6.0..sroa_idx2.1.1, align 8, !tbaa !215
  %.not10.i.i.i.i.i.i.1.1 = icmp eq ptr %i.ah, %i.ag
  br i1 %.not10.i.i.i.i.i.i.1.1, label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.1.1, label %.lr.ph.i.i.i.i.i.i.1.1

.lr.ph.i.i.i.i.i.i.1.1:                           ; preds = %.noexc9.1.1, %.lr.ph.i.i.i.i.i.i.1.1
  %.012.i.i.i.i.i.i.1.1 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.1.1 ], [ %i.at, %.noexc9.1.1 ] ; 2 uses
  %.0911.i.i.i.i.i.i.1.1 = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.1.1 ], [ %i.ah, %.noexc9.1.1 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.1.1, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.1.1, i64 16, i1 false), !tbaa.struct !2873, !alias.scope !2874
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.1.1, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.1.1, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.1.1 = icmp eq ptr %i.av, %i.ag
  br i1 %.not.i.i.i.i.i.i.1.1, label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.1.1, label %.lr.ph.i.i.i.i.i.i.1.1, !llvm.loop !2871

_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.1.1: ; preds = %.lr.ph.i.i.i.i.i.i.1.1, %.noexc9.1.1
  %.0.lcssa.i.i.i.i.i.i.1.1 = phi ptr [ %i.at, %.noexc9.1.1 ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.1.1 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.1.1, i64 16 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #43
  store ptr %i.at, ptr %0, align 8, !tbaa !539
  store ptr %i.ax, ptr %i.b, align 8, !tbaa !2872
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.ar ; 2 uses
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !530
  br label %.split.us.1

.split.us.1:                                      ; preds = %bb.c, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.1.1
  %i.az = phi ptr [ %i.ah, %bb.c ], [ %i.at, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.1.1 ]
  %i.ba = phi ptr [ %i.ag, %bb.c ], [ %i.ay, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.1.1 ]
  %i.bb = phi ptr [ %i.ai, %bb.c ], [ %i.ax, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.1.1 ]
  %.not.2 = icmp eq i32 %.8.val.fr, 2
  br i1 %.not.2, label %.split.us.2, label %.preheader.split.preheader.2

.preheader.split.preheader.2:                     ; preds = %.split.us, %.split.us.1
  %i.bc = phi ptr [ %i.d, %.split.us ], [ %i.az, %.split.us.1 ] ; 7 uses
  %i.bd = phi ptr [ %i.e, %.split.us ], [ %i.ba, %.split.us.1 ] ; 6 uses
  %i.be = phi ptr [ %i.f, %.split.us ], [ %i.bb, %.split.us.1 ] ; 4 uses
  %.not.i.i.2 = icmp eq ptr %i.be, %i.bd
  br i1 %.not.i.i.2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.split.preheader.2
  store ptr %i.a, ptr %i.be, align 8, !tbaa !343
  %.sroa.6.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 12884901890, ptr %.sroa.6.0..sroa_idx.2, align 8, !tbaa !215
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.bf, ptr %i.b, align 8, !tbaa !2872
  br label %.split.us.2

bb.f:                                             ; preds = %.preheader.split.preheader.2
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 4 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775792
  br i1 %i.bj, label %.loopexit34, label %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.2

_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.2: ; preds = %bb.f
  %i.bk = ashr exact i64 %i.bi, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.2 = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i.i.2, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 576460752303423487)
  %i.bo = select i1 %i.bm, i64 576460752303423487, i64 %i.bn ; 3 uses
  %.not.i.i.i.i.2 = icmp ne i64 %i.bo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.2)
  %i.bp = shl nuw nsw i64 %i.bo, 4
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #47
          to label %.noexc9.2 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc9.2:                                        ; preds = %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.2
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bi ; 2 uses
  store ptr %i.a, ptr %i.br, align 8, !tbaa !343
  %.sroa.6.0..sroa_idx2.2 = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 12884901890, ptr %.sroa.6.0..sroa_idx2.2, align 8, !tbaa !215
  %.not10.i.i.i.i.i.i.2 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not10.i.i.i.i.i.i.2, label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.2, label %.lr.ph.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.2:                             ; preds = %.noexc9.2, %.lr.ph.i.i.i.i.i.i.2
  %.012.i.i.i.i.i.i.2 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.2 ], [ %i.bq, %.noexc9.2 ] ; 2 uses
  %.0911.i.i.i.i.i.i.2 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.2 ], [ %i.bc, %.noexc9.2 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.2, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.2, i64 16, i1 false), !tbaa.struct !2873, !alias.scope !2874
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.2, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.2, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.2 = icmp eq ptr %i.bs, %i.bd
  br i1 %.not.i.i.i.i.i.i.2, label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.2, label %.lr.ph.i.i.i.i.i.i.2, !llvm.loop !2871

_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.i.2, %.noexc9.2
  %.0.lcssa.i.i.i.i.i.i.2 = phi ptr [ %i.bq, %.noexc9.2 ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.2 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.2, i64 16
  %.not.i23.i.i.i.2 = icmp eq ptr %i.bc, null
  br i1 %.not.i23.i.i.i.2, label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE17_M_realloc_insertIJSZ_EEEvN9__gnu_cxx17__normal_iteratorIPSZ_S11_EEDpOT_.exit.i.i.2, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bi) #43
  br label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE17_M_realloc_insertIJSZ_EEEvN9__gnu_cxx17__normal_iteratorIPSZ_S11_EEDpOT_.exit.i.i.2

_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE17_M_realloc_insertIJSZ_EEEvN9__gnu_cxx17__normal_iteratorIPSZ_S11_EEDpOT_.exit.i.i.2: ; preds = %bb.g, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.2
  store ptr %i.bq, ptr %0, align 8, !tbaa !539
  store ptr %i.bu, ptr %i.b, align 8, !tbaa !2872
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.bv, ptr %i.c, align 8, !tbaa !530
  br label %.split.us.2

.split.us.2:                                      ; preds = %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.1, %.split.us.1, %bb.e, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE17_M_realloc_insertIJSZ_EEEvN9__gnu_cxx17__normal_iteratorIPSZ_S11_EEDpOT_.exit.i.i.2
  ret void

.loopexit34:                                      ; preds = %bb.f, %.preheader.split.preheader.1.thread.thread, %bb.d, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.thread, %.thread
  %.lcssa25 = phi ptr [ %i.cb, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.thread ], [ %i.ah, %bb.d ], [ %i.ct, %.thread ], [ %i.l, %.preheader.split.preheader.1.thread.thread ], [ %i.bc, %bb.f ]
  %.lcssa23 = phi i64 [ %i.cd, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.thread ], [ %i.ak, %bb.d ], [ %i.cw, %.thread ], [ %i.n, %.preheader.split.preheader.1.thread.thread ], [ %i.bh, %bb.f ]
  %.lcssa21 = phi ptr [ %i.ca, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.thread ], [ %i.ag, %bb.d ], [ %i.cu, %.thread ], [ %i.k, %.preheader.split.preheader.1.thread.thread ], [ %i.bd, %bb.f ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #46
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit34
  unreachable

_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %.preheader
  %i.bw = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #47
          to label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit unwind label %.loopexit.loopexit ; 6 uses

.loopexit.loopexit:                               ; preds = %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.282, %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.160, %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i
  %.lcssa26.ph = phi ptr [ null, %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cb, %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.160 ], [ %i.ct, %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.282 ]
  %.lcssa24.ph = phi i64 [ 0, %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cd, %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.160 ], [ %i.cw, %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.282 ]
  %.lcssa22.ph = phi ptr [ null, %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ca, %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.160 ], [ %i.cu, %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.282 ]
  %lpad.loopexit38 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp.loopexit:             ; preds = %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.1.1, %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.1
  %.lcssa26.ph35.ph = phi ptr [ %i.l, %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.1 ], [ %i.ah, %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.1.1 ]
  %.lcssa24.ph36.ph = phi i64 [ %i.n, %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.1 ], [ %i.ak, %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.1.1 ]
  %.lcssa22.ph37.ph = phi ptr [ %i.k, %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.1 ], [ %i.ag, %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.1.1 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp.loopexit.split-lp:    ; preds = %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.2
  %lpad.loopexit.split-lp48 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.loopexit34
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp.loopexit.split-lp, %.loopexit.loopexit.split-lp.loopexit, %.loopexit.split-lp
  %1 = phi ptr [ %.lcssa25, %.loopexit.split-lp ], [ %.lcssa26.ph, %.loopexit.loopexit ], [ %.lcssa26.ph35.ph, %.loopexit.loopexit.split-lp.loopexit ], [ %i.bc, %.loopexit.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %2 = phi i64 [ %.lcssa23, %.loopexit.split-lp ], [ %.lcssa24.ph, %.loopexit.loopexit ], [ %.lcssa24.ph36.ph, %.loopexit.loopexit.split-lp.loopexit ], [ %i.bh, %.loopexit.loopexit.split-lp.loopexit.split-lp ]
  %3 = phi ptr [ %.lcssa21, %.loopexit.split-lp ], [ %.lcssa22.ph, %.loopexit.loopexit ], [ %.lcssa22.ph37.ph, %.loopexit.loopexit.split-lp.loopexit ], [ %i.bd, %.loopexit.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit38, %.loopexit.loopexit ], [ %lpad.loopexit, %.loopexit.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp48, %.loopexit.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.bx = ptrtoint ptr %3 to i64
  %i.by = sub i64 %i.bx, %2
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef %i.by) #43
  br label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EED2Ev.exit

_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EED2Ev.exit: ; preds = %.loopexit, %bb.h
  resume { ptr, i32 } %lpad.phi

_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit: ; preds = %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.a, ptr %i.bw, align 8, !tbaa !343
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 4294967296, ptr %.sroa.6.0..sroa_idx2, align 8, !tbaa !215
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 4 uses
  store ptr %i.bw, ptr %0, align 8, !tbaa !539
  store ptr %i.bz, ptr %i.b, align 8, !tbaa !2872
  store ptr %i.bz, ptr %i.c, align 8, !tbaa !530
  %.not8.154 = icmp eq i32 %.8.val.fr, 2
  br i1 %.not8.154, label %.thread, label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.thread

_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.thread: ; preds = %.preheader, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit
  %i.ca = phi ptr [ %i.bz, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit ], [ null, %.preheader ] ; 5 uses
  %i.cb = phi ptr [ %i.bw, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit ], [ null, %.preheader ] ; 7 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64               ; 3 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 4 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775792
  br i1 %i.cf, label %.loopexit34, label %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.160

_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.160: ; preds = %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.thread
  %i.cg = ashr exact i64 %i.ce, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.158 = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i.i.158, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 576460752303423487)
  %i.ck = select i1 %i.ci, i64 576460752303423487, i64 %i.cj ; 3 uses
  %.not.i.i.i.i.159 = icmp ne i64 %i.ck, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.159)
  %i.cl = shl nuw nsw i64 %i.ck, 4
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #47
          to label %.noexc9.163 unwind label %.loopexit.loopexit ; 8 uses

.noexc9.163:                                      ; preds = %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.160
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ce ; 2 uses
  store ptr %i.a, ptr %i.cn, align 8, !tbaa !343
  %.sroa.6.0..sroa_idx2.161 = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 8589934592, ptr %.sroa.6.0..sroa_idx2.161, align 8, !tbaa !215
  %.not10.i.i.i.i.i.i.162 = icmp eq ptr %i.cb, %i.ca
  br i1 %.not10.i.i.i.i.i.i.162, label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.173, label %.lr.ph.i.i.i.i.i.i.168

.lr.ph.i.i.i.i.i.i.168:                           ; preds = %.noexc9.163, %.lr.ph.i.i.i.i.i.i.168
  %.012.i.i.i.i.i.i.165 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.168 ], [ %i.cm, %.noexc9.163 ] ; 2 uses
  %.0911.i.i.i.i.i.i.166 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.168 ], [ %i.cb, %.noexc9.163 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.165, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.166, i64 16, i1 false), !tbaa.struct !2873, !alias.scope !2874
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.166, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.165, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.167 = icmp eq ptr %i.co, %i.ca
  br i1 %.not.i.i.i.i.i.i.167, label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.173, label %.lr.ph.i.i.i.i.i.i.168, !llvm.loop !2871

_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.173: ; preds = %.lr.ph.i.i.i.i.i.i.168, %.noexc9.163
  %.0.lcssa.i.i.i.i.i.i.171 = phi ptr [ %i.cm, %.noexc9.163 ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.168 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.171, i64 16 ; 4 uses
  %.not.i23.i.i.i.172 = icmp eq ptr %i.cb, null
  br i1 %.not.i23.i.i.i.172, label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.175, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.173
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.ce) #43
  br label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.175

_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.175: ; preds = %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE11_S_relocateEPSZ_S12_S12_RS10_.exit22.i.i.i.173, %bb.i
  store ptr %i.cm, ptr %0, align 8, !tbaa !539
  store ptr %i.cq, ptr %i.b, align 8, !tbaa !2872
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.ck ; 5 uses
  store ptr %i.cr, ptr %i.c, align 8, !tbaa !530
  %.not8.276 = icmp eq i32 %.8.val.fr, 3
  br i1 %.not8.276, label %.preheader.split.preheader.1.thread, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit.175
  %.not.i.i.278 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i.i.278, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.a, ptr %i.cq, align 8, !tbaa !343
  %.sroa.6.0..sroa_idx.279 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.171, i64 24
  store i64 12884901888, ptr %.sroa.6.0..sroa_idx.279, align 8, !tbaa !215
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.171, i64 32 ; 2 uses
  store ptr %i.cs, ptr %i.b, align 8, !tbaa !2872
  br label %.split.us

.thread:                                          ; preds = %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit, %bb.j
  %i.ct = phi ptr [ %i.cm, %bb.j ], [ %i.bw, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit ] ; 6 uses
  %i.cu = phi ptr [ %i.cr, %bb.j ], [ %i.bz, %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE9push_backEOSZ_.exit ] ; 5 uses
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.ct to i64               ; 3 uses
  %i.cx = sub i64 %i.cv, %i.cw                    ; 4 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775792
  br i1 %i.cy, label %.loopexit34, label %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.282

_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.282: ; preds = %.thread
  %i.cz = ashr exact i64 %i.cx, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.280 = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i.i.280, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.da, i64 576460752303423487)
  %i.dd = select i1 %i.db, i64 576460752303423487, i64 %i.dc ; 3 uses
  %.not.i.i.i.i.281 = icmp ne i64 %i.dd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.281)
  %i.de = shl nuw nsw i64 %i.dd, 4
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #47
          to label %.noexc9.285 unwind label %.loopexit.loopexit ; 6 uses

.noexc9.285:                                      ; preds = %_ZNKSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE12_M_check_lenEmPKc.exit.i.i.i.282
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cx ; 2 uses
  store ptr %i.a, ptr %i.dg, align 8, !tbaa !343
  %.sroa.6.0..sroa_idx2.283 = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i64 12884901888, ptr %.sroa.6.0..sroa_idx2.283, align 8, !tbaa !215
  %.not10.i.i.i.i.i.i.284 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not10.i.i.i.i.i.i.284, label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE17_M_realloc_insertIJSZ_EEEvN9__gnu_cxx17__normal_iteratorIPSZ_S11_EEDpOT_.exit.i.i.296, label %.lr.ph.i.i.i.i.i.i.290

.lr.ph.i.i.i.i.i.i.290:                           ; preds = %.noexc9.285, %.lr.ph.i.i.i.i.i.i.290
  %.012.i.i.i.i.i.i.287 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i.290 ], [ %i.df, %.noexc9.285 ] ; 2 uses
  %.0911.i.i.i.i.i.i.288 = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i.290 ], [ %i.ct, %.noexc9.285 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.287, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.288, i64 16, i1 false), !tbaa.struct !2873, !alias.scope !2874
  %i.dh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.288, i64 16 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.287, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.289 = icmp eq ptr %i.dh, %i.cu
  br i1 %.not.i.i.i.i.i.i.289, label %_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE17_M_realloc_insertIJSZ_EEEvN9__gnu_cxx17__normal_iteratorIPSZ_S11_EEDpOT_.exit.i.i.296, label %.lr.ph.i.i.i.i.i.i.290, !llvm.loop !2871

_ZNSt6vectorIN4CGAL6TripleINS0_8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS8_NS0_34Delaunay_triangulation_cell_base_3IS8_NS0_25Triangulation_cell_base_3IS8_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS8_NS0_27Triangulation_vertex_base_3IS8_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESW_SW_EELb0EEEiiEESaISZ_EE17_M_realloc_insertIJSZ_EEEvN9__gnu_cxx17__normal_iteratorIPSZ_S11_EEDpOT_.exit.i.i.296: ; preds = %.lr.ph.i.i.i.i.i.i.290, %.noexc9.285
  %.0.lcssa.i.i.i.i.i.i.293 = phi ptr [ %i.df, %.noexc9.285 ], [ %i.di, %.lr.ph.i.i.i.i.i.i.290 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.293, i64 16 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cx) #43
  store ptr %i.df, ptr %0, align 8, !tbaa !539
  store ptr %i.dj, ptr %i.b, align 8, !tbaa !2872
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.dd ; 2 uses
  store ptr %i.dk, ptr %i.c, align 8, !tbaa !530
  br label %.split.us
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE50before_insertion_handle_facet_inside_conflict_zoneERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EELb0EEEiES1V_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val21 = load ptr, ptr %1, align 8             ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val22 = load i32, ptr %i.a, align 8           ; 4 uses
  %i.b = sext i32 %.val22 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %.val21, i64 %i.b
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !343 ; 15 uses
  %i.d = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !296
  %i.e = icmp eq ptr %.val21, %i.d
  br i1 %i.e, label %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EELb, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !296
  %i.h = icmp eq ptr %.val21, %i.g
  br i1 %i.h, label %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EELb, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !296
  %i.k = icmp eq ptr %.val21, %i.j
  %..i.i.i.i = select i1 %i.k, i32 2, i32 3
  br label %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EELb

_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EELb: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i.i.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], [ %..i.i.i.i, %bb.c ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !496, !nonnull !81, !align !330
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 200
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.n, align 8, !tbaa !169 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val21, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !168
  %i.q = icmp eq ptr %i.p, %.sroa.0.0.copyload.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val21, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.s, %.sroa.0.0.copyload.i.i
  %or.cond.i.i = select i1 %i.q, i1 true, i1 %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %.val21, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.v, %.sroa.0.0.copyload.i.i
  %or.cond8.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.w
  br i1 %or.cond8.i.i, label %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEE.exit.thread, label %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEE.exit

_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEE.exit: ; preds = %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EELb
  %i.x = getelementptr inbounds nuw i8, ptr %.val21, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !168
  %i.z = icmp eq ptr %i.y, %.sroa.0.0.copyload.i.i
  br i1 %i.z, label %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEE.exit.thread, label %bb.e

_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEE.exit.thread: ; preds = %_ZNK4CGAL14Surface_mesher19Surface_mesher_baseINS_28Complex_2_in_triangulation_3INS_24Delaunay_triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_34Delaunay_triangulation_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultESQ_EEvEENS_18Implicit_surface_3IS6_St8functionIFdNS_7Point_3IS5_EEEEEENS0_25Implicit_surface_oracle_3IS6_SZ_NS_10INTERN_RET27Real_embeddable_traits_baseIdSt17integral_constantIbLb1EEE3SgnENS0_12_GLOBAL__N_110Return_minINS_4SignEEENS_17Creator_uniform_3IdSW_EENS0_19Null_oracle_visitorEEENS_31Surface_mesh_default_criteria_3ISR_EEE12mirror_facetERKSt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSE_IS6_NSF_IS6_NSG_IS6_NSH_IS6_NSI_ISP_EEEEEEEEEESQ_SQ_SQ_EELb, %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !168
  %i.ac = icmp eq ptr %i.ab, %.sroa.0.0.copyload.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, %.sroa.0.0.copyload.i.i
  %or.cond.i.i24 = select i1 %i.ac, i1 true, i1 %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp eq ptr %i.ah, %.sroa.0.0.copyload.i.i
  %or.cond8.i.i25 = select i1 %or.cond.i.i24, i1 true, i1 %i.ai
  br i1 %or.cond8.i.i25, label %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEE.exit26.thread, label %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEE.exit26

_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEE.exit26: ; preds = %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEE.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !168
  %i.al = icmp eq ptr %i.ak, %.sroa.0.0.copyload.i.i
  br i1 %i.al, label %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEE.exit26.thread, label %bb.e

_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEE.exit26.thread: ; preds = %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEE.exit.thread, %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEE.exit26
  %i.am = load ptr, ptr %2, align 8, !tbaa !296   ; 2 uses
  %i.an = icmp eq ptr %.val21, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i32, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp eq i32 %.val22, %i.ap
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false
  br i1 %i.ar, label %bb.q, label %bb.d

bb.d:                                             ; preds = %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEE.exit26.thread
  %i.as = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i, %i.am
  %i.at = icmp eq i32 %.0.i.i.i.i, %i.ap
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br label %bb.q

bb.e:                                             ; preds = %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEE.exit26, %_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEE.exit
  %i.av = icmp ult ptr %.val21, %.sroa.0.0.copyload.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !510, !nonnull !81 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !445 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !90
  %i.bc = and i64 %i.bb, -2                       ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 0                    ; 2 uses
  br i1 %i.av, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  br i1 %i.bd, label %_ZN4CGAL10Double_mapISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS8_NS_34Delaunay_triangulation_cell_base_3IS8_NS_25Triangulation_cell_base_3IS8_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS8_NS_27Triangulation_vertex_base_3IS8_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESW_SW_EELb0EEEiESt6vectorIdSaIdEESt4lessISZ_ES13_IS12_EE5eraseERKSZ_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.be = inttoptr i64 %i.bc to ptr
  br label %.outer

.outer:                                           ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread20.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.pn.i.i.i.ph = phi ptr [ %i.bm, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread20.i.i.i.i.i ], [ %i.be, %.lr.ph.i.i.i.i.i ]
  %.01725.i.i.i.i.i.ph = phi ptr [ %.026.i.i.i.i.i.le, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread20.i.i.i.i.i ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  br label %bb.g

bb.g:                                             ; preds = %.outer, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread.i.i.i.i.i
  %.pn.i.i.i = phi ptr [ %i.bp, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread.i.i.i.i.i ], [ %.pn.i.i.i.ph, %.outer ] ; 5 uses
  %.026.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -40
  %i.bf = load ptr, ptr %.026.i.i.i.i.i, align 8, !tbaa !296 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %.val21
  br i1 %i.bg, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = icmp ult ptr %.val21, %i.bf
  br i1 %i.bh, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread20.i.i.i.i.i, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.i.i.i.i.i

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.i.i.i.i.i: ; preds = %bb.h
  %i.bi = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !406
  %i.bk = icmp slt i32 %i.bj, %.val22
  br i1 %i.bk, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread20.i.i.i.i.i

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread20.i.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.i.i.i.i.i, %bb.h
  %.026.i.i.i.i.i.le = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -40 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !447 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %._crit_edge.i.i.i.i.i, label %.outer, !llvm.loop !2875

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.i.i.i.i.i, %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !447 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %._crit_edge.i.i.i.i.i, label %bb.g, !llvm.loop !2875

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread20.i.i.i.i.i, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread.i.i.i.i.i
  %.017.lcssa.i.i.i.i.i = phi ptr [ %.01725.i.i.i.i.i.ph, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread.i.i.i.i.i ], [ %.026.i.i.i.i.i.le, %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit.thread20.i.i.i.i.i ] ; 5 uses
  %i.br = icmp eq ptr %.017.lcssa.i.i.i.i.i, %i.az
  br i1 %i.br, label %_ZN4CGAL10Double_mapISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS8_NS_34Delaunay_triangulation_cell_base_3IS8_NS_25Triangulation_cell_base_3IS8_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS8_NS_27Triangulation_vertex_base_3IS8_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESW_SW_EELb0EEEiESt6vectorIdSaIdEESt4lessISZ_ES13_IS12_EE5eraseERKSZ_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bs = load ptr, ptr %.017.lcssa.i.i.i.i.i, align 8, !tbaa !296 ; 2 uses
  %i.bt = icmp ult ptr %.val21, %i.bs
  br i1 %i.bt, label %_ZN4CGAL10Double_mapISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS8_NS_34Delaunay_triangulation_cell_base_3IS8_NS_25Triangulation_cell_base_3IS8_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS8_NS_27Triangulation_vertex_base_3IS8_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESW_SW_EELb0EEEiESt6vectorIdSaIdEESt4lessISZ_ES13_IS12_EE5eraseERKSZ_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = icmp ult ptr %i.bs, %.val21
  br i1 %i.bu, label %_ZN4CGAL10Double_mapISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS8_NS_34Delaunay_triangulation_cell_base_3IS8_NS_25Triangulation_cell_base_3IS8_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS8_NS_27Triangulation_vertex_base_3IS8_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS_14Sequential_tagEEEEEEEEEEEEENS_7DefaultESW_SW_EELb0EEEiESt6vectorIdSaIdEESt4lessISZ_ES13_IS12_EE5eraseERKSZ_.exit.sink.split, label %_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit19.i.i.i.i.i

_ZNKSt4lessISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEEiEEclERKSZ_S12_.exit19.i.i.i.i.i: ; preds = %bb.j
end_hunk_2
