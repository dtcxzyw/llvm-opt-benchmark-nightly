Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/remesh_self_intersections?download=true
inline.NumInlined: 24559
inline.NumDeleted: 7922
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESB_EC2ERKNS5_10MatrixBaseIS7_EERKNSD_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIS9_EERNSN_ISA_EERNSN_IS8_EERNSN_ISB_EESV_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bp, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.az, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bk, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.br, %i.bs
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !947

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.x, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bu = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = invoke noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESB_E20box_intersect_staticEPSC_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISJ_SaISJ_EEEENSE_14ID_FROM_HANDLEEEESS_, ptr %i.bu, align 8, !tbaa !958
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cc = ptrtoint ptr %0 to i64
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !151
  store ptr %i.bu, ptr %10, align 8, !tbaa !153
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_IdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEEST_EESG_SG_ESV_St12_PlaceholderILi1EESY_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.ca, align 8, !tbaa !155
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_IdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEEST_EESG_SG_ESV_St12_PlaceholderILi1EESY_ILi2EEEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation, ptr %i.bt, align 8, !tbaa !149
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ce = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i49, label %.body51, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false)
  store ptr %i.ce, ptr %11, align 8, !tbaa !153
  %i.ck = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !109
  store <2 x ptr> %i.ck, ptr %i.cd, align 8, !tbaa !109
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !156
  %i.cn = sext i32 %i.cm to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.cn)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = invoke noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESB_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body51

bb.x:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i53 = icmp eq ptr %i.cu, null
  br i1 %.not.i53, label %.body51, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = invoke noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.cz = extractvalue { ptr, i32 } %i.cy, 1
  %i.da = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.ab, label %.body51

bb.ab:                                            ; preds = %bb.aa
  %i.dc = extractvalue { ptr, i32 } %i.cy, 0
  %i.dd = call ptr @__cxa_begin_catch(ptr %i.dc) #23
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.de, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.de, ptr %i.df, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.at unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body51

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !158
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3                 ; 3 uses
  %i.do = lshr i64 %i.dn, 1                       ; 2 uses
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = icmp slt i64 %i.dn, 0
  %or.cond = and i1 %i.dq, %i.dp
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.dr = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dr, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc55 unwind label %bb.w

.noexc55:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.ds = and i64 %i.dn, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.ds, i64 noundef %i.do, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !161 ; 6 uses
  %i.du = load ptr, ptr %i.dh, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.dt, %i.du
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.du to i64
  %13 = ptrtoaddr ptr %i.dt to i64
  %i.dv = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !165 ; 3 uses
  %i.dy = add i64 %12, -16
  %i.dz = sub i64 %i.dy, %13                      ; 2 uses
  %i.ea = lshr i64 %i.dz, 4
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dz, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.ec = shl i64 %i.dx, 2
  %i.ed = add i64 %i.ec, -1
  %diff.check = icmp ult i64 %i.ed, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eb, 2305843009213693950     ; 4 uses
  %i.ee = shl i64 %n.vec, 4
  %i.ef = getelementptr i8, ptr %i.dt, i64 %i.ee
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eg = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.dt, i64 %i.eg
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec234 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.eh = getelementptr [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ei = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.ei, ptr %i.eh, align 4, !tbaa !157
  %i.ej = getelementptr [4 x i8], ptr %i.eh, i64 %i.dx
  %i.ek = trunc <2 x i64> %strided.vec234 to <2 x i32>
  store <2 x i32> %i.ek, ptr %i.ej, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !948

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.dt, %vector.memcheck ], [ %i.dt, %.lr.ph145 ], [ %i.ef, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.em = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.ew, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.ev, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.eo = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.ep = getelementptr [4 x i8], ptr %i.dv, i64 %.036144 ; 2 uses
  %i.eq = trunc i64 %i.eo to i32
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !157
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !116
  %i.et = getelementptr [4 x i8], ptr %i.ep, i64 %i.dx
  %i.eu = trunc i64 %i.es to i32
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !157
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.ew = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.ev, %i.du
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !949

bb.ah:                                            ; preds = %._crit_edge146
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !168, !range !106, !noundef !107
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !169, !range !106, !noundef !107
  %i.fc = trunc nuw i8 %i.fb to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENS4_IdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESB_EEvRKNS3_10MatrixBaseIT_EERKNSC_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaISO_EERKSt3mapINSH_5IndexESL_ISt4pairISU_NS7_6ObjectEESaISX_EESt4lessISU_ESaISV_IKSU_SZ_EEEbbRNS3_15PlainObjectBaseIT2_EERNS18_IT3_EERNS18_IT4_EERNS18_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i1 noundef zeroext %i.ez, i1 noundef zeroext %i.fc, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.fd = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i57 = icmp eq ptr %i.fd, null
  br i1 %.not.i57, label %_ZNSt14_Function_baseD2Ev.exit58, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fe = invoke noundef zeroext i1 %i.fd(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit58 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit58:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit58
  %i.fh = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.fi = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.fj) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit58, %bb.al
  ret void

.body51:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.ct, %bb.y ], [ %i.cf, %bb.p ], [ %i.dg, %bb.ad ], [ %i.cy, %bb.aa ], [ %i.cs, %bb.w ], [ %i.cf, %bb.q ], [ %i.ct, %bb.x ] ; 2 uses
  %i.fk = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i59 = icmp eq ptr %i.fk, null
  br i1 %.not.i59, label %.body, label %bb.am

bb.am:                                            ; preds = %.body51
  %i.fl = invoke noundef zeroext i1 %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body51, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.bv, %bb.l ], [ %.merged42, %bb.am ], [ %i.bv, %bb.m ], [ %.merged42, %.body51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fo = ptrtoint ptr %.sroa.20.0133 to i64
  %i.fp = ptrtoint ptr %.sroa.099.0125 to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.fq) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.aa, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.fr = load ptr, ptr %i.j, align 8, !tbaa !122 ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !123
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fw) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.e) #23
  %i.fx = load ptr, ptr %i.d, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !132
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  %i.gd = load ptr, ptr %i.c, align 8, !tbaa !135 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !136
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #40
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.as
  resume { ptr, i32 } %.merged

bb.at:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESB_EC2ERKNS5_10MatrixBaseIS7_EERKNSD_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIS9_EERNSN_ISA_EERNSN_IS8_EERNSN_ISB_EESV_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESB_EC2ERKNS5_10MatrixBaseIS7_EERKNSD_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIS9_EERNSN_ISA_EERNSN_IS8_EERNSN_ISB_EESV_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.dd, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.dc, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.cn, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.cy, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.s, align 8, !tbaa !174
  %.not120 = icmp eq ptr %i.df, %i.dg
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !974

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.ac, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.di = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i49, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESB_E20box_intersect_staticEPSC_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISJ_SaISJ_EEEENSE_14ID_FROM_HANDLEEEESS_, ptr %i.di, align 8, !tbaa !986
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = ptrtoint ptr %0 to i64
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !179
  store ptr %i.di, ptr %10, align 8, !tbaa !181
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_IdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEEST_EESG_SG_ESV_St12_PlaceholderILi1EESY_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.do, align 8, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_IdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEESQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEEST_EESG_SG_ESV_St12_PlaceholderILi1EESY_ILi2EEEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation, ptr %i.dh, align 8, !tbaa !149
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ds = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.du, null
  br i1 %.not.i.i50, label %.body52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false)
  store ptr %i.ds, ptr %11, align 8, !tbaa !181
  %i.dy = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !109
  store <2 x ptr> %i.dy, ptr %i.dr, align 8, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !156
  %i.eb = sext i32 %i.ea to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.eb)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESB_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.x:                                             ; preds = %bb.s
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ei, null
  br i1 %.not.i54, label %.body52, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.en = extractvalue { ptr, i32 } %i.em, 1
  %i.eo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %.body52

bb.ab:                                            ; preds = %bb.aa
  %i.eq = extractvalue { ptr, i32 } %i.em, 0
  %i.er = call ptr @__cxa_begin_catch(ptr %i.eq) #23
  %i.es = load i32, ptr %i.er, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.es, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.es, ptr %i.et, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.as unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body52

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !158
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3                 ; 3 uses
  %i.fc = lshr i64 %i.fb, 1                       ; 2 uses
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = icmp slt i64 %i.fb, 0
  %or.cond = and i1 %i.fe, %i.fd
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc56 unwind label %bb.w

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.fg = and i64 %i.fb, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.fg, i64 noundef %i.fc, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !161 ; 6 uses
  %i.fi = load ptr, ptr %i.ev, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.fi to i64
  %13 = ptrtoaddr ptr %i.fh to i64
  %i.fj = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !165 ; 3 uses
  %i.fm = add i64 %12, -16
  %i.fn = sub i64 %i.fm, %13                      ; 2 uses
  %i.fo = lshr i64 %i.fn, 4
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fn, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.fq = shl i64 %i.fl, 2
  %i.fr = add i64 %i.fq, -1
  %diff.check = icmp ult i64 %i.fr, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, 2305843009213693950     ; 4 uses
  %i.fs = shl i64 %n.vec, 4
  %i.ft = getelementptr i8, ptr %i.fh, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fu
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec232 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.fv = getelementptr [4 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.fw = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.fw, ptr %i.fv, align 4, !tbaa !157
  %i.fx = getelementptr [4 x i8], ptr %i.fv, i64 %i.fl
  %i.fy = trunc <2 x i64> %strided.vec232 to <2 x i32>
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !975

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.fh, %vector.memcheck ], [ %i.fh, %.lr.ph145 ], [ %i.ft, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ga = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.gk, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.gj, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gc = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.gd = getelementptr [4 x i8], ptr %i.fj, i64 %.036144 ; 2 uses
  %i.ge = trunc i64 %i.gc to i32
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !157
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !116
  %i.gh = getelementptr [4 x i8], ptr %i.gd, i64 %i.fl
  %i.gi = trunc i64 %i.gg to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !157
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.gk = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.gj, %i.fi
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !976

bb.ah:                                            ; preds = %._crit_edge146
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !168, !range !106, !noundef !107
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !169, !range !106, !noundef !107
  %i.gq = trunc nuw i8 %i.gp to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS4_IdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESB_EEvRKNS3_10MatrixBaseIT_EERKNSC_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaISO_EERKSt3mapINSH_5IndexESL_ISt4pairISU_NS7_6ObjectEESaISX_EESt4lessISU_ESaISV_IKSU_SZ_EEEbbRNS3_15PlainObjectBaseIT2_EERNS18_IT3_EERNS18_IT4_EERNS18_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i1 noundef zeroext %i.gn, i1 noundef zeroext %i.gq, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.gr = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i58 = icmp eq ptr %i.gr, null
  br i1 %.not.i58, label %_ZNSt14_Function_baseD2Ev.exit59, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit59 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit59:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit59
  %i.gv = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.gw = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.gx) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit59, %bb.al
  ret void

.body52:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.eh, %bb.y ], [ %i.dt, %bb.p ], [ %i.eu, %bb.ad ], [ %i.em, %bb.aa ], [ %i.eg, %bb.w ], [ %i.dt, %bb.q ], [ %i.eh, %bb.x ] ; 2 uses
  %i.gy = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i60 = icmp eq ptr %i.gy, null
  br i1 %.not.i60, label %.body, label %bb.am

bb.am:                                            ; preds = %.body52
  %i.gz = invoke noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body52, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.dj, %bb.l ], [ %.merged42, %bb.am ], [ %i.dj, %bb.m ], [ %.merged42, %.body52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.de, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = ptrtoint ptr %.sroa.20.0133 to i64
  %i.hd = ptrtoint ptr %.sroa.099.0125 to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.he) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !187
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.j) #23
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !132
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  call void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #23
  resume { ptr, i32 } %.merged

bb.as:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESB_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_1
begin_hunk_2_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_ISL_Lin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_EC2ERKNS5_10MatrixBaseISM_EERKNSS_ISN_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS12_ISP_EES16_RNS12_ISQ_EES18_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.dd, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.dc, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.cn, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.cy, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.s, align 8, !tbaa !174
  %.not120 = icmp eq ptr %i.df, %i.dg
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1026

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.ac, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.di = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i49, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_ISL_Lin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_E20box_intersect_staticEPSR_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISY_SaISY_EEEENST_14ID_FROM_HANDLEEEES17_, ptr %i.di, align 8, !tbaa !1038
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = ptrtoint ptr %0 to i64
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !212
  store ptr %i.di, ptr %10, align 8, !tbaa !214
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixINS0_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEENSO_IS13_Lin1ELin1ELi1ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES17_NSO_IiLin1ELi1ELi0ELin1ELi1EEES18_EESG_SG_ES1A_St12_PlaceholderILi1EES1D_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.do, align 8, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixINS0_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEENSO_IS13_Lin1ELin1ELi1ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES17_NSO_IiLin1ELi1ELi0ELin1ELi1EEES18_EESG_SG_ES1A_St12_PlaceholderILi1EES1D_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation, ptr %i.dh, align 8, !tbaa !149
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ds = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.du, null
  br i1 %.not.i.i50, label %.body52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false)
  store ptr %i.ds, ptr %11, align 8, !tbaa !214
  %i.dy = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !109
  store <2 x ptr> %i.dy, ptr %i.dr, align 8, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !156
  %i.eb = sext i32 %i.ea to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.eb)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_ISL_Lin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.x:                                             ; preds = %bb.s
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ei, null
  br i1 %.not.i54, label %.body52, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.en = extractvalue { ptr, i32 } %i.em, 1
  %i.eo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %.body52

bb.ab:                                            ; preds = %bb.aa
  %i.eq = extractvalue { ptr, i32 } %i.em, 0
  %i.er = call ptr @__cxa_begin_catch(ptr %i.eq) #23
  %i.es = load i32, ptr %i.er, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.es, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.es, ptr %i.et, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.as unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body52

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !158
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3                 ; 3 uses
  %i.fc = lshr i64 %i.fb, 1                       ; 2 uses
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = icmp slt i64 %i.fb, 0
  %or.cond = and i1 %i.fe, %i.fd
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc56 unwind label %bb.w

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.fg = and i64 %i.fb, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.fg, i64 noundef %i.fc, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !161 ; 6 uses
  %i.fi = load ptr, ptr %i.ev, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.fi to i64
  %13 = ptrtoaddr ptr %i.fh to i64
  %i.fj = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !165 ; 3 uses
  %i.fm = add i64 %12, -16
  %i.fn = sub i64 %i.fm, %13                      ; 2 uses
  %i.fo = lshr i64 %i.fn, 4
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fn, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.fq = shl i64 %i.fl, 2
  %i.fr = add i64 %i.fq, -1
  %diff.check = icmp ult i64 %i.fr, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, 2305843009213693950     ; 4 uses
  %i.fs = shl i64 %n.vec, 4
  %i.ft = getelementptr i8, ptr %i.fh, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fu
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec232 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.fv = getelementptr [4 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.fw = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.fw, ptr %i.fv, align 4, !tbaa !157
  %i.fx = getelementptr [4 x i8], ptr %i.fv, i64 %i.fl
  %i.fy = trunc <2 x i64> %strided.vec232 to <2 x i32>
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !1027

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.fh, %vector.memcheck ], [ %i.fh, %.lr.ph145 ], [ %i.ft, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ga = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.gk, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.gj, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gc = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.gd = getelementptr [4 x i8], ptr %i.fj, i64 %.036144 ; 2 uses
  %i.ge = trunc i64 %i.gc to i32
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !157
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !116
  %i.gh = getelementptr [4 x i8], ptr %i.gd, i64 %i.fl
  %i.gi = trunc i64 %i.gg to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !157
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.gk = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.gj, %i.fi
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1028

bb.ah:                                            ; preds = %._crit_edge146
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !168, !range !106, !noundef !107
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !169, !range !106, !noundef !107
  %i.gq = trunc nuw i8 %i.gp to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS5_5EpeckENS4_ISK_Lin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESQ_EEvRKNS3_10MatrixBaseIT_EERKNSR_IT0_EERKSt6vectorINS5_10Triangle_3IT1_EESaIS13_EERKSt3mapINSW_5IndexES10_ISt4pairIS19_NS5_6ObjectEESaIS1C_EESt4lessIS19_ESaIS1A_IKS19_S1E_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1N_IT3_EERNS1N_IT4_EERNS1N_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i1 noundef zeroext %i.gn, i1 noundef zeroext %i.gq, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.gr = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i58 = icmp eq ptr %i.gr, null
  br i1 %.not.i58, label %_ZNSt14_Function_baseD2Ev.exit59, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit59 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit59:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit59
  %i.gv = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.gw = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.gx) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit59, %bb.al
  ret void

.body52:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.eh, %bb.y ], [ %i.dt, %bb.p ], [ %i.eu, %bb.ad ], [ %i.em, %bb.aa ], [ %i.eg, %bb.w ], [ %i.dt, %bb.q ], [ %i.eh, %bb.x ] ; 2 uses
  %i.gy = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i60 = icmp eq ptr %i.gy, null
  br i1 %.not.i60, label %.body, label %bb.am

bb.am:                                            ; preds = %.body52
  %i.gz = invoke noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body52, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.dj, %bb.l ], [ %.merged42, %bb.am ], [ %i.dj, %bb.m ], [ %.merged42, %.body52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.de, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = ptrtoint ptr %.sroa.20.0133 to i64
  %i.hd = ptrtoint ptr %.sroa.099.0125 to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.he) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !187
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.j) #23
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !132
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  call void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #23
  resume { ptr, i32 } %.merged

bb.as:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_ISL_Lin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_2
begin_hunk_3_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESM_SN_SN_NS6_IiLin1ELi1ELi0ELin1ELi1EEESO_EC2ERKNS5_10MatrixBaseISM_EERKNSQ_ISN_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISM_EERNS10_ISN_EES14_RNS10_ISO_EES16_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.dd, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.dc, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.cn, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.cy, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.s, align 8, !tbaa !174
  %.not120 = icmp eq ptr %i.df, %i.dg
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1054

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.ac, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.di = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i49, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESM_SN_SN_NS6_IiLin1ELi1ELi0ELin1ELi1EEESO_E20box_intersect_staticEPSP_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISW_SaISW_EEEENSR_14ID_FROM_HANDLEEEES15_, ptr %i.di, align 8, !tbaa !1066
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = ptrtoint ptr %0 to i64
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !216
  store ptr %i.di, ptr %10, align 8, !tbaa !218
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixINS0_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES14_S15_S15_NSO_IiLin1ELi1ELi0ELin1ELi1EEES16_EESG_SG_ES18_St12_PlaceholderILi1EES1B_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.do, align 8, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixINS0_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES14_S15_S15_NSO_IiLin1ELi1ELi0ELin1ELi1EEES16_EESG_SG_ES18_St12_PlaceholderILi1EES1B_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1H_St18_Manager_operation, ptr %i.dh, align 8, !tbaa !149
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ds = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.du, null
  br i1 %.not.i.i50, label %.body52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false)
  store ptr %i.ds, ptr %11, align 8, !tbaa !218
  %i.dy = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !109
  store <2 x ptr> %i.dy, ptr %i.dr, align 8, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !156
  %i.eb = sext i32 %i.ea to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.eb)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESM_SN_SN_NS6_IiLin1ELi1ELi0ELin1ELi1EEESO_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.x:                                             ; preds = %bb.s
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ei, null
  br i1 %.not.i54, label %.body52, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.en = extractvalue { ptr, i32 } %i.em, 1
  %i.eo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %.body52

