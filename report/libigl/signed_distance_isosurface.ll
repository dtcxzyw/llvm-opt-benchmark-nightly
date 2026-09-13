Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/signed_distance_isosurface?download=true
inline.NumInlined: 15413
inline.NumDeleted: 5213
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZNK4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_34Delaunay_triangulation_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEEEENS_14Sequential_tagEEENS_7DefaultEE14find_conflictsINS_24Delaunay_triangulation_3IS3_SM_SN_SN_E17Conflict_tester_3ENS_15Oneset_iteratorISt4pairINS_8internal11CC_iteratorINS_17Compact_containerINSB_IS3_NSC_IS3_NSD_IS3_NSE_IS3_NSF_ISM_EEEEEEEEEESN_SN_SN_EELb0EEEiEEESt20back_insert_iteratorISt6vectorIS14_SaIS14_EEENS_17Emptyset_iteratorEEENS_6TripleIT0_T1_T2_EES14_RKT_S1H_PbPKS15_S1L_:bb.a
  br label %bb.an

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS7_NS0_34Delaunay_triangulation_cell_base_3IS7_NS0_25Triangulation_cell_base_3IS7_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS7_NS0_27Triangulation_vertex_base_3IS7_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS4_IS7_NS8_IS7_NS9_IS7_NSA_IS7_NSB_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESV_SV_EELb0EEESaISX_EE12_M_check_lenEmPKc.exit.i.i.i68
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ag:                                            ; preds = %bb.t
  %i.dz = load ptr, ptr %15, align 8, !tbaa !298
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 64
  store i8 2, ptr %i.ea, align 1, !tbaa !348
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %bb.ag
  br i1 %or.cond4, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  %.sroa.0.0.copyload.i.i.i83 = load ptr, ptr %i.bq, align 8, !tbaa !345 ; 4 uses
  %i.eb = load ptr, ptr %.sroa.0.0.copyload.i.i.i83, align 8, !tbaa !298
  %i.ec = icmp eq ptr %i.eb, %i.bm
  br i1 %i.ec, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i83, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !298
  %i.ef = icmp eq ptr %i.ee, %i.bm
  br i1 %i.ef, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i83, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !298
  %i.ei = icmp eq ptr %i.eh, %i.bm
  %..i.i.i = select i1 %i.ei, i32 2, i32 3
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.0.i.i.i = phi i32 [ 1, %bb.aj ], [ 0, %bb.ai ], [ %..i.i.i, %bb.ak ]
  %i.ej = load ptr, ptr %6, align 8, !tbaa !298   ; 2 uses
  %i.ek = icmp eq ptr %.sroa.0.0.copyload.i.i.i83, %i.ej
  %i.el = load i32, ptr %i.bb, align 8            ; 2 uses
  %i.em = icmp eq i32 %.0.i.i.i, %i.el
  %i.en = select i1 %i.ek, i1 %i.em, i1 false
  br i1 %i.en, label %.critedge8, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eo = icmp eq ptr %i.ej, %i.bm
  %i.ep = zext i32 %i.el to i64
  %i.eq = icmp eq i64 %indvars.iv, %i.ep
  %i.er = select i1 %i.eo, i1 %i.eq, i1 false
  br i1 %i.er, label %.critedge8, label %.critedge

.critedge8:                                       ; preds = %bb.al, %bb.am
  store i8 1, ptr %7, align 1, !tbaa !267
  br label %.critedge

.critedge:                                        ; preds = %bb.ah, %.critedge8, %bb.am
  store i64 %i.bl, ptr %i.bc, align 8, !tbaa !345
  %i.es = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.es, ptr %i.bd, align 8, !tbaa !408
  br label %bb.an

