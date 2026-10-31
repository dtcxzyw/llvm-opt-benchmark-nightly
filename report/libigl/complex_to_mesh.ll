Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/complex_to_mesh?download=true
inline.NumInlined: 1080
inline.NumDeleted: 628
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt5dequeISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE17_M_reallocate_mapEmb:bb.a
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !80   ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !81
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !82

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPSt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESY_ET0_T_S10_SZ_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPSt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESY_ET0_T_S10_SZ_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !76
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !76
  br label %_ZSt4copyIPPSt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESY_ET0_T_S10_SZ_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !82

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPSt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESY_ET0_T_S10_SZ_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPSt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESY_ET0_T_S10_SZ_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !76
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !76
  br label %_ZSt4copyIPPSt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESY_ET0_T_S10_SZ_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE15_M_allocate_mapEm.exit, !prof !83

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #26 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !84  ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.m, label %bb.n, !prof !82

bb.m:                                             ; preds = %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPSt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESY_ET0_T_S10_SZ_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESaISW_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.o, label %_ZSt4copyIPPSt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESY_ET0_T_S10_SZ_.exit24

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !76
  store ptr %i.be, ptr %i.av, align 8, !tbaa !76
  br label %_ZSt4copyIPPSt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESY_ET0_T_S10_SZ_.exit24

_ZSt4copyIPPSt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESY_ET0_T_S10_SZ_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bf = load ptr, ptr %0, align 8, !tbaa !81
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !80
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #24
  store ptr %i.aq, ptr %0, align 8, !tbaa !81
  store i64 %i.am, ptr %i.k, align 8, !tbaa !80
  br label %_ZSt4copyIPPSt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESY_ET0_T_S10_SZ_.exit

_ZSt4copyIPPSt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESY_ET0_T_S10_SZ_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPSt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESY_ET0_T_S10_SZ_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPSt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS8_NS1_25Triangulation_cell_base_3IS8_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS8_NS1_27Triangulation_vertex_base_3IS8_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS5_IS8_NS9_IS8_NSA_IS8_NSB_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEENS1_7DefaultEST_ST_EELb0EEEiESY_ET0_T_S10_SZ_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !75
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !76   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !74
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !78
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !75
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !76 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !74
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !89
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !87
  tail call void @free(ptr noundef %i.f) #23
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !91
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #29 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !91
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !87
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !88
  store i64 %3, ptr %i.c, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS_7ReverseIS3_Li1EEENS0_9assign_opIiiEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !219, !nonnull !19, !align !20 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 5 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !88   ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !89   ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !88
  %.not.i = icmp eq i64 %i.i, %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %.not8.i = icmp eq i64 %i.k, %i.g
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.e, 0
  %i.m = icmp eq i64 %i.g, 0
  %or.cond.i.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv i64 9223372036854775807, %i.g
  %i.o = icmp sgt i64 %i.e, %i.n
  br i1 %i.o, label %.noexc, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