bb.ab:                                            ; preds = %bb.aa
  %i.eq = extractvalue { ptr, i32 } %i.em, 0
  %i.er = call ptr @__cxa_begin_catch(ptr %i.eq) #23
  %i.es = load i32, ptr %i.er, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.es, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.es, ptr %i.et, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.as unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body52

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !158
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3                 ; 3 uses
  %i.fc = lshr i64 %i.fb, 1                       ; 2 uses
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = icmp slt i64 %i.fb, 0
  %or.cond = and i1 %i.fe, %i.fd
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc56 unwind label %bb.w

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.fg = and i64 %i.fb, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.fg, i64 noundef %i.fc, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !161 ; 6 uses
  %i.fi = load ptr, ptr %i.ev, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.fi to i64
  %13 = ptrtoaddr ptr %i.fh to i64
  %i.fj = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !165 ; 3 uses
  %i.fm = add i64 %12, -16
  %i.fn = sub i64 %i.fm, %13                      ; 2 uses
  %i.fo = lshr i64 %i.fn, 4
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fn, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.fq = shl i64 %i.fl, 2
  %i.fr = add i64 %i.fq, -1
  %diff.check = icmp ult i64 %i.fr, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, 2305843009213693950     ; 4 uses
  %i.fs = shl i64 %n.vec, 4
  %i.ft = getelementptr i8, ptr %i.fh, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fu
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec232 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.fv = getelementptr [4 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.fw = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.fw, ptr %i.fv, align 4, !tbaa !157
  %i.fx = getelementptr [4 x i8], ptr %i.fv, i64 %i.fl
  %i.fy = trunc <2 x i64> %strided.vec232 to <2 x i32>
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !1055

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.fh, %vector.memcheck ], [ %i.fh, %.lr.ph145 ], [ %i.ft, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ga = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.gk, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.gj, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gc = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.gd = getelementptr [4 x i8], ptr %i.fj, i64 %.036144 ; 2 uses
  %i.ge = trunc i64 %i.gc to i32
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !157
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !116
  %i.gh = getelementptr [4 x i8], ptr %i.gd, i64 %i.fl
  %i.gi = trunc i64 %i.gg to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !157
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.gk = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.gj, %i.fi
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1056

bb.ah:                                            ; preds = %._crit_edge146
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !168, !range !106, !noundef !107
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !169, !range !106, !noundef !107
  %i.gq = trunc nuw i8 %i.gp to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS5_5EpeckESL_SM_NS4_IiLin1ELi1ELi0ELin1ELi1EEESO_EEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKSt6vectorINS5_10Triangle_3IT1_EESaIS11_EERKSt3mapINSU_5IndexESY_ISt4pairIS17_NS5_6ObjectEESaIS1A_EESt4lessIS17_ESaIS18_IKS17_S1C_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1L_IT3_EERNS1L_IT4_EERNS1L_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i1 noundef zeroext %i.gn, i1 noundef zeroext %i.gq, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.gr = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i58 = icmp eq ptr %i.gr, null
  br i1 %.not.i58, label %_ZNSt14_Function_baseD2Ev.exit59, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit59 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit59:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit59
  %i.gv = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.gw = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.gx) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit59, %bb.al
  ret void

.body52:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.eh, %bb.y ], [ %i.dt, %bb.p ], [ %i.eu, %bb.ad ], [ %i.em, %bb.aa ], [ %i.eg, %bb.w ], [ %i.dt, %bb.q ], [ %i.eh, %bb.x ] ; 2 uses
  %i.gy = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i60 = icmp eq ptr %i.gy, null
  br i1 %.not.i60, label %.body, label %bb.am

bb.am:                                            ; preds = %.body52
  %i.gz = invoke noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body52, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.dj, %bb.l ], [ %.merged42, %bb.am ], [ %i.dj, %bb.m ], [ %.merged42, %.body52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.de, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = ptrtoint ptr %.sroa.20.0133 to i64
  %i.hd = ptrtoint ptr %.sroa.099.0125 to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.he) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !187
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.j) #23
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !132
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  call void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #23
  resume { ptr, i32 } %.merged

bb.as:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESM_SN_SN_NS6_IiLin1ELi1ELi0ELin1ELi1EEESO_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_3
begin_hunk_4_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_EC2ERKNS5_10MatrixBaseIS7_EERKNSS_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS12_ISP_EES16_RNS12_ISQ_EES18_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bp, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.az, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bk, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.br, %i.bs
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1080

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.x, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bu = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = invoke noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_E20box_intersect_staticEPSR_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISY_SaISY_EEEENST_14ID_FROM_HANDLEEEES17_, ptr %i.bu, align 8, !tbaa !1091
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cc = ptrtoint ptr %0 to i64
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !222
  store ptr %i.bu, ptr %10, align 8, !tbaa !224
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES17_NSO_IiLin1ELi1ELi0ELin1ELi1EEES18_EESG_SG_ES1A_St12_PlaceholderILi1EES1D_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.ca, align 8, !tbaa !155
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES17_NSO_IiLin1ELi1ELi0ELin1ELi1EEES18_EESG_SG_ES1A_St12_PlaceholderILi1EES1D_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation, ptr %i.bt, align 8, !tbaa !149
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ce = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i49, label %.body51, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false)
  store ptr %i.ce, ptr %11, align 8, !tbaa !224
  %i.ck = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !109
  store <2 x ptr> %i.ck, ptr %i.cd, align 8, !tbaa !109
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !156
  %i.cn = sext i32 %i.cm to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.cn)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = invoke noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body51

bb.x:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i53 = icmp eq ptr %i.cu, null
  br i1 %.not.i53, label %.body51, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = invoke noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.cz = extractvalue { ptr, i32 } %i.cy, 1
  %i.da = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.ab, label %.body51

bb.ab:                                            ; preds = %bb.aa
  %i.dc = extractvalue { ptr, i32 } %i.cy, 0
  %i.dd = call ptr @__cxa_begin_catch(ptr %i.dc) #23
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.de, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.de, ptr %i.df, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.at unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body51

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !158
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3                 ; 3 uses
  %i.do = lshr i64 %i.dn, 1                       ; 2 uses
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = icmp slt i64 %i.dn, 0
  %or.cond = and i1 %i.dq, %i.dp
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.dr = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dr, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc55 unwind label %bb.w

.noexc55:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.ds = and i64 %i.dn, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.ds, i64 noundef %i.do, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !161 ; 6 uses
  %i.du = load ptr, ptr %i.dh, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.dt, %i.du
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.du to i64
  %13 = ptrtoaddr ptr %i.dt to i64
  %i.dv = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !165 ; 3 uses
  %i.dy = add i64 %12, -16
  %i.dz = sub i64 %i.dy, %13                      ; 2 uses
  %i.ea = lshr i64 %i.dz, 4
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dz, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.ec = shl i64 %i.dx, 2
  %i.ed = add i64 %i.ec, -1
  %diff.check = icmp ult i64 %i.ed, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eb, 2305843009213693950     ; 4 uses
  %i.ee = shl i64 %n.vec, 4
  %i.ef = getelementptr i8, ptr %i.dt, i64 %i.ee
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eg = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.dt, i64 %i.eg
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec234 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.eh = getelementptr [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ei = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.ei, ptr %i.eh, align 4, !tbaa !157
  %i.ej = getelementptr [4 x i8], ptr %i.eh, i64 %i.dx
  %i.ek = trunc <2 x i64> %strided.vec234 to <2 x i32>
  store <2 x i32> %i.ek, ptr %i.ej, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !1081

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.dt, %vector.memcheck ], [ %i.dt, %.lr.ph145 ], [ %i.ef, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.em = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.ew, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.ev, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.eo = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.ep = getelementptr [4 x i8], ptr %i.dv, i64 %.036144 ; 2 uses
  %i.eq = trunc i64 %i.eo to i32
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !157
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !116
  %i.et = getelementptr [4 x i8], ptr %i.ep, i64 %i.dx
  %i.eu = trunc i64 %i.es to i32
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !157
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.ew = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.ev, %i.du
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1082

bb.ah:                                            ; preds = %._crit_edge146
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !168, !range !106, !noundef !107
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !169, !range !106, !noundef !107
  %i.fc = trunc nuw i8 %i.fb to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEEN4CGAL5EpickENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESQ_EEvRKNS3_10MatrixBaseIT_EERKNSR_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaIS13_EERKSt3mapINSW_5IndexES10_ISt4pairIS19_NS7_6ObjectEESaIS1C_EESt4lessIS19_ESaIS1A_IKS19_S1E_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1N_IT3_EERNS1N_IT4_EERNS1N_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i1 noundef zeroext %i.ez, i1 noundef zeroext %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.fd = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i57 = icmp eq ptr %i.fd, null
  br i1 %.not.i57, label %_ZNSt14_Function_baseD2Ev.exit58, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fe = invoke noundef zeroext i1 %i.fd(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit58 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit58:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit58
  %i.fh = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.fi = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.fj) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit58, %bb.al
  ret void

.body51:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.ct, %bb.y ], [ %i.cf, %bb.p ], [ %i.dg, %bb.ad ], [ %i.cy, %bb.aa ], [ %i.cs, %bb.w ], [ %i.cf, %bb.q ], [ %i.ct, %bb.x ] ; 2 uses
  %i.fk = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i59 = icmp eq ptr %i.fk, null
  br i1 %.not.i59, label %.body, label %bb.am

bb.am:                                            ; preds = %.body51
  %i.fl = invoke noundef zeroext i1 %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body51, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.bv, %bb.l ], [ %.merged42, %bb.am ], [ %i.bv, %bb.m ], [ %.merged42, %.body51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fo = ptrtoint ptr %.sroa.20.0133 to i64
  %i.fp = ptrtoint ptr %.sroa.099.0125 to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.fq) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.aa, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.fr = load ptr, ptr %i.j, align 8, !tbaa !122 ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !123
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fw) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.e) #23
  %i.fx = load ptr, ptr %i.d, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !132
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  %i.gd = load ptr, ptr %i.c, align 8, !tbaa !135 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !136
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #40
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.as
  resume { ptr, i32 } %.merged

bb.at:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_EC2ERKNS5_10MatrixBaseIS7_EERKNSS_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS12_ISP_EES16_RNS12_ISQ_EES18_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
end_hunk_4
begin_hunk_5_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_EC2ERKNS5_10MatrixBaseIS7_EERKNSS_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS12_ISP_EES16_RNS12_ISQ_EES18_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.dd, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.dc, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.cn, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.cy, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.s, align 8, !tbaa !174
  %.not120 = icmp eq ptr %i.df, %i.dg
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1107

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.ac, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.di = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i49, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_E20box_intersect_staticEPSR_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISY_SaISY_EEEENST_14ID_FROM_HANDLEEEES17_, ptr %i.di, align 8, !tbaa !1119
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = ptrtoint ptr %0 to i64
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !226
  store ptr %i.di, ptr %10, align 8, !tbaa !228
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES17_NSO_IiLin1ELi1ELi0ELin1ELi1EEES18_EESG_SG_ES1A_St12_PlaceholderILi1EES1D_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.do, align 8, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES17_NSO_IiLin1ELi1ELi0ELin1ELi1EEES18_EESG_SG_ES1A_St12_PlaceholderILi1EES1D_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation, ptr %i.dh, align 8, !tbaa !149
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ds = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.du, null
  br i1 %.not.i.i50, label %.body52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false)
  store ptr %i.ds, ptr %11, align 8, !tbaa !228
  %i.dy = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !109
  store <2 x ptr> %i.dy, ptr %i.dr, align 8, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !156
  %i.eb = sext i32 %i.ea to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.eb)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.x:                                             ; preds = %bb.s
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ei, null
  br i1 %.not.i54, label %.body52, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.en = extractvalue { ptr, i32 } %i.em, 1
  %i.eo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %.body52

bb.ab:                                            ; preds = %bb.aa
  %i.eq = extractvalue { ptr, i32 } %i.em, 0
  %i.er = call ptr @__cxa_begin_catch(ptr %i.eq) #23
  %i.es = load i32, ptr %i.er, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.es, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.es, ptr %i.et, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.as unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body52

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !158
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3                 ; 3 uses
  %i.fc = lshr i64 %i.fb, 1                       ; 2 uses
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = icmp slt i64 %i.fb, 0
  %or.cond = and i1 %i.fe, %i.fd
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc56 unwind label %bb.w

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.fg = and i64 %i.fb, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.fg, i64 noundef %i.fc, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !161 ; 6 uses
  %i.fi = load ptr, ptr %i.ev, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.fi to i64
  %13 = ptrtoaddr ptr %i.fh to i64
  %i.fj = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !165 ; 3 uses
  %i.fm = add i64 %12, -16
  %i.fn = sub i64 %i.fm, %13                      ; 2 uses
  %i.fo = lshr i64 %i.fn, 4
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fn, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.fq = shl i64 %i.fl, 2
  %i.fr = add i64 %i.fq, -1
  %diff.check = icmp ult i64 %i.fr, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, 2305843009213693950     ; 4 uses
  %i.fs = shl i64 %n.vec, 4
  %i.ft = getelementptr i8, ptr %i.fh, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fu
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec232 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.fv = getelementptr [4 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.fw = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.fw, ptr %i.fv, align 4, !tbaa !157
  %i.fx = getelementptr [4 x i8], ptr %i.fv, i64 %i.fl
  %i.fy = trunc <2 x i64> %strided.vec232 to <2 x i32>
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !1108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.fh, %vector.memcheck ], [ %i.fh, %.lr.ph145 ], [ %i.ft, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ga = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.gk, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.gj, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gc = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.gd = getelementptr [4 x i8], ptr %i.fj, i64 %.036144 ; 2 uses
  %i.ge = trunc i64 %i.gc to i32
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !157
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !116
  %i.gh = getelementptr [4 x i8], ptr %i.gd, i64 %i.fl
  %i.gi = trunc i64 %i.gg to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !157
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.gk = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.gj, %i.fi
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1109

bb.ah:                                            ; preds = %._crit_edge146
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !168, !range !106, !noundef !107
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !169, !range !106, !noundef !107
  %i.gq = trunc nuw i8 %i.gp to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEEN4CGAL5EpeckENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESQ_EEvRKNS3_10MatrixBaseIT_EERKNSR_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaIS13_EERKSt3mapINSW_5IndexES10_ISt4pairIS19_NS7_6ObjectEESaIS1C_EESt4lessIS19_ESaIS1A_IKS19_S1E_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1N_IT3_EERNS1N_IT4_EERNS1N_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i1 noundef zeroext %i.gn, i1 noundef zeroext %i.gq, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.gr = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i58 = icmp eq ptr %i.gr, null
  br i1 %.not.i58, label %_ZNSt14_Function_baseD2Ev.exit59, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit59 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit59:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit59
  %i.gv = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.gw = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.gx) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit59, %bb.al
  ret void

.body52:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.eh, %bb.y ], [ %i.dt, %bb.p ], [ %i.eu, %bb.ad ], [ %i.em, %bb.aa ], [ %i.eg, %bb.w ], [ %i.dt, %bb.q ], [ %i.eh, %bb.x ] ; 2 uses
  %i.gy = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i60 = icmp eq ptr %i.gy, null
  br i1 %.not.i60, label %.body, label %bb.am

bb.am:                                            ; preds = %.body52
  %i.gz = invoke noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body52, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.dj, %bb.l ], [ %.merged42, %bb.am ], [ %i.dj, %bb.m ], [ %.merged42, %.body52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.de, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = ptrtoint ptr %.sroa.20.0133 to i64
  %i.hd = ptrtoint ptr %.sroa.099.0125 to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.he) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !187
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.j) #23
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !132
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  call void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #23
  resume { ptr, i32 } %.merged

bb.as:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_5
begin_hunk_6_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_ISL_Lin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_EC2ERKNS5_10MatrixBaseISM_EERKNSS_ISN_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS12_ISP_EES16_RNS12_ISQ_EES18_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.dd, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.dc, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.cn, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.cy, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.s, align 8, !tbaa !174
  %.not120 = icmp eq ptr %i.df, %i.dg
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1135

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.ac, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.di = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i49, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_ISL_Lin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_E20box_intersect_staticEPSR_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISY_SaISY_EEEENST_14ID_FROM_HANDLEEEES17_, ptr %i.di, align 8, !tbaa !1147
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = ptrtoint ptr %0 to i64
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !230
  store ptr %i.di, ptr %10, align 8, !tbaa !232
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixINS0_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEENSO_IS13_Lin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES17_NSO_IiLin1ELi1ELi0ELin1ELi1EEES18_EESG_SG_ES1A_St12_PlaceholderILi1EES1D_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.do, align 8, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixINS0_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEENSO_IS13_Lin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES17_NSO_IiLin1ELi1ELi0ELin1ELi1EEES18_EESG_SG_ES1A_St12_PlaceholderILi1EES1D_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation, ptr %i.dh, align 8, !tbaa !149
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ds = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.du, null
  br i1 %.not.i.i50, label %.body52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false)
  store ptr %i.ds, ptr %11, align 8, !tbaa !232
  %i.dy = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !109
  store <2 x ptr> %i.dy, ptr %i.dr, align 8, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !156
  %i.eb = sext i32 %i.ea to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.eb)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_ISL_Lin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.x:                                             ; preds = %bb.s
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ei, null
  br i1 %.not.i54, label %.body52, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.en = extractvalue { ptr, i32 } %i.em, 1
  %i.eo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %.body52