bb.an:                                            ; preds = %bb.r, %bb.q, %bb.p, %.critedge, %_ZNSt6vectorIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS7_NS0_34Delaunay_triangulation_cell_base_3IS7_NS0_25Triangulation_cell_base_3IS7_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS7_NS0_27Triangulation_vertex_base_3IS7_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS4_IS7_NS8_IS7_NS9_IS7_NSA_IS7_NSB_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESV_SV_EELb0EEESaISX_EE17_M_realloc_insertIJRKSX_EEEvN9__gnu_cxx17__normal_iteratorIPSX_SZ_EEDpOT_.exit.i.i79, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.et = load i32, ptr %i.ay, align 8, !tbaa !166 ; 2 uses
  %i.eu = sext i32 %i.et to i64
  %.not52.not = icmp slt i64 %indvars.iv, %i.eu
  br i1 %.not52.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1835

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.y, %bb.u
  %.pn54 = phi { ptr, i32 } [ %i.co, %bb.y ], [ %i.ch, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %bb.at

._crit_edge.loopexit:                             ; preds = %bb.an
  %.pre125 = load i64, ptr %i.f, align 8, !tbaa !576
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt20back_insert_iteratorISt6vectorIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEESaISY_EEEaSERKSY_.exit.split
  %i.ev = phi i64 [ %.pre125, %._crit_edge.loopexit ], [ %i.bn, %_ZNSt20back_insert_iteratorISt6vectorIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEESaISY_EEEaSERKSY_.exit.split ] ; 2 uses
  %i.ew = phi i32 [ %i.et, %._crit_edge.loopexit ], [ %i.bg, %_ZNSt20back_insert_iteratorISt6vectorIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEESaISY_EEEaSERKSY_.exit.split ]
  %.not.i.i84 = icmp eq i64 %i.ev, 0
  br i1 %.not.i.i84, label %.split, label %_ZNSt20back_insert_iteratorISt6vectorIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEESaISY_EEEaSERKSY_.exit.split, !llvm.loop !1836

.split:                                           ; preds = %._crit_edge, %_ZNSt20back_insert_iteratorISt6vectorIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_34Delaunay_triangulation_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IS8_NSC_IvEEEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEEENS1_7DefaultESW_SW_EELb0EEESaISY_EEEaSERKSY_.exit.split.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.ex = load i64, ptr %i.g, align 8, !tbaa !570 ; 2 uses
  %.not.i.i.i85 = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i.i85, label %_ZNSt5stackIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS7_NS0_34Delaunay_triangulation_cell_base_3IS7_NS0_25Triangulation_cell_base_3IS7_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS7_NS0_27Triangulation_vertex_base_3IS7_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS4_IS7_NS8_IS7_NS9_IS7_NSA_IS7_NSB_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESV_SV_EELb0EEEN5boost9container12small_vectorISX_Lm64EvvEEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %.split
  %i.ey = load ptr, ptr %14, align 8, !tbaa !540  ; 2 uses
  %i.ez = icmp eq ptr %i.e, %i.ey
  br i1 %i.ez, label %_ZNSt5stackIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS7_NS0_34Delaunay_triangulation_cell_base_3IS7_NS0_25Triangulation_cell_base_3IS7_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS7_NS0_27Triangulation_vertex_base_3IS7_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS4_IS7_NS8_IS7_NS9_IS7_NSA_IS7_NSB_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESV_SV_EELb0EEEN5boost9container12small_vectorISX_Lm64EvvEEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fa = shl i64 %i.ex, 3
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fa) #38
  br label %_ZNSt5stackIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS7_NS0_34Delaunay_triangulation_cell_base_3IS7_NS0_25Triangulation_cell_base_3IS7_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS7_NS0_27Triangulation_vertex_base_3IS7_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS4_IS7_NS8_IS7_NS9_IS7_NSA_IS7_NSB_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESV_SV_EELb0EEEN5boost9container12small_vectorISX_Lm64EvvEEED2Ev.exit

_ZNSt5stackIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS7_NS0_34Delaunay_triangulation_cell_base_3IS7_NS0_25Triangulation_cell_base_3IS7_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS7_NS0_27Triangulation_vertex_base_3IS7_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS4_IS7_NS8_IS7_NS9_IS7_NSA_IS7_NSB_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESV_SV_EELb0EEEN5boost9container12small_vectorISX_Lm64EvvEEED2Ev.exit: ; preds = %.split, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  %i.fb = load i64, ptr %i.d, align 8, !tbaa !570 ; 2 uses
  %.not.i.i87 = icmp eq i64 %i.fb, 0
  br i1 %.not.i.i87, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt5stackIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS7_NS0_34Delaunay_triangulation_cell_base_3IS7_NS0_25Triangulation_cell_base_3IS7_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS7_NS0_27Triangulation_vertex_base_3IS7_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS4_IS7_NS8_IS7_NS9_IS7_NSA_IS7_NSB_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESV_SV_EELb0EEEN5boost9container12small_vectorISX_Lm64EvvEEED2Ev.exit
  %i.fc = load ptr, ptr %13, align 8, !tbaa !540  ; 2 uses
  %i.fd = icmp eq ptr %i.b, %i.fc
  br i1 %i.fd, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fe = shl i64 %i.fb, 3
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fe) #38
  br label %bb.aw