.noexc:                                           ; preds = %bb.c
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !91
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.c, %bb.b
  %i.q = mul nsw i64 %i.g, %i.e
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.q, i64 noundef %i.e, i64 noundef %i.g)
  %.pr = load i64, ptr %i.j, align 8, !tbaa !89
  %.pre = load i64, ptr %i.h, align 8, !tbaa !88
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.a
  %i.r = phi i64 [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.e, %bb.a ] ; 11 uses
  %i.s = phi i64 [ %.pr, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !87     ; 5 uses
  %i.u = sub i64 0, %i.r
  %i.v = and i64 %i.u, 3
  %i.w = icmp sgt i64 %i.s, 0
  br i1 %i.w, label %.lr.ph54.i.preheader, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ReverseIS5_Li1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSC_.exit

.lr.ph54.i.preheader:                             ; preds = %bb.d
  %i.x = ptrtoaddr ptr %i.t to i64
  %3 = add i64 %i.r, %i.e
  %4 = shl i64 %3, 2
  %i.y = add i64 %i.g, 4611686018427387903
  %i.z = mul i64 %i.e, %i.y
  %i.aa = shl i64 %i.z, 2                         ; 2 uses
  %i.ab = add i64 %i.aa, %i.c
  %i.ac = sub i64 %i.x, %i.ab
  %5 = mul i64 %i.e, -4
  %i.ad = shl i64 %i.r, 2
  %6 = getelementptr i8, ptr %i.b, i64 %i.aa
  %invariant.op = add i64 %i.ac, -1
  br label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.preheader, %._crit_edge.i
  %.03152.i = phi i64 [ %i.cc, %._crit_edge.i ], [ 0, %.lr.ph54.i.preheader ] ; 10 uses
  %.03251.i = phi i64 [ %.sroa.speculated.i, %._crit_edge.i ], [ 0, %.lr.ph54.i.preheader ] ; 13 uses
  %i.ae = sub i64 %i.r, %.03251.i                 ; 2 uses
  %i.af = and i64 %i.ae, -4                       ; 2 uses
  %i.ag = add nsw i64 %i.af, %.03251.i            ; 6 uses
  %i.ah = icmp sgt i64 %.03251.i, 0
  br i1 %i.ah, label %.lr.ph.i, label %.preheader39.i

.lr.ph.i:                                         ; preds = %.lr.ph54.i
  %i.ai = mul nsw i64 %.03152.i, %i.r
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.t, i64 %i.ai ; 7 uses
  %i.aj = xor i64 %.03152.i, -1
  %i.ak = add i64 %i.g, %i.aj
  %i.al = mul nsw i64 %i.ak, %i.e
  %invariant.gep41.i = getelementptr [4 x i8], ptr %i.b, i64 %i.al ; 7 uses
  %min.iters.check44 = icmp ult i64 %.03251.i, 8
  br i1 %min.iters.check44, label %scalar.ph43.preheader, label %vector.memcheck41

vector.memcheck41:                                ; preds = %.lr.ph.i
  %7 = mul i64 %.03152.i, %i.ad
  %i.am = shl i64 %.03251.i, 2                    ; 2 uses
  %8 = getelementptr i8, ptr %i.t, i64 %7
  %9 = getelementptr i8, ptr %8, i64 %i.am
  %10 = mul i64 %.03152.i, %5
  %scevgep = getelementptr i8, ptr %6, i64 %10
  %scevgep42 = getelementptr i8, ptr %scevgep, i64 %i.am
  %bound0 = icmp ult ptr %invariant.gep.i, %scevgep42
  %bound1 = icmp ult ptr %invariant.gep41.i, %9
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph43.preheader, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck41
  %n.vec46 = and i64 %.03251.i, 9223372036854775800 ; 3 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next51, %vector.body47 ] ; 3 uses
  %i.an = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index48 ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %invariant.gep41.i, i64 %index48 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %wide.load49 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !57, !alias.scope !220
  %wide.load50 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !57, !alias.scope !220
  %i.aq = getelementptr i8, ptr %i.an, i64 16
  store <4 x i32> %wide.load49, ptr %i.an, align 4, !tbaa !57, !alias.scope !221, !noalias !220
  store <4 x i32> %wide.load50, ptr %i.aq, align 4, !tbaa !57, !alias.scope !221, !noalias !220
  %index.next51 = add nuw i64 %index48, 8         ; 2 uses
  %i.ar = icmp eq i64 %index.next51, %n.vec46
  br i1 %i.ar, label %middle.block52, label %vector.body47, !llvm.loop !210

middle.block52:                                   ; preds = %vector.body47
  %cmp.n53 = icmp eq i64 %.03251.i, %n.vec46
  br i1 %cmp.n53, label %.preheader39.i, label %scalar.ph43.preheader

scalar.ph43.preheader:                            ; preds = %vector.memcheck41, %.lr.ph.i, %middle.block52
  %.03040.i.ph = phi i64 [ 0, %vector.memcheck41 ], [ 0, %.lr.ph.i ], [ %n.vec46, %middle.block52 ] ; 3 uses
  %xtraiter = and i64 %.03251.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph43.prol.loopexit, label %scalar.ph43.prol