bb.ab:                                            ; preds = %bb.aa
  %i.eq = extractvalue { ptr, i32 } %i.em, 0
  %i.er = call ptr @__cxa_begin_catch(ptr %i.eq) #23
  %i.es = load i32, ptr %i.er, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.es, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.es, ptr %i.et, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.as unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body52

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !158
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3                 ; 3 uses
  %i.fc = lshr i64 %i.fb, 1                       ; 2 uses
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = icmp slt i64 %i.fb, 0
  %or.cond = and i1 %i.fe, %i.fd
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc56 unwind label %bb.w

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.fg = and i64 %i.fb, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.fg, i64 noundef %i.fc, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !161 ; 6 uses
  %i.fi = load ptr, ptr %i.ev, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.fi to i64
  %13 = ptrtoaddr ptr %i.fh to i64
  %i.fj = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !165 ; 3 uses
  %i.fm = add i64 %12, -16
  %i.fn = sub i64 %i.fm, %13                      ; 2 uses
  %i.fo = lshr i64 %i.fn, 4
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fn, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.fq = shl i64 %i.fl, 2
  %i.fr = add i64 %i.fq, -1
  %diff.check = icmp ult i64 %i.fr, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, 2305843009213693950     ; 4 uses
  %i.fs = shl i64 %n.vec, 4
  %i.ft = getelementptr i8, ptr %i.fh, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fu
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec232 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.fv = getelementptr [4 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.fw = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.fw, ptr %i.fv, align 4, !tbaa !157
  %i.fx = getelementptr [4 x i8], ptr %i.fv, i64 %i.fl
  %i.fy = trunc <2 x i64> %strided.vec232 to <2 x i32>
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !1136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.fh, %vector.memcheck ], [ %i.fh, %.lr.ph145 ], [ %i.ft, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ga = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.gk, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.gj, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gc = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.gd = getelementptr [4 x i8], ptr %i.fj, i64 %.036144 ; 2 uses
  %i.ge = trunc i64 %i.gc to i32
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !157
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !116
  %i.gh = getelementptr [4 x i8], ptr %i.gd, i64 %i.fl
  %i.gi = trunc i64 %i.gg to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !157
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.gk = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.gj, %i.fi
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1137

bb.ah:                                            ; preds = %._crit_edge146
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !168, !range !106, !noundef !107
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !169, !range !106, !noundef !107
  %i.gq = trunc nuw i8 %i.gp to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS5_5EpeckENS4_ISK_Lin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESQ_EEvRKNS3_10MatrixBaseIT_EERKNSR_IT0_EERKSt6vectorINS5_10Triangle_3IT1_EESaIS13_EERKSt3mapINSW_5IndexES10_ISt4pairIS19_NS5_6ObjectEESaIS1C_EESt4lessIS19_ESaIS1A_IKS19_S1E_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1N_IT3_EERNS1N_IT4_EERNS1N_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i1 noundef zeroext %i.gn, i1 noundef zeroext %i.gq, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.gr = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i58 = icmp eq ptr %i.gr, null
  br i1 %.not.i58, label %_ZNSt14_Function_baseD2Ev.exit59, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit59 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit59:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit59
  %i.gv = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.gw = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.gx) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit59, %bb.al
  ret void

.body52:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.eh, %bb.y ], [ %i.dt, %bb.p ], [ %i.eu, %bb.ad ], [ %i.em, %bb.aa ], [ %i.eg, %bb.w ], [ %i.dt, %bb.q ], [ %i.eh, %bb.x ] ; 2 uses
  %i.gy = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i60 = icmp eq ptr %i.gy, null
  br i1 %.not.i60, label %.body, label %bb.am

bb.am:                                            ; preds = %.body52
  %i.gz = invoke noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body52, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.dj, %bb.l ], [ %.merged42, %bb.am ], [ %i.dj, %bb.m ], [ %.merged42, %.body52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.de, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = ptrtoint ptr %.sroa.20.0133 to i64
  %i.hd = ptrtoint ptr %.sroa.099.0125 to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.he) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !187
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.j) #23
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !132
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  call void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #23
  resume { ptr, i32 } %.merged

bb.as:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_ISL_Lin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_6
begin_hunk_7_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_ISL_Lin1ELin1ELi0ELin1ELin1EEESN_SN_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseISM_EERKNSR_ISN_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_ISN_EES15_RNS11_ISP_EES17_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.dd, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.dc, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.cn, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.cy, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.s, align 8, !tbaa !174
  %.not120 = icmp eq ptr %i.df, %i.dg
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1163

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.ac, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.di = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i49, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_ISL_Lin1ELin1ELi0ELin1ELin1EEESN_SN_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E20box_intersect_staticEPSQ_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISX_SaISX_EEEENSS_14ID_FROM_HANDLEEEES16_, ptr %i.di, align 8, !tbaa !1175
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = ptrtoint ptr %0 to i64
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !234
  store ptr %i.di, ptr %10, align 8, !tbaa !236
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixINS0_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_IS13_Lin1ELin1ELi0ELin1ELin1EEES15_S15_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.do, align 8, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixINS0_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_IS13_Lin1ELin1ELi0ELin1ELin1EEES15_S15_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1I_St18_Manager_operation, ptr %i.dh, align 8, !tbaa !149
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ds = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.du, null
  br i1 %.not.i.i50, label %.body52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false)
  store ptr %i.ds, ptr %11, align 8, !tbaa !236
  %i.dy = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !109
  store <2 x ptr> %i.dy, ptr %i.dr, align 8, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !156
  %i.eb = sext i32 %i.ea to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.eb)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_ISL_Lin1ELin1ELi0ELin1ELin1EEESN_SN_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.x:                                             ; preds = %bb.s
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ei, null
  br i1 %.not.i54, label %.body52, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.en = extractvalue { ptr, i32 } %i.em, 1
  %i.eo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %.body52

bb.ab:                                            ; preds = %bb.aa
  %i.eq = extractvalue { ptr, i32 } %i.em, 0
  %i.er = call ptr @__cxa_begin_catch(ptr %i.eq) #23
  %i.es = load i32, ptr %i.er, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.es, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.es, ptr %i.et, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.as unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body52

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !158
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3                 ; 3 uses
  %i.fc = lshr i64 %i.fb, 1                       ; 2 uses
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = icmp slt i64 %i.fb, 0
  %or.cond = and i1 %i.fe, %i.fd
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc56 unwind label %bb.w

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.fg = and i64 %i.fb, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.fg, i64 noundef %i.fc, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !161 ; 6 uses
  %i.fi = load ptr, ptr %i.ev, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.fi to i64
  %13 = ptrtoaddr ptr %i.fh to i64
  %i.fj = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !165 ; 3 uses
  %i.fm = add i64 %12, -16
  %i.fn = sub i64 %i.fm, %13                      ; 2 uses
  %i.fo = lshr i64 %i.fn, 4
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fn, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.fq = shl i64 %i.fl, 2
  %i.fr = add i64 %i.fq, -1
  %diff.check = icmp ult i64 %i.fr, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, 2305843009213693950     ; 4 uses
  %i.fs = shl i64 %n.vec, 4
  %i.ft = getelementptr i8, ptr %i.fh, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fu
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec232 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.fv = getelementptr [4 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.fw = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.fw, ptr %i.fv, align 4, !tbaa !157
  %i.fx = getelementptr [4 x i8], ptr %i.fv, i64 %i.fl
  %i.fy = trunc <2 x i64> %strided.vec232 to <2 x i32>
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !1164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.fh, %vector.memcheck ], [ %i.fh, %.lr.ph145 ], [ %i.ft, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ga = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.gk, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.gj, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gc = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.gd = getelementptr [4 x i8], ptr %i.fj, i64 %.036144 ; 2 uses
  %i.ge = trunc i64 %i.gc to i32
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !157
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !116
  %i.gh = getelementptr [4 x i8], ptr %i.gd, i64 %i.fl
  %i.gi = trunc i64 %i.gg to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !157
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.gk = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.gj, %i.fi
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1165

bb.ah:                                            ; preds = %._crit_edge146
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !168, !range !106, !noundef !107
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !169, !range !106, !noundef !107
  %i.gq = trunc nuw i8 %i.gp to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS5_5EpeckENS4_ISK_Lin1ELin1ELi0ELin1ELin1EEESM_NS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKSt6vectorINS5_10Triangle_3IT1_EESaIS12_EERKSt3mapINSV_5IndexESZ_ISt4pairIS18_NS5_6ObjectEESaIS1B_EESt4lessIS18_ESaIS19_IKS18_S1D_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1M_IT3_EERNS1M_IT4_EERNS1M_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i1 noundef zeroext %i.gn, i1 noundef zeroext %i.gq, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.gr = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i58 = icmp eq ptr %i.gr, null
  br i1 %.not.i58, label %_ZNSt14_Function_baseD2Ev.exit59, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit59 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit59:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit59
  %i.gv = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.gw = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.gx) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit59, %bb.al
  ret void

.body52:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.eh, %bb.y ], [ %i.dt, %bb.p ], [ %i.eu, %bb.ad ], [ %i.em, %bb.aa ], [ %i.eg, %bb.w ], [ %i.dt, %bb.q ], [ %i.eh, %bb.x ] ; 2 uses
  %i.gy = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i60 = icmp eq ptr %i.gy, null
  br i1 %.not.i60, label %.body, label %bb.am

bb.am:                                            ; preds = %.body52
  %i.gz = invoke noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body52, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.dj, %bb.l ], [ %.merged42, %bb.am ], [ %i.dj, %bb.m ], [ %.merged42, %.body52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.de, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = ptrtoint ptr %.sroa.20.0133 to i64
  %i.hd = ptrtoint ptr %.sroa.099.0125 to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.he) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !187
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.j) #23
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !132
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  call void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #23
  resume { ptr, i32 } %.merged

bb.as:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_ISL_Lin1ELin1ELi0ELin1ELin1EEESN_SN_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_7
begin_hunk_8_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bp, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.az, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bk, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.br, %i.bs
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1240

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.x, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bu = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = invoke noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E20box_intersect_staticEPSQ_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISX_SaISX_EEEENSS_14ID_FROM_HANDLEEEES16_, ptr %i.bu, align 8, !tbaa !1251
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cc = ptrtoint ptr %0 to i64
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !249
  store ptr %i.bu, ptr %10, align 8, !tbaa !251
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.ca, align 8, !tbaa !155
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1I_St18_Manager_operation, ptr %i.bt, align 8, !tbaa !149
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ce = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i49, label %.body51, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false)
  store ptr %i.ce, ptr %11, align 8, !tbaa !251
  %i.ck = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !109
  store <2 x ptr> %i.ck, ptr %i.cd, align 8, !tbaa !109
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !156
  %i.cn = sext i32 %i.cm to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.cn)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = invoke noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body51

bb.x:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i53 = icmp eq ptr %i.cu, null
  br i1 %.not.i53, label %.body51, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = invoke noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.cz = extractvalue { ptr, i32 } %i.cy, 1
  %i.da = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.ab, label %.body51

bb.ab:                                            ; preds = %bb.aa
  %i.dc = extractvalue { ptr, i32 } %i.cy, 0
  %i.dd = call ptr @__cxa_begin_catch(ptr %i.dc) #23
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.de, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.de, ptr %i.df, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.at unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body51

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !158
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3                 ; 3 uses
  %i.do = lshr i64 %i.dn, 1                       ; 2 uses
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = icmp slt i64 %i.dn, 0
  %or.cond = and i1 %i.dq, %i.dp
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.dr = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dr, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc55 unwind label %bb.w

.noexc55:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.ds = and i64 %i.dn, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.ds, i64 noundef %i.do, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !161 ; 6 uses
  %i.du = load ptr, ptr %i.dh, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.dt, %i.du
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.du to i64
  %13 = ptrtoaddr ptr %i.dt to i64
  %i.dv = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !165 ; 3 uses
  %i.dy = add i64 %12, -16
  %i.dz = sub i64 %i.dy, %13                      ; 2 uses
  %i.ea = lshr i64 %i.dz, 4
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dz, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.ec = shl i64 %i.dx, 2
  %i.ed = add i64 %i.ec, -1
  %diff.check = icmp ult i64 %i.ed, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eb, 2305843009213693950     ; 4 uses
  %i.ee = shl i64 %n.vec, 4
  %i.ef = getelementptr i8, ptr %i.dt, i64 %i.ee
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eg = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.dt, i64 %i.eg
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec234 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.eh = getelementptr [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ei = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.ei, ptr %i.eh, align 4, !tbaa !157
  %i.ej = getelementptr [4 x i8], ptr %i.eh, i64 %i.dx
  %i.ek = trunc <2 x i64> %strided.vec234 to <2 x i32>
  store <2 x i32> %i.ek, ptr %i.ej, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !1241

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.dt, %vector.memcheck ], [ %i.dt, %.lr.ph145 ], [ %i.ef, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.em = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.ew, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.ev, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.eo = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.ep = getelementptr [4 x i8], ptr %i.dv, i64 %.036144 ; 2 uses
  %i.eq = trunc i64 %i.eo to i32
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !157
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !116
  %i.et = getelementptr [4 x i8], ptr %i.ep, i64 %i.dx
  %i.eu = trunc i64 %i.es to i32
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !157
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.ew = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.ev, %i.du
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1242

bb.ah:                                            ; preds = %._crit_edge146
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !168, !range !106, !noundef !107
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !169, !range !106, !noundef !107
  %i.fc = trunc nuw i8 %i.fb to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaIS12_EERKSt3mapINSV_5IndexESZ_ISt4pairIS18_NS7_6ObjectEESaIS1B_EESt4lessIS18_ESaIS19_IKS18_S1D_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1M_IT3_EERNS1M_IT4_EERNS1M_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i1 noundef zeroext %i.ez, i1 noundef zeroext %i.fc, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.fd = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i57 = icmp eq ptr %i.fd, null
  br i1 %.not.i57, label %_ZNSt14_Function_baseD2Ev.exit58, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fe = invoke noundef zeroext i1 %i.fd(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit58 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit58:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit58
  %i.fh = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.fi = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.fj) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit58, %bb.al
  ret void

.body51:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.ct, %bb.y ], [ %i.cf, %bb.p ], [ %i.dg, %bb.ad ], [ %i.cy, %bb.aa ], [ %i.cs, %bb.w ], [ %i.cf, %bb.q ], [ %i.ct, %bb.x ] ; 2 uses
  %i.fk = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i59 = icmp eq ptr %i.fk, null
  br i1 %.not.i59, label %.body, label %bb.am

bb.am:                                            ; preds = %.body51
  %i.fl = invoke noundef zeroext i1 %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body51, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.bv, %bb.l ], [ %.merged42, %bb.am ], [ %i.bv, %bb.m ], [ %.merged42, %.body51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fo = ptrtoint ptr %.sroa.20.0133 to i64
  %i.fp = ptrtoint ptr %.sroa.099.0125 to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.fq) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.aa, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.fr = load ptr, ptr %i.j, align 8, !tbaa !122 ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !123
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fw) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.e) #23
  %i.fx = load ptr, ptr %i.d, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !132
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  %i.gd = load ptr, ptr %i.c, align 8, !tbaa !135 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !136
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #40
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.as
  resume { ptr, i32 } %.merged

bb.at:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
end_hunk_8
begin_hunk_9_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.dd, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.dc, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.cn, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.cy, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.s, align 8, !tbaa !174
  %.not120 = icmp eq ptr %i.df, %i.dg
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1267

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.ac, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.di = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i49, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E20box_intersect_staticEPSQ_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISX_SaISX_EEEENSS_14ID_FROM_HANDLEEEES16_, ptr %i.di, align 8, !tbaa !1279
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = ptrtoint ptr %0 to i64
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !253
  store ptr %i.di, ptr %10, align 8, !tbaa !255
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.do, align 8, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1I_St18_Manager_operation, ptr %i.dh, align 8, !tbaa !149
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ds = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.du, null
  br i1 %.not.i.i50, label %.body52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false)
  store ptr %i.ds, ptr %11, align 8, !tbaa !255
  %i.dy = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !109
  store <2 x ptr> %i.dy, ptr %i.dr, align 8, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !156
  %i.eb = sext i32 %i.ea to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.eb)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.x:                                             ; preds = %bb.s
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ei, null
  br i1 %.not.i54, label %.body52, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.en = extractvalue { ptr, i32 } %i.em, 1
  %i.eo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %.body52

bb.ab:                                            ; preds = %bb.aa
  %i.eq = extractvalue { ptr, i32 } %i.em, 0
  %i.er = call ptr @__cxa_begin_catch(ptr %i.eq) #23
  %i.es = load i32, ptr %i.er, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.es, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.es, ptr %i.et, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.as unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body52

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !158
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3                 ; 3 uses
  %i.fc = lshr i64 %i.fb, 1                       ; 2 uses
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = icmp slt i64 %i.fb, 0
  %or.cond = and i1 %i.fe, %i.fd
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc56 unwind label %bb.w

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.fg = and i64 %i.fb, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.fg, i64 noundef %i.fc, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !161 ; 6 uses
  %i.fi = load ptr, ptr %i.ev, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.fi to i64
  %13 = ptrtoaddr ptr %i.fh to i64
  %i.fj = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !165 ; 3 uses
  %i.fm = add i64 %12, -16
  %i.fn = sub i64 %i.fm, %13                      ; 2 uses
  %i.fo = lshr i64 %i.fn, 4
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fn, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.fq = shl i64 %i.fl, 2
  %i.fr = add i64 %i.fq, -1
  %diff.check = icmp ult i64 %i.fr, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, 2305843009213693950     ; 4 uses
  %i.fs = shl i64 %n.vec, 4
  %i.ft = getelementptr i8, ptr %i.fh, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fu
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec232 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.fv = getelementptr [4 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.fw = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.fw, ptr %i.fv, align 4, !tbaa !157
  %i.fx = getelementptr [4 x i8], ptr %i.fv, i64 %i.fl
  %i.fy = trunc <2 x i64> %strided.vec232 to <2 x i32>
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !1268

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.fh, %vector.memcheck ], [ %i.fh, %.lr.ph145 ], [ %i.ft, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ga = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.gk, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.gj, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gc = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.gd = getelementptr [4 x i8], ptr %i.fj, i64 %.036144 ; 2 uses
  %i.ge = trunc i64 %i.gc to i32
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !157
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !116
  %i.gh = getelementptr [4 x i8], ptr %i.gd, i64 %i.fl
  %i.gi = trunc i64 %i.gg to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !157
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.gk = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.gj, %i.fi
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1269

bb.ah:                                            ; preds = %._crit_edge146
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !168, !range !106, !noundef !107
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !169, !range !106, !noundef !107
  %i.gq = trunc nuw i8 %i.gp to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaIS12_EERKSt3mapINSV_5IndexESZ_ISt4pairIS18_NS7_6ObjectEESaIS1B_EESt4lessIS18_ESaIS19_IKS18_S1D_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1M_IT3_EERNS1M_IT4_EERNS1M_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i1 noundef zeroext %i.gn, i1 noundef zeroext %i.gq, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.gr = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i58 = icmp eq ptr %i.gr, null
  br i1 %.not.i58, label %_ZNSt14_Function_baseD2Ev.exit59, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit59 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit59:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit59
  %i.gv = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.gw = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.gx) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit59, %bb.al
  ret void

.body52:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.eh, %bb.y ], [ %i.dt, %bb.p ], [ %i.eu, %bb.ad ], [ %i.em, %bb.aa ], [ %i.eg, %bb.w ], [ %i.dt, %bb.q ], [ %i.eh, %bb.x ] ; 2 uses
  %i.gy = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i60 = icmp eq ptr %i.gy, null
  br i1 %.not.i60, label %.body, label %bb.am

bb.am:                                            ; preds = %.body52
  %i.gz = invoke noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body52, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.dj, %bb.l ], [ %.merged42, %bb.am ], [ %i.dj, %bb.m ], [ %.merged42, %.body52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.de, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = ptrtoint ptr %.sroa.20.0133 to i64
  %i.hd = ptrtoint ptr %.sroa.099.0125 to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.he) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !187
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.j) #23
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !132
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  call void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #23
  resume { ptr, i32 } %.merged