bb.at:                                            ; preds = %bb.ao, %bb.o, %bb.n
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %bb.ao ], [ %i.bp, %bb.o ], [ %i.bo, %bb.n ] ; 2 uses
  %i.ff = load i64, ptr %i.g, align 8, !tbaa !570 ; 2 uses
  %.not.i.i.i88 = icmp eq i64 %i.ff, 0
  %i.fg = load ptr, ptr %14, align 8              ; 2 uses
  %i.fh = icmp eq ptr %i.e, %i.fg
  %or.cond162 = select i1 %.not.i.i.i88, i1 true, i1 %i.fh
  br i1 %or.cond162, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.at, %bb.f
  %.sink159 = phi i64 [ %i.i, %bb.f ], [ %i.ff, %bb.at ]
  %.sink = phi ptr [ %i.j, %bb.f ], [ %i.fg, %bb.at ]
  %.pn54.pn.pn.ph = phi { ptr, i32 } [ %i.h, %bb.f ], [ %.pn54.pn, %bb.at ]
  %i.fi = shl i64 %.sink159, 3
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fi) #38
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.at, %bb.f
  %.pn54.pn.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %.pn54.pn, %bb.at ], [ %.pn54.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  %i.fj = load i64, ptr %i.d, align 8, !tbaa !570 ; 2 uses
  %.not.i.i91 = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i91, label %_ZN5boost9container6vectorIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEENS0_22small_vector_allocatorISZ_NS0_13new_allocatorIvEEvEEvED2Ev.exit92, label %bb.au

bb.au:                                            ; preds = %.body
  %i.fk = load ptr, ptr %13, align 8, !tbaa !540  ; 2 uses
  %i.fl = icmp eq ptr %i.b, %i.fk
  br i1 %i.fl, label %_ZN5boost9container6vectorIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEENS0_22small_vector_allocatorISZ_NS0_13new_allocatorIvEEvEEvED2Ev.exit92, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fm = shl i64 %i.fj, 3
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fm) #38
  br label %_ZN5boost9container6vectorIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEENS0_22small_vector_allocatorISZ_NS0_13new_allocatorIvEEvEEvED2Ev.exit92

_ZN5boost9container6vectorIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEENS0_22small_vector_allocatorISZ_NS0_13new_allocatorIvEEvEEvED2Ev.exit92: ; preds = %.body, %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  resume { ptr, i32 } %.pn54.pn.pn

bb.aw:                                            ; preds = %bb.as, %bb.ar, %_ZNSt5stackIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS7_NS0_34Delaunay_triangulation_cell_base_3IS7_NS0_25Triangulation_cell_base_3IS7_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS7_NS0_27Triangulation_vertex_base_3IS7_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS4_IS7_NS8_IS7_NS9_IS7_NSA_IS7_NSB_IvEEEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEEENS0_7DefaultESV_SV_EELb0EEEN5boost9container12small_vectorISX_Lm64EvvEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost9container6vectorIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEENS0_22small_vector_allocatorISZ_NS0_13new_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPSZ_Lb1EEEEEvT_S19_PNS_11move_detail13disable_if_orIvNS1A_7is_sameINS1A_17integral_constantIjLj1EEENS1D_IjLj0EEEEENS1A_14is_convertibleIS19_mEENS0_3dtl17is_input_iteratorIS19_Xsr21has_iterator_categoryIS19_EE5valueEEENS1A_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !540    ; 8 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !540    ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = ashr exact i64 %i.e, 3                   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !570  ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.j, label %bb.c, label %bb.d, !prof !261

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.134) #46
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #51 ; 5 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !540    ; 3 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %_ZN5boost9container22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEENS0_13new_allocatorIvEEvE10deallocateEPSZ_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !576
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = icmp eq ptr %i.n, %i.l
  br i1 %i.o, label %_ZN5boost9container22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEENS0_13new_allocatorIvEEvE10deallocateEPSZ_m.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = shl i64 %i.h, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.p) #38
  br label %_ZN5boost9container22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEENS0_13new_allocatorIvEEvE10deallocateEPSZ_m.exit

_ZN5boost9container22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEENS0_13new_allocatorIvEEvE10deallocateEPSZ_m.exit: ; preds = %bb.f, %bb.e, %bb.d
  store ptr %i.k, ptr %0, align 8, !tbaa !568
  store i64 %i.f, ptr %i.g, align 8, !tbaa !570
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.q, align 8, !tbaa !576
  %i.r = load ptr, ptr %1, align 8, !tbaa !540    ; 4 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !540    ; 2 uses
  %i.t = icmp ne ptr %i.r, %i.s
  %i.u = icmp ne ptr %i.r, null
  %spec.select.i.i = and i1 %i.u, %i.t
  br i1 %spec.select.i.i, label %bb.g, label %bb.h, !prof !419