scalar.ph43.prol:                                 ; preds = %scalar.ph43.preheader, %scalar.ph43.prol
  %.03040.i.prol = phi i64 [ %i.at, %scalar.ph43.prol ], [ %.03040.i.ph, %scalar.ph43.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph43.prol ], [ 0, %scalar.ph43.preheader ]
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.03040.i.prol
  %gep42.i.prol = getelementptr [4 x i8], ptr %invariant.gep41.i, i64 %.03040.i.prol
  %i.as = load i32, ptr %gep42.i.prol, align 4, !tbaa !57
  store i32 %i.as, ptr %gep.i.prol, align 4, !tbaa !57
  %i.at = add nuw nsw i64 %.03040.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph43.prol.loopexit, label %scalar.ph43.prol, !llvm.loop !211

scalar.ph43.prol.loopexit:                        ; preds = %scalar.ph43.prol, %scalar.ph43.preheader
  %.03040.i.unr = phi i64 [ %.03040.i.ph, %scalar.ph43.preheader ], [ %i.at, %scalar.ph43.prol ]
  %i.au = sub nsw i64 %.03040.i.ph, %.03251.i
  %i.av = icmp ugt i64 %i.au, -4
  br i1 %i.av, label %.preheader39.i, label %scalar.ph43

.preheader39.i:                                   ; preds = %scalar.ph43.prol.loopexit, %scalar.ph43, %middle.block52, %.lr.ph54.i
  %i.aw = icmp sgt i64 %i.ae, 3
  br i1 %i.aw, label %.lr.ph44.i, label %.preheader.i

.lr.ph44.i:                                       ; preds = %.preheader39.i
  %i.ax = xor i64 %.03152.i, -1
  %i.ay = mul nsw i64 %.03152.i, %i.r
  %invariant.gep = getelementptr [4 x i8], ptr %i.t, i64 %i.ay
  %i.az = add i64 %i.g, %i.ax
  %i.ba = mul nsw i64 %i.az, %i.e
  %invariant.gep30 = getelementptr [4 x i8], ptr %i.b, i64 %i.ba
  br label %bb.e