bb.as:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_9
begin_hunk_10_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bp, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.az, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bk, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.br, %i.bs
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1293

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.x, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bu = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = invoke noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E20box_intersect_staticEPSQ_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISX_SaISX_EEEENSS_14ID_FROM_HANDLEEEES16_, ptr %i.bu, align 8, !tbaa !1304
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cc = ptrtoint ptr %0 to i64
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !257
  store ptr %i.bu, ptr %10, align 8, !tbaa !259
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.ca, align 8, !tbaa !155
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1I_St18_Manager_operation, ptr %i.bt, align 8, !tbaa !149
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ce = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i49, label %.body51, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false)
  store ptr %i.ce, ptr %11, align 8, !tbaa !259
  %i.ck = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !109
  store <2 x ptr> %i.ck, ptr %i.cd, align 8, !tbaa !109
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !156
  %i.cn = sext i32 %i.cm to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.cn)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = invoke noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body51

bb.x:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i53 = icmp eq ptr %i.cu, null
  br i1 %.not.i53, label %.body51, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = invoke noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.cz = extractvalue { ptr, i32 } %i.cy, 1
  %i.da = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.ab, label %.body51

bb.ab:                                            ; preds = %bb.aa
  %i.dc = extractvalue { ptr, i32 } %i.cy, 0
  %i.dd = call ptr @__cxa_begin_catch(ptr %i.dc) #23
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.de, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.de, ptr %i.df, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.at unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body51

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !158
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3                 ; 3 uses
  %i.do = lshr i64 %i.dn, 1                       ; 2 uses
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = icmp slt i64 %i.dn, 0
  %or.cond = and i1 %i.dq, %i.dp
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.dr = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dr, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc55 unwind label %bb.w

.noexc55:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.ds = and i64 %i.dn, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.ds, i64 noundef %i.do, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !161 ; 6 uses
  %i.du = load ptr, ptr %i.dh, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.dt, %i.du
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.du to i64
  %13 = ptrtoaddr ptr %i.dt to i64
  %i.dv = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !165 ; 3 uses
  %i.dy = add i64 %12, -16
  %i.dz = sub i64 %i.dy, %13                      ; 2 uses
  %i.ea = lshr i64 %i.dz, 4
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dz, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.ec = shl i64 %i.dx, 2
  %i.ed = add i64 %i.ec, -1
  %diff.check = icmp ult i64 %i.ed, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eb, 2305843009213693950     ; 4 uses
  %i.ee = shl i64 %n.vec, 4
  %i.ef = getelementptr i8, ptr %i.dt, i64 %i.ee
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eg = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.dt, i64 %i.eg
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec234 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.eh = getelementptr [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ei = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.ei, ptr %i.eh, align 4, !tbaa !157
  %i.ej = getelementptr [4 x i8], ptr %i.eh, i64 %i.dx
  %i.ek = trunc <2 x i64> %strided.vec234 to <2 x i32>
  store <2 x i32> %i.ek, ptr %i.ej, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !1294

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.dt, %vector.memcheck ], [ %i.dt, %.lr.ph145 ], [ %i.ef, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.em = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.ew, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.ev, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.eo = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.ep = getelementptr [4 x i8], ptr %i.dv, i64 %.036144 ; 2 uses
  %i.eq = trunc i64 %i.eo to i32
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !157
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !116
  %i.et = getelementptr [4 x i8], ptr %i.ep, i64 %i.dx
  %i.eu = trunc i64 %i.es to i32
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !157
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.ew = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.ev, %i.du
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1295

bb.ah:                                            ; preds = %._crit_edge146
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !168, !range !106, !noundef !107
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !169, !range !106, !noundef !107
  %i.fc = trunc nuw i8 %i.fb to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaIS12_EERKSt3mapINSV_5IndexESZ_ISt4pairIS18_NS7_6ObjectEESaIS1B_EESt4lessIS18_ESaIS19_IKS18_S1D_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1M_IT3_EERNS1M_IT4_EERNS1M_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i1 noundef zeroext %i.ez, i1 noundef zeroext %i.fc, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.fd = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i57 = icmp eq ptr %i.fd, null
  br i1 %.not.i57, label %_ZNSt14_Function_baseD2Ev.exit58, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fe = invoke noundef zeroext i1 %i.fd(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit58 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit58:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit58
  %i.fh = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.fi = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.fj) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit58, %bb.al
  ret void

.body51:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.ct, %bb.y ], [ %i.cf, %bb.p ], [ %i.dg, %bb.ad ], [ %i.cy, %bb.aa ], [ %i.cs, %bb.w ], [ %i.cf, %bb.q ], [ %i.ct, %bb.x ] ; 2 uses
  %i.fk = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i59 = icmp eq ptr %i.fk, null
  br i1 %.not.i59, label %.body, label %bb.am

bb.am:                                            ; preds = %.body51
  %i.fl = invoke noundef zeroext i1 %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body51, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.bv, %bb.l ], [ %.merged42, %bb.am ], [ %i.bv, %bb.m ], [ %.merged42, %.body51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fo = ptrtoint ptr %.sroa.20.0133 to i64
  %i.fp = ptrtoint ptr %.sroa.099.0125 to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.fq) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.aa, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.fr = load ptr, ptr %i.j, align 8, !tbaa !122 ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !123
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fw) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.e) #23
  %i.fx = load ptr, ptr %i.d, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !132
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  %i.gd = load ptr, ptr %i.c, align 8, !tbaa !135 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !136
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #40
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.as
  resume { ptr, i32 } %.merged

bb.at:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
end_hunk_10
begin_hunk_11_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.dd, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.dc, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.cn, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.cy, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.s, align 8, !tbaa !174
  %.not120 = icmp eq ptr %i.df, %i.dg
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1320

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.ac, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.di = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i49, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E20box_intersect_staticEPSQ_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISX_SaISX_EEEENSS_14ID_FROM_HANDLEEEES16_, ptr %i.di, align 8, !tbaa !1332
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = ptrtoint ptr %0 to i64
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !261
  store ptr %i.di, ptr %10, align 8, !tbaa !263
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.do, align 8, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1I_St18_Manager_operation, ptr %i.dh, align 8, !tbaa !149
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ds = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.du, null
  br i1 %.not.i.i50, label %.body52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false)
  store ptr %i.ds, ptr %11, align 8, !tbaa !263
  %i.dy = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !109
  store <2 x ptr> %i.dy, ptr %i.dr, align 8, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !156
  %i.eb = sext i32 %i.ea to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.eb)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.x:                                             ; preds = %bb.s
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ei, null
  br i1 %.not.i54, label %.body52, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.en = extractvalue { ptr, i32 } %i.em, 1
  %i.eo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %.body52

bb.ab:                                            ; preds = %bb.aa
  %i.eq = extractvalue { ptr, i32 } %i.em, 0
  %i.er = call ptr @__cxa_begin_catch(ptr %i.eq) #23
  %i.es = load i32, ptr %i.er, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.es, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.es, ptr %i.et, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.as unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body52

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !158
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3                 ; 3 uses
  %i.fc = lshr i64 %i.fb, 1                       ; 2 uses
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = icmp slt i64 %i.fb, 0
  %or.cond = and i1 %i.fe, %i.fd
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc56 unwind label %bb.w

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.fg = and i64 %i.fb, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.fg, i64 noundef %i.fc, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !161 ; 6 uses
  %i.fi = load ptr, ptr %i.ev, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.fi to i64
  %13 = ptrtoaddr ptr %i.fh to i64
  %i.fj = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !165 ; 3 uses
  %i.fm = add i64 %12, -16
  %i.fn = sub i64 %i.fm, %13                      ; 2 uses
  %i.fo = lshr i64 %i.fn, 4
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fn, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.fq = shl i64 %i.fl, 2
  %i.fr = add i64 %i.fq, -1
  %diff.check = icmp ult i64 %i.fr, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, 2305843009213693950     ; 4 uses
  %i.fs = shl i64 %n.vec, 4
  %i.ft = getelementptr i8, ptr %i.fh, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fu
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec232 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.fv = getelementptr [4 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.fw = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.fw, ptr %i.fv, align 4, !tbaa !157
  %i.fx = getelementptr [4 x i8], ptr %i.fv, i64 %i.fl
  %i.fy = trunc <2 x i64> %strided.vec232 to <2 x i32>
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !1321

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.fh, %vector.memcheck ], [ %i.fh, %.lr.ph145 ], [ %i.ft, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ga = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.gk, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.gj, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gc = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.gd = getelementptr [4 x i8], ptr %i.fj, i64 %.036144 ; 2 uses
  %i.ge = trunc i64 %i.gc to i32
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !157
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !116
  %i.gh = getelementptr [4 x i8], ptr %i.gd, i64 %i.fl
  %i.gi = trunc i64 %i.gg to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !157
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.gk = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.gj, %i.fi
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1322

bb.ah:                                            ; preds = %._crit_edge146
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !168, !range !106, !noundef !107
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !169, !range !106, !noundef !107
  %i.gq = trunc nuw i8 %i.gp to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaIS12_EERKSt3mapINSV_5IndexESZ_ISt4pairIS18_NS7_6ObjectEESaIS1B_EESt4lessIS18_ESaIS19_IKS18_S1D_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1M_IT3_EERNS1M_IT4_EERNS1M_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i1 noundef zeroext %i.gn, i1 noundef zeroext %i.gq, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.gr = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i58 = icmp eq ptr %i.gr, null
  br i1 %.not.i58, label %_ZNSt14_Function_baseD2Ev.exit59, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit59 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit59:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit59
  %i.gv = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.gw = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.gx) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit59, %bb.al
  ret void

.body52:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.eh, %bb.y ], [ %i.dt, %bb.p ], [ %i.eu, %bb.ad ], [ %i.em, %bb.aa ], [ %i.eg, %bb.w ], [ %i.dt, %bb.q ], [ %i.eh, %bb.x ] ; 2 uses
  %i.gy = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i60 = icmp eq ptr %i.gy, null
  br i1 %.not.i60, label %.body, label %bb.am

bb.am:                                            ; preds = %.body52
  %i.gz = invoke noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body52, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.dj, %bb.l ], [ %.merged42, %bb.am ], [ %i.dj, %bb.m ], [ %.merged42, %.body52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.de, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = ptrtoint ptr %.sroa.20.0133 to i64
  %i.hd = ptrtoint ptr %.sroa.099.0125 to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.he) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !187
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.j) #23
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !132
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  call void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #23
  resume { ptr, i32 } %.merged

bb.as:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_11
begin_hunk_12_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEES9_EC2ERKNS5_10MatrixBaseIS7_EERKNSB_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIS7_EERNSL_IS8_EESP_RNSL_IS9_EESR_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bp, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.az, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bk, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.br, %i.bs
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1346

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.x, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bu = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = invoke noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEES9_E20box_intersect_staticEPSA_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISH_SaISH_EEEENSC_14ID_FROM_HANDLEEEESQ_, ptr %i.bu, align 8, !tbaa !1357
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cc = ptrtoint ptr %0 to i64
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !265
  store ptr %i.bu, ptr %10, align 8, !tbaa !267
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEESR_EESG_SG_EST_St12_PlaceholderILi1EESW_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.ca, align 8, !tbaa !155
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEESR_EESG_SG_EST_St12_PlaceholderILi1EESW_ILi2EEEEE10_M_managerERSt9_Any_dataRKS12_St18_Manager_operation, ptr %i.bt, align 8, !tbaa !149
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ce = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i49, label %.body51, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false)
  store ptr %i.ce, ptr %11, align 8, !tbaa !267
  %i.ck = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !109
  store <2 x ptr> %i.ck, ptr %i.cd, align 8, !tbaa !109
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !156
  %i.cn = sext i32 %i.cm to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.cn)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = invoke noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEES9_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body51

bb.x:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i53 = icmp eq ptr %i.cu, null
  br i1 %.not.i53, label %.body51, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = invoke noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.cz = extractvalue { ptr, i32 } %i.cy, 1
  %i.da = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.ab, label %.body51

bb.ab:                                            ; preds = %bb.aa
  %i.dc = extractvalue { ptr, i32 } %i.cy, 0
  %i.dd = call ptr @__cxa_begin_catch(ptr %i.dc) #23
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.de, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.de, ptr %i.df, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.at unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body51

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !158
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3                 ; 3 uses
  %i.do = lshr i64 %i.dn, 1                       ; 2 uses
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = icmp slt i64 %i.dn, 0
  %or.cond = and i1 %i.dq, %i.dp
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.dr = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dr, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc55 unwind label %bb.w

.noexc55:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.ds = and i64 %i.dn, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.ds, i64 noundef %i.do, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !161 ; 6 uses
  %i.du = load ptr, ptr %i.dh, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.dt, %i.du
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.du to i64
  %13 = ptrtoaddr ptr %i.dt to i64
  %i.dv = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !165 ; 3 uses
  %i.dy = add i64 %12, -16
  %i.dz = sub i64 %i.dy, %13                      ; 2 uses
  %i.ea = lshr i64 %i.dz, 4
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dz, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.ec = shl i64 %i.dx, 2
  %i.ed = add i64 %i.ec, -1
  %diff.check = icmp ult i64 %i.ed, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eb, 2305843009213693950     ; 4 uses
  %i.ee = shl i64 %n.vec, 4
  %i.ef = getelementptr i8, ptr %i.dt, i64 %i.ee
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eg = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.dt, i64 %i.eg
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec234 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.eh = getelementptr [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ei = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.ei, ptr %i.eh, align 4, !tbaa !157
  %i.ej = getelementptr [4 x i8], ptr %i.eh, i64 %i.dx
  %i.ek = trunc <2 x i64> %strided.vec234 to <2 x i32>
  store <2 x i32> %i.ek, ptr %i.ej, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !1347

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.dt, %vector.memcheck ], [ %i.dt, %.lr.ph145 ], [ %i.ef, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.em = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.ew, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.ev, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.eo = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.ep = getelementptr [4 x i8], ptr %i.dv, i64 %.036144 ; 2 uses
  %i.eq = trunc i64 %i.eo to i32
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !157
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !116
  %i.et = getelementptr [4 x i8], ptr %i.ep, i64 %i.dx
  %i.eu = trunc i64 %i.es to i32
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !157
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.ew = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.ev, %i.du
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1348

bb.ah:                                            ; preds = %._crit_edge146
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !168, !range !106, !noundef !107
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !169, !range !106, !noundef !107
  %i.fc = trunc nuw i8 %i.fb to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEES9_EEvRKNS3_10MatrixBaseIT_EERKNSA_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaISM_EERKSt3mapINSF_5IndexESJ_ISt4pairISS_NS7_6ObjectEESaISV_EESt4lessISS_ESaIST_IKSS_SX_EEEbbRNS3_15PlainObjectBaseIT2_EERNS16_IT3_EERNS16_IT4_EERNS16_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i1 noundef zeroext %i.ez, i1 noundef zeroext %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.fd = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i57 = icmp eq ptr %i.fd, null
  br i1 %.not.i57, label %_ZNSt14_Function_baseD2Ev.exit58, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fe = invoke noundef zeroext i1 %i.fd(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit58 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit58:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit58
  %i.fh = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.fi = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.fj) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit58, %bb.al
  ret void

.body51:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.ct, %bb.y ], [ %i.cf, %bb.p ], [ %i.dg, %bb.ad ], [ %i.cy, %bb.aa ], [ %i.cs, %bb.w ], [ %i.cf, %bb.q ], [ %i.ct, %bb.x ] ; 2 uses
  %i.fk = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i59 = icmp eq ptr %i.fk, null
  br i1 %.not.i59, label %.body, label %bb.am

bb.am:                                            ; preds = %.body51
  %i.fl = invoke noundef zeroext i1 %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body51, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.bv, %bb.l ], [ %.merged42, %bb.am ], [ %i.bv, %bb.m ], [ %.merged42, %.body51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fo = ptrtoint ptr %.sroa.20.0133 to i64
  %i.fp = ptrtoint ptr %.sroa.099.0125 to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.fq) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.aa, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.fr = load ptr, ptr %i.j, align 8, !tbaa !122 ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !123
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fw) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.e) #23
  %i.fx = load ptr, ptr %i.d, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !132
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  %i.gd = load ptr, ptr %i.c, align 8, !tbaa !135 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !136
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #40
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.as
  resume { ptr, i32 } %.merged

bb.at:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEES9_EC2ERKNS5_10MatrixBaseIS7_EERKNSB_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIS7_EERNSL_IS8_EESP_RNSL_IS9_EESR_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
end_hunk_12
begin_hunk_13_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEES9_EC2ERKNS5_10MatrixBaseIS7_EERKNSB_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseIS7_EERNSL_IS8_EESP_RNSL_IS9_EESR_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.dd, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.dc, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.cn, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.cy, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.s, align 8, !tbaa !174
  %.not120 = icmp eq ptr %i.df, %i.dg
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1373

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.ac, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.di = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i49, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEES9_E20box_intersect_staticEPSA_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISH_SaISH_EEEENSC_14ID_FROM_HANDLEEEESQ_, ptr %i.di, align 8, !tbaa !1385
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = ptrtoint ptr %0 to i64
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !269
  store ptr %i.di, ptr %10, align 8, !tbaa !271
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEESR_EESG_SG_EST_St12_PlaceholderILi1EESW_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.do, align 8, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEESP_SQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEESR_EESG_SG_EST_St12_PlaceholderILi1EESW_ILi2EEEEE10_M_managerERSt9_Any_dataRKS12_St18_Manager_operation, ptr %i.dh, align 8, !tbaa !149
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ds = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.du, null
  br i1 %.not.i.i50, label %.body52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false)
  store ptr %i.ds, ptr %11, align 8, !tbaa !271
  %i.dy = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !109
  store <2 x ptr> %i.dy, ptr %i.dr, align 8, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !156
  %i.eb = sext i32 %i.ea to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.eb)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEES9_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.x:                                             ; preds = %bb.s
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ei, null
  br i1 %.not.i54, label %.body52, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.en = extractvalue { ptr, i32 } %i.em, 1
  %i.eo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %.body52

bb.ab:                                            ; preds = %bb.aa
  %i.eq = extractvalue { ptr, i32 } %i.em, 0
  %i.er = call ptr @__cxa_begin_catch(ptr %i.eq) #23
  %i.es = load i32, ptr %i.er, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.es, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.es, ptr %i.et, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.as unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body52

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !158
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3                 ; 3 uses
  %i.fc = lshr i64 %i.fb, 1                       ; 2 uses
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = icmp slt i64 %i.fb, 0
  %or.cond = and i1 %i.fe, %i.fd
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc56 unwind label %bb.w

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.fg = and i64 %i.fb, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.fg, i64 noundef %i.fc, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !161 ; 6 uses
  %i.fi = load ptr, ptr %i.ev, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.fi to i64
  %13 = ptrtoaddr ptr %i.fh to i64
  %i.fj = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !165 ; 3 uses
  %i.fm = add i64 %12, -16
  %i.fn = sub i64 %i.fm, %13                      ; 2 uses
  %i.fo = lshr i64 %i.fn, 4
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fn, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.fq = shl i64 %i.fl, 2
  %i.fr = add i64 %i.fq, -1
  %diff.check = icmp ult i64 %i.fr, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, 2305843009213693950     ; 4 uses
  %i.fs = shl i64 %n.vec, 4
  %i.ft = getelementptr i8, ptr %i.fh, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fu
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec232 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.fv = getelementptr [4 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.fw = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.fw, ptr %i.fv, align 4, !tbaa !157
  %i.fx = getelementptr [4 x i8], ptr %i.fv, i64 %i.fl
  %i.fy = trunc <2 x i64> %strided.vec232 to <2 x i32>
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !1374

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.fh, %vector.memcheck ], [ %i.fh, %.lr.ph145 ], [ %i.ft, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ga = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.gk, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.gj, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gc = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.gd = getelementptr [4 x i8], ptr %i.fj, i64 %.036144 ; 2 uses
  %i.ge = trunc i64 %i.gc to i32
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !157
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !116
  %i.gh = getelementptr [4 x i8], ptr %i.gd, i64 %i.fl
  %i.gi = trunc i64 %i.gg to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !157
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.gk = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.gj, %i.fi
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1375

bb.ah:                                            ; preds = %._crit_edge146
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !168, !range !106, !noundef !107
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !169, !range !106, !noundef !107
  %i.gq = trunc nuw i8 %i.gp to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEES9_EEvRKNS3_10MatrixBaseIT_EERKNSA_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaISM_EERKSt3mapINSF_5IndexESJ_ISt4pairISS_NS7_6ObjectEESaISV_EESt4lessISS_ESaIST_IKSS_SX_EEEbbRNS3_15PlainObjectBaseIT2_EERNS16_IT3_EERNS16_IT4_EERNS16_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i1 noundef zeroext %i.gn, i1 noundef zeroext %i.gq, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.gr = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i58 = icmp eq ptr %i.gr, null
  br i1 %.not.i58, label %_ZNSt14_Function_baseD2Ev.exit59, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit59 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit59:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit59
  %i.gv = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.gw = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.gx) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit59, %bb.al
  ret void