bb.g:                                             ; preds = %_ZN5boost9container22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEENS0_13new_allocatorIvEEvE10deallocateEPSZ_m.exit
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.r, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds i8, ptr %i.k, i64 %i.x
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEENS0_13new_allocatorIvEEvE10deallocateEPSZ_m.exit
  %.0.i = phi ptr [ %i.y, %bb.g ], [ %i.k, %_ZN5boost9container22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEENS0_13new_allocatorIvEEvE10deallocateEPSZ_m.exit ]
  %i.z = ptrtoint ptr %.0.i to i64
  %i.aa = ptrtoint ptr %i.k to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  store i64 %i.ac, ptr %i.q, align 8, !tbaa !569
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %0, align 8, !tbaa !540   ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !576 ; 6 uses
  %i.ag = icmp ult i64 %i.af, %i.f
  br i1 %i.ag, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %.not.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl21memmove_n_source_destINS0_12vec_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_52Delaunay_triangulation_cell_base_with_circumcenter_3INS4_28Robust_circumcenter_traits_3INS4_5EpickEEENS4_24Surface_mesh_cell_base_3ISB_NS4_34Delaunay_triangulation_cell_base_3ISB_NS4_25Triangulation_cell_base_3ISB_NS4_28Triangulation_ds_cell_base_3INS4_30Triangulation_data_structure_3INS4_26Surface_mesh_vertex_base_3ISB_NS4_27Triangulation_vertex_base_3ISB_NS4_30Triangulation_ds_vertex_base_3IvEEEEEENS8_ISB_NSC_ISB_NSD_ISB_NSE_ISB_NSF_IvEEEEEEEEEENS4_14Sequential_tagEEEEEEEEEEEEENS4_7DefaultESZ_SZ_EELb0EEELb1EEES12_EET_S14_mRT0_.exit.i, label %bb.k, !prof !261

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp ne ptr %i.ad, null
  %i.ai = icmp ne ptr %i.a, null
  %or.cond.i.i13 = and i1 %i.ai, %i.ah
  br i1 %or.cond.i.i13, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = shl i64 %i.af, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.a, i64 %i.aj, i1 false), !noalias !1843
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.af
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.af
  br label %_ZN5boost9container3dtl21memmove_n_source_destINS0_12vec_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_52Delaunay_triangulation_cell_base_with_circumcenter_3INS4_28Robust_circumcenter_traits_3INS4_5EpickEEENS4_24Surface_mesh_cell_base_3ISB_NS4_34Delaunay_triangulation_cell_base_3ISB_NS4_25Triangulation_cell_base_3ISB_NS4_28Triangulation_ds_cell_base_3INS4_30Triangulation_data_structure_3INS4_26Surface_mesh_vertex_base_3ISB_NS4_27Triangulation_vertex_base_3ISB_NS4_30Triangulation_ds_vertex_base_3IvEEEEEENS8_ISB_NSC_ISB_NSD_ISB_NSE_ISB_NSF_IvEEEEEEEEEENS4_14Sequential_tagEEEEEEEEEEEEENS4_7DefaultESZ_SZ_EELb0EEELb1EEES12_EET_S14_mRT0_.exit.i

_ZN5boost9container3dtl21memmove_n_source_destINS0_12vec_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_52Delaunay_triangulation_cell_base_with_circumcenter_3INS4_28Robust_circumcenter_traits_3INS4_5EpickEEENS4_24Surface_mesh_cell_base_3ISB_NS4_34Delaunay_triangulation_cell_base_3ISB_NS4_25Triangulation_cell_base_3ISB_NS4_28Triangulation_ds_cell_base_3INS4_30Triangulation_data_structure_3INS4_26Surface_mesh_vertex_base_3ISB_NS4_27Triangulation_vertex_base_3ISB_NS4_30Triangulation_ds_vertex_base_3IvEEEEEENS8_ISB_NSC_ISB_NSD_ISB_NSE_ISB_NSF_IvEEEEEEEEEENS4_14Sequential_tagEEEEEEEEEEEEENS4_7DefaultESZ_SZ_EELb0EEELb1EEES12_EET_S14_mRT0_.exit.i: ; preds = %bb.m, %bb.j
  %.sroa.022.0.i = phi ptr [ %i.a, %bb.j ], [ %i.ak, %bb.m ] ; 2 uses
  %.034.i = phi ptr [ %i.ad, %bb.j ], [ %i.al, %bb.m ] ; 2 uses
  %i.am = icmp ne ptr %.034.i, null
  %i.an = icmp ne ptr %.sroa.022.0.i, null
  %or.cond.i14.i = and i1 %i.an, %i.am
  br i1 %or.cond.i14.i, label %bb.n, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_52Delaunay_triangulation_cell_base_with_circumcenter_3INS3_28Robust_circumcenter_traits_3INS3_5EpickEEENS3_24Surface_mesh_cell_base_3ISA_NS3_34Delaunay_triangulation_cell_base_3ISA_NS3_25Triangulation_cell_base_3ISA_NS3_28Triangulation_ds_cell_base_3INS3_30Triangulation_data_structure_3INS3_26Surface_mesh_vertex_base_3ISA_NS3_27Triangulation_vertex_base_3ISA_NS3_30Triangulation_ds_vertex_base_3IvEEEEEENS7_ISA_NSB_ISA_NSC_ISA_NSD_ISA_NSE_IvEEEEEEEEEENS3_14Sequential_tagEEEEEEEEEEEEENS3_7DefaultESY_SY_EELb0EEENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS10_Lb1EEES15_EEvRT_T0_mT1_m.exit