scalar.ph43:                                      ; preds = %scalar.ph43.prol.loopexit, %scalar.ph43
  %.03040.i = phi i64 [ %i.bi, %scalar.ph43 ], [ %.03040.i.unr, %scalar.ph43.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.03040.i
  %gep42.i = getelementptr [4 x i8], ptr %invariant.gep41.i, i64 %.03040.i
  %i.bb = load i32, ptr %gep42.i, align 4, !tbaa !57
  store i32 %i.bb, ptr %gep.i, align 4, !tbaa !57
  %i.bc = add nuw nsw i64 %.03040.i, 1            ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bc
  %gep42.i.1 = getelementptr [4 x i8], ptr %invariant.gep41.i, i64 %i.bc
  %i.bd = load i32, ptr %gep42.i.1, align 4, !tbaa !57
  store i32 %i.bd, ptr %gep.i.1, align 4, !tbaa !57
  %i.be = add nuw nsw i64 %.03040.i, 2            ; 2 uses
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.be
  %gep42.i.2 = getelementptr [4 x i8], ptr %invariant.gep41.i, i64 %i.be
  %i.bf = load i32, ptr %gep42.i.2, align 4, !tbaa !57
  store i32 %i.bf, ptr %gep.i.2, align 4, !tbaa !57
  %i.bg = add nuw nsw i64 %.03040.i, 3            ; 2 uses
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bg
  %gep42.i.3 = getelementptr [4 x i8], ptr %invariant.gep41.i, i64 %i.bg
  %i.bh = load i32, ptr %gep42.i.3, align 4, !tbaa !57
  store i32 %i.bh, ptr %gep.i.3, align 4, !tbaa !57
  %i.bi = add nuw nsw i64 %.03040.i, 4            ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bi, %.03251.i
  br i1 %exitcond.not.i.3, label %.preheader39.i, label %scalar.ph43, !llvm.loop !212

.preheader.i:                                     ; preds = %bb.e, %.preheader39.i
  %i.bj = icmp slt i64 %i.ag, %i.r
  br i1 %i.bj, label %.lr.ph46.i, label %._crit_edge.i

.lr.ph46.i:                                       ; preds = %.preheader.i
  %i.bk = mul nsw i64 %.03152.i, %i.r
  %invariant.gep47.i = getelementptr [4 x i8], ptr %i.t, i64 %i.bk ; 2 uses
  %i.bl = xor i64 %.03152.i, -1
  %i.bm = add i64 %i.g, %i.bl
  %i.bn = mul nsw i64 %i.bm, %i.e
  %invariant.gep49.i = getelementptr [4 x i8], ptr %i.b, i64 %i.bn ; 2 uses
  %i.bo = add i64 %.03251.i, %i.af
  %i.bp = sub i64 %i.r, %i.bo                     ; 3 uses
  %diff.check.a = icmp ult i64 %i.bp, 8
  br i1 %diff.check.a, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph46.i
  %11 = mul i64 %.03152.i, %4
  %.reass = add i64 %11, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bp, -8                      ; 3 uses
  %i.bq = add i64 %i.ag, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = add i64 %i.ag, %index                   ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %invariant.gep47.i, i64 %i.br ; 2 uses
  %i.bt = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %i.br ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  %wide.load = load <4 x i32>, ptr %i.bt, align 4, !tbaa !57
  %wide.load40 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !57
  %i.bv = getelementptr i8, ptr %i.bs, i64 16
  store <4 x i32> %wide.load, ptr %i.bs, align 4, !tbaa !57
  store <4 x i32> %wide.load40, ptr %i.bv, align 4, !tbaa !57
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !213

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph46.i, %middle.block
  %.045.i.ph = phi i64 [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph46.i ], [ %i.bq, %middle.block ]
  br label %scalar.ph

bb.e:                                             ; preds = %bb.e, %.lr.ph44.i
  %.02943.i = phi i64 [ %.03251.i, %.lr.ph44.i ], [ %i.by, %bb.e ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.02943.i
  %gep31 = getelementptr [4 x i8], ptr %invariant.gep30, i64 %.02943.i
  %i.bx = load <2 x i64>, ptr %gep31, align 1, !tbaa !79
  store <2 x i64> %i.bx, ptr %gep, align 16, !tbaa !79
  %i.by = add nsw i64 %.02943.i, 4                ; 2 uses
  %i.bz = icmp slt i64 %i.by, %i.ag
  br i1 %i.bz, label %bb.e, label %.preheader.i, !llvm.loop !214

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %.preheader.i
  %i.ca = add nsw i64 %.03251.i, %i.v
  %i.cb = srem i64 %i.ca, 4
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.r, i64 %i.cb)
  %i.cc = add nuw nsw i64 %.03152.i, 1            ; 2 uses
  %exitcond57.not.i = icmp eq i64 %i.cc, %i.s
  br i1 %exitcond57.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ReverseIS5_Li1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSC_.exit, label %.lr.ph54.i, !llvm.loop !215

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.045.i = phi i64 [ %i.ce, %scalar.ph ], [ %.045.i.ph, %scalar.ph.preheader ] ; 3 uses
  %gep48.i = getelementptr [4 x i8], ptr %invariant.gep47.i, i64 %.045.i
  %gep50.i = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %.045.i
  %i.cd = load i32, ptr %gep50.i, align 4, !tbaa !57
  store i32 %i.cd, ptr %gep48.i, align 4, !tbaa !57
  %i.ce = add nsw i64 %.045.i, 1                  ; 2 uses
  %i.cf = icmp slt i64 %i.ce, %i.r
  br i1 %i.cf, label %scalar.ph, label %._crit_edge.i, !llvm.loop !216

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ReverseIS5_Li1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSC_.exit: ; preds = %._crit_edge.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_complex_to_mesh.cpp() #19 section ".text.startup" {
bb.a:
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5EigenL4lastE) ; 0 uses
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZN5EigenL6lastp1E) ; 0 uses
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5EigenL3allE) ; 0 uses
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5boost11optional_nsL13in_place_initE) ; 0 uses
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5boost11optional_nsL16in_place_init_ifE) ; 0 uses
  %i.f = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef -52) #23
  %i.g = fadd double %i.f, 1.000000e+00
  store double %i.g, ptr @_ZN4COREL6relEpsE, align 8, !tbaa !52
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4COREL6relEpsE) ; 0 uses
  store i64 0, ptr @_ZN4COREL12EXTLONG_ZEROE, align 8, !tbaa !223
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_ZEROE, i64 8), align 8, !tbaa !224
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_ZEROE) ; 0 uses
  store i64 1, ptr @_ZN4COREL11EXTLONG_ONEE, align 8, !tbaa !223
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_ONEE, i64 8), align 8, !tbaa !224
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_ONEE) ; 0 uses
  store i64 2, ptr @_ZN4COREL11EXTLONG_TWOE, align 8, !tbaa !223
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_TWOE, i64 8), align 8, !tbaa !224
  %i.k = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_TWOE) ; 0 uses
  store i64 3, ptr @_ZN4COREL13EXTLONG_THREEE, align 8, !tbaa !223
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_THREEE, i64 8), align 8, !tbaa !224
  %i.l = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_THREEE) ; 0 uses
  store i64 4, ptr @_ZN4COREL12EXTLONG_FOURE, align 8, !tbaa !223
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_FOURE, i64 8), align 8, !tbaa !224
  %i.m = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_FOURE) ; 0 uses
  store i64 5, ptr @_ZN4COREL12EXTLONG_FIVEE, align 8, !tbaa !223
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_FIVEE, i64 8), align 8, !tbaa !224
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_FIVEE) ; 0 uses
  store i64 6, ptr @_ZN4COREL11EXTLONG_SIXE, align 8, !tbaa !223
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_SIXE, i64 8), align 8, !tbaa !224
  %i.o = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_SIXE) ; 0 uses
  store i64 7, ptr @_ZN4COREL13EXTLONG_SEVENE, align 8, !tbaa !223
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_SEVENE, i64 8), align 8, !tbaa !224
  %i.p = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_SEVENE) ; 0 uses
  store i64 8, ptr @_ZN4COREL13EXTLONG_EIGHTE, align 8, !tbaa !223
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_EIGHTE, i64 8), align 8, !tbaa !224
  %i.q = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_EIGHTE) ; 0 uses
  store i64 1073741824, ptr @_ZN4COREL11EXTLONG_BIGE, align 8, !tbaa !223
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_BIGE, i64 8), align 8, !tbaa !224
  %i.r = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_BIGE) ; 0 uses
  store i64 -1073741824, ptr @_ZN4COREL13EXTLONG_SMALLE, align 8, !tbaa !223
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_SMALLE, i64 8), align 8, !tbaa !224
  %i.s = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_SMALLE) ; 0 uses
  store double f0x4002934F0979A371, ptr @_ZN4COREL5log_5E, align 8, !tbaa !52
  %i.t = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4COREL5log_5E) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind allocsize(0) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !37}