.body52:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.eh, %bb.y ], [ %i.dt, %bb.p ], [ %i.eu, %bb.ad ], [ %i.em, %bb.aa ], [ %i.eg, %bb.w ], [ %i.dt, %bb.q ], [ %i.eh, %bb.x ] ; 2 uses
  %i.gy = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i60 = icmp eq ptr %i.gy, null
  br i1 %.not.i60, label %.body, label %bb.am

bb.am:                                            ; preds = %.body52
  %i.gz = invoke noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body52, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.dj, %bb.l ], [ %.merged42, %bb.am ], [ %i.dj, %bb.m ], [ %.merged42, %.body52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.de, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = ptrtoint ptr %.sroa.20.0133 to i64
  %i.hd = ptrtoint ptr %.sroa.099.0125 to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.he) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !187
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.j) #23
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !132
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  call void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #23
  resume { ptr, i32 } %.merged

bb.as:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEES7_S8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEES9_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_13
begin_hunk_14_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bp, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.az, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bk, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.br, %i.bs
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1399

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.x, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bu = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = invoke noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E20box_intersect_staticEPSQ_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISX_SaISX_EEEENSS_14ID_FROM_HANDLEEEES16_, ptr %i.bu, align 8, !tbaa !1410
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cc = ptrtoint ptr %0 to i64
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !273
  store ptr %i.bu, ptr %10, align 8, !tbaa !275
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.ca, align 8, !tbaa !155
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1I_St18_Manager_operation, ptr %i.bt, align 8, !tbaa !149
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ce = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i49, label %.body51, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false)
  store ptr %i.ce, ptr %11, align 8, !tbaa !275
  %i.ck = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !109
  store <2 x ptr> %i.ck, ptr %i.cd, align 8, !tbaa !109
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !156
  %i.cn = sext i32 %i.cm to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.cn)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = invoke noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body51

bb.x:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i53 = icmp eq ptr %i.cu, null
  br i1 %.not.i53, label %.body51, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = invoke noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.cz = extractvalue { ptr, i32 } %i.cy, 1
  %i.da = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.ab, label %.body51

bb.ab:                                            ; preds = %bb.aa
  %i.dc = extractvalue { ptr, i32 } %i.cy, 0
  %i.dd = call ptr @__cxa_begin_catch(ptr %i.dc) #23
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.de, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.de, ptr %i.df, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.at unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body51

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !158
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3                 ; 3 uses
  %i.do = lshr i64 %i.dn, 1                       ; 2 uses
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = icmp slt i64 %i.dn, 0
  %or.cond = and i1 %i.dq, %i.dp
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.dr = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dr, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc55 unwind label %bb.w

.noexc55:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.ds = and i64 %i.dn, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.ds, i64 noundef %i.do, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !161 ; 6 uses
  %i.du = load ptr, ptr %i.dh, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.dt, %i.du
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.du to i64
  %13 = ptrtoaddr ptr %i.dt to i64
  %i.dv = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !165 ; 3 uses
  %i.dy = add i64 %12, -16
  %i.dz = sub i64 %i.dy, %13                      ; 2 uses
  %i.ea = lshr i64 %i.dz, 4
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dz, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.ec = shl i64 %i.dx, 2
  %i.ed = add i64 %i.ec, -1
  %diff.check = icmp ult i64 %i.ed, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eb, 2305843009213693950     ; 4 uses
  %i.ee = shl i64 %n.vec, 4
  %i.ef = getelementptr i8, ptr %i.dt, i64 %i.ee
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eg = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.dt, i64 %i.eg
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec234 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.eh = getelementptr [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ei = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.ei, ptr %i.eh, align 4, !tbaa !157
  %i.ej = getelementptr [4 x i8], ptr %i.eh, i64 %i.dx
  %i.ek = trunc <2 x i64> %strided.vec234 to <2 x i32>
  store <2 x i32> %i.ek, ptr %i.ej, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !1400

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.dt, %vector.memcheck ], [ %i.dt, %.lr.ph145 ], [ %i.ef, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.em = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.ew, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.ev, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.eo = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.ep = getelementptr [4 x i8], ptr %i.dv, i64 %.036144 ; 2 uses
  %i.eq = trunc i64 %i.eo to i32
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !157
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !116
  %i.et = getelementptr [4 x i8], ptr %i.ep, i64 %i.dx
  %i.eu = trunc i64 %i.es to i32
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !157
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.ew = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.ev, %i.du
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1401

bb.ah:                                            ; preds = %._crit_edge146
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !168, !range !106, !noundef !107
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !169, !range !106, !noundef !107
  %i.fc = trunc nuw i8 %i.fb to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaIS12_EERKSt3mapINSV_5IndexESZ_ISt4pairIS18_NS7_6ObjectEESaIS1B_EESt4lessIS18_ESaIS19_IKS18_S1D_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1M_IT3_EERNS1M_IT4_EERNS1M_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i1 noundef zeroext %i.ez, i1 noundef zeroext %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.fd = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i57 = icmp eq ptr %i.fd, null
  br i1 %.not.i57, label %_ZNSt14_Function_baseD2Ev.exit58, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fe = invoke noundef zeroext i1 %i.fd(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit58 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit58:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit58
  %i.fh = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.fi = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.fj) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit58, %bb.al
  ret void

.body51:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.ct, %bb.y ], [ %i.cf, %bb.p ], [ %i.dg, %bb.ad ], [ %i.cy, %bb.aa ], [ %i.cs, %bb.w ], [ %i.cf, %bb.q ], [ %i.ct, %bb.x ] ; 2 uses
  %i.fk = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i59 = icmp eq ptr %i.fk, null
  br i1 %.not.i59, label %.body, label %bb.am

bb.am:                                            ; preds = %.body51
  %i.fl = invoke noundef zeroext i1 %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body51, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.bv, %bb.l ], [ %.merged42, %bb.am ], [ %i.bv, %bb.m ], [ %.merged42, %.body51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fo = ptrtoint ptr %.sroa.20.0133 to i64
  %i.fp = ptrtoint ptr %.sroa.099.0125 to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.fq) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.aa, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.fr = load ptr, ptr %i.j, align 8, !tbaa !122 ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !123
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fw) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.e) #23
  %i.fx = load ptr, ptr %i.d, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !132
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  %i.gd = load ptr, ptr %i.c, align 8, !tbaa !135 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !136
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #40
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.as
  resume { ptr, i32 } %.merged

bb.at:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
end_hunk_14
begin_hunk_15_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.dd, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.dc, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.cn, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.cy, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.s, align 8, !tbaa !174
  %.not120 = icmp eq ptr %i.df, %i.dg
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1426

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.ac, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.di = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i49, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E20box_intersect_staticEPSQ_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISX_SaISX_EEEENSS_14ID_FROM_HANDLEEEES16_, ptr %i.di, align 8, !tbaa !1438
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = ptrtoint ptr %0 to i64
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !277
  store ptr %i.di, ptr %10, align 8, !tbaa !279
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.do, align 8, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1I_St18_Manager_operation, ptr %i.dh, align 8, !tbaa !149
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ds = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.du, null
  br i1 %.not.i.i50, label %.body52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false)
  store ptr %i.ds, ptr %11, align 8, !tbaa !279
  %i.dy = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !109
  store <2 x ptr> %i.dy, ptr %i.dr, align 8, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !156
  %i.eb = sext i32 %i.ea to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.eb)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.x:                                             ; preds = %bb.s
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ei, null
  br i1 %.not.i54, label %.body52, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.en = extractvalue { ptr, i32 } %i.em, 1
  %i.eo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %.body52

bb.ab:                                            ; preds = %bb.aa
  %i.eq = extractvalue { ptr, i32 } %i.em, 0
  %i.er = call ptr @__cxa_begin_catch(ptr %i.eq) #23
  %i.es = load i32, ptr %i.er, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.es, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.es, ptr %i.et, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.as unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body52

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !158
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3                 ; 3 uses
  %i.fc = lshr i64 %i.fb, 1                       ; 2 uses
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = icmp slt i64 %i.fb, 0
  %or.cond = and i1 %i.fe, %i.fd
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc56 unwind label %bb.w

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.fg = and i64 %i.fb, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.fg, i64 noundef %i.fc, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !161 ; 6 uses
  %i.fi = load ptr, ptr %i.ev, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.fi to i64
  %13 = ptrtoaddr ptr %i.fh to i64
  %i.fj = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !165 ; 3 uses
  %i.fm = add i64 %12, -16
  %i.fn = sub i64 %i.fm, %13                      ; 2 uses
  %i.fo = lshr i64 %i.fn, 4
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fn, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.fq = shl i64 %i.fl, 2
  %i.fr = add i64 %i.fq, -1
  %diff.check = icmp ult i64 %i.fr, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, 2305843009213693950     ; 4 uses
  %i.fs = shl i64 %n.vec, 4
  %i.ft = getelementptr i8, ptr %i.fh, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fu
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec232 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.fv = getelementptr [4 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.fw = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.fw, ptr %i.fv, align 4, !tbaa !157
  %i.fx = getelementptr [4 x i8], ptr %i.fv, i64 %i.fl
  %i.fy = trunc <2 x i64> %strided.vec232 to <2 x i32>
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !1427

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.fh, %vector.memcheck ], [ %i.fh, %.lr.ph145 ], [ %i.ft, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ga = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.gk, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.gj, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gc = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.gd = getelementptr [4 x i8], ptr %i.fj, i64 %.036144 ; 2 uses
  %i.ge = trunc i64 %i.gc to i32
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !157
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !116
  %i.gh = getelementptr [4 x i8], ptr %i.gd, i64 %i.fl
  %i.gi = trunc i64 %i.gg to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !157
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.gk = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.gj, %i.fi
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1428

bb.ah:                                            ; preds = %._crit_edge146
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !168, !range !106, !noundef !107
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !169, !range !106, !noundef !107
  %i.gq = trunc nuw i8 %i.gp to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaIS12_EERKSt3mapINSV_5IndexESZ_ISt4pairIS18_NS7_6ObjectEESaIS1B_EESt4lessIS18_ESaIS19_IKS18_S1D_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1M_IT3_EERNS1M_IT4_EERNS1M_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i1 noundef zeroext %i.gn, i1 noundef zeroext %i.gq, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.gr = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i58 = icmp eq ptr %i.gr, null
  br i1 %.not.i58, label %_ZNSt14_Function_baseD2Ev.exit59, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit59 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit59:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit59
  %i.gv = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.gw = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.gx) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit59, %bb.al
  ret void

.body52:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.eh, %bb.y ], [ %i.dt, %bb.p ], [ %i.eu, %bb.ad ], [ %i.em, %bb.aa ], [ %i.eg, %bb.w ], [ %i.dt, %bb.q ], [ %i.eh, %bb.x ] ; 2 uses
  %i.gy = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i60 = icmp eq ptr %i.gy, null
  br i1 %.not.i60, label %.body, label %bb.am

bb.am:                                            ; preds = %.body52
  %i.gz = invoke noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body52, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.dj, %bb.l ], [ %.merged42, %bb.am ], [ %i.dj, %bb.m ], [ %.merged42, %.body52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.de, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = ptrtoint ptr %.sroa.20.0133 to i64
  %i.hd = ptrtoint ptr %.sroa.099.0125 to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.he) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !187
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.j) #23
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !132
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  call void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #23
  resume { ptr, i32 } %.merged

bb.as:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_15
begin_hunk_16_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IlLin1ELi1ELi0ELin1ELi1EEENS6_IiLin1ELi1ELi0ELin1ELi1EEEEC2ERKNS5_10MatrixBaseIS7_EERKNSS_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS12_IS8_EES16_RNS12_ISP_EERNS12_ISQ_EE:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bp, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.az, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bk, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.br, %i.bs
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1452

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.x, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bu = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = invoke noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IlLin1ELi1ELi0ELin1ELi1EEENS6_IiLin1ELi1ELi0ELin1ELi1EEEE20box_intersect_staticEPSR_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISY_SaISY_EEEENST_14ID_FROM_HANDLEEEES17_, ptr %i.bu, align 8, !tbaa !1463
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cc = ptrtoint ptr %0 to i64
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !281
  store ptr %i.bu, ptr %10, align 8, !tbaa !283
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESQ_SQ_NSO_IlLin1ELi1ELi0ELin1ELi1EEENSO_IiLin1ELi1ELi0ELin1ELi1EEEEESG_SG_ES1A_St12_PlaceholderILi1EES1D_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.ca, align 8, !tbaa !155
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESQ_SQ_NSO_IlLin1ELi1ELi0ELin1ELi1EEENSO_IiLin1ELi1ELi0ELin1ELi1EEEEESG_SG_ES1A_St12_PlaceholderILi1EES1D_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation, ptr %i.bt, align 8, !tbaa !149
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ce = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i49, label %.body51, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false)
  store ptr %i.ce, ptr %11, align 8, !tbaa !283
  %i.ck = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !109
  store <2 x ptr> %i.ck, ptr %i.cd, align 8, !tbaa !109
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !156
  %i.cn = sext i32 %i.cm to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.cn)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = invoke noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IlLin1ELi1ELi0ELin1ELi1EEENS6_IiLin1ELi1ELi0ELin1ELi1EEEE26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body51

bb.x:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i53 = icmp eq ptr %i.cu, null
  br i1 %.not.i53, label %.body51, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = invoke noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.cz = extractvalue { ptr, i32 } %i.cy, 1
  %i.da = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.ab, label %.body51

bb.ab:                                            ; preds = %bb.aa
  %i.dc = extractvalue { ptr, i32 } %i.cy, 0
  %i.dd = call ptr @__cxa_begin_catch(ptr %i.dc) #23
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.de, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.de, ptr %i.df, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.at unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body51

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !158
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3                 ; 3 uses
  %i.do = lshr i64 %i.dn, 1                       ; 2 uses
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = icmp slt i64 %i.dn, 0
  %or.cond = and i1 %i.dq, %i.dp
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.dr = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dr, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc55 unwind label %bb.w

.noexc55:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.ds = and i64 %i.dn, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.ds, i64 noundef %i.do, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !161 ; 6 uses
  %i.du = load ptr, ptr %i.dh, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.dt, %i.du
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.du to i64
  %13 = ptrtoaddr ptr %i.dt to i64
  %i.dv = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !165 ; 3 uses
  %i.dy = add i64 %12, -16
  %i.dz = sub i64 %i.dy, %13                      ; 2 uses
  %i.ea = lshr i64 %i.dz, 4
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dz, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.ec = shl i64 %i.dx, 2
  %i.ed = add i64 %i.ec, -1
  %diff.check = icmp ult i64 %i.ed, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eb, 2305843009213693950     ; 4 uses
  %i.ee = shl i64 %n.vec, 4
  %i.ef = getelementptr i8, ptr %i.dt, i64 %i.ee
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eg = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.dt, i64 %i.eg
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec234 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.eh = getelementptr [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ei = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.ei, ptr %i.eh, align 4, !tbaa !157
  %i.ej = getelementptr [4 x i8], ptr %i.eh, i64 %i.dx
  %i.ek = trunc <2 x i64> %strided.vec234 to <2 x i32>
  store <2 x i32> %i.ek, ptr %i.ej, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !1453

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.dt, %vector.memcheck ], [ %i.dt, %.lr.ph145 ], [ %i.ef, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.em = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.ew, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.ev, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.eo = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.ep = getelementptr [4 x i8], ptr %i.dv, i64 %.036144 ; 2 uses
  %i.eq = trunc i64 %i.eo to i32
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !157
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !116
  %i.et = getelementptr [4 x i8], ptr %i.ep, i64 %i.dx
  %i.eu = trunc i64 %i.es to i32
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !157
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.ew = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.ev, %i.du
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1454

bb.ah:                                            ; preds = %._crit_edge146
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !168, !range !106, !noundef !107
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !169, !range !106, !noundef !107
  %i.fc = trunc nuw i8 %i.fb to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES6_NS4_IlLin1ELi1ELi0ELin1ELi1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSR_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaIS13_EERKSt3mapINSW_5IndexES10_ISt4pairIS19_NS7_6ObjectEESaIS1C_EESt4lessIS19_ESaIS1A_IKS19_S1E_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1N_IT3_EERNS1N_IT4_EERNS1N_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i1 noundef zeroext %i.ez, i1 noundef zeroext %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.fd = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i57 = icmp eq ptr %i.fd, null
  br i1 %.not.i57, label %_ZNSt14_Function_baseD2Ev.exit58, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fe = invoke noundef zeroext i1 %i.fd(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit58 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit58:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit58
  %i.fh = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.fi = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.fj) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit58, %bb.al
  ret void

.body51:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.ct, %bb.y ], [ %i.cf, %bb.p ], [ %i.dg, %bb.ad ], [ %i.cy, %bb.aa ], [ %i.cs, %bb.w ], [ %i.cf, %bb.q ], [ %i.ct, %bb.x ] ; 2 uses
  %i.fk = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i59 = icmp eq ptr %i.fk, null
  br i1 %.not.i59, label %.body, label %bb.am

bb.am:                                            ; preds = %.body51
  %i.fl = invoke noundef zeroext i1 %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body51, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.bv, %bb.l ], [ %.merged42, %bb.am ], [ %i.bv, %bb.m ], [ %.merged42, %.body51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fo = ptrtoint ptr %.sroa.20.0133 to i64
  %i.fp = ptrtoint ptr %.sroa.099.0125 to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.fq) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.aa, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.fr = load ptr, ptr %i.j, align 8, !tbaa !122 ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !123
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fw) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.e) #23
  %i.fx = load ptr, ptr %i.d, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !132
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  %i.gd = load ptr, ptr %i.c, align 8, !tbaa !135 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !136
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #40
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.as
  resume { ptr, i32 } %.merged