bb.n:                                             ; preds = %_ZN5boost9container3dtl21memmove_n_source_destINS0_12vec_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_52Delaunay_triangulation_cell_base_with_circumcenter_3INS4_28Robust_circumcenter_traits_3INS4_5EpickEEENS4_24Surface_mesh_cell_base_3ISB_NS4_34Delaunay_triangulation_cell_base_3ISB_NS4_25Triangulation_cell_base_3ISB_NS4_28Triangulation_ds_cell_base_3INS4_30Triangulation_data_structure_3INS4_26Surface_mesh_vertex_base_3ISB_NS4_27Triangulation_vertex_base_3ISB_NS4_30Triangulation_ds_vertex_base_3IvEEEEEENS8_ISB_NSC_ISB_NSD_ISB_NSE_ISB_NSF_IvEEEEEEEEEENS4_14Sequential_tagEEEEEEEEEEEEENS4_7DefaultESZ_SZ_EELb0EEELb1EEES12_EET_S14_mRT0_.exit.i
  %i.ao = sub nuw i64 %i.f, %i.af
  %i.ap = shl i64 %i.ao, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.034.i, ptr nonnull align 1 %.sroa.022.0.i, i64 %i.ap, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_52Delaunay_triangulation_cell_base_with_circumcenter_3INS3_28Robust_circumcenter_traits_3INS3_5EpickEEENS3_24Surface_mesh_cell_base_3ISA_NS3_34Delaunay_triangulation_cell_base_3ISA_NS3_25Triangulation_cell_base_3ISA_NS3_28Triangulation_ds_cell_base_3INS3_30Triangulation_data_structure_3INS3_26Surface_mesh_vertex_base_3ISA_NS3_27Triangulation_vertex_base_3ISA_NS3_30Triangulation_ds_vertex_base_3IvEEEEEENS7_ISA_NSB_ISA_NSC_ISA_NSD_ISA_NSE_IvEEEEEEEEEENS3_14Sequential_tagEEEEEEEEEEEEENS3_7DefaultESY_SY_EELb0EEENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS10_Lb1EEES15_EEvRT_T0_mT1_m.exit

bb.o:                                             ; preds = %bb.i
  %.not.i11.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i11.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_52Delaunay_triangulation_cell_base_with_circumcenter_3INS3_28Robust_circumcenter_traits_3INS3_5EpickEEENS3_24Surface_mesh_cell_base_3ISA_NS3_34Delaunay_triangulation_cell_base_3ISA_NS3_25Triangulation_cell_base_3ISA_NS3_28Triangulation_ds_cell_base_3INS3_30Triangulation_data_structure_3INS3_26Surface_mesh_vertex_base_3ISA_NS3_27Triangulation_vertex_base_3ISA_NS3_30Triangulation_ds_vertex_base_3IvEEEEEENS7_ISA_NSB_ISA_NSC_ISA_NSD_ISA_NSE_IvEEEEEEEEEENS3_14Sequential_tagEEEEEEEEEEEEENS3_7DefaultESY_SY_EELb0EEENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS10_Lb1EEES15_EEvRT_T0_mT1_m.exit, label %bb.p, !prof !261