!1 = distinct !{!1, !37}
!2 = distinct !{!2, !37}
!3 = distinct !{!3, !37}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !14, i64 0}
!16 = !{!"_ZTSSt18_Rb_tree_node_base", !13, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!17 = !{!"long", !9, i64 0}
!18 = !{!"_ZTSSt15_Rb_tree_header", !16, i64 0, !17, i64 32}
!19 = !{}
!20 = !{i64 8}
!21 = !{!"_ZTSSaIN4CGAL26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3INS_30Triangulation_data_structure_3INS0_IS3_NS4_IS3_NS5_IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEENS_14Sequential_tagEEEEEEEEEE"}
!22 = !{!"p1 _ZTSN4CGAL26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3INS_30Triangulation_data_structure_3INS0_IS3_NS4_IS3_NS5_IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEENS_14Sequential_tagEEEEEEEEE", !14, i64 0}
!23 = !{!"p1 _ZTSSt4pairIPN4CGAL26Surface_mesh_vertex_base_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_27Triangulation_vertex_base_3IS4_NS0_30Triangulation_ds_vertex_base_3INS0_30Triangulation_data_structure_3INS1_IS4_NS5_IS4_NS6_IvEEEEEENS0_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS0_24Surface_mesh_cell_base_3IS4_NS0_25Triangulation_cell_base_3IS4_NS0_28Triangulation_ds_cell_base_3IvEEEEEEEENS0_14Sequential_tagEEEEEEEEEmE", !14, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4CGAL26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS5_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS2_IS5_NS6_IS5_NS7_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS5_NS1_24Surface_mesh_cell_base_3IS5_NS1_25Triangulation_cell_base_3IS5_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEmESaISQ_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4CGAL26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS5_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS2_IS5_NS6_IS5_NS7_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS5_NS1_24Surface_mesh_cell_base_3IS5_NS1_25Triangulation_cell_base_3IS5_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEmESaISQ_EE12_Vector_implE", !24, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseISt4pairIPN4CGAL26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS5_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS2_IS5_NS6_IS5_NS7_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS5_NS1_24Surface_mesh_cell_base_3IS5_NS1_25Triangulation_cell_base_3IS5_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEmESaISQ_EE", !25, i64 0}
!27 = !{!"_ZTSSt6vectorISt4pairIPN4CGAL26Surface_mesh_vertex_base_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_27Triangulation_vertex_base_3IS5_NS1_30Triangulation_ds_vertex_base_3INS1_30Triangulation_data_structure_3INS2_IS5_NS6_IS5_NS7_IvEEEEEENS1_52Delaunay_triangulation_cell_base_with_circumcenter_3IS5_NS1_24Surface_mesh_cell_base_3IS5_NS1_25Triangulation_cell_base_3IS5_NS1_28Triangulation_ds_cell_base_3IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEmESaISQ_EE", !26, i64 0}
!28 = !{!"_ZTSSt13__atomic_baseImE", !17, i64 0}
!29 = !{!"_ZTSSt6atomicImE", !28, i64 0}
!30 = !{!"_ZTSN4CGAL17Compact_containerINS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3INS_30Triangulation_data_structure_3INS1_IS4_NS5_IS4_NS6_IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEENS_14Sequential_tagEEEEEEEEENS_7DefaultESO_SO_EE", !21, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !27, i64 56, !29, i64 80}
!31 = !{!18, !15, i64 8}
!32 = !{!18, !15, i64 16}
!33 = !{!18, !17, i64 32}
!34 = !{!"p1 _ZTSN4CGAL52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS0_IS3_NS4_IS3_NS5_IS3_NS6_IvEEEEEEEENS_14Sequential_tagEEEEEEEEEEE", !14, i64 0}
!35 = !{!"_ZTSN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS6_NS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS3_IS6_NS7_IS6_NS8_IS6_NS9_IvEEEEEEEENS_14Sequential_tagEEEEEEEEEEENS_7DefaultESR_SR_EELb0EEE", !34, i64 0}
!36 = !{!35, !34, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!22, !22, i64 0}
!39 = !{!"p1 _ZTSN4CGAL15Triangulation_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS3_NS_24Surface_mesh_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3IvEEEEEEEENS_14Sequential_tagEEENS_7DefaultEEE", !14, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"_ZTSSaIN4CGAL52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS3_NS_25Triangulation_cell_base_3IS3_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS3_NS_27Triangulation_vertex_base_3IS3_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS0_IS3_NS4_IS3_NS5_IS3_NS6_IvEEEEEEEENS_14Sequential_tagEEEEEEEEEEEE"}
!42 = !{!"p1 _ZTSSt4pairIPN4CGAL52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS4_NS0_25Triangulation_cell_base_3IS4_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS4_NS0_27Triangulation_vertex_base_3IS4_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS1_IS4_NS5_IS4_NS6_IS4_NS7_IvEEEEEEEENS0_14Sequential_tagEEEEEEEEEEEmE", !14, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4CGAL52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS5_NS1_25Triangulation_cell_base_3IS5_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS5_NS1_27Triangulation_vertex_base_3IS5_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS2_IS5_NS6_IS5_NS7_IS5_NS8_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEmESaISR_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!44 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4CGAL52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS5_NS1_25Triangulation_cell_base_3IS5_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS5_NS1_27Triangulation_vertex_base_3IS5_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS2_IS5_NS6_IS5_NS7_IS5_NS8_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEmESaISR_EE12_Vector_implE", !43, i64 0}
!45 = !{!"_ZTSSt12_Vector_baseISt4pairIPN4CGAL52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS5_NS1_25Triangulation_cell_base_3IS5_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS5_NS1_27Triangulation_vertex_base_3IS5_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS2_IS5_NS6_IS5_NS7_IS5_NS8_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEmESaISR_EE", !44, i64 0}
!46 = !{!"_ZTSSt6vectorISt4pairIPN4CGAL52Delaunay_triangulation_cell_base_with_circumcenter_3INS1_28Robust_circumcenter_traits_3INS1_5EpickEEENS1_24Surface_mesh_cell_base_3IS5_NS1_25Triangulation_cell_base_3IS5_NS1_28Triangulation_ds_cell_base_3INS1_30Triangulation_data_structure_3INS1_26Surface_mesh_vertex_base_3IS5_NS1_27Triangulation_vertex_base_3IS5_NS1_30Triangulation_ds_vertex_base_3IvEEEEEENS2_IS5_NS6_IS5_NS7_IS5_NS8_IvEEEEEEEENS1_14Sequential_tagEEEEEEEEEEEmESaISR_EE", !45, i64 0}
!47 = !{!"_ZTSN4CGAL17Compact_containerINS_52Delaunay_triangulation_cell_base_with_circumcenter_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_24Surface_mesh_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3IS4_NS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS1_IS4_NS5_IS4_NS6_IS4_NS7_IvEEEEEEEENS_14Sequential_tagEEEEEEEEEEENS_7DefaultESP_SP_EE", !41, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !46, i64 56, !29, i64 80}
!48 = !{!"_ZTSN4CGAL30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEENS_14Sequential_tagEEE", !10, i64 0, !47, i64 8, !30, i64 96}
!49 = !{!48, !10, i64 0}
!50 = !{!47, !34, i64 48}
!51 = !{!"double", !9, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"p1 double", !14, i64 0}
!54 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !53, i64 0, !17, i64 8, !17, i64 16}
!55 = !{!54, !53, i64 0}
!56 = !{!54, !17, i64 8}
!57 = !{!10, !10, i64 0}
!58 = !{!"_ZTSN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3INS_30Triangulation_data_structure_3INS3_IS6_NS7_IS6_NS8_IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEENS_14Sequential_tagEEEEEEEEENS_7DefaultESQ_SQ_EELb0EEE", !22, i64 0}
!59 = !{!58, !22, i64 0}
!60 = !{!"_ZTSSt4pairIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_52Delaunay_triangulation_cell_base_with_circumcenter_3INS0_28Robust_circumcenter_traits_3INS0_5EpickEEENS0_24Surface_mesh_cell_base_3IS7_NS0_25Triangulation_cell_base_3IS7_NS0_28Triangulation_ds_cell_base_3INS0_30Triangulation_data_structure_3INS0_26Surface_mesh_vertex_base_3IS7_NS0_27Triangulation_vertex_base_3IS7_NS0_30Triangulation_ds_vertex_base_3IvEEEEEENS4_IS7_NS8_IS7_NS9_IS7_NSA_IvEEEEEEEENS0_14Sequential_tagEEEEEEEEEEENS0_7DefaultESS_SS_EELb0EEEiE", !35, i64 0, !10, i64 8}
!61 = !{!60, !10, i64 8}
!62 = !{!34, !34, i64 0}
!63 = !{!15, !15, i64 0}
!64 = !{!"p1 _ZTSN4CGAL30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS4_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS4_NS_24Surface_mesh_cell_base_3IS4_NS_25Triangulation_cell_base_3IS4_NS_28Triangulation_ds_cell_base_3IvEEEEEEEENS_14Sequential_tagEEE", !14, i64 0}
!65 = !{!"_ZTSN4CGAL8internal33Triangulation_ds_facet_iterator_3INS_30Triangulation_data_structure_3INS_26Surface_mesh_vertex_base_3INS_28Robust_circumcenter_traits_3INS_5EpickEEENS_27Triangulation_vertex_base_3IS6_NS_30Triangulation_ds_vertex_base_3IvEEEEEENS_52Delaunay_triangulation_cell_base_with_circumcenter_3IS6_NS_24Surface_mesh_cell_base_3IS6_NS_25Triangulation_cell_base_3IS6_NS_28Triangulation_ds_cell_base_3IvEEEEEEEENS_14Sequential_tagEEEEE", !64, i64 0, !35, i64 8, !60, i64 16}
end_hunk_0