bb.at:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IlLin1ELi1ELi0ELin1ELi1EEENS6_IiLin1ELi1ELi0ELin1ELi1EEEEC2ERKNS5_10MatrixBaseIS7_EERKNSS_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS12_IS8_EES16_RNS12_ISP_EERNS12_ISQ_EE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
end_hunk_16
begin_hunk_17_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IlLin1ELi1ELi0ELin1ELi1EEENS6_IiLin1ELi1ELi0ELin1ELi1EEEEC2ERKNS5_10MatrixBaseIS7_EERKNSS_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS12_IS8_EES16_RNS12_ISP_EERNS12_ISQ_EE:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.dd, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.dc, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.cn, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.cy, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.s, align 8, !tbaa !174
  %.not120 = icmp eq ptr %i.df, %i.dg
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1479

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.ac, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.di = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i49, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IlLin1ELi1ELi0ELin1ELi1EEENS6_IiLin1ELi1ELi0ELin1ELi1EEEE20box_intersect_staticEPSR_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISY_SaISY_EEEENST_14ID_FROM_HANDLEEEES17_, ptr %i.di, align 8, !tbaa !1491
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = ptrtoint ptr %0 to i64
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !285
  store ptr %i.di, ptr %10, align 8, !tbaa !287
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESQ_SQ_NSO_IlLin1ELi1ELi0ELin1ELi1EEENSO_IiLin1ELi1ELi0ELin1ELi1EEEEESG_SG_ES1A_St12_PlaceholderILi1EES1D_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.do, align 8, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESQ_SQ_NSO_IlLin1ELi1ELi0ELin1ELi1EEENSO_IiLin1ELi1ELi0ELin1ELi1EEEEESG_SG_ES1A_St12_PlaceholderILi1EES1D_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation, ptr %i.dh, align 8, !tbaa !149
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ds = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.du, null
  br i1 %.not.i.i50, label %.body52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false)
  store ptr %i.ds, ptr %11, align 8, !tbaa !287
  %i.dy = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !109
  store <2 x ptr> %i.dy, ptr %i.dr, align 8, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !156
  %i.eb = sext i32 %i.ea to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.eb)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IlLin1ELi1ELi0ELin1ELi1EEENS6_IiLin1ELi1ELi0ELin1ELi1EEEE26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.x:                                             ; preds = %bb.s
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ei, null
  br i1 %.not.i54, label %.body52, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.en = extractvalue { ptr, i32 } %i.em, 1
  %i.eo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %.body52

bb.ab:                                            ; preds = %bb.aa
  %i.eq = extractvalue { ptr, i32 } %i.em, 0
  %i.er = call ptr @__cxa_begin_catch(ptr %i.eq) #23
  %i.es = load i32, ptr %i.er, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.es, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.es, ptr %i.et, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.as unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body52

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !158
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3                 ; 3 uses
  %i.fc = lshr i64 %i.fb, 1                       ; 2 uses
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = icmp slt i64 %i.fb, 0
  %or.cond = and i1 %i.fe, %i.fd
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc56 unwind label %bb.w

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.fg = and i64 %i.fb, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.fg, i64 noundef %i.fc, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !161 ; 6 uses
  %i.fi = load ptr, ptr %i.ev, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.fi to i64
  %13 = ptrtoaddr ptr %i.fh to i64
  %i.fj = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !165 ; 3 uses
  %i.fm = add i64 %12, -16
  %i.fn = sub i64 %i.fm, %13                      ; 2 uses
  %i.fo = lshr i64 %i.fn, 4
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fn, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.fq = shl i64 %i.fl, 2
  %i.fr = add i64 %i.fq, -1
  %diff.check = icmp ult i64 %i.fr, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, 2305843009213693950     ; 4 uses
  %i.fs = shl i64 %n.vec, 4
  %i.ft = getelementptr i8, ptr %i.fh, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fu
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec232 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.fv = getelementptr [4 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.fw = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.fw, ptr %i.fv, align 4, !tbaa !157
  %i.fx = getelementptr [4 x i8], ptr %i.fv, i64 %i.fl
  %i.fy = trunc <2 x i64> %strided.vec232 to <2 x i32>
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !1480

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.fh, %vector.memcheck ], [ %i.fh, %.lr.ph145 ], [ %i.ft, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ga = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.gk, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.gj, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gc = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.gd = getelementptr [4 x i8], ptr %i.fj, i64 %.036144 ; 2 uses
  %i.ge = trunc i64 %i.gc to i32
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !157
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !116
  %i.gh = getelementptr [4 x i8], ptr %i.gd, i64 %i.fl
  %i.gi = trunc i64 %i.gg to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !157
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.gk = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.gj, %i.fi
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1481

bb.ah:                                            ; preds = %._crit_edge146
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !168, !range !106, !noundef !107
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !169, !range !106, !noundef !107
  %i.gq = trunc nuw i8 %i.gp to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES6_NS4_IlLin1ELi1ELi0ELin1ELi1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSR_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaIS13_EERKSt3mapINSW_5IndexES10_ISt4pairIS19_NS7_6ObjectEESaIS1C_EESt4lessIS19_ESaIS1A_IKS19_S1E_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1N_IT3_EERNS1N_IT4_EERNS1N_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i1 noundef zeroext %i.gn, i1 noundef zeroext %i.gq, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.gr = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i58 = icmp eq ptr %i.gr, null
  br i1 %.not.i58, label %_ZNSt14_Function_baseD2Ev.exit59, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit59 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit59:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit59
  %i.gv = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.gw = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.gx) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit59, %bb.al
  ret void

.body52:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.eh, %bb.y ], [ %i.dt, %bb.p ], [ %i.eu, %bb.ad ], [ %i.em, %bb.aa ], [ %i.eg, %bb.w ], [ %i.dt, %bb.q ], [ %i.eh, %bb.x ] ; 2 uses
  %i.gy = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i60 = icmp eq ptr %i.gy, null
  br i1 %.not.i60, label %.body, label %bb.am

bb.am:                                            ; preds = %.body52
  %i.gz = invoke noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body52, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.dj, %bb.l ], [ %.merged42, %bb.am ], [ %i.dj, %bb.m ], [ %.merged42, %.body52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.de, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = ptrtoint ptr %.sroa.20.0133 to i64
  %i.hd = ptrtoint ptr %.sroa.099.0125 to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.he) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !187
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.j) #23
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !132
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  call void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #23
  resume { ptr, i32 } %.merged

bb.as:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IlLin1ELi1ELi0ELin1ELi1EEENS6_IiLin1ELi1ELi0ELin1ELi1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_17
begin_hunk_18_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bp, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.az, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bk, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.br, %i.bs
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1505

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.x, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bu = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = invoke noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E20box_intersect_staticEPSQ_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISX_SaISX_EEEENSS_14ID_FROM_HANDLEEEES16_, ptr %i.bu, align 8, !tbaa !1516
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cc = ptrtoint ptr %0 to i64
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !291
  store ptr %i.bu, ptr %10, align 8, !tbaa !293
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.ca, align 8, !tbaa !155
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1I_St18_Manager_operation, ptr %i.bt, align 8, !tbaa !149
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ce = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i49, label %.body51, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false)
  store ptr %i.ce, ptr %11, align 8, !tbaa !293
  %i.ck = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !109
  store <2 x ptr> %i.ck, ptr %i.cd, align 8, !tbaa !109
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !156
  %i.cn = sext i32 %i.cm to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.cn)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = invoke noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body51

bb.x:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i53 = icmp eq ptr %i.cu, null
  br i1 %.not.i53, label %.body51, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = invoke noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.cz = extractvalue { ptr, i32 } %i.cy, 1
  %i.da = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.ab, label %.body51

bb.ab:                                            ; preds = %bb.aa
  %i.dc = extractvalue { ptr, i32 } %i.cy, 0
  %i.dd = call ptr @__cxa_begin_catch(ptr %i.dc) #23
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.de, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.de, ptr %i.df, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.at unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body51

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !158
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3                 ; 3 uses
  %i.do = lshr i64 %i.dn, 1                       ; 2 uses
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = icmp slt i64 %i.dn, 0
  %or.cond = and i1 %i.dq, %i.dp
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.dr = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dr, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc55 unwind label %bb.w

.noexc55:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.ds = and i64 %i.dn, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.ds, i64 noundef %i.do, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !161 ; 6 uses
  %i.du = load ptr, ptr %i.dh, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.dt, %i.du
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.du to i64
  %13 = ptrtoaddr ptr %i.dt to i64
  %i.dv = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !165 ; 3 uses
  %i.dy = add i64 %12, -16
  %i.dz = sub i64 %i.dy, %13                      ; 2 uses
  %i.ea = lshr i64 %i.dz, 4
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dz, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.ec = shl i64 %i.dx, 2
  %i.ed = add i64 %i.ec, -1
  %diff.check = icmp ult i64 %i.ed, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eb, 2305843009213693950     ; 4 uses
  %i.ee = shl i64 %n.vec, 4
  %i.ef = getelementptr i8, ptr %i.dt, i64 %i.ee
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eg = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.dt, i64 %i.eg
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec234 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.eh = getelementptr [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ei = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.ei, ptr %i.eh, align 4, !tbaa !157
  %i.ej = getelementptr [4 x i8], ptr %i.eh, i64 %i.dx
  %i.ek = trunc <2 x i64> %strided.vec234 to <2 x i32>
  store <2 x i32> %i.ek, ptr %i.ej, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !1506

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.dt, %vector.memcheck ], [ %i.dt, %.lr.ph145 ], [ %i.ef, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.em = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.ew, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.ev, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.eo = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.ep = getelementptr [4 x i8], ptr %i.dv, i64 %.036144 ; 2 uses
  %i.eq = trunc i64 %i.eo to i32
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !157
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !116
  %i.et = getelementptr [4 x i8], ptr %i.ep, i64 %i.dx
  %i.eu = trunc i64 %i.es to i32
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !157
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.ew = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.ev, %i.du
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1507

bb.ah:                                            ; preds = %._crit_edge146
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !168, !range !106, !noundef !107
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !169, !range !106, !noundef !107
  %i.fc = trunc nuw i8 %i.fb to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaIS12_EERKSt3mapINSV_5IndexESZ_ISt4pairIS18_NS7_6ObjectEESaIS1B_EESt4lessIS18_ESaIS19_IKS18_S1D_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1M_IT3_EERNS1M_IT4_EERNS1M_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i1 noundef zeroext %i.ez, i1 noundef zeroext %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.fd = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i57 = icmp eq ptr %i.fd, null
  br i1 %.not.i57, label %_ZNSt14_Function_baseD2Ev.exit58, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fe = invoke noundef zeroext i1 %i.fd(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit58 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit58:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit58
  %i.fh = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.fi = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.fj) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit58, %bb.al
  ret void

.body51:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.ct, %bb.y ], [ %i.cf, %bb.p ], [ %i.dg, %bb.ad ], [ %i.cy, %bb.aa ], [ %i.cs, %bb.w ], [ %i.cf, %bb.q ], [ %i.ct, %bb.x ] ; 2 uses
  %i.fk = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i59 = icmp eq ptr %i.fk, null
  br i1 %.not.i59, label %.body, label %bb.am

bb.am:                                            ; preds = %.body51
  %i.fl = invoke noundef zeroext i1 %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body51, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.bv, %bb.l ], [ %.merged42, %bb.am ], [ %i.bv, %bb.m ], [ %.merged42, %.body51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fo = ptrtoint ptr %.sroa.20.0133 to i64
  %i.fp = ptrtoint ptr %.sroa.099.0125 to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.fq) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.aa, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.fr = load ptr, ptr %i.j, align 8, !tbaa !122 ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !123
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fw) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.e) #23
  %i.fx = load ptr, ptr %i.d, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !132
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  %i.gd = load ptr, ptr %i.c, align 8, !tbaa !135 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !136
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #40
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.as
  resume { ptr, i32 } %.merged

bb.at:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
end_hunk_18
begin_hunk_19_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.dd, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.dc, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.cn, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.cy, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.s, align 8, !tbaa !174
  %.not120 = icmp eq ptr %i.df, %i.dg
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1532

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.ac, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.di = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i49, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E20box_intersect_staticEPSQ_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISX_SaISX_EEEENSS_14ID_FROM_HANDLEEEES16_, ptr %i.di, align 8, !tbaa !1544
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = ptrtoint ptr %0 to i64
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !295
  store ptr %i.di, ptr %10, align 8, !tbaa !297
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.do, align 8, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1I_St18_Manager_operation, ptr %i.dh, align 8, !tbaa !149
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ds = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.du, null
  br i1 %.not.i.i50, label %.body52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false)
  store ptr %i.ds, ptr %11, align 8, !tbaa !297
  %i.dy = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !109
  store <2 x ptr> %i.dy, ptr %i.dr, align 8, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !156
  %i.eb = sext i32 %i.ea to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.eb)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.x:                                             ; preds = %bb.s
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ei, null
  br i1 %.not.i54, label %.body52, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.en = extractvalue { ptr, i32 } %i.em, 1
  %i.eo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %.body52

bb.ab:                                            ; preds = %bb.aa
  %i.eq = extractvalue { ptr, i32 } %i.em, 0
  %i.er = call ptr @__cxa_begin_catch(ptr %i.eq) #23
  %i.es = load i32, ptr %i.er, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.es, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.es, ptr %i.et, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.as unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body52

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !158
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3                 ; 3 uses
  %i.fc = lshr i64 %i.fb, 1                       ; 2 uses
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = icmp slt i64 %i.fb, 0
  %or.cond = and i1 %i.fe, %i.fd
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc56 unwind label %bb.w

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.fg = and i64 %i.fb, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.fg, i64 noundef %i.fc, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !161 ; 6 uses
  %i.fi = load ptr, ptr %i.ev, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.fi to i64
  %13 = ptrtoaddr ptr %i.fh to i64
  %i.fj = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !165 ; 3 uses
  %i.fm = add i64 %12, -16
  %i.fn = sub i64 %i.fm, %13                      ; 2 uses
  %i.fo = lshr i64 %i.fn, 4
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fn, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.fq = shl i64 %i.fl, 2
  %i.fr = add i64 %i.fq, -1
  %diff.check = icmp ult i64 %i.fr, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, 2305843009213693950     ; 4 uses
  %i.fs = shl i64 %n.vec, 4
  %i.ft = getelementptr i8, ptr %i.fh, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fu
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec232 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.fv = getelementptr [4 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.fw = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.fw, ptr %i.fv, align 4, !tbaa !157
  %i.fx = getelementptr [4 x i8], ptr %i.fv, i64 %i.fl
  %i.fy = trunc <2 x i64> %strided.vec232 to <2 x i32>
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !1533

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.fh, %vector.memcheck ], [ %i.fh, %.lr.ph145 ], [ %i.ft, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ga = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.gk, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.gj, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gc = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.gd = getelementptr [4 x i8], ptr %i.fj, i64 %.036144 ; 2 uses
  %i.ge = trunc i64 %i.gc to i32
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !157
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !116
  %i.gh = getelementptr [4 x i8], ptr %i.gd, i64 %i.fl
  %i.gi = trunc i64 %i.gg to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !157
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.gk = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.gj, %i.fi
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1534

bb.ah:                                            ; preds = %._crit_edge146
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !168, !range !106, !noundef !107
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !169, !range !106, !noundef !107
  %i.gq = trunc nuw i8 %i.gp to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaIS12_EERKSt3mapINSV_5IndexESZ_ISt4pairIS18_NS7_6ObjectEESaIS1B_EESt4lessIS18_ESaIS19_IKS18_S1D_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1M_IT3_EERNS1M_IT4_EERNS1M_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i1 noundef zeroext %i.gn, i1 noundef zeroext %i.gq, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.gr = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i58 = icmp eq ptr %i.gr, null
  br i1 %.not.i58, label %_ZNSt14_Function_baseD2Ev.exit59, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit59 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit59:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit59
  %i.gv = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.gw = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.gx) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit59, %bb.al
  ret void

.body52:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.eh, %bb.y ], [ %i.dt, %bb.p ], [ %i.eu, %bb.ad ], [ %i.em, %bb.aa ], [ %i.eg, %bb.w ], [ %i.dt, %bb.q ], [ %i.eh, %bb.x ] ; 2 uses
  %i.gy = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i60 = icmp eq ptr %i.gy, null
  br i1 %.not.i60, label %.body, label %bb.am

bb.am:                                            ; preds = %.body52
  %i.gz = invoke noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body52, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.dj, %bb.l ], [ %.merged42, %bb.am ], [ %i.dj, %bb.m ], [ %.merged42, %.body52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.de, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = ptrtoint ptr %.sroa.20.0133 to i64
  %i.hd = ptrtoint ptr %.sroa.099.0125 to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.he) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !187
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.j) #23
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !132
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  call void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #23
  resume { ptr, i32 } %.merged

bb.as:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_19
begin_hunk_20_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bp, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.az, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bk, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.br, %i.bs
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1558

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.x, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bu = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = invoke noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E20box_intersect_staticEPSQ_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISX_SaISX_EEEENSS_14ID_FROM_HANDLEEEES16_, ptr %i.bu, align 8, !tbaa !1569
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cc = ptrtoint ptr %0 to i64
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !299
  store ptr %i.bu, ptr %10, align 8, !tbaa !301
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.ca, align 8, !tbaa !155
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1I_St18_Manager_operation, ptr %i.bt, align 8, !tbaa !149
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ce = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i49, label %.body51, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false)
  store ptr %i.ce, ptr %11, align 8, !tbaa !301
  %i.ck = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !109
  store <2 x ptr> %i.ck, ptr %i.cd, align 8, !tbaa !109
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !156
  %i.cn = sext i32 %i.cm to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.cn)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = invoke noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body51

bb.x:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i53 = icmp eq ptr %i.cu, null
  br i1 %.not.i53, label %.body51, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = invoke noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.cz = extractvalue { ptr, i32 } %i.cy, 1
  %i.da = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.ab, label %.body51

bb.ab:                                            ; preds = %bb.aa
  %i.dc = extractvalue { ptr, i32 } %i.cy, 0
  %i.dd = call ptr @__cxa_begin_catch(ptr %i.dc) #23
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.de, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.de, ptr %i.df, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.at unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body51

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !158
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3                 ; 3 uses
  %i.do = lshr i64 %i.dn, 1                       ; 2 uses
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = icmp slt i64 %i.dn, 0
  %or.cond = and i1 %i.dq, %i.dp
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.dr = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dr, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc55 unwind label %bb.w