bb.p:                                             ; preds = %bb.o
  %i.aq = icmp ne ptr %i.ad, null
  %i.ar = icmp ne ptr %i.a, null
  %or.cond.i12.i = and i1 %i.ar, %i.aq
  br i1 %or.cond.i12.i, label %bb.q, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_52Delaunay_triangulation_cell_base_with_circumcenter_3INS3_28Robust_circumcenter_traits_3INS3_5EpickEEENS3_24Surface_mesh_cell_base_3ISA_NS3_34Delaunay_triangulation_cell_base_3ISA_NS3_25Triangulation_cell_base_3ISA_NS3_28Triangulation_ds_cell_base_3INS3_30Triangulation_data_structure_3INS3_26Surface_mesh_vertex_base_3ISA_NS3_27Triangulation_vertex_base_3ISA_NS3_30Triangulation_ds_vertex_base_3IvEEEEEENS7_ISA_NSB_ISA_NSC_ISA_NSD_ISA_NSE_IvEEEEEEEEEENS3_14Sequential_tagEEEEEEEEEEEEENS3_7DefaultESY_SY_EELb0EEENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS10_Lb1EEES15_EEvRT_T0_mT1_m.exit

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.a, i64 %i.e, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_52Delaunay_triangulation_cell_base_with_circumcenter_3INS3_28Robust_circumcenter_traits_3INS3_5EpickEEENS3_24Surface_mesh_cell_base_3ISA_NS3_34Delaunay_triangulation_cell_base_3ISA_NS3_25Triangulation_cell_base_3ISA_NS3_28Triangulation_ds_cell_base_3INS3_30Triangulation_data_structure_3INS3_26Surface_mesh_vertex_base_3ISA_NS3_27Triangulation_vertex_base_3ISA_NS3_30Triangulation_ds_vertex_base_3IvEEEEEENS7_ISA_NSB_ISA_NSC_ISA_NSD_ISA_NSE_IvEEEEEEEEEENS3_14Sequential_tagEEEEEEEEEEEEENS3_7DefaultESY_SY_EELb0EEENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS10_Lb1EEES15_EEvRT_T0_mT1_m.exit

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_52Delaunay_triangulation_cell_base_with_circumcenter_3INS3_28Robust_circumcenter_traits_3INS3_5EpickEEENS3_24Surface_mesh_cell_base_3ISA_NS3_34Delaunay_triangulation_cell_base_3ISA_NS3_25Triangulation_cell_base_3ISA_NS3_28Triangulation_ds_cell_base_3INS3_30Triangulation_data_structure_3INS3_26Surface_mesh_vertex_base_3ISA_NS3_27Triangulation_vertex_base_3ISA_NS3_30Triangulation_ds_vertex_base_3IvEEEEEENS7_ISA_NSB_ISA_NSC_ISA_NSD_ISA_NSE_IvEEEEEEEEEENS3_14Sequential_tagEEEEEEEEEEEEENS3_7DefaultESY_SY_EELb0EEENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS10_Lb1EEES15_EEvRT_T0_mT1_m.exit: ; preds = %_ZN5boost9container3dtl21memmove_n_source_destINS0_12vec_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_52Delaunay_triangulation_cell_base_with_circumcenter_3INS4_28Robust_circumcenter_traits_3INS4_5EpickEEENS4_24Surface_mesh_cell_base_3ISB_NS4_34Delaunay_triangulation_cell_base_3ISB_NS4_25Triangulation_cell_base_3ISB_NS4_28Triangulation_ds_cell_base_3INS4_30Triangulation_data_structure_3INS4_26Surface_mesh_vertex_base_3ISB_NS4_27Triangulation_vertex_base_3ISB_NS4_30Triangulation_ds_vertex_base_3IvEEEEEENS8_ISB_NSC_ISB_NSD_ISB_NSE_ISB_NSF_IvEEEEEEEEEENS4_14Sequential_tagEEEEEEEEEEEEENS4_7DefaultESZ_SZ_EELb0EEELb1EEES12_EET_S14_mRT0_.exit.i, %bb.n, %bb.o, %bb.p, %bb.q
  store i64 %i.f, ptr %i.ae, align 8, !tbaa !569
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_52Delaunay_triangulation_cell_base_with_circumcenter_3INS3_28Robust_circumcenter_traits_3INS3_5EpickEEENS3_24Surface_mesh_cell_base_3ISA_NS3_34Delaunay_triangulation_cell_base_3ISA_NS3_25Triangulation_cell_base_3ISA_NS3_28Triangulation_ds_cell_base_3INS3_30Triangulation_data_structure_3INS3_26Surface_mesh_vertex_base_3ISA_NS3_27Triangulation_vertex_base_3ISA_NS3_30Triangulation_ds_vertex_base_3IvEEEEEENS7_ISA_NSB_ISA_NSC_ISA_NSD_ISA_NSE_IvEEEEEEEEEENS3_14Sequential_tagEEEEEEEEEEEEENS3_7DefaultESY_SY_EELb0EEENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS10_Lb1EEES15_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef %0) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #38 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !588
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9container12length_errorE, i64 16), ptr %i.a, align 8, !tbaa !136
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost9container12length_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #46
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost9container12length_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost9container9exception4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !588  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not, ptr @.str.133, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5boost9container6vectorIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEENS0_22small_vector_allocatorISZ_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS13_JRKSZ_EEEEENS0_12vec_iteratorIPSZ_Lb0EEES1C_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #39 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !540
  %i.b = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !570  ; 6 uses
  %i.e = sub i64 1152921504606846975, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !569  ; 2 uses
  %.neg.i = sub i64 %3, %i.d
  %i.h = add i64 %.neg.i, %i.g
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.134) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.d, 2305843009213693952
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.d, 3
  %i.l = udiv i64 %i.k, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_52Delaunay_triangulation_cell_base_with_circumcenter_3INS3_28Robust_circumcenter_traits_3INS3_5EpickEEENS3_24Surface_mesh_cell_base_3ISA_NS3_34Delaunay_triangulation_cell_base_3ISA_NS3_25Triangulation_cell_base_3ISA_NS3_28Triangulation_ds_cell_base_3INS3_30Triangulation_data_structure_3INS3_26Surface_mesh_vertex_base_3ISA_NS3_27Triangulation_vertex_base_3ISA_NS3_30Triangulation_ds_vertex_base_3IvEEEEEENS7_ISA_NSB_ISA_NSC_ISA_NSD_ISA_NSE_IvEEEEEEEEEENS3_14Sequential_tagEEEEEEEEEEEEENS3_7DefaultESY_SY_EELb0EEENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ugt i64 %i.d, -6917529027641081857
  %i.n = shl i64 %i.d, 3
  %spec.select.i.i = select i1 %i.m, i64 -1, i64 %i.n
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_52Delaunay_triangulation_cell_base_with_circumcenter_3INS3_28Robust_circumcenter_traits_3INS3_5EpickEEENS3_24Surface_mesh_cell_base_3ISA_NS3_34Delaunay_triangulation_cell_base_3ISA_NS3_25Triangulation_cell_base_3ISA_NS3_28Triangulation_ds_cell_base_3INS3_30Triangulation_data_structure_3INS3_26Surface_mesh_vertex_base_3ISA_NS3_27Triangulation_vertex_base_3ISA_NS3_30Triangulation_ds_vertex_base_3IvEEEEEENS7_ISA_NSB_ISA_NSC_ISA_NSD_ISA_NSE_IvEEEEEEEEEENS3_14Sequential_tagEEEEEEEEEEEEENS3_7DefaultESY_SY_EELb0EEENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_52Delaunay_triangulation_cell_base_with_circumcenter_3INS3_28Robust_circumcenter_traits_3INS3_5EpickEEENS3_24Surface_mesh_cell_base_3ISA_NS3_34Delaunay_triangulation_cell_base_3ISA_NS3_25Triangulation_cell_base_3ISA_NS3_28Triangulation_ds_cell_base_3INS3_30Triangulation_data_structure_3INS3_26Surface_mesh_vertex_base_3ISA_NS3_27Triangulation_vertex_base_3ISA_NS3_30Triangulation_ds_vertex_base_3IvEEEEEENS7_ISA_NSB_ISA_NSC_ISA_NSD_ISA_NSE_IvEEEEEEEEEENS3_14Sequential_tagEEEEEEEEEEEEENS3_7DefaultESY_SY_EELb0EEENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.l, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.o = add i64 %i.g, %3                         ; 2 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.q = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %i.p) ; 2 uses
  %i.r = icmp ugt i64 %i.o, 1152921504606846975
  br i1 %i.r, label %bb.f, label %_ZN5boost9container13new_allocatorIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEEE8allocateEm.exit, !prof !261

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_52Delaunay_triangulation_cell_base_with_circumcenter_3INS3_28Robust_circumcenter_traits_3INS3_5EpickEEENS3_24Surface_mesh_cell_base_3ISA_NS3_34Delaunay_triangulation_cell_base_3ISA_NS3_25Triangulation_cell_base_3ISA_NS3_28Triangulation_ds_cell_base_3INS3_30Triangulation_data_structure_3INS3_26Surface_mesh_vertex_base_3ISA_NS3_27Triangulation_vertex_base_3ISA_NS3_30Triangulation_ds_vertex_base_3IvEEEEEENS7_ISA_NSB_ISA_NSC_ISA_NSD_ISA_NSE_IvEEEEEEEEEENS3_14Sequential_tagEEEEEEEEEEEEENS3_7DefaultESY_SY_EELb0EEENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.134) #46
  unreachable