.noexc55:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.ds = and i64 %i.dn, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.ds, i64 noundef %i.do, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !161 ; 6 uses
  %i.du = load ptr, ptr %i.dh, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.dt, %i.du
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.du to i64
  %13 = ptrtoaddr ptr %i.dt to i64
  %i.dv = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !165 ; 3 uses
  %i.dy = add i64 %12, -16
  %i.dz = sub i64 %i.dy, %13                      ; 2 uses
  %i.ea = lshr i64 %i.dz, 4
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dz, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.ec = shl i64 %i.dx, 2
  %i.ed = add i64 %i.ec, -1
  %diff.check = icmp ult i64 %i.ed, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eb, 2305843009213693950     ; 4 uses
  %i.ee = shl i64 %n.vec, 4
  %i.ef = getelementptr i8, ptr %i.dt, i64 %i.ee
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eg = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.dt, i64 %i.eg
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec234 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.eh = getelementptr [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ei = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.ei, ptr %i.eh, align 4, !tbaa !157
  %i.ej = getelementptr [4 x i8], ptr %i.eh, i64 %i.dx
  %i.ek = trunc <2 x i64> %strided.vec234 to <2 x i32>
  store <2 x i32> %i.ek, ptr %i.ej, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !1559

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.dt, %vector.memcheck ], [ %i.dt, %.lr.ph145 ], [ %i.ef, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.em = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.ew, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.ev, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.eo = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.ep = getelementptr [4 x i8], ptr %i.dv, i64 %.036144 ; 2 uses
  %i.eq = trunc i64 %i.eo to i32
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !157
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !116
  %i.et = getelementptr [4 x i8], ptr %i.ep, i64 %i.dx
  %i.eu = trunc i64 %i.es to i32
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !157
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.ew = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.ev, %i.du
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1560

bb.ah:                                            ; preds = %._crit_edge146
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !168, !range !106, !noundef !107
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !169, !range !106, !noundef !107
  %i.fc = trunc nuw i8 %i.fb to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaIS12_EERKSt3mapINSV_5IndexESZ_ISt4pairIS18_NS7_6ObjectEESaIS1B_EESt4lessIS18_ESaIS19_IKS18_S1D_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1M_IT3_EERNS1M_IT4_EERNS1M_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i1 noundef zeroext %i.ez, i1 noundef zeroext %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.fd = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i57 = icmp eq ptr %i.fd, null
  br i1 %.not.i57, label %_ZNSt14_Function_baseD2Ev.exit58, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fe = invoke noundef zeroext i1 %i.fd(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit58 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit58:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit58
  %i.fh = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.fi = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.fj) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit58, %bb.al
  ret void

.body51:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.ct, %bb.y ], [ %i.cf, %bb.p ], [ %i.dg, %bb.ad ], [ %i.cy, %bb.aa ], [ %i.cs, %bb.w ], [ %i.cf, %bb.q ], [ %i.ct, %bb.x ] ; 2 uses
  %i.fk = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i59 = icmp eq ptr %i.fk, null
  br i1 %.not.i59, label %.body, label %bb.am

bb.am:                                            ; preds = %.body51
  %i.fl = invoke noundef zeroext i1 %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body51, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.bv, %bb.l ], [ %.merged42, %bb.am ], [ %i.bv, %bb.m ], [ %.merged42, %.body51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fo = ptrtoint ptr %.sroa.20.0133 to i64
  %i.fp = ptrtoint ptr %.sroa.099.0125 to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.fq) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.aa, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.fr = load ptr, ptr %i.j, align 8, !tbaa !122 ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !123
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fw) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.e) #23
  %i.fx = load ptr, ptr %i.d, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !132
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  %i.gd = load ptr, ptr %i.c, align 8, !tbaa !135 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !136
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #40
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.as
  resume { ptr, i32 } %.merged

bb.at:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
end_hunk_20
begin_hunk_21_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseIS7_EERKNSR_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS11_IS8_EES15_RNS11_ISP_EES17_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.dd, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.dc, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.cn, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.cy, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.s, align 8, !tbaa !174
  %.not120 = icmp eq ptr %i.df, %i.dg
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !1585

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.ac, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.di = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i49, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E20box_intersect_staticEPSQ_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISX_SaISX_EEEENSS_14ID_FROM_HANDLEEEES16_, ptr %i.di, align 8, !tbaa !1597
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = ptrtoint ptr %0 to i64
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !303
  store ptr %i.di, ptr %10, align 8, !tbaa !305
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.do, align 8, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSO_IiLin1ELin1ELi0ELin1ELin1EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESQ_SQ_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1I_St18_Manager_operation, ptr %i.dh, align 8, !tbaa !149
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ds = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.du, null
  br i1 %.not.i.i50, label %.body52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false)
  store ptr %i.ds, ptr %11, align 8, !tbaa !305
  %i.dy = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !109
  store <2 x ptr> %i.dy, ptr %i.dr, align 8, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !156
  %i.eb = sext i32 %i.ea to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.eb)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.x:                                             ; preds = %bb.s
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ei, null
  br i1 %.not.i54, label %.body52, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.en = extractvalue { ptr, i32 } %i.em, 1
  %i.eo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %.body52

bb.ab:                                            ; preds = %bb.aa
  %i.eq = extractvalue { ptr, i32 } %i.em, 0
  %i.er = call ptr @__cxa_begin_catch(ptr %i.eq) #23
  %i.es = load i32, ptr %i.er, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.es, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.es, ptr %i.et, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.as unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body52

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !158
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3                 ; 3 uses
  %i.fc = lshr i64 %i.fb, 1                       ; 2 uses
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = icmp slt i64 %i.fb, 0
  %or.cond = and i1 %i.fe, %i.fd
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc56 unwind label %bb.w

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.fg = and i64 %i.fb, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.fg, i64 noundef %i.fc, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !161 ; 6 uses
  %i.fi = load ptr, ptr %i.ev, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.fi to i64
  %13 = ptrtoaddr ptr %i.fh to i64
  %i.fj = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !165 ; 3 uses
  %i.fm = add i64 %12, -16
  %i.fn = sub i64 %i.fm, %13                      ; 2 uses
  %i.fo = lshr i64 %i.fn, 4
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fn, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.fq = shl i64 %i.fl, 2
  %i.fr = add i64 %i.fq, -1
  %diff.check = icmp ult i64 %i.fr, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, 2305843009213693950     ; 4 uses
  %i.fs = shl i64 %n.vec, 4
  %i.ft = getelementptr i8, ptr %i.fh, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fu
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec232 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.fv = getelementptr [4 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.fw = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.fw, ptr %i.fv, align 4, !tbaa !157
  %i.fx = getelementptr [4 x i8], ptr %i.fv, i64 %i.fl
  %i.fy = trunc <2 x i64> %strided.vec232 to <2 x i32>
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !1586

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.fh, %vector.memcheck ], [ %i.fh, %.lr.ph145 ], [ %i.ft, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ga = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.gk, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.gj, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gc = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.gd = getelementptr [4 x i8], ptr %i.fj, i64 %.036144 ; 2 uses
  %i.ge = trunc i64 %i.gc to i32
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !157
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !116
  %i.gh = getelementptr [4 x i8], ptr %i.gd, i64 %i.fl
  %i.gi = trunc i64 %i.gg to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !157
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.gk = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.gj, %i.fi
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !1587

bb.ah:                                            ; preds = %._crit_edge146
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !168, !range !106, !noundef !107
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !169, !range !106, !noundef !107
  %i.gq = trunc nuw i8 %i.gp to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpeckENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaIS12_EERKSt3mapINSV_5IndexESZ_ISt4pairIS18_NS7_6ObjectEESaIS1B_EESt4lessIS18_ESaIS19_IKS18_S1D_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1M_IT3_EERNS1M_IT4_EERNS1M_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i1 noundef zeroext %i.gn, i1 noundef zeroext %i.gq, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.gr = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i58 = icmp eq ptr %i.gr, null
  br i1 %.not.i58, label %_ZNSt14_Function_baseD2Ev.exit59, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit59 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit59:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit59
  %i.gv = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.gw = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.gx) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit59, %bb.al
  ret void

.body52:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.eh, %bb.y ], [ %i.dt, %bb.p ], [ %i.eu, %bb.ad ], [ %i.em, %bb.aa ], [ %i.eg, %bb.w ], [ %i.dt, %bb.q ], [ %i.eh, %bb.x ] ; 2 uses
  %i.gy = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i60 = icmp eq ptr %i.gy, null
  br i1 %.not.i60, label %.body, label %bb.am

bb.am:                                            ; preds = %.body52
  %i.gz = invoke noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body52, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.dj, %bb.l ], [ %.merged42, %bb.am ], [ %i.dj, %bb.m ], [ %.merged42, %.body52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.de, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = ptrtoint ptr %.sroa.20.0133 to i64
  %i.hd = ptrtoint ptr %.sroa.099.0125 to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.he) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !187
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.j) #23
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !132
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  call void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #23
  resume { ptr, i32 } %.merged

bb.as:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEES8_S8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_21
begin_hunk_22_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_EC2ERKNS5_10MatrixBaseIS7_EERKNSS_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS12_ISP_EES16_RNS12_ISQ_EES18_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.bp, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.bo, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.az, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.bk, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 72 ; 2 uses
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not120 = icmp eq ptr %i.br, %i.bs
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !6464

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.x, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.bu = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i48, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = invoke noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_E20box_intersect_staticEPSR_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISY_SaISY_EEEENST_14ID_FROM_HANDLEEEES17_, ptr %i.bu, align 8, !tbaa !6475
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cc = ptrtoint ptr %0 to i64
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !732
  store ptr %i.bu, ptr %10, align 8, !tbaa !734
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES17_NSO_IiLin1ELi1ELi0ELin1ELi1EEES18_EESG_SG_ES1A_St12_PlaceholderILi1EES1D_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.ca, align 8, !tbaa !155
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES17_NSO_IiLin1ELi1ELi0ELin1ELi1EEES18_EESG_SG_ES1A_St12_PlaceholderILi1EES1D_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation, ptr %i.bt, align 8, !tbaa !149
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ce = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i49, label %.body51, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false)
  store ptr %i.ce, ptr %11, align 8, !tbaa !734
  %i.ck = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !109
  store <2 x ptr> %i.ck, ptr %i.cd, align 8, !tbaa !109
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !156
  %i.cn = sext i32 %i.cm to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpickEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.cn)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = invoke noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpickEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body51

bb.x:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 2 uses
  %.not.i53 = icmp eq ptr %i.cu, null
  br i1 %.not.i53, label %.body51, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = invoke noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body51 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.cz = extractvalue { ptr, i32 } %i.cy, 1
  %i.da = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.ab, label %.body51

bb.ab:                                            ; preds = %bb.aa
  %i.dc = extractvalue { ptr, i32 } %i.cy, 0
  %i.dd = call ptr @__cxa_begin_catch(ptr %i.dc) #23
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.de, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.de, ptr %i.df, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.at unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body51

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !158
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3                 ; 3 uses
  %i.do = lshr i64 %i.dn, 1                       ; 2 uses
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = icmp slt i64 %i.dn, 0
  %or.cond = and i1 %i.dq, %i.dp
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.dr = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dr, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc55 unwind label %bb.w

.noexc55:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.ds = and i64 %i.dn, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.ds, i64 noundef %i.do, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !161 ; 6 uses
  %i.du = load ptr, ptr %i.dh, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.dt, %i.du
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.du to i64
  %13 = ptrtoaddr ptr %i.dt to i64
  %i.dv = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !165 ; 3 uses
  %i.dy = add i64 %12, -16
  %i.dz = sub i64 %i.dy, %13                      ; 2 uses
  %i.ea = lshr i64 %i.dz, 4
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dz, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.ec = shl i64 %i.dx, 2
  %i.ed = add i64 %i.ec, -1
  %diff.check = icmp ult i64 %i.ed, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eb, 2305843009213693950     ; 4 uses
  %i.ee = shl i64 %n.vec, 4
  %i.ef = getelementptr i8, ptr %i.dt, i64 %i.ee
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eg = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.dt, i64 %i.eg
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec234 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.eh = getelementptr [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ei = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.ei, ptr %i.eh, align 4, !tbaa !157
  %i.ej = getelementptr [4 x i8], ptr %i.eh, i64 %i.dx
  %i.ek = trunc <2 x i64> %strided.vec234 to <2 x i32>
  store <2 x i32> %i.ek, ptr %i.ej, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !6465

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.dt, %vector.memcheck ], [ %i.dt, %.lr.ph145 ], [ %i.ef, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.em = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.ew, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.ev, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.eo = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.ep = getelementptr [4 x i8], ptr %i.dv, i64 %.036144 ; 2 uses
  %i.eq = trunc i64 %i.eo to i32
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !157
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !116
  %i.et = getelementptr [4 x i8], ptr %i.ep, i64 %i.dx
  %i.eu = trunc i64 %i.es to i32
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !157
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.ew = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.ev, %i.du
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !6466

bb.ah:                                            ; preds = %._crit_edge146
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !168, !range !106, !noundef !107
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !169, !range !106, !noundef !107
  %i.fc = trunc nuw i8 %i.fb to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEEN4CGAL5EpickENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESQ_EEvRKNS3_10MatrixBaseIT_EERKNSR_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaIS13_EERKSt3mapINSW_5IndexES10_ISt4pairIS19_NS7_6ObjectEESaIS1C_EESt4lessIS19_ESaIS1A_IKS19_S1E_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1N_IT3_EERNS1N_IT4_EERNS1N_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i1 noundef zeroext %i.ez, i1 noundef zeroext %i.fc, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.fd = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i57 = icmp eq ptr %i.fd, null
  br i1 %.not.i57, label %_ZNSt14_Function_baseD2Ev.exit58, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fe = invoke noundef zeroext i1 %i.fd(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit58 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit58:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit58
  %i.fh = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.fi = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.fj) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit58, %bb.al
  ret void

.body51:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.ct, %bb.y ], [ %i.cf, %bb.p ], [ %i.dg, %bb.ad ], [ %i.cy, %bb.aa ], [ %i.cs, %bb.w ], [ %i.cf, %bb.q ], [ %i.ct, %bb.x ] ; 2 uses
  %i.fk = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %.not.i59 = icmp eq ptr %i.fk, null
  br i1 %.not.i59, label %.body, label %bb.am

bb.am:                                            ; preds = %.body51
  %i.fl = invoke noundef zeroext i1 %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body51, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.bv, %bb.l ], [ %.merged42, %bb.am ], [ %i.bv, %bb.m ], [ %.merged42, %.body51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fo = ptrtoint ptr %.sroa.20.0133 to i64
  %i.fp = ptrtoint ptr %.sroa.099.0125 to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.fq) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.aa, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.fr = load ptr, ptr %i.j, align 8, !tbaa !122 ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !123
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fw) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpickEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit62, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.e) #23
  %i.fx = load ptr, ptr %i.d, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !132
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpickEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  %i.gd = load ptr, ptr %i.c, align 8, !tbaa !135 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !136
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #40
  br label %_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpickEEESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.as
  resume { ptr, i32 } %.merged

bb.at:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_EC2ERKNS5_10MatrixBaseIS7_EERKNSS_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS12_ISP_EES16_RNS12_ISQ_EES18_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
end_hunk_22
begin_hunk_23_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_EC2ERKNS5_10MatrixBaseIS7_EERKNSS_IS8_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS12_ISP_EES16_RNS12_ISQ_EES18_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.dd, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.dc, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.cn, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.cy, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.s, align 8, !tbaa !174
  %.not120 = icmp eq ptr %i.df, %i.dg
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !6491

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.ac, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.di = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i49, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_E20box_intersect_staticEPSR_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISY_SaISY_EEEENST_14ID_FROM_HANDLEEEES17_, ptr %i.di, align 8, !tbaa !6503
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = ptrtoint ptr %0 to i64
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !736
  store ptr %i.di, ptr %10, align 8, !tbaa !738
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES17_NSO_IiLin1ELi1ELi0ELin1ELi1EEES18_EESG_SG_ES1A_St12_PlaceholderILi1EES1D_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.do, align 8, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEENSO_INS0_13Lazy_exact_ntIN5boost14multiprecision6numberINST_8backends16rational_adaptorINSV_15cpp_int_backendILm0ELm0ELNST_16cpp_integer_typeE1ELNST_18cpp_int_check_typeE0ESaIyEEEEELNST_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES17_NSO_IiLin1ELi1ELi0ELin1ELi1EEES18_EESG_SG_ES1A_St12_PlaceholderILi1EES1D_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation, ptr %i.dh, align 8, !tbaa !149
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ds = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.du, null
  br i1 %.not.i.i50, label %.body52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false)
  store ptr %i.ds, ptr %11, align 8, !tbaa !738
  %i.dy = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !109
  store <2 x ptr> %i.dy, ptr %i.dr, align 8, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !156
  %i.eb = sext i32 %i.ea to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.eb)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.x:                                             ; preds = %bb.s
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ei, null
  br i1 %.not.i54, label %.body52, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.en = extractvalue { ptr, i32 } %i.em, 1
  %i.eo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %.body52

bb.ab:                                            ; preds = %bb.aa
  %i.eq = extractvalue { ptr, i32 } %i.em, 0
  %i.er = call ptr @__cxa_begin_catch(ptr %i.eq) #23
  %i.es = load i32, ptr %i.er, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.es, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.es, ptr %i.et, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.as unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body52

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !158
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3                 ; 3 uses
  %i.fc = lshr i64 %i.fb, 1                       ; 2 uses
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = icmp slt i64 %i.fb, 0
  %or.cond = and i1 %i.fe, %i.fd
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc56 unwind label %bb.w

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.fg = and i64 %i.fb, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.fg, i64 noundef %i.fc, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !161 ; 6 uses
  %i.fi = load ptr, ptr %i.ev, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.fi to i64
  %13 = ptrtoaddr ptr %i.fh to i64
  %i.fj = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !165 ; 3 uses
  %i.fm = add i64 %12, -16
  %i.fn = sub i64 %i.fm, %13                      ; 2 uses
  %i.fo = lshr i64 %i.fn, 4
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fn, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.fq = shl i64 %i.fl, 2
  %i.fr = add i64 %i.fq, -1
  %diff.check = icmp ult i64 %i.fr, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, 2305843009213693950     ; 4 uses
  %i.fs = shl i64 %n.vec, 4
  %i.ft = getelementptr i8, ptr %i.fh, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fu
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec232 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.fv = getelementptr [4 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.fw = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.fw, ptr %i.fv, align 4, !tbaa !157
  %i.fx = getelementptr [4 x i8], ptr %i.fv, i64 %i.fl
  %i.fy = trunc <2 x i64> %strided.vec232 to <2 x i32>
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !6492

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.fh, %vector.memcheck ], [ %i.fh, %.lr.ph145 ], [ %i.ft, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ga = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.gk, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.gj, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gc = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.gd = getelementptr [4 x i8], ptr %i.fj, i64 %.036144 ; 2 uses
  %i.ge = trunc i64 %i.gc to i32
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !157
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !116
  %i.gh = getelementptr [4 x i8], ptr %i.gd, i64 %i.fl
  %i.gi = trunc i64 %i.gg to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !157
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.gk = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.gj, %i.fi
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !6493

bb.ah:                                            ; preds = %._crit_edge146
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !168, !range !106, !noundef !107
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !169, !range !106, !noundef !107
  %i.gq = trunc nuw i8 %i.gp to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEEN4CGAL5EpeckENS4_INS7_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESQ_EEvRKNS3_10MatrixBaseIT_EERKNSR_IT0_EERKSt6vectorINS7_10Triangle_3IT1_EESaIS13_EERKSt3mapINSW_5IndexES10_ISt4pairIS19_NS7_6ObjectEESaIS1C_EESt4lessIS19_ESaIS1A_IKS19_S1E_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1N_IT3_EERNS1N_IT4_EERNS1N_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i1 noundef zeroext %i.gn, i1 noundef zeroext %i.gq, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.gr = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i58 = icmp eq ptr %i.gr, null
  br i1 %.not.i58, label %_ZNSt14_Function_baseD2Ev.exit59, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit59 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit59:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit59
  %i.gv = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.gw = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.gx) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit59, %bb.al
  ret void