_ZN5boost9container13new_allocatorIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_52Delaunay_triangulation_cell_base_with_circumcenter_3INS3_28Robust_circumcenter_traits_3INS3_5EpickEEENS3_24Surface_mesh_cell_base_3ISA_NS3_34Delaunay_triangulation_cell_base_3ISA_NS3_25Triangulation_cell_base_3ISA_NS3_28Triangulation_ds_cell_base_3INS3_30Triangulation_data_structure_3INS3_26Surface_mesh_vertex_base_3ISA_NS3_27Triangulation_vertex_base_3ISA_NS3_30Triangulation_ds_vertex_base_3IvEEEEEENS7_ISA_NSB_ISA_NSC_ISA_NSD_ISA_NSE_IvEEEEEEEEEENS3_14Sequential_tagEEEEEEEEEEEEENS3_7DefaultESY_SY_EELb0EEENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.s = shl nuw nsw i64 %i.q, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #51 ; 5 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !540    ; 8 uses
  %i.v = load i64, ptr %i.f, align 8, !tbaa !576  ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = icmp ne ptr %i.u, %2
  %i.y = icmp ne ptr %i.u, null
  %spec.select.i.i.i = and i1 %i.y, %i.x
  br i1 %spec.select.i.i.i, label %bb.g, label %_ZN5boost9container3dtl7memmoveIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_52Delaunay_triangulation_cell_base_with_circumcenter_3INS3_28Robust_circumcenter_traits_3INS3_5EpickEEENS3_24Surface_mesh_cell_base_3ISA_NS3_34Delaunay_triangulation_cell_base_3ISA_NS3_25Triangulation_cell_base_3ISA_NS3_28Triangulation_ds_cell_base_3INS3_30Triangulation_data_structure_3INS3_26Surface_mesh_vertex_base_3ISA_NS3_27Triangulation_vertex_base_3ISA_NS3_30Triangulation_ds_vertex_base_3IvEEEEEENS7_ISA_NSB_ISA_NSC_ISA_NSD_ISA_NSE_IvEEEEEEEEEENS3_14Sequential_tagEEEEEEEEEEEEENS3_7DefaultESY_SY_EELb0EEES11_EET0_T_S13_S12_.exit.i.i, !prof !419

bb.g:                                             ; preds = %_ZN5boost9container13new_allocatorIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEEE8allocateEm.exit
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = sub i64 %i.b, %i.z                      ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.u, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds i8, ptr %i.t, i64 %i.aa
  br label %_ZN5boost9container3dtl7memmoveIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_52Delaunay_triangulation_cell_base_with_circumcenter_3INS3_28Robust_circumcenter_traits_3INS3_5EpickEEENS3_24Surface_mesh_cell_base_3ISA_NS3_34Delaunay_triangulation_cell_base_3ISA_NS3_25Triangulation_cell_base_3ISA_NS3_28Triangulation_ds_cell_base_3INS3_30Triangulation_data_structure_3INS3_26Surface_mesh_vertex_base_3ISA_NS3_27Triangulation_vertex_base_3ISA_NS3_30Triangulation_ds_vertex_base_3IvEEEEEENS7_ISA_NSB_ISA_NSC_ISA_NSD_ISA_NSE_IvEEEEEEEEEENS3_14Sequential_tagEEEEEEEEEEEEENS3_7DefaultESY_SY_EELb0EEES11_EET0_T_S13_S12_.exit.i.i

_ZN5boost9container3dtl7memmoveIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_52Delaunay_triangulation_cell_base_with_circumcenter_3INS3_28Robust_circumcenter_traits_3INS3_5EpickEEENS3_24Surface_mesh_cell_base_3ISA_NS3_34Delaunay_triangulation_cell_base_3ISA_NS3_25Triangulation_cell_base_3ISA_NS3_28Triangulation_ds_cell_base_3INS3_30Triangulation_data_structure_3INS3_26Surface_mesh_vertex_base_3ISA_NS3_27Triangulation_vertex_base_3ISA_NS3_30Triangulation_ds_vertex_base_3IvEEEEEENS7_ISA_NSB_ISA_NSC_ISA_NSD_ISA_NSE_IvEEEEEEEEEENS3_14Sequential_tagEEEEEEEEEEEEENS3_7DefaultESY_SY_EELb0EEES11_EET0_T_S13_S12_.exit.i.i: ; preds = %bb.g, %_ZN5boost9container13new_allocatorIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEEE8allocateEm.exit
  %.031.i.i = phi ptr [ %i.ab, %bb.g ], [ %i.t, %_ZN5boost9container13new_allocatorIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_52Delaunay_triangulation_cell_base_with_circumcenter_3INS2_28Robust_circumcenter_traits_3INS2_5EpickEEENS2_24Surface_mesh_cell_base_3IS9_NS2_34Delaunay_triangulation_cell_base_3IS9_NS2_25Triangulation_cell_base_3IS9_NS2_28Triangulation_ds_cell_base_3INS2_30Triangulation_data_structure_3INS2_26Surface_mesh_vertex_base_3IS9_NS2_27Triangulation_vertex_base_3IS9_NS2_30Triangulation_ds_vertex_base_3IvEEEEEENS6_IS9_NSA_IS9_NSB_IS9_NSC_IS9_NSD_IvEEEEEEEEEENS2_14Sequential_tagEEEEEEEEEEEEENS2_7DefaultESX_SX_EELb0EEEE8allocateEm.exit ] ; 2 uses
  %i.ac = load i64, ptr %4, align 8, !tbaa !345
  store i64 %i.ac, ptr %.031.i.i, align 8, !tbaa !345
  %i.ad = icmp ne ptr %2, %i.w
  %i.ae = icmp ne ptr %2, null
  %spec.select.i18.i.i = and i1 %i.ae, %i.ad
  br i1 %spec.select.i18.i.i, label %bb.h, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_52Delaunay_triangulation_cell_base_with_circumcenter_3INS3_28Robust_circumcenter_traits_3INS3_5EpickEEENS3_24Surface_mesh_cell_base_3ISA_NS3_34Delaunay_triangulation_cell_base_3ISA_NS3_25Triangulation_cell_base_3ISA_NS3_28Triangulation_ds_cell_base_3INS3_30Triangulation_data_structure_3INS3_26Surface_mesh_vertex_base_3ISA_NS3_27Triangulation_vertex_base_3ISA_NS3_30Triangulation_ds_vertex_base_3IvEEEEEENS7_ISA_NSB_ISA_NSC_ISA_NSD_ISA_NSE_IvEEEEEEEEEENS3_14Sequential_tagEEEEEEEEEEEEENS3_7DefaultESY_SY_EELb0EEENS0_13new_allocatorIvEEvEEPS10_S14_NS0_3dtl20insert_emplace_proxyIS13_JRKS10_EEEEEvRT_T0_S1C_S1C_T1_mT2_.exit.i, !prof !419

bb.h:                                             ; preds = %_ZN5boost9container3dtl7memmoveIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_52Delaunay_triangulation_cell_base_with_circumcenter_3INS3_28Robust_circumcenter_traits_3INS3_5EpickEEENS3_24Surface_mesh_cell_base_3ISA_NS3_34Delaunay_triangulation_cell_base_3ISA_NS3_25Triangulation_cell_base_3ISA_NS3_28Triangulation_ds_cell_base_3INS3_30Triangulation_data_structure_3INS3_26Surface_mesh_vertex_base_3ISA_NS3_27Triangulation_vertex_base_3ISA_NS3_30Triangulation_ds_vertex_base_3IvEEEEEENS7_ISA_NSB_ISA_NSC_ISA_NSD_ISA_NSE_IvEEEEEEEEEENS3_14Sequential_tagEEEEEEEEEEEEENS3_7DefaultESY_SY_EELb0EEES11_EET0_T_S13_S12_.exit.i.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.031.i.i, i64 %3
  %i.ag = ptrtoint ptr %i.w to i64
end_hunk_0