.body52:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.eh, %bb.y ], [ %i.dt, %bb.p ], [ %i.eu, %bb.ad ], [ %i.em, %bb.aa ], [ %i.eg, %bb.w ], [ %i.dt, %bb.q ], [ %i.eh, %bb.x ] ; 2 uses
  %i.gy = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i60 = icmp eq ptr %i.gy, null
  br i1 %.not.i60, label %.body, label %bb.am

bb.am:                                            ; preds = %.body52
  %i.gz = invoke noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body52, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.dj, %bb.l ], [ %.merged42, %bb.am ], [ %i.dj, %bb.m ], [ %.merged42, %.body52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.de, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = ptrtoint ptr %.sroa.20.0133 to i64
  %i.hd = ptrtoint ptr %.sroa.099.0125 to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.he) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !187
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.j) #23
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !132
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  call void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #23
  resume { ptr, i32 } %.merged

bb.as:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_INS3_13Lazy_exact_ntIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_23
begin_hunk_24_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_ISL_Lin1ELi3ELi1ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_EC2ERKNS5_10MatrixBaseISM_EERKNSS_ISN_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISO_EERNS12_ISP_EES16_RNS12_ISQ_EES18_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.dd, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.dc, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.cn, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.cy, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.s, align 8, !tbaa !174
  %.not120 = icmp eq ptr %i.df, %i.dg
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !6709

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.ac, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.di = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i49, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_ISL_Lin1ELi3ELi1ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_E20box_intersect_staticEPSR_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISY_SaISY_EEEENST_14ID_FROM_HANDLEEEES17_, ptr %i.di, align 8, !tbaa !6721
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = ptrtoint ptr %0 to i64
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !757
  store ptr %i.di, ptr %10, align 8, !tbaa !759
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixINS0_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEENSO_IS13_Lin1ELi3ELi1ELin1ELi3EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES17_NSO_IiLin1ELi1ELi0ELin1ELi1EEES18_EESG_SG_ES1A_St12_PlaceholderILi1EES1D_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.do, align 8, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixINS0_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEENSO_IS13_Lin1ELi3ELi1ELin1ELi3EEENSO_IiLin1ELin1ELi0ELin1ELin1EEES17_NSO_IiLin1ELi1ELi0ELin1ELi1EEES18_EESG_SG_ES1A_St12_PlaceholderILi1EES1D_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation, ptr %i.dh, align 8, !tbaa !149
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ds = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.du, null
  br i1 %.not.i.i50, label %.body52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false)
  store ptr %i.ds, ptr %11, align 8, !tbaa !759
  %i.dy = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !109
  store <2 x ptr> %i.dy, ptr %i.dr, align 8, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !156
  %i.eb = sext i32 %i.ea to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.eb)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_ISL_Lin1ELi3ELi1ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.x:                                             ; preds = %bb.s
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ei, null
  br i1 %.not.i54, label %.body52, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.en = extractvalue { ptr, i32 } %i.em, 1
  %i.eo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %.body52

bb.ab:                                            ; preds = %bb.aa
  %i.eq = extractvalue { ptr, i32 } %i.em, 0
  %i.er = call ptr @__cxa_begin_catch(ptr %i.eq) #23
  %i.es = load i32, ptr %i.er, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.es, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.es, ptr %i.et, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.as unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body52

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !158
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3                 ; 3 uses
  %i.fc = lshr i64 %i.fb, 1                       ; 2 uses
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = icmp slt i64 %i.fb, 0
  %or.cond = and i1 %i.fe, %i.fd
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc56 unwind label %bb.w

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.fg = and i64 %i.fb, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.fg, i64 noundef %i.fc, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !161 ; 6 uses
  %i.fi = load ptr, ptr %i.ev, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.fi to i64
  %13 = ptrtoaddr ptr %i.fh to i64
  %i.fj = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !165 ; 3 uses
  %i.fm = add i64 %12, -16
  %i.fn = sub i64 %i.fm, %13                      ; 2 uses
  %i.fo = lshr i64 %i.fn, 4
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fn, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.fq = shl i64 %i.fl, 2
  %i.fr = add i64 %i.fq, -1
  %diff.check = icmp ult i64 %i.fr, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, 2305843009213693950     ; 4 uses
  %i.fs = shl i64 %n.vec, 4
  %i.ft = getelementptr i8, ptr %i.fh, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fu
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec232 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.fv = getelementptr [4 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.fw = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.fw, ptr %i.fv, align 4, !tbaa !157
  %i.fx = getelementptr [4 x i8], ptr %i.fv, i64 %i.fl
  %i.fy = trunc <2 x i64> %strided.vec232 to <2 x i32>
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !6710

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.fh, %vector.memcheck ], [ %i.fh, %.lr.ph145 ], [ %i.ft, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ga = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.gk, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.gj, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gc = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.gd = getelementptr [4 x i8], ptr %i.fj, i64 %.036144 ; 2 uses
  %i.ge = trunc i64 %i.gc to i32
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !157
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !116
  %i.gh = getelementptr [4 x i8], ptr %i.gd, i64 %i.fl
  %i.gi = trunc i64 %i.gg to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !157
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.gk = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.gj, %i.fi
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !6711

bb.ah:                                            ; preds = %._crit_edge146
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !168, !range !106, !noundef !107
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !169, !range !106, !noundef !107
  %i.gq = trunc nuw i8 %i.gp to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS5_5EpeckENS4_ISK_Lin1ELi3ELi1ELin1ELi3EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESQ_EEvRKNS3_10MatrixBaseIT_EERKNSR_IT0_EERKSt6vectorINS5_10Triangle_3IT1_EESaIS13_EERKSt3mapINSW_5IndexES10_ISt4pairIS19_NS5_6ObjectEESaIS1C_EESt4lessIS19_ESaIS1A_IKS19_S1E_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1N_IT3_EERNS1N_IT4_EERNS1N_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i1 noundef zeroext %i.gn, i1 noundef zeroext %i.gq, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.gr = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i58 = icmp eq ptr %i.gr, null
  br i1 %.not.i58, label %_ZNSt14_Function_baseD2Ev.exit59, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit59 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit59:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit59
  %i.gv = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.gw = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.gx) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit59, %bb.al
  ret void

.body52:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.eh, %bb.y ], [ %i.dt, %bb.p ], [ %i.eu, %bb.ad ], [ %i.em, %bb.aa ], [ %i.eg, %bb.w ], [ %i.dt, %bb.q ], [ %i.eh, %bb.x ] ; 2 uses
  %i.gy = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i60 = icmp eq ptr %i.gy, null
  br i1 %.not.i60, label %.body, label %bb.am

bb.am:                                            ; preds = %.body52
  %i.gz = invoke noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body52, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.dj, %bb.l ], [ %.merged42, %bb.am ], [ %i.dj, %bb.m ], [ %.merged42, %.body52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.de, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = ptrtoint ptr %.sroa.20.0133 to i64
  %i.hd = ptrtoint ptr %.sroa.099.0125 to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.he) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !187
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.j) #23
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !132
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  call void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #23
  resume { ptr, i32 } %.merged

bb.as:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEENS6_ISL_Lin1ELi3ELi1ELin1ELi3EEENS6_IiLin1ELin1ELi0ELin1ELin1EEESP_NS6_IiLin1ELi1ELi0ELin1ELi1EEESQ_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_24
begin_hunk_25_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEESM_NS6_IiLin1ELin1ELi0ELin1ELin1EEESO_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_EC2ERKNS5_10MatrixBaseISM_EERKNSR_ISN_EERKNS1_28RemeshSelfIntersectionsParamERNS5_15PlainObjectBaseISM_EERNS11_ISO_EES15_RNS11_ISP_EES17_:bb.a
.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.h, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i, %bb.f
  %.sroa.20.1 = phi ptr [ %.sroa.20.0137, %bb.f ], [ %i.dd, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.20.0137, %bb.h ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0138, %bb.f ], [ %i.dc, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %i.cn, %bb.h ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0139, %bb.f ], [ %i.cy, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE17_M_realloc_insertIJSD_EEEvNS4_IPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.099.0139, %bb.h ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.095.0136, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.s, align 8, !tbaa !174
  %.not120 = icmp eq ptr %i.df, %i.dg
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !6856

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit, %bb.d, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit
  %.sroa.20.0.lcssa = phi ptr [ %i.ac, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.20.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.12.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ]
  %.sroa.099.0.lcssa = phi ptr [ %i.ab, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE7reserveEm.exit ], [ null, %bb.d ], [ %.sroa.099.1, %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EE9push_backEOSD_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.di = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.o unwind label %bb.l       ; 4 uses

bb.l:                                             ; preds = %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i49, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #41
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEESM_NS6_IiLin1ELin1ELi0ELin1ELin1EEESO_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E20box_intersect_staticEPSQ_RKNS3_18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS3_10Triangle_3IS4_EESt6vectorISX_SaISX_EEEENSS_14ID_FROM_HANDLEEEES16_, ptr %i.di, align 8, !tbaa !6868
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = ptrtoint ptr %0 to i64
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !768
  store ptr %i.di, ptr %10, align 8, !tbaa !770
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixINS0_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEES14_NSO_IiLin1ELin1ELi0ELin1ELin1EEES16_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE9_M_invokeERKSt9_Any_dataSG_SG_, ptr %i.do, align 8, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFvRKN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEESt6vectorIS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESG_ESt5_BindIFPFvPN3igl8copyleft4cgal17SelfIntersectMeshIS6_N5Eigen6MatrixINS0_13Lazy_exact_ntIN5boost14multiprecision6numberINSR_8backends16rational_adaptorINST_15cpp_int_backendILm0ELm0ELNSR_16cpp_integer_typeE1ELNSR_18cpp_int_check_typeE0ESaIyEEEEELNSR_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSO_IiLin1ELi3ELi0ELin1ELi3EEES14_NSO_IiLin1ELin1ELi0ELin1ELin1EEES16_NSO_IiLin1ELi1ELi0ELin1ELi1EEES17_EESG_SG_ES19_St12_PlaceholderILi1EES1C_ILi2EEEEE10_M_managerERSt9_Any_dataRKS1I_St18_Manager_operation, ptr %i.dh, align 8, !tbaa !149
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ds = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.s unwind label %bb.p       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.du, null
  br i1 %.not.i.i50, label %.body52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #41
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false)
  store ptr %i.ds, ptr %11, align 8, !tbaa !770
  %i.dy = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !109
  store <2 x ptr> %i.dy, ptr %i.dr, align 8, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !156
  %i.eb = sext i32 %i.ea to i64
  invoke void @_ZN4CGAL23box_self_intersection_dINS_14Sequential_tagEN9__gnu_cxx17__normal_iteratorIPNS_18Box_intersection_d17Box_with_handle_dIdLi3ENS3_IPNS_10Triangle_3INS_5EpeckEEESt6vectorIS8_SaIS8_EEEENS4_14ID_FROM_HANDLEEEESA_ISF_SaISF_EEEESt8functionIFvRKSF_SM_EEEEvT0_SP_T1_l(ptr %.sroa.099.0.lcssa, ptr %.sroa.12.0.lcssa, ptr noundef nonnull align 8 %11, i64 noundef %i.eb)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
  invoke void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEESM_NS6_IiLin1ELin1ELi0ELin1ELin1EEESO_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_E26process_intersecting_boxesEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.af unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.ag, %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body52

bb.x:                                             ; preds = %bb.s
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ei, null
  br i1 %.not.i54, label %.body52, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body52 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi                        ; 3 uses
  %i.en = extractvalue { ptr, i32 } %i.em, 1
  %i.eo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIi) #23
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %.body52

bb.ab:                                            ; preds = %bb.aa
  %i.eq = extractvalue { ptr, i32 } %i.em, 0
  %i.er = call ptr @__cxa_begin_catch(ptr %i.eq) #23
  %i.es = load i32, ptr %i.er, align 4, !tbaa !157 ; 2 uses
  %.not = icmp eq i32 %i.es, 10
  br i1 %.not, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 %i.es, ptr %i.et, align 16, !tbaa !157
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIi, ptr null) #43
          to label %bb.as unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #23
  br label %.body52

bb.ae:                                            ; preds = %bb.ab
  call void @__cxa_end_catch() #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !158
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3                 ; 3 uses
  %i.fc = lshr i64 %i.fb, 1                       ; 2 uses
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = icmp slt i64 %i.fb, 0
  %or.cond = and i1 %i.fe, %i.fd
  br i1 %or.cond, label %bb.ag, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !160
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #43
          to label %.noexc56 unwind label %bb.w

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.af
  %i.fg = and i64 %i.fb, 9223372036854775806
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.fg, i64 noundef %i.fc, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !161 ; 6 uses
  %i.fi = load ptr, ptr %i.ev, align 8, !tbaa !161 ; 3 uses
  %.not121142 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not121142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %12 = ptrtoaddr ptr %i.fi to i64
  %13 = ptrtoaddr ptr %i.fh to i64
  %i.fj = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !165 ; 3 uses
  %i.fm = add i64 %12, -16
  %i.fn = sub i64 %i.fm, %13                      ; 2 uses
  %i.fo = lshr i64 %i.fn, 4
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fn, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.fq = shl i64 %i.fl, 2
  %i.fr = add i64 %i.fq, -1
  %diff.check = icmp ult i64 %i.fr, 7
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, 2305843009213693950     ; 4 uses
  %i.fs = shl i64 %n.vec, 4
  %i.ft = getelementptr i8, ptr %i.fh, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fu
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !116 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec232 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.fv = getelementptr [4 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.fw = trunc <2 x i64> %strided.vec to <2 x i32>
  store <2 x i32> %i.fw, ptr %i.fv, align 4, !tbaa !157
  %i.fx = getelementptr [4 x i8], ptr %i.fv, i64 %i.fl
  %i.fy = trunc <2 x i64> %strided.vec232 to <2 x i32>
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !6857

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %.036144.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ]
  %.sroa.067.0143.ph = phi ptr [ %i.fh, %vector.memcheck ], [ %i.fh, %.lr.ph145 ], [ %i.ft, %middle.block ]
  br label %scalar.ph

._crit_edge146:                                   ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ga = load i8, ptr %3, align 4, !tbaa !119, !range !106, !noundef !107
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ai, label %bb.ah

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.036144 = phi i64 [ %i.gk, %scalar.ph ], [ %.036144.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.067.0143 = phi ptr [ %i.gj, %scalar.ph ], [ %.sroa.067.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gc = load i64, ptr %.sroa.067.0143, align 8, !tbaa !116
  %i.gd = getelementptr [4 x i8], ptr %i.fj, i64 %.036144 ; 2 uses
  %i.ge = trunc i64 %i.gc to i32
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !157
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !116
  %i.gh = getelementptr [4 x i8], ptr %i.gd, i64 %i.fl
  %i.gi = trunc i64 %i.gg to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !157
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.067.0143, i64 16 ; 2 uses
  %i.gk = add nuw nsw i64 %.036144, 1
  %.not121 = icmp eq ptr %i.gj, %i.fi
  br i1 %.not121, label %._crit_edge146, label %scalar.ph, !llvm.loop !6858

bb.ah:                                            ; preds = %._crit_edge146
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !168, !range !106, !noundef !107
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !169, !range !106, !noundef !107
  %i.gq = trunc nuw i8 %i.gp to i1
  invoke void @_ZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS5_5EpeckESL_NS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESP_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKSt6vectorINS5_10Triangle_3IT1_EESaIS12_EERKSt3mapINSV_5IndexESZ_ISt4pairIS18_NS5_6ObjectEESaIS1B_EESt4lessIS18_ESaIS19_IKS18_S1D_EEEbbRNS3_15PlainObjectBaseIT2_EERNS1M_IT3_EERNS1M_IT4_EERNS1M_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i1 noundef zeroext %i.gn, i1 noundef zeroext %i.gq, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah, %._crit_edge146
  %i.gr = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i58 = icmp eq ptr %i.gr, null
  br i1 %.not.i58, label %_ZNSt14_Function_baseD2Ev.exit59, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit59 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit59:                 ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit59
  %i.gv = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.gw = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.gx) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit59, %bb.al
  ret void

.body52:                                          ; preds = %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.ad, %bb.aa
  %.merged42 = phi { ptr, i32 } [ %i.eh, %bb.y ], [ %i.dt, %bb.p ], [ %i.eu, %bb.ad ], [ %i.em, %bb.aa ], [ %i.eg, %bb.w ], [ %i.dt, %bb.q ], [ %i.eh, %bb.x ] ; 2 uses
  %i.gy = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 2 uses
  %.not.i60 = icmp eq ptr %i.gy, null
  br i1 %.not.i60, label %.body, label %bb.am

bb.am:                                            ; preds = %.body52
  %i.gz = invoke noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #41
  unreachable

.body:                                            ; preds = %bb.am, %.body52, %bb.m, %bb.l
  %.merged41 = phi { ptr, i32 } [ %i.dj, %bb.l ], [ %.merged42, %bb.am ], [ %i.dj, %bb.m ], [ %.merged42, %.body52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %.body
  %.sroa.20.0133 = phi ptr [ %.sroa.20.0137, %bb.k ], [ %.sroa.20.0.lcssa, %.body ], [ %.sroa.12.0138, %.loopexit ], [ %.sroa.12.0138, %.loopexit.split-lp ]
  %.sroa.099.0125 = phi ptr [ %.sroa.099.0139, %bb.k ], [ %.sroa.099.0.lcssa, %.body ], [ %.sroa.099.0139, %.loopexit ], [ %.sroa.099.0139, %.loopexit.split-lp ] ; 3 uses
  %.merged40 = phi { ptr, i32 } [ %i.de, %bb.k ], [ %.merged41, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %.sroa.099.0125, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = ptrtoint ptr %.sroa.20.0133 to i64
  %i.hd = ptrtoint ptr %.sroa.099.0125 to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0125, i64 noundef %i.he) #40
  br label %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63

_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63: ; preds = %bb.ap, %bb.ao, %.thread, %bb.e
  %.merged = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %.thread ], [ %.merged40, %bb.ao ], [ %.merged40, %bb.ap ]
  %i.hf = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !187
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4CGAL18Box_intersection_d17Box_with_handle_dIdLi3EN9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3INS0_5EpeckEEES_IS7_SaIS7_EEEENS1_14ID_FROM_HANDLEEEESaISD_EED2Ev.exit63, %bb.aq
  call void @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.j) #23
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !132
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #40
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, %bb.ar
  call void @_ZNSt6vectorIN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #23
  resume { ptr, i32 } %.merged

bb.as:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixINS3_13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEESM_NS6_IiLin1ELin1ELi0ELin1ELin1EEESO_NS6_IiLin1ELi1ELi0ELin1ELi1EEESP_ED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPN4CGAL10Triangle_3INS3_5EpeckEEES_IS6_SaIS6_EEEESA_ESaISB_EED2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_25
