Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_vector_test?download=true
inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 207
loop-unroll.NumRuntimeUnrolled: 103
loop-unroll.NumUnrolled: 313
begin_hunk_0_@_Z23test_copy_and_assign_ndIiLm10EEvRKT_:bb.a
.noexc60.8:                                       ; preds = %bb.ai
  %.not4.i57.9 = icmp eq i64 %storemerge.i.i, 9
  br i1 %.not4.i57.9, label %_ZN5boost9container6vectorIivvED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %.noexc60.8
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 36
  %.sroa.080.0.ptr.9 = getelementptr inbounds nuw i8, ptr %i.bv, i64 36
  %i.eq = load i32, ptr %.sroa.080.0.ptr.9, align 4, !tbaa !41
  %i.er = load i32, ptr %i.ep, align 4, !tbaa !41
  %i.es = icmp eq i32 %i.eq, %i.er
  %i.et = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_, i1 noundef zeroext %i.es)
          to label %_ZN5boost9container6vectorIivvED2Ev.exit unwind label %_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit ; 0 uses

_ZN5boost9container6vectorIivvED2Ev.exit:         ; preds = %bb.aj, %.noexc60.8, %.noexc60.7, %.noexc60.6, %.noexc60.5, %.noexc60.4, %.noexc60.3, %.noexc60.2, %.noexc60.1, %.noexc60, %.lr.ph.i56.preheader
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 40) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.eu = load ptr, ptr %i.c, align 8, !tbaa !105, !noalias !340 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.eu, %i.c
  br i1 %.not8.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container6vectorIivvED2Ev.exit, %.lr.ph.i.i.i
  %.sroa.04.09.i.i.i = phi ptr [ %i.ev, %.lr.ph.i.i.i ], [ %i.eu, %_ZN5boost9container6vectorIivvED2Ev.exit ] ; 2 uses
  %i.ev = load ptr, ptr %.sroa.04.09.i.i.i, align 8, !tbaa !105 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i.i, i64 noundef 24) #25
  %.not.i.i.i = icmp eq ptr %i.ev, %i.c
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !6

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit: ; preds = %.lr.ph.i.i.i, %_ZN5boost9container6vectorIivvED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ew = load i64, ptr %i.f, align 8, !tbaa !110 ; 2 uses
  %.not.i.i63 = icmp eq i64 %i.ew, 0
  br i1 %.not.i.i63, label %_ZN5boost9container6vectorIivvED2Ev.exit64, label %bb.ak

bb.ak:                                            ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit
  %i.ex = load ptr, ptr %3, align 8, !tbaa !115
  %i.ey = shl i64 %i.ew, 2
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.ey) #25
  br label %_ZN5boost9container6vectorIivvED2Ev.exit64

_ZN5boost9container6vectorIivvED2Ev.exit64:       ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.al:                                            ; preds = %bb.c
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit141:                                     ; preds = %bb.m
  %lpad.loopexit143 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp142:                            ; preds = %_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_.exit, %bb.l
  %lpad.loopexit.split-lp144 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.loopexit141, %.loopexit.split-lp142, %bb.al
  %.pn = phi { ptr, i32 } [ %i.ez, %bb.al ], [ %lpad.loopexit143, %.loopexit141 ], [ %lpad.loopexit.split-lp144, %.loopexit.split-lp142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.as

.loopexit136:                                     ; preds = %bb.q
  %lpad.loopexit138 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp137:                            ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_.exit, %bb.o, %bb.p
  %lpad.loopexit.split-lp139 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp137, %.loopexit136
  %lpad.phi140 = phi { ptr, i32 } [ %lpad.loopexit138, %.loopexit136 ], [ %lpad.loopexit.split-lp139, %.loopexit.split-lp137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.as

bb.ao:                                            ; preds = %bb.s, %bb.r, %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_.exit34
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ap:                                            ; preds = %bb.u
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit133 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp:                               ; preds = %_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_.exit38
  %lpad.loopexit.split-lp134 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_.exit47
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorIivvED2Ev.exit66

_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit.split-lp: ; preds = %bb.y, %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorIivvED2Ev.exit66

_ZN5boost9container6vectorIivvED2Ev.exit66:       ; preds = %_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit.split-lp, %_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit ], [ %lpad.loopexit.split-lp, %_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 40) #25
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZN5boost9container6vectorIivvED2Ev.exit66, %bb.aq, %bb.ap
  %.pn13.pn.pn = phi { ptr, i32 } [ %i.fb, %bb.ap ], [ %i.fc, %bb.aq ], [ %lpad.phi, %_ZN5boost9container6vectorIivvED2Ev.exit66 ], [ %lpad.loopexit133, %.loopexit ], [ %lpad.loopexit.split-lp134, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao, %bb.an, %bb.am, %bb.k
  %.pn17 = phi { ptr, i32 } [ %lpad.phi150, %bb.k ], [ %.pn13.pn.pn, %bb.ar ], [ %i.fa, %bb.ao ], [ %lpad.phi140, %bb.an ], [ %.pn, %bb.am ]
  %i.fd = load ptr, ptr %i.c, align 8, !tbaa !105, !noalias !341 ; 2 uses
  %.not8.i.i.i67 = icmp eq ptr %i.fd, %i.c
  br i1 %.not8.i.i.i67, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit71, label %.lr.ph.i.i.i68

.lr.ph.i.i.i68:                                   ; preds = %bb.as, %.lr.ph.i.i.i68
  %.sroa.04.09.i.i.i69 = phi ptr [ %i.fe, %.lr.ph.i.i.i68 ], [ %i.fd, %bb.as ] ; 2 uses
  %i.fe = load ptr, ptr %.sroa.04.09.i.i.i69, align 8, !tbaa !105 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i.i69, i64 noundef 24) #25
  %.not.i.i.i70 = icmp eq ptr %i.fe, %i.c
  br i1 %.not.i.i.i70, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit71, label %.lr.ph.i.i.i68, !llvm.loop !6

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit71: ; preds = %.lr.ph.i.i.i68, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ff = load i64, ptr %i.f, align 8, !tbaa !110 ; 2 uses
  %.not.i.i72 = icmp eq i64 %i.ff, 0
  br i1 %.not.i.i72, label %_ZN5boost9container6vectorIivvED2Ev.exit73, label %bb.at

bb.at:                                            ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit71
  %i.fg = load ptr, ptr %3, align 8, !tbaa !115
  %i.fh = shl i64 %i.ff, 2
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fh) #25
  br label %_ZN5boost9container6vectorIivvED2Ev.exit73

_ZN5boost9container6vectorIivvED2Ev.exit73:       ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit71, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z23test_copy_and_assign_ndI8value_ndLm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::vec_iterator.53", align 8 ; 3 uses
  %2 = alloca %"class.boost::container::static_vector.43", align 8 ; 15 uses
  %3 = alloca %"class.boost::container::vector.79", align 8 ; 12 uses
  %4 = alloca %"class.boost::container::list.83", align 8 ; 9 uses
  %5 = alloca %class.value_nd, align 4            ; 6 uses
  %6 = alloca %"class.boost::container::static_vector.43", align 8 ; 6 uses
  %7 = alloca %"class.boost::container::static_vector.43", align 8 ; 6 uses
  %8 = alloca %"class.boost::container::static_vector.43", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 8 uses
  store i64 0, ptr %i.a, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  store i64 0, ptr %4, align 8
  store ptr %i.b, ptr %i.b, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !106
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.f = load i64, ptr %i.a, align 8, !tbaa !120  ; 5 uses
  %i.g = icmp ugt i64 %i.f, 10
  br i1 %i.g, label %bb.c, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.b
  %.not17.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not17.i.i.i, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.h = shl nuw nsw i64 %i.f, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %6, ptr nonnull align 8 %2, i64 %i.h, i1 false), !tbaa !41
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.a, %bb.i
  %.011159 = phi i64 [ 0, %bb.a ], [ %i.aa, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.i = trunc nuw nsw i64 %.011159 to i32        ; 3 uses
  store i32 %i.i, ptr %5, align 4, !tbaa !77
  %i.j = load i64, ptr %i.a, align 8, !tbaa !120  ; 3 uses
  %.not.i = icmp eq i64 %i.j, 10
  br i1 %.not.i, label %bb.e, label %bb.f, !prof !42

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc19 unwind label %.loopexit.split-lp154

.noexc19:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  store i32 %i.i, ptr %i.k, align 4, !tbaa !41
  %i.l = add nuw nsw i64 %i.j, 1
  store i64 %i.l, ptr %i.a, align 8, !tbaa !120
  %i.m = load i64, ptr %i.d, align 8, !tbaa !124  ; 4 uses
  %i.n = load i64, ptr %i.e, align 8, !tbaa !125
  %.not.i20 = icmp eq i64 %i.m, %i.n
  br i1 %.not.i20, label %bb.h, label %bb.g, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %3, align 8, !tbaa !126, !nonnull !112, !noundef !112
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.m
  store i32 %i.i, ptr %i.p, align 4, !tbaa !41
  %i.q = add i64 %i.m, 1
  store i64 %i.q, ptr %i.d, align 8, !tbaa !124
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backERKS2_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.r = load ptr, ptr %3, align 8, !tbaa !126
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.m
  invoke void @_ZN5boost9container6vectorI8value_ndvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.53") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.s, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %5)
          to label %.noexc21 unwind label %.loopexit153

.noexc21:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backERKS2_.exit

_ZN5boost9container6vectorI8value_ndvvE9push_backERKS2_.exit: ; preds = %.noexc21, %bb.g
  %i.t = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.i unwind label %.loopexit153 ; 5 uses

bb.i:                                             ; preds = %_ZN5boost9container6vectorI8value_ndvvE9push_backERKS2_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %5, align 4, !tbaa !41
  store i32 %i.v, ptr %i.u, align 4, !tbaa !41
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !106  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !106
  store ptr %i.b, ptr %i.t, align 8, !tbaa !105
  store ptr %i.t, ptr %i.c, align 8, !tbaa !106
  store ptr %i.t, ptr %i.w, align 8, !tbaa !105
  %i.y = load i64, ptr %4, align 8, !tbaa !114
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %4, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.aa = add nuw nsw i64 %.011159, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, 10
  br i1 %exitcond.not, label %bb.b, label %bb.d, !llvm.loop !342

.loopexit153:                                     ; preds = %bb.h, %_ZN5boost9container6vectorI8value_ndvvE9push_backERKS2_.exit
  %lpad.loopexit155 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp154:                            ; preds = %bb.e
  %lpad.loopexit.split-lp156 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp154, %.loopexit153
  %lpad.phi157 = phi { ptr, i32 } [ %lpad.loopexit155, %.loopexit153 ], [ %lpad.loopexit.split-lp156, %.loopexit.split-lp154 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ap

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.preheader, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.ab = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 241, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.k unwind label %.loopexit.split-lp149 ; 0 uses

bb.k:                                             ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !360 ; 3 uses
  %.idx = shl nsw i64 %i.ac, 2
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %.idx
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.f
  %i.af = icmp eq i64 %i.ac, %i.f
  %i.ag = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.af)
          to label %.noexc24 unwind label %.loopexit.split-lp149 ; 0 uses

.noexc24:                                         ; preds = %bb.k
  %.not5.i = icmp eq i64 %i.ac, 0
  br i1 %.not5.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc24, %.noexc25
  %.sroa.0119.0 = phi ptr [ %i.am, %.noexc25 ], [ %6, %.noexc24 ] ; 3 uses
  %.sroa.0124.0 = phi ptr [ %i.al, %.noexc25 ], [ %2, %.noexc24 ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.0119.0, %i.ae
  br i1 %.not4.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ah = load i32, ptr %.sroa.0124.0, align 4, !tbaa !77
  %i.ai = load i32, ptr %.sroa.0119.0, align 4, !tbaa !77
  %i.aj = icmp eq i32 %i.ah, %i.ai
  %i.ak = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.aj)
          to label %.noexc25 unwind label %.loopexit148 ; 0 uses

.noexc25:                                         ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0124.0, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0119.0, i64 4
  %.not.i23 = icmp eq ptr %i.al, %i.ad
  br i1 %.not.i23, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit, label %.lr.ph.i, !llvm.loop !345

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit: ; preds = %.noexc25, %.lr.ph.i, %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.an = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.1, i32 noundef 247, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.m unwind label %.loopexit.split-lp143 ; 0 uses

bb.m:                                             ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !120 ; 4 uses
  %.not189 = icmp eq i64 %i.ao, 0
  br i1 %.not189, label %.loopexit147, label %_ZN5boost9container18copy_n_source_destIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i

_ZN5boost9container18copy_n_source_destIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i: ; preds = %bb.m
  %i.ap = shl i64 %i.ao, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %2, i64 %i.ap, i1 false), !tbaa !41
  br label %.loopexit147

.loopexit147:                                     ; preds = %bb.m, %_ZN5boost9container18copy_n_source_destIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i
  %i.aq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 249, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.n unwind label %.loopexit.split-lp143 ; 0 uses

bb.n:                                             ; preds = %.loopexit147
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !361 ; 3 uses
  %.idx134 = shl nsw i64 %i.ar, 2
  %i.as = getelementptr inbounds i8, ptr %2, i64 %.idx134
  %i.at = getelementptr inbounds [4 x i8], ptr %7, i64 %i.ao
  %i.au = icmp eq i64 %i.ar, %i.ao
  %i.av = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.au)
          to label %.noexc32 unwind label %.loopexit.split-lp143 ; 0 uses

.noexc32:                                         ; preds = %bb.n
  %.not5.i26 = icmp eq i64 %i.ar, 0
  br i1 %.not5.i26, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit34, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.noexc32, %.noexc33
  %.sroa.0108.0 = phi ptr [ %i.bb, %.noexc33 ], [ %7, %.noexc32 ] ; 3 uses
  %.sroa.0113.0 = phi ptr [ %i.ba, %.noexc33 ], [ %2, %.noexc32 ] ; 2 uses
  %.not4.i30 = icmp eq ptr %.sroa.0108.0, %i.at
  br i1 %.not4.i30, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit34, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i29
  %i.aw = load i32, ptr %.sroa.0113.0, align 4, !tbaa !77
  %i.ax = load i32, ptr %.sroa.0108.0, align 4, !tbaa !77
  %i.ay = icmp eq i32 %i.aw, %i.ax
  %i.az = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.ay)
          to label %.noexc33 unwind label %.loopexit142 ; 0 uses

.noexc33:                                         ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0113.0, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0108.0, i64 4
  %.not.i31 = icmp eq ptr %i.ba, %i.as
  br i1 %.not.i31, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit34, label %.lr.ph.i29, !llvm.loop !345

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit34: ; preds = %.noexc33, %.lr.ph.i29, %.noexc32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  invoke void @_Z20test_copy_and_assignI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.p unwind label %bb.al

bb.p:                                             ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit34
  invoke void @_Z20test_copy_and_assignI8value_ndLm10EN5boost9container6vectorIS0_vvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.al

bb.q:                                             ; preds = %bb.p
  invoke void @_Z20test_copy_and_assignI8value_ndLm10EN5boost9container4listIS0_vEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.r unwind label %bb.al

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !120 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !118
  %i.be = icmp ugt i64 %i.bc, 10
  br i1 %i.be, label %bb.s, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc42 unwind label %bb.am

.noexc42:                                         ; preds = %bb.s
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35: ; preds = %bb.r
  %.not17.i.i.i36 = icmp eq i64 %i.bc, 0          ; 2 uses
  br i1 %.not17.i.i.i36, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit43, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35
  %i.bf = shl nuw nsw i64 %i.bc, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %8, ptr nonnull align 8 %2, i64 %i.bf, i1 false), !tbaa !41
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit43

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit43: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35, %.lr.ph.i.i.i37.preheader
  %.idx137.pre-phi = phi i64 [ %i.bf, %.lr.ph.i.i.i37.preheader ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %.idx137.pre-phi
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.bc
  %i.bi = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext true)
          to label %.noexc50 unwind label %.loopexit.split-lp ; 0 uses

.noexc50:                                         ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit43
  br i1 %.not17.i.i.i36, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit52, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.noexc50, %.noexc51
  %.sroa.0102.0 = phi ptr [ %i.bn, %.noexc51 ], [ %2, %.noexc50 ] ; 2 uses
  %.sroa.097.0 = phi ptr [ %i.bo, %.noexc51 ], [ %8, %.noexc50 ] ; 3 uses
  %.not4.i48 = icmp eq ptr %.sroa.097.0, %i.bh
  br i1 %.not4.i48, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit52, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i47
  %i.bj = load i32, ptr %.sroa.0102.0, align 4, !tbaa !77
  %i.bk = load i32, ptr %.sroa.097.0, align 4, !tbaa !77
  %i.bl = icmp eq i32 %i.bj, %i.bk
  %i.bm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.bl)
          to label %.noexc51 unwind label %.loopexit ; 0 uses

.noexc51:                                         ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0102.0, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.097.0, i64 4
  %.not.i49 = icmp eq ptr %i.bn, %i.bg
  br i1 %.not.i49, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit52, label %.lr.ph.i47, !llvm.loop !345

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit52: ; preds = %.noexc51, %.lr.ph.i47, %.noexc50
  %i.bp = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc53 unwind label %bb.an  ; 16 uses

.noexc53:                                         ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit52
  %.pre.i.i = load i32, ptr %0, align 4, !tbaa !41 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = insertelement <4 x i32> poison, i32 %.pre.i.i, i64 0
  %i.bs = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i32> %i.bs, ptr %i.bp, align 4, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <4 x i32> %i.bs, ptr %i.bt, align 4, !tbaa !41
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store i32 %.pre.i.i, ptr %i.bu, align 4, !tbaa !41
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 36
  store i32 %.pre.i.i, ptr %i.bv, align 4, !tbaa !41
  %i.bw = load i64, ptr %i.bd, align 8, !tbaa !120, !noalias !362 ; 5 uses
  %.idx.i.i = shl nsw i64 %i.bw, 2
  %i.bx = getelementptr inbounds i8, ptr %8, i64 %.idx.i.i ; 6 uses
  %.not = icmp eq i64 %i.bw, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i55

.lr.ph.i.i55:                                     ; preds = %.noexc53, %.lr.ph.i.i55
  %.sroa.04.021.i.i = phi ptr [ %i.by, %.lr.ph.i.i55 ], [ %8, %.noexc53 ] ; 2 uses
  %.sroa.3.020.i.i = phi i64 [ %i.bz, %.lr.ph.i.i55 ], [ 10, %.noexc53 ]
  store i32 %.pre.i.i, ptr %.sroa.04.021.i.i, align 4, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.04.021.i.i, i64 4 ; 3 uses
  %i.bz = add nsw i64 %.sroa.3.020.i.i, -1        ; 3 uses
  %i.ca = icmp ne i64 %i.bz, 0                    ; 2 uses
  %i.cb = icmp ne ptr %i.by, %i.bx
  %or.cond.i.i = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i55, label %.critedge.i.i, !llvm.loop !350

.critedge.i.i:                                    ; preds = %.lr.ph.i.i55
  br i1 %i.ca, label %.critedge.i.i.thread, label %bb.u

bb.u:                                             ; preds = %.critedge.i.i
  %i.cc = ptrtoint ptr %i.bx to i64
  %i.cd = ptrtoint ptr %i.by to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2
  %i.cg = sub i64 %i.bw, %i.cf
  br label %bb.w

.critedge.i.i.thread:                             ; preds = %.noexc53, %.critedge.i.i
  %.sroa.3.0.lcssa.i.i130 = phi i64 [ %i.bz, %.critedge.i.i ], [ 10, %.noexc53 ] ; 7 uses
  %i.ch = sub i64 10, %i.bw
  %.not.i.i.i.i = icmp ugt i64 %.sroa.3.0.lcssa.i.i130, %i.ch
  br i1 %.not.i.i.i.i, label %bb.v, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %min.iters.check = icmp ult i64 %.sroa.3.0.lcssa.i.i130, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader199, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.sroa.3.0.lcssa.i.i130, -4    ; 3 uses
  %i.ci = and i64 %.sroa.3.0.lcssa.i.i130, 3
  %i.cj = shl i64 %n.vec, 2
  %i.ck = getelementptr i8, ptr %i.bx, i64 %i.cj
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i32> %broadcast.splat, ptr %i.bx, align 4, !tbaa !41, !noalias !363
  %i.cl = icmp eq i64 %n.vec, 4
  br i1 %i.cl, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %i.bx, i64 16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep.1) ]
  store <4 x i32> %broadcast.splat, ptr %next.gep.1, align 4, !tbaa !41, !noalias !363
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %.sroa.3.0.lcssa.i.i130, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_17constant_iteratorIS2_EEEENS0_12vec_iteratorIPS2_Lb0EEENSA_ISB_Lb1EEET_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS3_17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESM_E4typeE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader199

.lr.ph.i.i.i.i.i.i.i.i.preheader199:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.022.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.3.0.lcssa.i.i130, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ci, %middle.block ]
  %.01821.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader199, %.lr.ph.i.i.i.i.i.i.i.i
  %.022.i.i.i.i.i.i.i.i = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.022.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader199 ]
  %.01821.i.i.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.01821.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader199 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i.i.i.i.i.i) ]
  store i32 %.pre.i.i, ptr %.01821.i.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !363
  %i.cm = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.i.i.i.i.i, i64 4
  %i.cn = add i64 %.022.i.i.i.i.i.i.i.i, -1       ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_17constant_iteratorIS2_EEEENS0_12vec_iteratorIPS2_Lb0EEENSA_ISB_Lb1EEET_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS3_17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESM_E4typeE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !355

bb.v:                                             ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc56 unwind label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit.split-lp

.noexc56:                                         ; preds = %bb.v
  unreachable

_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_17constant_iteratorIS2_EEEENS0_12vec_iteratorIPS2_Lb0EEENSA_ISB_Lb1EEET_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS3_17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESM_E4typeE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block
  %i.co = add i64 %.sroa.3.0.lcssa.i.i130, %i.bw
  br label %bb.w

bb.w:                                             ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_17constant_iteratorIS2_EEEENS0_12vec_iteratorIPS2_Lb0EEENSA_ISB_Lb1EEET_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS3_17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESM_E4typeE.exit.i.i, %bb.u
  %storemerge.i.i = phi i64 [ %i.co, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_17constant_iteratorIS2_EEEENS0_12vec_iteratorIPS2_Lb0EEENSA_ISB_Lb1EEET_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS3_17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESM_E4typeE.exit.i.i ], [ %i.cg, %bb.u ] ; 12 uses
  store i64 %storemerge.i.i, ptr %i.bd, align 8, !tbaa !118
  %i.cp = icmp eq i64 %storemerge.i.i, 10
  %i.cq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.cp)
          to label %.lr.ph.i60.preheader unwind label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit.split-lp ; 0 uses

.lr.ph.i60.preheader:                             ; preds = %bb.w
  %.not4.i61 = icmp eq i64 %storemerge.i.i, 0
  br i1 %.not4.i61, label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i60.preheader
  %i.cr = load i32, ptr %i.bp, align 4, !tbaa !77
  %i.cs = load i32, ptr %8, align 8, !tbaa !77
  %i.ct = icmp eq i32 %i.cr, %i.cs
  %i.cu = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.ct)
          to label %.noexc64 unwind label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit ; 0 uses

.noexc64:                                         ; preds = %bb.x
  %.not4.i61.1 = icmp eq i64 %storemerge.i.i, 1
  br i1 %.not4.i61.1, label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %.noexc64
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.cw = load i32, ptr %i.bq, align 4, !tbaa !77
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !77
  %i.cy = icmp eq i32 %i.cw, %i.cx
  %i.cz = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.cy)
          to label %.noexc64.1 unwind label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit ; 0 uses

.noexc64.1:                                       ; preds = %bb.y
  %.not4.i61.2 = icmp eq i64 %storemerge.i.i, 2
  br i1 %.not4.i61.2, label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %.noexc64.1
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.086.0.ptr.2 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.db = load i32, ptr %.sroa.086.0.ptr.2, align 4, !tbaa !77
  %i.dc = load i32, ptr %i.da, align 8, !tbaa !77
  %i.dd = icmp eq i32 %i.db, %i.dc
  %i.de = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.dd)
          to label %.noexc64.2 unwind label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit ; 0 uses

.noexc64.2:                                       ; preds = %bb.z
  %.not4.i61.3 = icmp eq i64 %storemerge.i.i, 3
  br i1 %.not4.i61.3, label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %.noexc64.2
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 12
  %.sroa.086.0.ptr.3 = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.dg = load i32, ptr %.sroa.086.0.ptr.3, align 4, !tbaa !77
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !77
  %i.di = icmp eq i32 %i.dg, %i.dh
  %i.dj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.di)
          to label %.noexc64.3 unwind label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit ; 0 uses

.noexc64.3:                                       ; preds = %bb.aa
  %.not4.i61.4 = icmp eq i64 %storemerge.i.i, 4
  br i1 %.not4.i61.4, label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %.noexc64.3
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.086.0.ptr.4 = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.dl = load i32, ptr %.sroa.086.0.ptr.4, align 4, !tbaa !77
  %i.dm = load i32, ptr %i.dk, align 8, !tbaa !77
  %i.dn = icmp eq i32 %i.dl, %i.dm
  %i.do = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.dn)
          to label %.noexc64.4 unwind label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit ; 0 uses
end_hunk_0
begin_hunk_1_@_Z23test_copy_and_assign_ndI14counting_valueLm10EEvRKT_:bb.a
  %_ZZN14counting_value1cEvE2co.promoted.i.i90 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.kn = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i90, %i.km
  store i64 %i.kn, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit91

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit91: ; preds = %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit87, %.lr.ph.preheader.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.ai:                                            ; preds = %bb.c
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95

.loopexit174:                                     ; preds = %bb.l
  %lpad.loopexit176 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp175:                            ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit, %bb.k
  %lpad.loopexit.split-lp177 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.split-lp175, %.loopexit174
  %lpad.phi178 = phi { ptr, i32 } [ %lpad.loopexit176, %.loopexit174 ], [ %lpad.loopexit.split-lp177, %.loopexit.split-lp175 ] ; 2 uses
  %i.kp = load i64, ptr %i.h, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i92 = icmp eq i64 %i.kp, 0
  br i1 %.not3.i.i92, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95, label %.lr.ph.preheader.i.i93

.lr.ph.preheader.i.i93:                           ; preds = %bb.aj
  %_ZZN14counting_value1cEvE2co.promoted.i.i94 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.kq = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i94, %i.kp
  store i64 %i.kq, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95: ; preds = %.lr.ph.preheader.i.i93, %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.ko, %bb.ai ], [ %lpad.phi178, %bb.aj ], [ %lpad.phi178, %.lr.ph.preheader.i.i93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ar

.loopexit169:                                     ; preds = %bb.o
  %lpad.loopexit171 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp170:                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, %_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i, %bb.n
  %i.kr = phi i64 [ 0, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit ], [ %i.cj, %_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i ], [ %i.cj, %bb.n ]
  %lpad.loopexit.split-lp172 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp170, %.loopexit169
  %i.ks = phi i64 [ %i.cj, %.loopexit169 ], [ %i.kr, %.loopexit.split-lp170 ] ; 2 uses
  %lpad.phi173 = phi { ptr, i32 } [ %lpad.loopexit171, %.loopexit169 ], [ %lpad.loopexit.split-lp172, %.loopexit.split-lp170 ]
  %.not3.i.i96 = icmp eq i64 %i.ks, 0
  br i1 %.not3.i.i96, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99, label %.lr.ph.preheader.i.i97

.lr.ph.preheader.i.i97:                           ; preds = %bb.ak
  %_ZZN14counting_value1cEvE2co.promoted.i.i98 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.kt = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i98, %i.ks
  store i64 %i.kt, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99: ; preds = %bb.ak, %.lr.ph.preheader.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ar

bb.al:                                            ; preds = %bb.q, %bb.p, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit38
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.am:                                            ; preds = %bb.s
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103

.loopexit164:                                     ; preds = %bb.t
  %lpad.loopexit166 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp165:                            ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit49
  %lpad.loopexit.split-lp167 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.an:                                            ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit:                                        ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.v, %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5boost9container6vectorI14counting_valuevvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn13 = phi { ptr, i32 } [ %lpad.phi, %bb.ao ], [ %i.kw, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit164, %.loopexit.split-lp165, %bb.ap
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %bb.ap ], [ %lpad.loopexit166, %.loopexit164 ], [ %lpad.loopexit.split-lp167, %.loopexit.split-lp165 ] ; 2 uses
  %i.kx = load i64, ptr %i.dn, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i100 = icmp eq i64 %i.kx, 0
  br i1 %.not3.i.i100, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103, label %.lr.ph.preheader.i.i101

.lr.ph.preheader.i.i101:                          ; preds = %bb.aq
  %_ZZN14counting_value1cEvE2co.promoted.i.i102 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ky = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i102, %i.kx
  store i64 %i.ky, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103: ; preds = %.lr.ph.preheader.i.i101, %bb.aq, %bb.am
  %.pn13.pn.pn = phi { ptr, i32 } [ %i.kv, %bb.am ], [ %.pn13.pn, %bb.aq ], [ %.pn13.pn, %.lr.ph.preheader.i.i101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103, %bb.al, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95, %bb.j
  %.pn17 = phi { ptr, i32 } [ %lpad.phi183, %bb.j ], [ %.pn13.pn.pn, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103 ], [ %i.ku, %bb.al ], [ %lpad.phi173, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99 ], [ %.pn, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95 ]
  call void @_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN5boost9container6vectorI14counting_valuevvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.kz = load i64, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i104 = icmp eq i64 %i.kz, 0
  br i1 %.not3.i.i104, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit107, label %.lr.ph.preheader.i.i105

.lr.ph.preheader.i.i105:                          ; preds = %bb.ar
  %_ZZN14counting_value1cEvE2co.promoted.i.i106 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.la = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i106, %i.kz
  store i64 %i.la, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit107

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit107: ; preds = %bb.ar, %.lr.ph.preheader.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z23test_copy_and_assign_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::vec_iterator.59", align 8 ; 3 uses
  %2 = alloca %"class.boost::container::static_vector.35", align 8 ; 21 uses
  %3 = alloca %"class.boost::container::vector.137", align 8 ; 12 uses
  %4 = alloca %"class.boost::container::list.141", align 8 ; 10 uses
  %5 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 6 uses
  %6 = alloca %"class.boost::container::static_vector.35", align 8 ; 13 uses
  %7 = alloca %"class.boost::container::static_vector.35", align 8 ; 12 uses
  %8 = alloca %"class.boost::container::static_vector.35", align 8 ; 25 uses
  %9 = alloca %"class.boost::container::vector.137", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 10 uses
  store i64 0, ptr %i.a, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i64 0, ptr %4, align 8
  store ptr %i.b, ptr %i.b, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !106
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.d

bb.b:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.f = load i64, ptr %i.a, align 8, !tbaa !141  ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store i64 %i.f, ptr %i.g, align 8, !tbaa !139
  %i.h = icmp ugt i64 %i.f, 10
  br i1 %i.h, label %bb.c, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.b
  %.not17.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not17.i.i.i, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.i = shl nuw nsw i64 %i.f, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %6, ptr nonnull align 8 %2, i64 %i.i, i1 false), !tbaa !82
  %i.j = trunc nuw nsw i64 %i.f to i32
  %i.k = add i32 %i.ae, %i.j
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.a, %bb.i
  %i.l = phi i32 [ %.pre, %bb.a ], [ %i.ae, %bb.i ] ; 2 uses
  %.011232 = phi i64 [ 0, %bb.a ], [ %i.aj, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.m = trunc nuw nsw i64 %.011232 to i32        ; 3 uses
  store i32 %i.m, ptr %5, align 4, !tbaa !82
  %i.n = add i32 %i.l, 1
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.o = load i64, ptr %i.a, align 8, !tbaa !141  ; 3 uses
  %.not.i = icmp eq i64 %i.o, 10
  br i1 %.not.i, label %bb.e, label %bb.f, !prof !42

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc19 unwind label %.loopexit.split-lp224

.noexc19:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o
  store i32 %i.m, ptr %i.p, align 4, !tbaa !82
  %i.q = add i32 %i.l, 2
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.r = add nuw nsw i64 %i.o, 1
  store i64 %i.r, ptr %i.a, align 8, !tbaa !141
  %i.s = load i64, ptr %i.d, align 8, !tbaa !145  ; 4 uses
  %i.t = load i64, ptr %i.e, align 8, !tbaa !146
  %.not.i20 = icmp eq i64 %i.s, %i.t
  br i1 %.not.i20, label %bb.h, label %bb.g, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %3, align 8, !tbaa !147, !nonnull !112, !noundef !112
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s
  store i32 %i.m, ptr %i.v, align 4, !tbaa !82
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.y = add i64 %i.s, 1
  store i64 %i.y, ptr %i.d, align 8, !tbaa !145
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backERKS3_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.z = load ptr, ptr %3, align 8, !tbaa !147
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.s
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJRKS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.59") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.aa, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %5)
          to label %.noexc21 unwind label %.loopexit223

.noexc21:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backERKS3_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backERKS3_.exit: ; preds = %.noexc21, %bb.g
  %i.ab = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.i unwind label %.loopexit223 ; 5 uses

bb.i:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backERKS3_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i32, ptr %5, align 4, !tbaa !82
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !82
  %i.ae = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 3 uses
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !106 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !106
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !105
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !106
  store ptr %i.ab, ptr %i.af, align 8, !tbaa !105
  %i.ah = load i64, ptr %4, align 8, !tbaa !114
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %4, align 8, !tbaa !114
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.aj = add nuw nsw i64 %.011232, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, 10
  br i1 %exitcond.not, label %bb.b, label %bb.d, !llvm.loop !391

.loopexit223:                                     ; preds = %bb.h, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backERKS3_.exit
  %lpad.loopexit225 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp224:                            ; preds = %bb.e
  %lpad.loopexit.split-lp226 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp224, %.loopexit223
  %lpad.phi227 = phi { ptr, i32 } [ %lpad.loopexit225, %.loopexit223 ], [ %lpad.loopexit.split-lp226, %.loopexit.split-lp224 ]
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ar

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit: ; preds = %.lr.ph.i.preheader.i.i, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.am = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 241, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.k unwind label %.loopexit.split-lp219 ; 0 uses

bb.k:                                             ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit
  %i.an = load i64, ptr %i.a, align 8, !tbaa !141, !noalias !431 ; 3 uses
  %.idx = shl nsw i64 %i.an, 2
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %.idx
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.f
  %i.aq = icmp eq i64 %i.an, %i.f
  %i.ar = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_, i1 noundef zeroext %i.aq)
          to label %.noexc24 unwind label %.loopexit.split-lp219 ; 0 uses

.noexc24:                                         ; preds = %bb.k
  %.not5.i = icmp eq i64 %i.an, 0
  br i1 %.not5.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc24, %.noexc25
  %.sroa.0184.0 = phi ptr [ %i.ax, %.noexc25 ], [ %6, %.noexc24 ] ; 3 uses
  %.sroa.0189.0 = phi ptr [ %i.aw, %.noexc25 ], [ %2, %.noexc24 ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.0184.0, %i.ap
  br i1 %.not4.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.as = load i32, ptr %.sroa.0189.0, align 4, !tbaa !82
  %i.at = load i32, ptr %.sroa.0184.0, align 4, !tbaa !82
  %i.au = icmp eq i32 %i.as, %i.at
  %i.av = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_, i1 noundef zeroext %i.au)
          to label %.noexc25 unwind label %.loopexit218 ; 0 uses

.noexc25:                                         ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0189.0, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0184.0, i64 4
  %.not.i23 = icmp eq ptr %i.aw, %i.ao
  br i1 %.not.i23, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit, label %.lr.ph.i, !llvm.loop !10

_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit: ; preds = %.noexc25, %.lr.ph.i, %.noexc24
  %i.ay = load i64, ptr %i.g, align 8, !tbaa !141 ; 7 uses
  %.not3.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check283 = icmp ult i64 %i.ay, 8
  br i1 %min.iters.check283, label %.lr.ph.i.i.preheader, label %vector.ph284

vector.ph284:                                     ; preds = %.lr.ph.i.preheader.i
  %n.vec285 = and i64 %i.ay, -8                   ; 3 uses
  %i.az = and i64 %i.ay, 7
  %i.ba = shl i64 %n.vec285, 2
  %i.bb = getelementptr i8, ptr %6, i64 %i.ba
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph284
  %index287 = phi i64 [ 0, %vector.ph284 ], [ %index.next289, %vector.body286 ] ; 2 uses
  %i.bc = shl i64 %index287, 2
  %next.gep288 = getelementptr i8, ptr %6, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep288, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep288, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.bd, align 8, !tbaa !82
  %index.next289 = add nuw i64 %index287, 8       ; 2 uses
  %i.be = icmp eq i64 %index.next289, %n.vec285
  br i1 %i.be, label %middle.block290, label %vector.body286, !llvm.loop !394

middle.block290:                                  ; preds = %vector.body286
  %cmp.n291 = icmp eq i64 %i.ay, %n.vec285
  br i1 %cmp.n291, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block290
  %.05.i.i.ph = phi i64 [ %i.ay, %.lr.ph.i.preheader.i ], [ %i.az, %middle.block290 ]
  %storemerge4.i.i.ph = phi ptr [ %6, %.lr.ph.i.preheader.i ], [ %i.bb, %middle.block290 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.bf, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bf = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !82
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !395

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block290
  %i.bh = trunc i64 %i.ay to i32
  %i.bi = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.bh
  store i32 %i.bi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.bj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.1, i32 noundef 247, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.m unwind label %.loopexit.split-lp212 ; 0 uses

bb.m:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !141 ; 19 uses
  %.not268 = icmp eq i64 %i.bk, 0
  br i1 %.not268, label %.loopexit216, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i

_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i: ; preds = %bb.m
  %.pre13.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.bl = shl nuw i64 %i.bk, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %2, i64 %i.bl, i1 false), !tbaa !82
  %min.iters.check295 = icmp ult i64 %i.bk, 8
  br i1 %min.iters.check295, label %.lr.ph.i14.i.i.i.i.preheader, label %vector.ph296

vector.ph296:                                     ; preds = %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i
  %n.vec297 = and i64 %i.bk, -8                   ; 2 uses
  %i.bm = and i64 %i.bk, 7
  %i.bn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre13.i.i.i, i64 0
  br label %vector.body298

vector.body298:                                   ; preds = %vector.body298, %vector.ph296
  %index299 = phi i64 [ 0, %vector.ph296 ], [ %index.next301, %vector.body298 ]
  %vec.phi = phi <4 x i32> [ %i.bn, %vector.ph296 ], [ %i.bo, %vector.body298 ]
  %vec.phi300 = phi <4 x i32> [ zeroinitializer, %vector.ph296 ], [ %i.bp, %vector.body298 ]
  %i.bo = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.bp = add <4 x i32> %vec.phi300, splat (i32 1) ; 2 uses
  %index.next301 = add nuw i64 %index299, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next301, %n.vec297
  br i1 %i.bq, label %middle.block302, label %vector.body298, !llvm.loop !396

middle.block302:                                  ; preds = %vector.body298
  %bin.rdx = add <4 x i32> %i.bp, %i.bo
  %i.br = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n303 = icmp eq i64 %i.bk, %n.vec297
  br i1 %cmp.n303, label %.loopexit216.loopexit, label %.lr.ph.i14.i.i.i.i.preheader

.lr.ph.i14.i.i.i.i.preheader:                     ; preds = %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i, %middle.block302
  %.ph412 = phi i32 [ %.pre13.i.i.i, %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i ], [ %i.br, %middle.block302 ]
  %.020.i.i.i.i.i.ph = phi i64 [ %i.bk, %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i ], [ %i.bm, %middle.block302 ]
  br label %.lr.ph.i14.i.i.i.i

.lr.ph.i14.i.i.i.i:                               ; preds = %.lr.ph.i14.i.i.i.i.preheader, %.lr.ph.i14.i.i.i.i
  %i.bs = phi i32 [ %i.bu, %.lr.ph.i14.i.i.i.i ], [ %.ph412, %.lr.ph.i14.i.i.i.i.preheader ]
  %.020.i.i.i.i.i = phi i64 [ %i.bt, %.lr.ph.i14.i.i.i.i ], [ %.020.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.preheader ]
  %i.bt = add i64 %.020.i.i.i.i.i, -1             ; 2 uses
  %i.bu = add i32 %i.bs, 1                        ; 2 uses
  %.not.i15.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i15.i.i.i.i, label %.loopexit216.loopexit, label %.lr.ph.i14.i.i.i.i, !llvm.loop !397

.loopexit216.loopexit:                            ; preds = %.lr.ph.i14.i.i.i.i, %middle.block302
  %.lcssa279 = phi i32 [ %i.br, %middle.block302 ], [ %i.bu, %.lr.ph.i14.i.i.i.i ]
  store i32 %.lcssa279, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.loopexit216

.loopexit216:                                     ; preds = %.loopexit216.loopexit, %bb.m
  %i.bv = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 249, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.n unwind label %.loopexit.split-lp212 ; 0 uses

bb.n:                                             ; preds = %.loopexit216
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !141, !noalias !432 ; 3 uses
  %.idx199 = shl nsw i64 %i.bw, 2
  %i.bx = getelementptr inbounds i8, ptr %2, i64 %.idx199
  %i.by = getelementptr inbounds [4 x i8], ptr %7, i64 %i.bk
  %i.bz = icmp eq i64 %i.bw, %i.bk
  %i.ca = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_, i1 noundef zeroext %i.bz)
          to label %.noexc33 unwind label %.loopexit.split-lp212 ; 0 uses

.noexc33:                                         ; preds = %bb.n
  %.not5.i27 = icmp eq i64 %i.bw, 0
  br i1 %.not5.i27, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit35, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %.noexc33, %.noexc34
  %.sroa.0173.0 = phi ptr [ %i.cg, %.noexc34 ], [ %7, %.noexc33 ] ; 3 uses
  %.sroa.0178.0 = phi ptr [ %i.cf, %.noexc34 ], [ %2, %.noexc33 ] ; 2 uses
  %.not4.i31 = icmp eq ptr %.sroa.0173.0, %i.by
  br i1 %.not4.i31, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit35, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i30
  %i.cb = load i32, ptr %.sroa.0178.0, align 4, !tbaa !82
  %i.cc = load i32, ptr %.sroa.0173.0, align 4, !tbaa !82
  %i.cd = icmp eq i32 %i.cb, %i.cc
  %i.ce = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_, i1 noundef zeroext %i.cd)
          to label %.noexc34 unwind label %.loopexit211 ; 0 uses

.noexc34:                                         ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0178.0, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0173.0, i64 4
  %.not.i32 = icmp eq ptr %i.cf, %i.bx
  br i1 %.not.i32, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit35, label %.lr.ph.i30, !llvm.loop !10

_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit35: ; preds = %.noexc34, %.lr.ph.i30, %.noexc33
  %.not3.i.i36 = icmp eq i64 %i.bk, 0
  br i1 %.not3.i.i36, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit44, label %.lr.ph.i.preheader.i37

.lr.ph.i.preheader.i37:                           ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit35
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i38 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check318 = icmp ult i64 %i.bk, 8
  br i1 %min.iters.check318, label %.lr.ph.i.i39.preheader, label %vector.ph319

vector.ph319:                                     ; preds = %.lr.ph.i.preheader.i37
  %n.vec320 = and i64 %i.bk, -8                   ; 3 uses
  %i.ch = and i64 %i.bk, 7
  %i.ci = shl i64 %n.vec320, 2
  %i.cj = getelementptr i8, ptr %7, i64 %i.ci
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph319
  %index322 = phi i64 [ 0, %vector.ph319 ], [ %index.next324, %vector.body321 ] ; 2 uses
  %i.ck = shl i64 %index322, 2
  %next.gep323 = getelementptr i8, ptr %7, i64 %i.ck ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep323, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep323, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.cl, align 8, !tbaa !82
  %index.next324 = add nuw i64 %index322, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next324, %n.vec320
  br i1 %i.cm, label %middle.block325, label %vector.body321, !llvm.loop !400

middle.block325:                                  ; preds = %vector.body321
  %cmp.n326 = icmp eq i64 %i.bk, %n.vec320
  br i1 %cmp.n326, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i43, label %.lr.ph.i.i39.preheader

.lr.ph.i.i39.preheader:                           ; preds = %.lr.ph.i.preheader.i37, %middle.block325
  %.05.i.i40.ph = phi i64 [ %i.bk, %.lr.ph.i.preheader.i37 ], [ %i.ch, %middle.block325 ]
  %storemerge4.i.i41.ph = phi ptr [ %7, %.lr.ph.i.preheader.i37 ], [ %i.cj, %middle.block325 ]
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39.preheader, %.lr.ph.i.i39
  %.05.i.i40 = phi i64 [ %i.cn, %.lr.ph.i.i39 ], [ %.05.i.i40.ph, %.lr.ph.i.i39.preheader ]
  %storemerge4.i.i41 = phi ptr [ %i.co, %.lr.ph.i.i39 ], [ %storemerge4.i.i41.ph, %.lr.ph.i.i39.preheader ] ; 2 uses
  %i.cn = add i64 %.05.i.i40, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i41, align 4, !tbaa !82
  %i.co = getelementptr inbounds nuw i8, ptr %storemerge4.i.i41, i64 4
  %.not.i.i42 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i42, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i43, label %.lr.ph.i.i39, !llvm.loop !401

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i43: ; preds = %.lr.ph.i.i39, %middle.block325
  %i.cp = trunc i64 %i.bk to i32
  %i.cq = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i38, %i.cp
  store i32 %i.cq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit44

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit44: ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit35, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  invoke void @_Z20test_copy_and_assignIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.p unwind label %bb.al

bb.p:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit44
  invoke void @_Z20test_copy_and_assignIN5boost9container4test24movable_and_copyable_intELm10ENS1_6vectorIS3_vvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.al

bb.q:                                             ; preds = %bb.p
  invoke void @_Z20test_copy_and_assignIN5boost9container4test24movable_and_copyable_intELm10ENS1_4listIS3_vEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.r unwind label %bb.al

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !141 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 5 uses
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !139
  %i.ct = icmp ugt i64 %i.cr, 10
  br i1 %i.ct, label %bb.s, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i45

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc55 unwind label %bb.am

.noexc55:                                         ; preds = %bb.s
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i45: ; preds = %bb.r
  %.not17.i.i.i46 = icmp eq i64 %i.cr, 0          ; 2 uses
  br i1 %.not17.i.i.i46, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit56, label %.lr.ph.i.preheader.i.i47

.lr.ph.i.preheader.i.i47:                         ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i45
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i48 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cu = shl nuw nsw i64 %i.cr, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %8, ptr nonnull align 8 %2, i64 %i.cu, i1 false), !tbaa !82
  %i.cv = trunc nuw nsw i64 %i.cr to i32
  %i.cw = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i48, %i.cv
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit56

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit56: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i45, %.lr.ph.i.preheader.i.i47
  %.idx202.pre-phi = phi i64 [ %i.cu, %.lr.ph.i.preheader.i.i47 ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i45 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 %.idx202.pre-phi
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.cr
  %i.cz = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_, i1 noundef zeroext true)
          to label %.noexc63 unwind label %.loopexit.split-lp207 ; 0 uses

.noexc63:                                         ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit56
  br i1 %.not17.i.i.i46, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit65, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.noexc63, %.noexc64
  %.sroa.0167.0 = phi ptr [ %i.de, %.noexc64 ], [ %2, %.noexc63 ] ; 2 uses
  %.sroa.0162.0 = phi ptr [ %i.df, %.noexc64 ], [ %8, %.noexc63 ] ; 3 uses
  %.not4.i61 = icmp eq ptr %.sroa.0162.0, %i.cy
  br i1 %.not4.i61, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit65, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i60
  %i.da = load i32, ptr %.sroa.0167.0, align 4, !tbaa !82
  %i.db = load i32, ptr %.sroa.0162.0, align 4, !tbaa !82
  %i.dc = icmp eq i32 %i.da, %i.db
  %i.dd = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_, i1 noundef zeroext %i.dc)
          to label %.noexc64 unwind label %.loopexit206 ; 0 uses

.noexc64:                                         ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0167.0, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0162.0, i64 4
  %.not.i62 = icmp eq ptr %i.de, %i.cx
  br i1 %.not.i62, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit65, label %.lr.ph.i60, !llvm.loop !10

_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit65: ; preds = %.noexc64, %.lr.ph.i60, %.noexc63
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 10, ptr %i.dg, align 8, !tbaa !148
  %i.dh = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc69 unwind label %bb.an  ; 32 uses

.noexc69:                                         ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit65
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.dh, ptr %9, align 8, !tbaa !147
  store i64 10, ptr %i.di, align 8, !tbaa !75
  %.pre.i66 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 10 uses
  %i.dj = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !82
  %i.dk = add i32 %.pre.i66, 1
  store i32 %i.dk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dm = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !82
  %i.dn = add i32 %.pre.i66, 2
  store i32 %i.dn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dp = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !82
  %i.dq = add i32 %.pre.i66, 3
  store i32 %i.dq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %i.ds = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !82
  %i.dt = add i32 %.pre.i66, 4
  store i32 %i.dt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dv = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !82
  %i.dw = add i32 %.pre.i66, 5
  store i32 %i.dw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  %i.dy = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !82
  %i.dz = add i32 %.pre.i66, 6
  store i32 %i.dz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.eb = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !82
  %i.ec = add i32 %.pre.i66, 7
  store i32 %i.ec, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.ee = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !82
  %i.ef = add i32 %.pre.i66, 8
  store i32 %i.ef, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.eh = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.eh, ptr %i.eg, align 4, !tbaa !82
  %i.ei = add i32 %.pre.i66, 9
  store i32 %i.ei, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dh, i64 36
  %i.ek = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.ek, ptr %i.ej, align 4, !tbaa !82
  %i.el = add i32 %.pre.i66, 10                   ; 5 uses
  store i32 %i.el, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.em = load i64, ptr %i.cs, align 8, !tbaa !141, !noalias !433 ; 5 uses
  %.idx.i.i = shl nsw i64 %i.em, 2
  %i.en = getelementptr inbounds i8, ptr %8, i64 %.idx.i.i ; 8 uses
  %.not = icmp eq i64 %i.em, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.noexc69
  %.pre.i.i = load i32, ptr %0, align 4, !tbaa !82
  br label %.lr.ph.i.i70

.lr.ph.i.i70:                                     ; preds = %.lr.ph.i.i70, %.lr.ph.preheader.i.i
  %.sroa.05.022.i.i = phi ptr [ %i.eo, %.lr.ph.i.i70 ], [ %8, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.3.021.i.i = phi i64 [ %i.ep, %.lr.ph.i.i70 ], [ 10, %.lr.ph.preheader.i.i ]
  store i32 %.pre.i.i, ptr %.sroa.05.022.i.i, align 4, !tbaa !82
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.05.022.i.i, i64 4 ; 3 uses
  %i.ep = add nsw i64 %.sroa.3.021.i.i, -1        ; 3 uses
  %i.eq = icmp ne i64 %i.ep, 0                    ; 2 uses
  %i.er = icmp ne ptr %i.eo, %i.en                ; 2 uses
  %or.cond.i.i = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i70, label %.critedge.i.i, !llvm.loop !404

.critedge.i.i:                                    ; preds = %.lr.ph.i.i70
  br i1 %i.eq, label %.critedge.i.i.thread, label %bb.u

bb.u:                                             ; preds = %.critedge.i.i
  %i.es = ptrtoint ptr %i.en to i64
  %i.et = ptrtoint ptr %i.eo to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = ashr exact i64 %i.eu, 2                 ; 8 uses
  br i1 %i.er, label %.lr.ph.i.preheader.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.u
  %i.ew = sub nsw i64 0, %i.ev
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.ew ; 3 uses
  %min.iters.check330 = icmp ult i64 %i.ev, 8
  br i1 %min.iters.check330, label %.lr.ph.i.i.i.i.preheader, label %vector.ph331

vector.ph331:                                     ; preds = %.lr.ph.i.preheader.i.i.i
  %n.vec332 = and i64 %i.ev, -8                   ; 3 uses
  %i.ey = and i64 %i.ev, 7
  %i.ez = shl nsw i64 %n.vec332, 2
  %i.fa = getelementptr i8, ptr %i.ex, i64 %i.ez
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph331
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next336, %vector.body333 ] ; 2 uses
  %i.fb = shl i64 %index334, 2
  %next.gep335 = getelementptr i8, ptr %i.ex, i64 %i.fb ; 2 uses
  %i.fc = getelementptr i8, ptr %next.gep335, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep335, align 4, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.fc, align 4, !tbaa !82
  %index.next336 = add nuw i64 %index334, 8       ; 2 uses
  %i.fd = icmp eq i64 %index.next336, %n.vec332
  br i1 %i.fd, label %middle.block337, label %vector.body333, !llvm.loop !405

middle.block337:                                  ; preds = %vector.body333
  %cmp.n338 = icmp eq i64 %i.ev, %n.vec332
  br i1 %cmp.n338, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.preheader.i.i.i, %middle.block337
  %.05.i.i.i.i.ph = phi i64 [ %i.ev, %.lr.ph.i.preheader.i.i.i ], [ %i.ey, %middle.block337 ]
  %storemerge4.i.i.i.i.ph = phi ptr [ %i.ex, %.lr.ph.i.preheader.i.i.i ], [ %i.fa, %middle.block337 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i64 [ %i.fe, %.lr.ph.i.i.i.i ], [ %.05.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i ], [ %storemerge4.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.fe = add i64 %.05.i.i.i.i, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i, align 4, !tbaa !82
  %i.ff = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !406

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block337
  %i.fg = trunc i64 %i.ev to i32
  %i.fh = sub i32 %i.el, %i.fg
  store i32 %i.fh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, %bb.u
  %i.fi = sub i64 %i.em, %i.ev
  br label %bb.w

.critedge.i.i.thread:                             ; preds = %.noexc69, %.critedge.i.i
  %.sroa.3.0.lcssa.i.i195 = phi i64 [ %i.ep, %.critedge.i.i ], [ 10, %.noexc69 ] ; 8 uses
  %i.fj = sub i64 10, %i.em
  %.not.i.i2.i.i = icmp ugt i64 %.sroa.3.0.lcssa.i.i195, %i.fj
  br i1 %.not.i.i2.i.i, label %bb.v, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %min.iters.check342 = icmp ult i64 %.sroa.3.0.lcssa.i.i195, 8
  br i1 %min.iters.check342, label %.lr.ph.i.i.i.i.i.i.i.i.preheader406, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 4
  %bound0 = icmp ugt ptr %i.fk, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1 = icmp ult ptr %0, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader406, label %vector.ph343

vector.ph343:                                     ; preds = %vector.memcheck
  %n.vec344 = and i64 %.sroa.3.0.lcssa.i.i195, -4 ; 3 uses
  %i.fl = and i64 %.sroa.3.0.lcssa.i.i195, 3
  %i.fm = shl i64 %n.vec344, 2
  %i.fn = getelementptr i8, ptr %i.en, i64 %i.fm
end_hunk_1
begin_hunk_2_@_Z14test_insert_ndI8value_ndLm10EEvRKT_:bb.a

.noexc88.1:                                       ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.1

_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.1: ; preds = %.noexc88.1, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.v = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.e unwind label %bb.o       ; 5 uses

bb.e:                                             ; preds = %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.1
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 101, ptr %i.w, align 4, !tbaa !41
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !106
  store ptr %i.c, ptr %i.v, align 8, !tbaa !105
  store ptr %i.v, ptr %i.d, align 8, !tbaa !106
  store ptr %i.v, ptr %i.x, align 8, !tbaa !105
  %i.z = load i64, ptr %5, align 8, !tbaa !114
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %5, align 8, !tbaa !114
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 2, ptr %i.ab, align 8, !tbaa !41
  store i64 3, ptr %i.a, align 8, !tbaa !120
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 102, ptr %i.ac, align 8, !tbaa !41
  store i64 3, ptr %i.b, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 102, ptr %6, align 4, !tbaa !77
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !124 ; 4 uses
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !125
  %.not.i87.2 = icmp eq i64 %i.ad, %i.ae
  br i1 %.not.i87.2, label %bb.g, label %bb.f, !prof !42

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %4, align 8, !tbaa !126, !nonnull !112, !noundef !112
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ad
  store i32 102, ptr %i.ag, align 4, !tbaa !41
  %i.ah = add i64 %i.ad, 1
  store i64 %i.ah, ptr %i.e, align 8, !tbaa !124
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.2

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.ai = load ptr, ptr %4, align 8, !tbaa !126
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ad
  invoke void @_ZN5boost9container6vectorI8value_ndvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.53") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.aj, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %6)
          to label %.noexc88.2 unwind label %bb.n

.noexc88.2:                                       ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.2

_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.2: ; preds = %.noexc88.2, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ak = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.h unwind label %bb.o       ; 5 uses

bb.h:                                             ; preds = %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i32 102, ptr %i.al, align 4, !tbaa !41
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !106
  store ptr %i.c, ptr %i.ak, align 8, !tbaa !105
  store ptr %i.ak, ptr %i.d, align 8, !tbaa !106
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !105
  %i.ao = load i64, ptr %5, align 8, !tbaa !114
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %5, align 8, !tbaa !114
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 3, ptr %i.aq, align 4, !tbaa !41
  store i64 4, ptr %i.a, align 8, !tbaa !120
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 103, ptr %i.ar, align 4, !tbaa !41
  store i64 4, ptr %i.b, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 103, ptr %6, align 4, !tbaa !77
  %i.as = load i64, ptr %i.e, align 8, !tbaa !124 ; 4 uses
  %i.at = load i64, ptr %i.f, align 8, !tbaa !125
  %.not.i87.3 = icmp eq i64 %i.as, %i.at
  br i1 %.not.i87.3, label %bb.j, label %bb.i, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %4, align 8, !tbaa !126, !nonnull !112, !noundef !112
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.as
  store i32 103, ptr %i.av, align 4, !tbaa !41
  %i.aw = add i64 %i.as, 1
  store i64 %i.aw, ptr %i.e, align 8, !tbaa !124
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.3

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.ax = load ptr, ptr %4, align 8, !tbaa !126
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.as
  invoke void @_ZN5boost9container6vectorI8value_ndvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.53") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.ay, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %6)
          to label %.noexc88.3 unwind label %bb.n

.noexc88.3:                                       ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.3

_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.3: ; preds = %.noexc88.3, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.az = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.k unwind label %bb.o       ; 5 uses

bb.k:                                             ; preds = %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i32 103, ptr %i.ba, align 4, !tbaa !41
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !106
  store ptr %i.c, ptr %i.az, align 8, !tbaa !105
  store ptr %i.az, ptr %i.d, align 8, !tbaa !106
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !105
  %i.bd = load i64, ptr %5, align 8, !tbaa !114
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %5, align 8, !tbaa !114
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 4, ptr %i.bf, align 8, !tbaa !41
  store i64 5, ptr %i.a, align 8, !tbaa !120
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 104, ptr %i.bg, align 8, !tbaa !41
  store i64 5, ptr %i.b, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 104, ptr %6, align 4, !tbaa !77
  %i.bh = load i64, ptr %i.e, align 8, !tbaa !124 ; 4 uses
  %i.bi = load i64, ptr %i.f, align 8, !tbaa !125
  %.not.i87.4 = icmp eq i64 %i.bh, %i.bi
  br i1 %.not.i87.4, label %bb.m, label %bb.l, !prof !42

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %4, align 8, !tbaa !126, !nonnull !112, !noundef !112
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bh
  store i32 104, ptr %i.bk, align 4, !tbaa !41
  %i.bl = add i64 %i.bh, 1
  store i64 %i.bl, ptr %i.e, align 8, !tbaa !124
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.4

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.bm = load ptr, ptr %4, align 8, !tbaa !126
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bh
  invoke void @_ZN5boost9container6vectorI8value_ndvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.53") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.bn, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %6)
          to label %.noexc88.4 unwind label %bb.n

.noexc88.4:                                       ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.4

_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.4: ; preds = %.noexc88.4, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bo = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %.preheader146 unwind label %bb.o ; 5 uses

.preheader146:                                    ; preds = %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i32 104, ptr %i.bp, align 4, !tbaa !41
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !106
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !105
  store ptr %i.bo, ptr %i.d, align 8, !tbaa !106
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !105
  %i.bs = load i64, ptr %5, align 8, !tbaa !114
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %5, align 8, !tbaa !114
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.g, %bb.d, %bb.a
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.aw

bb.o:                                             ; preds = %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.4, %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.3, %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.2, %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.1, %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.preheader143:                                    ; preds = %._crit_edge151, %._crit_edge151.thread
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 28
  br label %bb.ab

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread: ; preds = %._crit_edge151, %.preheader146
  %indvars.iv = phi i64 [ 5, %.preheader146 ], [ %indvars.iv.next, %._crit_edge151 ] ; 2 uses
  %.065152 = phi i64 [ 0, %.preheader146 ], [ %i.di, %._crit_edge151 ] ; 7 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false), !tbaa !41
  %.idx138 = shl nuw nsw i64 %.065152, 2          ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 %.idx138 ; 2 uses
  %.not.i.i.i91 = icmp eq i64 %.065152, 5         ; 2 uses
  br i1 %.not.i.i.i91, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread
  %i.ch = load i32, ptr %0, align 4, !tbaa !41, !noalias !717
  store i32 %i.ch, ptr %i.bv, align 4, !tbaa !41, !noalias !717
  store i64 6, ptr %i.bu, align 8, !tbaa !120, !noalias !717
  br label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit

bb.q:                                             ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread
  %gepdiff139 = sub nsw i64 20, %.idx138
  %i.ci = ashr exact i64 %gepdiff139, 2           ; 2 uses
  %i.cj = load i32, ptr %i.bw, align 8, !tbaa !41, !noalias !717
  store i32 %i.cj, ptr %i.bv, align 4, !tbaa !41, !noalias !717
  store i64 6, ptr %i.bu, align 8, !tbaa !120, !noalias !717
  %i.ck = add nsw i64 %i.ci, -1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container15move_backward_nIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %bb.r, !prof !42

bb.r:                                             ; preds = %bb.q
  %i.cl = sub nsw i64 1, %i.ci                    ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cl
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.cl
  %i.co = shl nsw i64 %i.ck, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cm, ptr nonnull align 4 %i.cn, i64 %i.co, i1 false), !noalias !717
  br label %_ZN5boost9container15move_backward_nIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i

_ZN5boost9container15move_backward_nIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i: ; preds = %bb.r, %bb.q
  %i.cp = load i32, ptr %0, align 4, !tbaa !41, !noalias !717
  store i32 %i.cp, ptr %i.cg, align 4, !tbaa !41, !noalias !717
  br label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit

_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit: ; preds = %_ZN5boost9container15move_backward_nIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, %bb.p
  %i.cq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 384, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.s unwind label %bb.t       ; 0 uses

bb.s:                                             ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit
  %i.cr = load i64, ptr %i.bu, align 8, !tbaa !120
  %i.cs = icmp eq i64 %i.cr, 6
  %i.ct = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.1, i32 noundef 385, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.cs)
          to label %.preheader145 unwind label %bb.u ; 0 uses

.preheader145:                                    ; preds = %bb.s
  %.not = icmp eq i64 %.065152, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %.preheader145
  %i.cu = load i32, ptr %i.cg, align 4, !tbaa !77
  %i.cv = load i32, ptr %0, align 4, !tbaa !77
  %i.cw = icmp eq i32 %i.cu, %i.cv
  %i.cx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.1, i32 noundef 388, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.cw)
          to label %.preheader144 unwind label %bb.u ; 0 uses

.preheader144:                                    ; preds = %._crit_edge
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.065152
  br i1 %.not.i.i.i91, label %._crit_edge151.thread, label %.lr.ph150

._crit_edge151.thread:                            ; preds = %.preheader144
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.preheader143

.lr.ph150:                                        ; preds = %.preheader144
  %i.cy = trunc nuw nsw i64 %.065152 to i32
  br label %bb.x

bb.t:                                             ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.u:                                             ; preds = %._crit_edge, %bb.s
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.lr.ph:                                           ; preds = %.preheader145, %bb.v
  %.064148 = phi i64 [ %i.dg, %bb.v ], [ 0, %.preheader145 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.064148
  %i.dc = trunc nuw nsw i64 %.064148 to i32
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !77
  %i.de = icmp eq i32 %i.dd, %i.dc
  %i.df = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 387, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.de)
          to label %bb.v unwind label %bb.w       ; 0 uses

bb.v:                                             ; preds = %.lr.ph
  %i.dg = add nuw nsw i64 %.064148, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.dg, %.065152
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !699

bb.w:                                             ; preds = %.lr.ph
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

._crit_edge151:                                   ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.di = add nuw nsw i64 %.065152, 1             ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond169.not = icmp eq i64 %i.di, 6
  br i1 %exitcond169.not, label %.preheader143, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread, !llvm.loop !700

bb.x:                                             ; preds = %.lr.ph150, %bb.y
  %.063149 = phi i64 [ 0, %.lr.ph150 ], [ %i.dp, %bb.y ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.063149
  %i.dj = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.dk = trunc nuw nsw i64 %.063149 to i32
  %i.dl = add nuw nsw i32 %i.dk, %i.cy
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !77
  %i.dn = icmp eq i32 %i.dm, %i.dl
  %i.do = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.1, i32 noundef 390, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.dn)
          to label %bb.y unwind label %bb.z       ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.dp = add nuw nsw i64 %.063149, 1             ; 2 uses
  %exitcond168.not = icmp eq i64 %i.dp, %umax
  br i1 %exitcond168.not, label %._crit_edge151, label %bb.x, !llvm.loop !701

bb.z:                                             ; preds = %bb.x
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %bb.t, %bb.u, %bb.w, %bb.z
  %.pn76.pn = phi { ptr, i32 } [ %i.cz, %bb.t ], [ %i.dh, %bb.w ], [ %i.dq, %bb.z ], [ %i.da, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aw

.loopexit214:                                     ; preds = %._crit_edge162, %._crit_edge162.thread
  invoke void @_Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.ar unwind label %bb.av

bb.ab:                                            ; preds = %.preheader143, %._crit_edge162
  %indvars.iv172 = phi i64 [ 5, %.preheader143 ], [ %indvars.iv.next173, %._crit_edge162 ] ; 2 uses
  %.062163 = phi i64 [ 0, %.preheader143 ], [ %i.hg, %._crit_edge162 ] ; 9 uses
  %i.dr = shl i64 %.062163, 2
  %i.ds = sub i64 16, %i.dr                       ; 2 uses
  %i.dt = lshr exact i64 %i.ds, 2
  %i.du = add nuw nsw i64 %i.dt, 1
  %umax174 = call i64 @llvm.umax.i64(i64 %indvars.iv172, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 5, ptr %i.bz, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false), !tbaa !41
  %.idx135 = shl nuw nsw i64 %.062163, 2          ; 5 uses
  %.ptr209 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx135 ; 6 uses
  %i.dv = icmp eq i64 %.062163, 5                 ; 2 uses
  br i1 %i.dv, label %.lr.ph.i.i.i.i.i.i, label %bb.ac

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ab
  %.pre.i.i.i.i.i.i = load i32, ptr %0, align 4, !tbaa !41, !noalias !718 ; 3 uses
  store i32 %.pre.i.i.i.i.i.i, ptr %i.ca, align 4, !tbaa !41, !noalias !718
  store i32 %.pre.i.i.i.i.i.i, ptr %i.ce, align 8, !tbaa !41, !noalias !718
  store i32 %.pre.i.i.i.i.i.i, ptr %i.cf, align 4, !tbaa !41, !noalias !718
  br label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %gepdiff = sub nsw i64 20, %.idx135
  %i.dw = ashr exact i64 %gepdiff, 2              ; 6 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.dw, 3
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i40.preheader.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i

.lr.ph.i.i10.i.i.i.i:                             ; preds = %bb.ac
  %i.dx = load <2 x i32>, ptr %i.cb, align 8, !tbaa !41, !noalias !718
  store <2 x i32> %i.dx, ptr %i.ca, align 4, !tbaa !41, !noalias !718
  %i.dy = load i32, ptr %i.cc, align 8, !tbaa !41, !noalias !718
  store i32 %i.dy, ptr %i.cd, align 4, !tbaa !41, !noalias !718
  %.not.i37.i.i.i.i.i = icmp eq i64 %.062163, 2
  br i1 %.not.i37.i.i.i.i.i, label %.lr.ph.i38.i.i.i.i.i, label %bb.ad, !prof !42

bb.ad:                                            ; preds = %.lr.ph.i.i10.i.i.i.i
  %gepdiff136 = sub nsw i64 8, %.idx135           ; 2 uses
  %i.dz = ashr exact i64 %gepdiff136, 2
  %i.ea = sub nsw i64 0, %i.dz
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.ea
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eb, ptr nonnull align 4 %.ptr209, i64 %gepdiff136, i1 false), !noalias !718
  %.pre.i.i.i.pre = load i64, ptr %i.bz, align 8, !tbaa !118, !noalias !718
  %i.ec = icmp eq i64 %.pre.i.i.i.pre, 5
  br label %.lr.ph.i38.i.i.i.i.i

.lr.ph.i38.i.i.i.i.i:                             ; preds = %bb.ad, %.lr.ph.i.i10.i.i.i.i
  %.pre.i.i.i = phi i1 [ %i.ec, %bb.ad ], [ true, %.lr.ph.i.i10.i.i.i.i ]
  %.pre.i.i12.i.i.i.i = load i32, ptr %0, align 4, !tbaa !41, !noalias !718 ; 3 uses
  store i32 %.pre.i.i12.i.i.i.i, ptr %.ptr209, align 4, !tbaa !41, !noalias !718
  %i.ed = getelementptr inbounds nuw i8, ptr %.ptr209, i64 4
  store i32 %.pre.i.i12.i.i.i.i, ptr %i.ed, align 4, !tbaa !41, !noalias !718
  %i.ee = getelementptr inbounds nuw i8, ptr %.ptr209, i64 8
  store i32 %.pre.i.i12.i.i.i.i, ptr %i.ee, align 4, !tbaa !41, !noalias !718
  br label %.loopexit

.lr.ph.i40.preheader.i.i.i.i.i:                   ; preds = %bb.ac
  %i.ef = getelementptr inbounds nuw i8, ptr %.ptr209, i64 12 ; 2 uses
  %xtraiter = and i64 %i.du, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol

.lr.ph.i40.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i40.preheader.i.i.i.i.i, %.lr.ph.i40.i.i.i.i.i.prol
  %.018.i.i.i.i.i.i.idx.prol = phi i64 [ %.018.i.i.i.i.i.i.add.prol, %.lr.ph.i40.i.i.i.i.i.prol ], [ %.idx135, %.lr.ph.i40.preheader.i.i.i.i.i ] ; 2 uses
  %.01517.i.i.i.i.i.i.prol = phi ptr [ %i.eh, %.lr.ph.i40.i.i.i.i.i.prol ], [ %i.ef, %.lr.ph.i40.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i40.i.i.i.i.i.prol ], [ 0, %.lr.ph.i40.preheader.i.i.i.i.i ]
  %.018.i.i.i.i.i.i.ptr.prol = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx.prol
  %i.eg = load i32, ptr %.018.i.i.i.i.i.i.ptr.prol, align 4, !tbaa !41, !noalias !718
  store i32 %i.eg, ptr %.01517.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !718
  %.018.i.i.i.i.i.i.add.prol = add nuw nsw i64 %.018.i.i.i.i.i.i.idx.prol, 4 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol, !llvm.loop !706

.lr.ph.i40.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i40.i.i.i.i.i.prol, %.lr.ph.i40.preheader.i.i.i.i.i
  %.018.i.i.i.i.i.i.idx.unr = phi i64 [ %.idx135, %.lr.ph.i40.preheader.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.add.prol, %.lr.ph.i40.i.i.i.i.i.prol ]
  %.01517.i.i.i.i.i.i.unr = phi ptr [ %i.ef, %.lr.ph.i40.preheader.i.i.i.i.i ], [ %i.eh, %.lr.ph.i40.i.i.i.i.i.prol ]
  %i.ei = icmp ult i64 %i.ds, 28
  br i1 %i.ei, label %.lr.ph.i43.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i

.lr.ph.i40.i.i.i.i.i:                             ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit, %.lr.ph.i40.i.i.i.i.i
  %.018.i.i.i.i.i.i.idx = phi i64 [ %.018.i.i.i.i.i.i.add.7, %.lr.ph.i40.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.idx.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01517.i.i.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i40.i.i.i.i.i ], [ %.01517.i.i.i.i.i.i.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.018.i.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %i.ej = load i32, ptr %.018.i.i.i.i.i.i.ptr, align 4, !tbaa !41, !noalias !718
  store i32 %i.ej, ptr %.01517.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !718
  %i.ek = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 4
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.em = load i32, ptr %.018.i.i.i.i.i.i.ptr.1, align 4, !tbaa !41, !noalias !718
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !41, !noalias !718
  %i.en = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ep = load i32, ptr %.018.i.i.i.i.i.i.ptr.2, align 4, !tbaa !41, !noalias !718
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !41, !noalias !718
  %i.eq = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 12
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.es = load i32, ptr %.018.i.i.i.i.i.i.ptr.3, align 4, !tbaa !41, !noalias !718
  store i32 %i.es, ptr %i.eq, align 4, !tbaa !41, !noalias !718
  %i.et = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ev = load i32, ptr %.018.i.i.i.i.i.i.ptr.4, align 4, !tbaa !41, !noalias !718
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !41, !noalias !718
  %i.ew = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 20
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  %i.ey = load i32, ptr %.018.i.i.i.i.i.i.ptr.5, align 4, !tbaa !41, !noalias !718
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !41, !noalias !718
  %i.ez = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 24
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fb = load i32, ptr %.018.i.i.i.i.i.i.ptr.6, align 4, !tbaa !41, !noalias !718
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !41, !noalias !718
  %i.fc = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 28
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.fd, i64 28
  %i.fe = load i32, ptr %.018.i.i.i.i.i.i.ptr.7, align 4, !tbaa !41, !noalias !718
  store i32 %i.fe, ptr %i.fc, align 4, !tbaa !41, !noalias !718
  %.018.i.i.i.i.i.i.add.7 = add nuw nsw i64 %.018.i.i.i.i.i.i.idx, 32
  %i.ff = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 32
  br label %.lr.ph.i40.i.i.i.i.i, !llvm.loop !13

.lr.ph.i43.i.i.i.i.i:                             ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit
  %.pre.i44.i.i.i.i.i = load i32, ptr %0, align 4, !tbaa !41, !noalias !718 ; 18 uses
  %i.fg = add nsw i64 %i.dw, -1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i43.i.i.i.i.i
  %.07.i45.i.i.i.i.i.prol = phi i64 [ %i.dw, %.lr.ph.i43.i.i.i.i.i ], [ %i.fh, %bb.ae ]
  %.046.i46.i.i.i.i.i.prol = phi ptr [ %.ptr209, %.lr.ph.i43.i.i.i.i.i ], [ %i.fi, %bb.ae ] ; 2 uses
  %prol.iter217 = phi i64 [ 0, %.lr.ph.i43.i.i.i.i.i ], [ %prol.iter217.next, %bb.ae ]
  %i.fh = add i64 %.07.i45.i.i.i.i.i.prol, -1     ; 2 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %.046.i46.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !718
  %i.fi = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter217.next = add i64 %prol.iter217, 1   ; 2 uses
  %prol.iter217.cmp.not = icmp eq i64 %prol.iter217.next, %i.dw
  br i1 %prol.iter217.cmp.not, label %.prol.loopexit, label %bb.ae, !llvm.loop !707

.prol.loopexit:                                   ; preds = %bb.ae
  %i.fj = icmp ult i64 %i.fg, 7
  br i1 %i.fj, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i, label %.lr.ph.i43.i.i.i.i.i.new

.lr.ph.i43.i.i.i.i.i.new:                         ; preds = %.prol.loopexit, %.lr.ph.i43.i.i.i.i.i.new
  %.07.i45.i.i.i.i.i = phi i64 [ %i.fr, %.lr.ph.i43.i.i.i.i.i.new ], [ %i.fh, %.prol.loopexit ]
  %.046.i46.i.i.i.i.i = phi ptr [ %i.fs, %.lr.ph.i43.i.i.i.i.i.new ], [ %i.fi, %.prol.loopexit ] ; 9 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %.046.i46.i.i.i.i.i, align 4, !tbaa !41, !noalias !718
  %i.fk = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 4
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fk, align 4, !tbaa !41, !noalias !718
  %i.fl = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 8
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fl, align 4, !tbaa !41, !noalias !718
  %i.fm = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 12
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fm, align 4, !tbaa !41, !noalias !718
  %i.fn = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 16
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fn, align 4, !tbaa !41, !noalias !718
  %i.fo = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 20
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fo, align 4, !tbaa !41, !noalias !718
  %i.fp = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 24
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fp, align 4, !tbaa !41, !noalias !718
  %i.fq = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 28
  %i.fr = add i64 %.07.i45.i.i.i.i.i, -8          ; 2 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fq, align 4, !tbaa !41, !noalias !718
  %i.fs = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 32
  %.not.i47.i.i.i.i.i.7 = icmp eq i64 %i.fr, 0
  br i1 %.not.i47.i.i.i.i.i.7, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i, label %.lr.ph.i43.i.i.i.i.i.new, !llvm.loop !708

_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i: ; preds = %.lr.ph.i43.i.i.i.i.i.new, %.prol.loopexit
  %i.ft = sub nuw nsw i64 3, %i.dw                ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.prol = phi i64 [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.ft, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i ]
  %.01416.i.i.i.i.i.i.i.prol = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.ca, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i ] ; 2 uses
  %prol.iter220 = phi i64 [ %prol.iter220.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i ]
  %i.fu = add nsw i64 %.017.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %.01416.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !718
  %i.fv = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter220.next = add i64 %prol.iter220, 1   ; 2 uses
  %prol.iter220.cmp.not = icmp eq i64 %prol.iter220.next, %i.ft
  br i1 %prol.iter220.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !709

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol
  %i.fw = icmp ult i64 %i.dw, 3
  br i1 %i.fw, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i = phi i64 [ %i.ge, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i.i.i = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %.01416.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !718
  %i.fx = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 4
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fx, align 4, !tbaa !41, !noalias !718
  %i.fy = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 8
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fy, align 4, !tbaa !41, !noalias !718
  %i.fz = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 12
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fz, align 4, !tbaa !41, !noalias !718
  %i.ga = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 16
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.ga, align 4, !tbaa !41, !noalias !718
  %i.gb = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 20
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.gb, align 4, !tbaa !41, !noalias !718
  %i.gc = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 24
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.gc, align 4, !tbaa !41, !noalias !718
  %i.gd = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 28
  %i.ge = add nsw i64 %.017.i.i.i.i.i.i.i, -8     ; 2 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.gd, align 4, !tbaa !41, !noalias !718
  %i.gf = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.ge, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2
end_hunk_2
begin_hunk_3_@_Z14test_insert_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_:bb.a
  store i32 %i.cj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !141 ; 3 uses
  %.not.i84.3 = icmp eq i64 %i.cl, 10
  br i1 %.not.i84.3, label %bb.d, label %bb.t, !prof !42

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cl
  store i32 103, ptr %i.cm, align 4, !tbaa !82
  %i.cn = add i32 %i.cb, 3
  %i.co = add nuw nsw i64 %i.cl, 1
  store i64 %i.co, ptr %i.b, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 103, ptr %6, align 4, !tbaa !82
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cp = load i64, ptr %i.e, align 8, !tbaa !145 ; 4 uses
  %i.cq = load i64, ptr %i.f, align 8, !tbaa !146
  %.not.i87.3 = icmp eq i64 %i.cp, %i.cq
  br i1 %.not.i87.3, label %bb.v, label %bb.u, !prof !42

bb.u:                                             ; preds = %bb.t
  %i.cr = load ptr, ptr %4, align 8, !tbaa !147, !nonnull !112, !noundef !112
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cp
  store i32 103, ptr %i.cs, align 4, !tbaa !82
  %i.ct = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cu = add i32 %i.ct, 1                        ; 2 uses
  store i32 %i.cu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cv = add i64 %i.cp, 1
  store i64 %i.cv, ptr %i.e, align 8, !tbaa !145
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.3

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.cw = load ptr, ptr %4, align 8, !tbaa !147
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cp
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.59") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.cx, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %6)
          to label %.noexc88.3 unwind label %bb.ad

.noexc88.3:                                       ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.pre257.3 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.3

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.3: ; preds = %.noexc88.3, %bb.u
  %i.cy = phi i32 [ %.pre257.3, %.noexc88.3 ], [ %i.cu, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store i32 %i.cy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cz = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.w unwind label %bb.ae      ; 5 uses

bb.w:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.3
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i32 103, ptr %i.da, align 4, !tbaa !82
  %i.db = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 3 uses
  %i.dc = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !106
  store ptr %i.c, ptr %i.cz, align 8, !tbaa !105
  store ptr %i.cz, ptr %i.d, align 8, !tbaa !106
  store ptr %i.cz, ptr %i.dc, align 8, !tbaa !105
  %i.de = load i64, ptr %5, align 8, !tbaa !114
  %i.df = add i64 %i.de, 1
  store i64 %i.df, ptr %5, align 8, !tbaa !114
  %i.dg = add i32 %i.db, 1
  store i32 %i.dg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !141 ; 3 uses
  %.not.i.4 = icmp eq i64 %i.dh, 10
  br i1 %.not.i.4, label %bb.b, label %bb.x, !prof !42

bb.x:                                             ; preds = %bb.w
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dh
  store i32 4, ptr %i.di, align 4, !tbaa !82
  %i.dj = add i32 %i.db, 2
  %i.dk = add nuw nsw i64 %i.dh, 1
  store i64 %i.dk, ptr %i.a, align 8, !tbaa !141
  store i32 %i.dj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !141 ; 3 uses
  %.not.i84.4 = icmp eq i64 %i.dl, 10
  br i1 %.not.i84.4, label %bb.d, label %bb.y, !prof !42

bb.y:                                             ; preds = %bb.x
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dl
  store i32 104, ptr %i.dm, align 4, !tbaa !82
  %i.dn = add i32 %i.db, 3
  %i.do = add nuw nsw i64 %i.dl, 1
  store i64 %i.do, ptr %i.b, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 104, ptr %6, align 4, !tbaa !82
  store i32 %i.dn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dp = load i64, ptr %i.e, align 8, !tbaa !145 ; 4 uses
  %i.dq = load i64, ptr %i.f, align 8, !tbaa !146
  %.not.i87.4 = icmp eq i64 %i.dp, %i.dq
  br i1 %.not.i87.4, label %bb.aa, label %bb.z, !prof !42

bb.z:                                             ; preds = %bb.y
  %i.dr = load ptr, ptr %4, align 8, !tbaa !147, !nonnull !112, !noundef !112
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dp
  store i32 104, ptr %i.ds, align 4, !tbaa !82
  %i.dt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.du = add i32 %i.dt, 1                        ; 2 uses
  store i32 %i.du, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dv = add i64 %i.dp, 1
  store i64 %i.dv, ptr %i.e, align 8, !tbaa !145
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.4

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.dw = load ptr, ptr %4, align 8, !tbaa !147
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dp
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.59") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.dx, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %6)
          to label %.noexc88.4 unwind label %bb.ad

.noexc88.4:                                       ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.pre257.4 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.4

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.4: ; preds = %.noexc88.4, %bb.z
  %i.dy = phi i32 [ %.pre257.4, %.noexc88.4 ], [ %i.du, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store i32 %i.dy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dz = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %.preheader209 unwind label %bb.ae ; 5 uses

.preheader209:                                    ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store i32 104, ptr %i.ea, align 4, !tbaa !82
  %i.eb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !106
  store ptr %i.c, ptr %i.dz, align 8, !tbaa !105
  store ptr %i.dz, ptr %i.d, align 8, !tbaa !106
  store ptr %i.dz, ptr %i.ec, align 8, !tbaa !105
  %i.ee = load i64, ptr %5, align 8, !tbaa !114
  %i.ef = add i64 %i.ee, 1
  store i64 %i.ef, ptr %5, align 8, !tbaa !114
  store i32 %i.eb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 40
  br label %bb.af

bb.ab:                                            ; preds = %bb.b
  %i.eh = landingpad { ptr, i32 }
          cleanup
  %i.ei = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ej = add i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.bs

bb.ac:                                            ; preds = %bb.d
  %i.ek = landingpad { ptr, i32 }
          cleanup
  %i.el = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.em = add i32 %i.el, -1
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.bs

bb.ad:                                            ; preds = %bb.aa, %bb.v, %bb.q, %bb.l, %bb.g
  %i.en = landingpad { ptr, i32 }
          cleanup
  %i.eo = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ep = add i32 %i.eo, -1
  store i32 %i.ep, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.bs

bb.ae:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.4, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.3, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.2, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.1, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.es = add i32 %i.er, -1
  store i32 %i.es, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.bs

.preheader206:                                    ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 40
  br label %bb.av

bb.af:                                            ; preds = %.preheader209, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  %indvars.iv = phi i64 [ 5, %.preheader209 ], [ %indvars.iv.next, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 2 uses
  %.065226 = phi i64 [ 0, %.preheader209 ], [ %i.hr, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 9 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !141 ; 7 uses
  %i.ev = icmp ugt i64 %i.eu, 10
  br i1 %i.ev, label %bb.ag, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc90 unwind label %bb.al

.noexc90:                                         ; preds = %bb.ag
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.af
  %.not17.i.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not17.i.i.i, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit.thread, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ew = shl nuw nsw i64 %i.eu, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %2, i64 %i.ew, i1 false), !tbaa !82
  %i.ex = trunc nuw nsw i64 %i.eu to i32
  %i.ey = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.ex
  store i32 %i.ey, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not.i.i = icmp eq i64 %i.eu, 10
  br i1 %.not.i.i, label %bb.aj, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit.thread, !prof !780

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit.thread: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i, %.lr.ph.i.preheader.i.i
  %.idx199.pre-phi = phi i64 [ %i.ew, %.lr.ph.i.preheader.i.i ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i ] ; 2 uses
  %.idx200 = shl nuw nsw i64 %.065226, 2          ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 %.idx200 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 %.idx199.pre-phi ; 5 uses
  %.not.i.i.i91 = icmp samesign eq i64 %i.eu, %.065226
  br i1 %.not.i.i.i91, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit.thread
  %i.fb = load i32, ptr %0, align 4, !tbaa !82, !noalias !781
  store i32 %i.fb, ptr %i.fa, align 4, !tbaa !82, !noalias !781
  %i.fc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !781
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !781
  %i.fe = add nuw nsw i64 %.065226, 1
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEERKS3_.exit

bb.ai:                                            ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit.thread
  %gepdiff201 = sub nsw i64 %.idx199.pre-phi, %.idx200
  %i.ff = ashr exact i64 %gepdiff201, 2           ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.fa, i64 -4 ; 4 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !82, !noalias !781
  store i32 %i.fh, ptr %i.fa, align 4, !tbaa !82, !noalias !781
  store i32 0, ptr %i.fg, align 4, !tbaa !82, !noalias !781
  %i.fi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !781
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !781
  %i.fk = add nuw nsw i64 %i.eu, 1                ; 2 uses
  store i64 %i.fk, ptr %i.eg, align 8, !tbaa !141, !noalias !781
  %i.fl = add nsw i64 %i.ff, -1                   ; 4 uses
  %.not8.i.i.i.i = icmp eq i64 %i.fl, 0
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container15move_backward_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.ai
  %i.fm = add nsw i64 %i.ff, -2
  %xtraiter = and i64 %i.fl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.011.i.i.i.i.prol = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.prol ], [ %i.fa, %.lr.ph.i.i.i.i.preheader ]
  %.0610.i.i.i.i.prol = phi i64 [ %i.fn, %.lr.ph.i.i.i.i.prol ], [ %i.fl, %.lr.ph.i.i.i.i.preheader ]
  %.079.i.i.i.i.prol = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.prol ], [ %i.fg, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.fn = add i64 %.0610.i.i.i.i.prol, -1         ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %.079.i.i.i.i.prol, i64 -4 ; 4 uses
  %i.fp = getelementptr inbounds i8, ptr %.011.i.i.i.i.prol, i64 -4 ; 3 uses
  %i.fq = load i32, ptr %i.fo, align 4, !tbaa !82, !noalias !781
  store i32 %i.fq, ptr %i.fp, align 4, !tbaa !82, !noalias !781
  store i32 0, ptr %i.fo, align 4, !tbaa !82, !noalias !781
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !745

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.011.i.i.i.i.unr = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.preheader ], [ %i.fp, %.lr.ph.i.i.i.i.prol ]
  %.0610.i.i.i.i.unr = phi i64 [ %i.fl, %.lr.ph.i.i.i.i.preheader ], [ %i.fn, %.lr.ph.i.i.i.i.prol ]
  %.079.i.i.i.i.unr = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.preheader ], [ %i.fo, %.lr.ph.i.i.i.i.prol ]
  %i.fr = icmp ult i64 %i.fm, 3
  br i1 %i.fr, label %_ZN5boost9container15move_backward_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.gd, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.0610.i.i.i.i = phi i64 [ %i.gb, %.lr.ph.i.i.i.i ], [ %.0610.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.079.i.i.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.fs = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -4
  %i.fu = load i32, ptr %i.fs, align 4, !tbaa !82, !noalias !781
  store i32 %i.fu, ptr %i.ft, align 4, !tbaa !82, !noalias !781
  store i32 0, ptr %i.fs, align 4, !tbaa !82, !noalias !781
  %i.fv = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -8 ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -8
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !82, !noalias !781
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !82, !noalias !781
  store i32 0, ptr %i.fv, align 4, !tbaa !82, !noalias !781
  %i.fy = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -12 ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -12
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !82, !noalias !781
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !82, !noalias !781
  store i32 0, ptr %i.fy, align 4, !tbaa !82, !noalias !781
  %i.gb = add i64 %.0610.i.i.i.i, -4              ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -16 ; 3 uses
  %i.gd = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -16 ; 2 uses
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !82, !noalias !781
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !82, !noalias !781
  store i32 0, ptr %i.gc, align 4, !tbaa !82, !noalias !781
  %.not.i.i.i.i.3 = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container15move_backward_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !746

_ZN5boost9container15move_backward_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.ai
  %i.gf = load i32, ptr %0, align 4, !tbaa !82, !noalias !781
  store i32 %i.gf, ptr %i.ez, align 4, !tbaa !82, !noalias !781
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEERKS3_.exit

bb.aj:                                            ; preds = %.lr.ph.i.preheader.i.i
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc92 unwind label %bb.am

.noexc92:                                         ; preds = %bb.aj
  unreachable

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEERKS3_.exit: ; preds = %_ZN5boost9container15move_backward_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i, %bb.ah
  %i.gg = phi i64 [ %i.fk, %_ZN5boost9container15move_backward_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i ], [ %i.fe, %bb.ah ] ; 11 uses
  %i.gh = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 384, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.ak unwind label %bb.an     ; 0 uses

bb.ak:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEERKS3_.exit
  %i.gi = icmp eq i64 %i.gg, 6
  %i.gj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.1, i32 noundef 385, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_, i1 noundef zeroext %i.gi)
          to label %.preheader208 unwind label %bb.ao ; 0 uses

.preheader208:                                    ; preds = %bb.ak
  %.not = icmp eq i64 %.065226, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader208
  %.pre258 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.gk = add i32 %.pre258, 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.ap, %.preheader208
  %i.gl = load i32, ptr %i.ez, align 4, !tbaa !82
  %i.gm = load i32, ptr %0, align 4, !tbaa !82
  %i.gn = icmp eq i32 %i.gl, %i.gm
  %i.go = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.1, i32 noundef 388, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_, i1 noundef zeroext %i.gn)
          to label %.preheader207 unwind label %bb.ao ; 0 uses

.preheader207:                                    ; preds = %._crit_edge
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.065226
  %.not240 = icmp eq i64 %.065226, 5
  br i1 %.not240, label %.lr.ph.i.preheader.i, label %.lr.ph224

.lr.ph224:                                        ; preds = %.preheader207
  %i.gp = trunc nuw nsw i64 %.065226 to i32
  %.pre259 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.gq = add i32 %.pre259, 1
  br label %bb.ar

bb.al:                                            ; preds = %bb.ag
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit102

bb.am:                                            ; preds = %bb.aj
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i95

bb.an:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEERKS3_.exit
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i95

bb.ao:                                            ; preds = %._crit_edge, %bb.ak
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i95

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ap
  %i.gv = phi i32 [ %i.hb, %bb.ap ], [ %i.gk, %.lr.ph.preheader ]
  %.064222 = phi i64 [ %i.hd, %bb.ap ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.064222
  %i.gx = trunc nuw nsw i64 %.064222 to i32
  store i32 %i.gv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.gy = load i32, ptr %i.gw, align 4, !tbaa !82
  %i.gz = icmp eq i32 %i.gy, %i.gx
  %i.ha = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 387, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_, i1 noundef zeroext %i.gz)
          to label %bb.ap unwind label %bb.aq     ; 0 uses

bb.ap:                                            ; preds = %.lr.ph
  %i.hb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.hc = add i32 %i.hb, -1
  store i32 %i.hc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.hd = add nuw nsw i64 %.064222, 1             ; 2 uses
  %exitcond247.not = icmp eq i64 %i.hd, %.065226
  br i1 %exitcond247.not, label %._crit_edge, label %.lr.ph, !llvm.loop !747

bb.aq:                                            ; preds = %.lr.ph
  %i.he = landingpad { ptr, i32 }
          cleanup
  %i.hf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.hg = add i32 %i.hf, -1
  store i32 %i.hg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i95

.lr.ph.i.preheader.i:                             ; preds = %bb.as, %.preheader207
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check = icmp ult i64 %i.gg, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.gg, -8                      ; 3 uses
  %i.hh = and i64 %i.gg, 7
  %i.hi = shl i64 %n.vec, 2
  %i.hj = getelementptr i8, ptr %7, i64 %i.hi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hk = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %7, i64 %i.hk ; 2 uses
  %i.hl = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.hl, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hm = icmp eq i64 %index.next, %n.vec
  br i1 %i.hm, label %middle.block, label %vector.body, !llvm.loop !748

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gg, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.05.i.i.ph = phi i64 [ %i.gg, %.lr.ph.i.preheader.i ], [ %i.hh, %middle.block ]
  %storemerge4.i.i.ph = phi ptr [ %7, %.lr.ph.i.preheader.i ], [ %i.hj, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.hn, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.ho, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.hn = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !82
  %i.ho = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i93 = icmp eq i64 %i.hn, 0
  br i1 %.not.i.i93, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !749

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.lr.ph.i.i, %middle.block
  %i.hp = trunc nuw nsw i64 %i.gg to i32
  %i.hq = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.hp
  store i32 %i.hq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.hr = add nuw nsw i64 %.065226, 1             ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond249.not = icmp eq i64 %i.hr, 6
  br i1 %exitcond249.not, label %.preheader206, label %bb.af, !llvm.loop !750

bb.ar:                                            ; preds = %.lr.ph224, %bb.as
  %i.hs = phi i32 [ %i.gq, %.lr.ph224 ], [ %i.hz, %bb.as ]
  %.063223 = phi i64 [ 0, %.lr.ph224 ], [ %i.ib, %bb.as ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.063223
  %i.ht = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.hu = trunc nuw nsw i64 %.063223 to i32
  %i.hv = add nuw nsw i32 %i.hu, %i.gp
  store i32 %i.hs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.hw = load i32, ptr %i.ht, align 4, !tbaa !82
  %i.hx = icmp eq i32 %i.hw, %i.hv
  %i.hy = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.1, i32 noundef 390, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_, i1 noundef zeroext %i.hx)
          to label %bb.as unwind label %bb.at     ; 0 uses

bb.as:                                            ; preds = %bb.ar
  %i.hz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.ia = add i32 %i.hz, -1
  store i32 %i.ia, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ib = add nuw nsw i64 %.063223, 1             ; 2 uses
  %exitcond248.not = icmp eq i64 %i.ib, %umax
  br i1 %exitcond248.not, label %.lr.ph.i.preheader.i, label %bb.ar, !llvm.loop !751

bb.at:                                            ; preds = %bb.ar
  %i.ic = landingpad { ptr, i32 }
          cleanup
  %i.id = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ie = add i32 %i.id, -1
  store i32 %i.ie, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i95

.lr.ph.i.preheader.i95:                           ; preds = %bb.am, %bb.an, %bb.ao, %bb.aq, %bb.at
  %i.if = phi i64 [ %i.gg, %bb.aq ], [ %i.gg, %bb.at ], [ %i.gg, %bb.ao ], [ %i.gg, %bb.an ], [ 10, %bb.am ] ; 6 uses
  %.pn76 = phi { ptr, i32 } [ %i.he, %bb.aq ], [ %i.ic, %bb.at ], [ %i.gu, %bb.ao ], [ %i.gt, %bb.an ], [ %i.gs, %bb.am ]
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i96 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check328 = icmp ult i64 %i.if, 8
  br i1 %min.iters.check328, label %.lr.ph.i.i97.preheader, label %vector.ph329

vector.ph329:                                     ; preds = %.lr.ph.i.preheader.i95
  %n.vec330 = and i64 %i.if, -8                   ; 3 uses
  %i.ig = and i64 %i.if, 7
  %i.ih = shl i64 %n.vec330, 2
  %i.ii = getelementptr i8, ptr %7, i64 %i.ih
  br label %vector.body331

vector.body331:                                   ; preds = %vector.body331, %vector.ph329
  %index332 = phi i64 [ 0, %vector.ph329 ], [ %index.next334, %vector.body331 ] ; 2 uses
  %i.ij = shl i64 %index332, 2
  %next.gep333 = getelementptr i8, ptr %7, i64 %i.ij ; 2 uses
  %i.ik = getelementptr i8, ptr %next.gep333, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep333, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.ik, align 8, !tbaa !82
  %index.next334 = add nuw i64 %index332, 8       ; 2 uses
  %i.il = icmp eq i64 %index.next334, %n.vec330
  br i1 %i.il, label %middle.block335, label %vector.body331, !llvm.loop !752

middle.block335:                                  ; preds = %vector.body331
  %cmp.n336 = icmp eq i64 %i.if, %n.vec330
  br i1 %cmp.n336, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i101, label %.lr.ph.i.i97.preheader

.lr.ph.i.i97.preheader:                           ; preds = %.lr.ph.i.preheader.i95, %middle.block335
  %.05.i.i98.ph = phi i64 [ %i.if, %.lr.ph.i.preheader.i95 ], [ %i.ig, %middle.block335 ]
  %storemerge4.i.i99.ph = phi ptr [ %7, %.lr.ph.i.preheader.i95 ], [ %i.ii, %middle.block335 ]
  br label %.lr.ph.i.i97

.lr.ph.i.i97:                                     ; preds = %.lr.ph.i.i97.preheader, %.lr.ph.i.i97
  %.05.i.i98 = phi i64 [ %i.im, %.lr.ph.i.i97 ], [ %.05.i.i98.ph, %.lr.ph.i.i97.preheader ]
  %storemerge4.i.i99 = phi ptr [ %i.in, %.lr.ph.i.i97 ], [ %storemerge4.i.i99.ph, %.lr.ph.i.i97.preheader ] ; 2 uses
  %i.im = add i64 %.05.i.i98, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i99, align 4, !tbaa !82
  %i.in = getelementptr inbounds nuw i8, ptr %storemerge4.i.i99, i64 4
  %.not.i.i100 = icmp eq i64 %i.im, 0
  br i1 %.not.i.i100, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i101, label %.lr.ph.i.i97, !llvm.loop !753

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i101: ; preds = %.lr.ph.i.i97, %middle.block335
  %i.io = trunc nuw nsw i64 %i.if to i32
  %i.ip = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i96, %i.io
  store i32 %i.ip, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit102

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit102: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i101, %bb.al
  %.pn76.pn = phi { ptr, i32 } [ %i.gr, %bb.al ], [ %.pn76, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.bs

bb.au:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit125
  invoke void @_Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.bn unwind label %bb.br

bb.av:                                            ; preds = %.preheader206, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit125
  %indvars.iv252 = phi i64 [ 5, %.preheader206 ], [ %indvars.iv.next253, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit125 ] ; 2 uses
  %.062239 = phi i64 [ 0, %.preheader206 ], [ %i.nw, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit125 ] ; 10 uses
  %umax254 = call i64 @llvm.umax.i64(i64 %indvars.iv252, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.iq = load i64, ptr %i.a, align 8, !tbaa !141 ; 12 uses
  %i.ir = icmp ugt i64 %i.iq, 10
  br i1 %i.ir, label %bb.aw, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i103

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc113 unwind label %bb.bb

.noexc113:                                        ; preds = %bb.aw
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i103: ; preds = %bb.av
  %.not17.i.i.i104 = icmp eq i64 %i.iq, 0
  br i1 %.not17.i.i.i104, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit114.thread, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit114

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit114: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i103
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i106 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.is = shl nuw nsw i64 %i.iq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %8, ptr nonnull align 8 %2, i64 %i.is, i1 false), !tbaa !82
  %i.it = trunc nuw nsw i64 %i.iq to i32
  %i.iu = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i106, %i.it
  store i32 %i.iu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not.i.i115 = icmp samesign ugt i64 %i.iq, 7
  br i1 %.not.i.i115, label %bb.az, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit114.thread, !prof !149

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit114.thread: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i103, %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit114
  %.idx198287 = shl nuw nsw i64 %.062239, 2       ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %8, i64 %.idx198287 ; 8 uses
  %.idx = shl nuw nsw i64 %i.iq, 2                ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %8, i64 %.idx ; 12 uses
  %i.ix = icmp samesign eq i64 %i.iq, %.062239
  br i1 %i.ix, label %.lr.ph.i.i.i.i.i.i.preheader, label %bb.ax

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit114.thread
  %i.iy = load i32, ptr %0, align 4, !tbaa !82, !noalias !782
  store i32 %i.iy, ptr %i.iw, align 4, !tbaa !82, !noalias !782
  %i.iz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !782 ; 3 uses
  %i.ja = add i32 %i.iz, 1
  store i32 %i.ja, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !782
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %i.jc = load i32, ptr %0, align 4, !tbaa !82, !noalias !782
  store i32 %i.jc, ptr %i.jb, align 4, !tbaa !82, !noalias !782
  %i.jd = add i32 %i.iz, 2
  store i32 %i.jd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !782
  %i.je = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.jf = load i32, ptr %0, align 4, !tbaa !82, !noalias !782
  store i32 %i.jf, ptr %i.je, align 4, !tbaa !82, !noalias !782
  %i.jg = add i32 %i.iz, 3
  store i32 %i.jg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !782
  br label %.loopexit

bb.ax:                                            ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit114.thread
  %gepdiff = sub nsw i64 %.idx, %.idx198287
  %i.jh = ashr exact i64 %gepdiff, 2              ; 3 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.jh, 3
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted227 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !782 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i43.preheader.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i

.lr.ph.i.i10.i.i.i.i:                             ; preds = %bb.ax
  %i.ji = getelementptr inbounds i8, ptr %i.iw, i64 -12 ; 4 uses
  %i.jj = getelementptr inbounds i8, ptr %i.iw, i64 -8
  %i.jk = load <2 x i32>, ptr %i.ji, align 4, !tbaa !82, !noalias !782
  store i32 0, ptr %i.ji, align 4, !tbaa !82, !noalias !782
  store <2 x i32> %i.jk, ptr %i.iw, align 4, !tbaa !82, !noalias !782
  store i32 0, ptr %i.jj, align 4, !tbaa !82, !noalias !782
  %i.jl = getelementptr inbounds i8, ptr %i.iw, i64 -4 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.jn = load i32, ptr %i.jl, align 4, !tbaa !82, !noalias !782
  store i32 %i.jn, ptr %i.jm, align 4, !tbaa !82, !noalias !782
  store i32 0, ptr %i.jl, align 4, !tbaa !82, !noalias !782
  %i.jo = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted227, 3
  store i32 %i.jo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !782
  %i.jp = add nsw i64 %.idx, -12
  %.not8.i.i.i.i.i.i = icmp eq i64 %.idx198287, %i.jp
  br i1 %.not8.i.i.i.i.i.i, label %.lr.ph.i39.i.i.i.i.i, label %.lr.ph.i37.i.i.i.i.i.preheader

.lr.ph.i37.i.i.i.i.i.preheader:                   ; preds = %.lr.ph.i.i10.i.i.i.i
  %i.jq = sub nsw i64 %i.iq, %.062239             ; 2 uses
  %i.jr = add i64 %i.jq, 4611686018427387900
  %i.js = and i64 %i.jr, 4611686018427387903
  %i.jt = add i64 %i.jq, 5
  %xtraiter430 = and i64 %i.jt, 7                 ; 2 uses
  %lcmp.mod431.not = icmp eq i64 %xtraiter430, 0
  br i1 %lcmp.mod431.not, label %.lr.ph.i37.i.i.i.i.i.prol.loopexit, label %.lr.ph.i37.i.i.i.i.i.prol

.lr.ph.i37.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i37.i.i.i.i.i.preheader, %.lr.ph.i37.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi ptr [ %i.jv, %.lr.ph.i37.i.i.i.i.i.prol ], [ %i.iw, %.lr.ph.i37.i.i.i.i.i.preheader ]
  %.079.i.i.i.i.i.i.prol = phi ptr [ %i.ju, %.lr.ph.i37.i.i.i.i.i.prol ], [ %i.ji, %.lr.ph.i37.i.i.i.i.i.preheader ]
  %prol.iter432 = phi i64 [ %prol.iter432.next, %.lr.ph.i37.i.i.i.i.i.prol ], [ 0, %.lr.ph.i37.i.i.i.i.i.preheader ]
  %i.ju = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i.prol, i64 -4 ; 4 uses
  %i.jv = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i.prol, i64 -4 ; 3 uses
  %i.jw = load i32, ptr %i.ju, align 4, !tbaa !82, !noalias !782
  store i32 %i.jw, ptr %i.jv, align 4, !tbaa !82, !noalias !782
  store i32 0, ptr %i.ju, align 4, !tbaa !82, !noalias !782
  %prol.iter432.next = add i64 %prol.iter432, 1   ; 2 uses
  %prol.iter432.cmp.not = icmp eq i64 %prol.iter432.next, %xtraiter430
  br i1 %prol.iter432.cmp.not, label %.lr.ph.i37.i.i.i.i.i.prol.loopexit, label %.lr.ph.i37.i.i.i.i.i.prol, !llvm.loop !758

.lr.ph.i37.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i37.i.i.i.i.i.prol, %.lr.ph.i37.i.i.i.i.i.preheader
  %.010.i.i.i.i.i.i.unr = phi ptr [ %i.iw, %.lr.ph.i37.i.i.i.i.i.preheader ], [ %i.jv, %.lr.ph.i37.i.i.i.i.i.prol ]
  %.079.i.i.i.i.i.i.unr = phi ptr [ %i.ji, %.lr.ph.i37.i.i.i.i.i.preheader ], [ %i.ju, %.lr.ph.i37.i.i.i.i.i.prol ]
  %i.jx = icmp samesign ult i64 %i.js, 7
  br i1 %i.jx, label %.lr.ph.i39.i.i.i.i.i, label %.lr.ph.i37.i.i.i.i.i

.lr.ph.i37.i.i.i.i.i:                             ; preds = %.lr.ph.i37.i.i.i.i.i.prol.loopexit, %.lr.ph.i37.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.ku, %.lr.ph.i37.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i37.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.079.i.i.i.i.i.i = phi ptr [ %i.kt, %.lr.ph.i37.i.i.i.i.i ], [ %.079.i.i.i.i.i.i.unr, %.lr.ph.i37.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.jy = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -4 ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -4
  %i.ka = load i32, ptr %i.jy, align 4, !tbaa !82, !noalias !782
  store i32 %i.ka, ptr %i.jz, align 4, !tbaa !82, !noalias !782
  store i32 0, ptr %i.jy, align 4, !tbaa !82, !noalias !782
  %i.kb = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.kc = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -8
  %i.kd = load i32, ptr %i.kb, align 4, !tbaa !82, !noalias !782
  store i32 %i.kd, ptr %i.kc, align 4, !tbaa !82, !noalias !782
  store i32 0, ptr %i.kb, align 4, !tbaa !82, !noalias !782
  %i.ke = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -12 ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -12
  %i.kg = load i32, ptr %i.ke, align 4, !tbaa !82, !noalias !782
  store i32 %i.kg, ptr %i.kf, align 4, !tbaa !82, !noalias !782
  store i32 0, ptr %i.ke, align 4, !tbaa !82, !noalias !782
  %i.kh = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -16 ; 2 uses
  %i.ki = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -16
  %i.kj = load i32, ptr %i.kh, align 4, !tbaa !82, !noalias !782
  store i32 %i.kj, ptr %i.ki, align 4, !tbaa !82, !noalias !782
  store i32 0, ptr %i.kh, align 4, !tbaa !82, !noalias !782
  %i.kk = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -20 ; 2 uses
  %i.kl = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -20
  %i.km = load i32, ptr %i.kk, align 4, !tbaa !82, !noalias !782
  store i32 %i.km, ptr %i.kl, align 4, !tbaa !82, !noalias !782
  store i32 0, ptr %i.kk, align 4, !tbaa !82, !noalias !782
  %i.kn = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -24
  %i.kp = load i32, ptr %i.kn, align 4, !tbaa !82, !noalias !782
  store i32 %i.kp, ptr %i.ko, align 4, !tbaa !82, !noalias !782
  store i32 0, ptr %i.kn, align 4, !tbaa !82, !noalias !782
  %i.kq = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -28 ; 2 uses
  %i.kr = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -28
  %i.ks = load i32, ptr %i.kq, align 4, !tbaa !82, !noalias !782
  store i32 %i.ks, ptr %i.kr, align 4, !tbaa !82, !noalias !782
  store i32 0, ptr %i.kq, align 4, !tbaa !82, !noalias !782
  %i.kt = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -32 ; 4 uses
  %i.ku = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.kv = load i32, ptr %i.kt, align 4, !tbaa !82, !noalias !782
  store i32 %i.kv, ptr %i.ku, align 4, !tbaa !82, !noalias !782
  store i32 0, ptr %i.kt, align 4, !tbaa !82, !noalias !782
  %.not.i38.i.i.i.i.i.7 = icmp eq ptr %i.iv, %i.kt
  br i1 %.not.i38.i.i.i.i.i.7, label %.lr.ph.i39.i.i.i.i.i, label %.lr.ph.i37.i.i.i.i.i, !llvm.loop !15

.lr.ph.i39.i.i.i.i.i:                             ; preds = %.lr.ph.i37.i.i.i.i.i.prol.loopexit, %.lr.ph.i37.i.i.i.i.i, %.lr.ph.i.i10.i.i.i.i
  %.pre.i.i.i.i.i.i = load i32, ptr %0, align 4, !tbaa !82, !noalias !782 ; 3 uses
  store i32 %.pre.i.i.i.i.i.i, ptr %i.iv, align 4, !tbaa !82, !noalias !782
  %i.kw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  store i32 %.pre.i.i.i.i.i.i, ptr %i.kw, align 4, !tbaa !82, !noalias !782
  %i.kx = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store i32 %.pre.i.i.i.i.i.i, ptr %i.kx, align 4, !tbaa !82, !noalias !782
  br label %.loopexit

.lr.ph.i43.preheader.i.i.i.i.i:                   ; preds = %bb.ax
  %i.ky = getelementptr inbounds nuw i8, ptr %i.iv, i64 12 ; 2 uses
  %i.kz = sub nsw i64 %i.iq, %.062239             ; 2 uses
  %i.la = add i64 %i.kz, 4611686018427387903
  %i.lb = and i64 %i.la, 4611686018427387903
  %xtraiter433 = and i64 %i.kz, 3                 ; 2 uses
  %lcmp.mod434.not = icmp eq i64 %xtraiter433, 0
  br i1 %lcmp.mod434.not, label %.lr.ph.i43.i.i.i.i.i.prol.loopexit, label %.lr.ph.i43.i.i.i.i.i.prol

.lr.ph.i43.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i43.preheader.i.i.i.i.i, %.lr.ph.i43.i.i.i.i.i.prol
  %i.lc = phi i32 [ %i.le, %.lr.ph.i43.i.i.i.i.i.prol ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted227, %.lr.ph.i43.preheader.i.i.i.i.i ]
  %.018.i.i.i.i.i.i.prol = phi ptr [ %i.lf, %.lr.ph.i43.i.i.i.i.i.prol ], [ %i.iv, %.lr.ph.i43.preheader.i.i.i.i.i ] ; 3 uses
  %.01517.i.i.i.i.i.i.prol = phi ptr [ %i.lg, %.lr.ph.i43.i.i.i.i.i.prol ], [ %i.ky, %.lr.ph.i43.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter435 = phi i64 [ %prol.iter435.next, %.lr.ph.i43.i.i.i.i.i.prol ], [ 0, %.lr.ph.i43.preheader.i.i.i.i.i ]
  %i.ld = load i32, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !782
  store i32 %i.ld, ptr %.01517.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !782
  store i32 0, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !782
  %i.le = add i32 %i.lc, 1                        ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter435.next = add i64 %prol.iter435, 1   ; 2 uses
  %prol.iter435.cmp.not = icmp eq i64 %prol.iter435.next, %xtraiter433
  br i1 %prol.iter435.cmp.not, label %.lr.ph.i43.i.i.i.i.i.prol.loopexit, label %.lr.ph.i43.i.i.i.i.i.prol, !llvm.loop !759

.lr.ph.i43.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i43.i.i.i.i.i.prol, %.lr.ph.i43.preheader.i.i.i.i.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i43.preheader.i.i.i.i.i ], [ %i.le, %.lr.ph.i43.i.i.i.i.i.prol ]
  %.unr = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted227, %.lr.ph.i43.preheader.i.i.i.i.i ], [ %i.le, %.lr.ph.i43.i.i.i.i.i.prol ]
  %.018.i.i.i.i.i.i.unr = phi ptr [ %i.iv, %.lr.ph.i43.preheader.i.i.i.i.i ], [ %i.lf, %.lr.ph.i43.i.i.i.i.i.prol ]
  %.01517.i.i.i.i.i.i.unr = phi ptr [ %i.ky, %.lr.ph.i43.preheader.i.i.i.i.i ], [ %i.lg, %.lr.ph.i43.i.i.i.i.i.prol ]
  %i.lh = icmp samesign ult i64 %i.lb, 3
  br i1 %i.lh, label %.lr.ph.i46.i.i.i.i.i, label %.lr.ph.i43.i.i.i.i.i

.lr.ph.i43.i.i.i.i.i:                             ; preds = %.lr.ph.i43.i.i.i.i.i.prol.loopexit, %.lr.ph.i43.i.i.i.i.i
  %i.li = phi i32 [ %i.lt, %.lr.ph.i43.i.i.i.i.i ], [ %.unr, %.lr.ph.i43.i.i.i.i.i.prol.loopexit ]
  %.018.i.i.i.i.i.i = phi ptr [ %i.lu, %.lr.ph.i43.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i43.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01517.i.i.i.i.i.i = phi ptr [ %i.lv, %.lr.ph.i43.i.i.i.i.i ], [ %.01517.i.i.i.i.i.i.unr, %.lr.ph.i43.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.lj = load i32, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !782
  store i32 %i.lj, ptr %.01517.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !782
  store i32 0, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !782
  %i.lk = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 4
  %i.lm = load i32, ptr %i.lk, align 4, !tbaa !82, !noalias !782
  store i32 %i.lm, ptr %i.ll, align 4, !tbaa !82, !noalias !782
  store i32 0, ptr %i.lk, align 4, !tbaa !82, !noalias !782
  %i.ln = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 8
  %i.lp = load i32, ptr %i.ln, align 4, !tbaa !82, !noalias !782
  store i32 %i.lp, ptr %i.lo, align 4, !tbaa !82, !noalias !782
  store i32 0, ptr %i.ln, align 4, !tbaa !82, !noalias !782
  %i.lq = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 12
  %i.ls = load i32, ptr %i.lq, align 4, !tbaa !82, !noalias !782
  store i32 %i.ls, ptr %i.lr, align 4, !tbaa !82, !noalias !782
  store i32 0, ptr %i.lq, align 4, !tbaa !82, !noalias !782
  %i.lt = add i32 %i.li, 4                        ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 16
  %.not.i44.i.i.i.i.i.3 = icmp eq ptr %i.lu, %i.iw
  br i1 %.not.i44.i.i.i.i.i.3, label %.lr.ph.i46.i.i.i.i.i, label %.lr.ph.i43.i.i.i.i.i, !llvm.loop !16

end_hunk_3
begin_hunk_4_@_Z18test_capacity_0_ndIiEvv:bb.a
bb.ap:                                            ; preds = %.sink.split185, %bb.ah
  %i.az = load i64, ptr %i.a, align 8, !tbaa !95, !noalias !842 ; 2 uses
  %.idx153 = shl i64 %i.az, 2                     ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %.idx153 ; 5 uses
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !835, !noalias !843
  %.fr = freeze i64 %i.bb                         ; 5 uses
  %.idx.i = shl i64 %.fr, 2                       ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %1, i64 %.idx.i ; 3 uses
  %i.bd = icmp ne i64 %i.az, 0                    ; 2 uses
  %i.be = icmp ne i64 %.fr, 0
  %or.cond13.i = and i1 %i.bd, %i.be
  br i1 %or.cond13.i, label %iter.check, label %.critedge.i

iter.check:                                       ; preds = %bb.ap
  %i.bf = add i64 %.idx.i, -4
  %i.bg = lshr exact i64 %i.bf, 2                 ; 2 uses
  %i.bh = add i64 %.idx153, -4
  %i.bi = lshr exact i64 %i.bh, 2                 ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bi)
  %i.bj = shl nuw i64 %umin, 2
  %i.bk = add i64 %i.bj, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.bk, i1 false), !tbaa !41
  %umin192 = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bi) ; 3 uses
  %i.bl = add nuw nsw i64 %umin192, 1             ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin192, 3
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check193 = icmp samesign ult i64 %umin192, 31
  br i1 %min.iters.check193, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bm = and i64 %i.bl, 28
  %n.vec = and i64 %i.bl, 9223372036854775776     ; 4 uses
  %i.bn = shl i64 %n.vec, 2                       ; 2 uses
  %i.bo = getelementptr i8, ptr %0, i64 %i.bn     ; 3 uses
  %i.bp = getelementptr i8, ptr %1, i64 %i.bn     ; 2 uses
  %broadcast.splatinsert = insertelement <16 x ptr> poison, ptr %i.ba, i64 0
  %broadcast.splat = shufflevector <16 x ptr> %broadcast.splatinsert, <16 x ptr> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %0, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 128
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !806

middle.block:                                     ; preds = %vector.body
  %vector.gep = getelementptr i8, ptr %pointer.phi, <16 x i64> <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28, i64 32, i64 36, i64 40, i64 44, i64 48, i64 52, i64 56, i64 60>
  %wide.gep = getelementptr i8, <16 x ptr> %vector.gep, i64 68
  %i.br = icmp ne <16 x ptr> %wide.gep, %broadcast.splat
  %i.bs = extractelement <16 x i1> %i.br, i64 15
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %.critedge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !151

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.bo, %vec.epilog.iter.check ], [ %0, %vector.main.loop.iter.check ]
  %n.vec195 = and i64 %i.bl, 9223372036854775804  ; 3 uses
  %i.bt = shl i64 %n.vec195, 2                    ; 2 uses
  %i.bu = getelementptr i8, ptr %0, i64 %i.bt     ; 2 uses
  %i.bv = getelementptr i8, ptr %1, i64 %i.bt     ; 2 uses
  %broadcast.splatinsert196 = insertelement <4 x ptr> poison, ptr %i.ba, i64 0
  %broadcast.splat197 = shufflevector <4 x ptr> %broadcast.splatinsert196, <4 x ptr> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index198 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next201, %vec.epilog.vector.body ]
  %pointer.phi199 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind202, %vec.epilog.vector.body ] ; 2 uses
  %index.next201 = add nuw i64 %index198, 4       ; 2 uses
  %ptr.ind202 = getelementptr i8, ptr %pointer.phi199, i64 16
  %i.bw = icmp eq i64 %index.next201, %n.vec195
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !807

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %vector.gep200 = getelementptr i8, ptr %pointer.phi199, <4 x i64> <i64 0, i64 4, i64 8, i64 12>
  %wide.gep203 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep200, i64 4
  %i.bx = icmp ne <4 x ptr> %wide.gep203, %broadcast.splat197
  %i.by = extractelement <4 x i1> %i.bx, i64 3
  %cmp.n204 = icmp eq i64 %i.bl, %n.vec195
  br i1 %cmp.n204, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %0, %iter.check ], [ %i.bo, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  %.sroa.07.014.i.ph = phi ptr [ %1, %iter.check ], [ %i.bp, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.bz = phi ptr [ %i.cb, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ]
  %.sroa.07.014.i = phi ptr [ %i.ca, %.lr.ph.i ], [ %.sroa.07.014.i.ph, %.lr.ph.i.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.07.014.i, i64 4 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 3 uses
  %i.cc = icmp ne ptr %i.cb, %i.ba                ; 2 uses
  %i.cd = icmp ne ptr %i.ca, %i.bc
  %or.cond.i = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !808

.critedge.i:                                      ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.ap
  %.sroa.07.0.lcssa.i = phi ptr [ %1, %bb.ap ], [ %i.bv, %vec.epilog.middle.block ], [ %i.bp, %middle.block ], [ %i.ca, %.lr.ph.i ]
  %.lcssa12.i = phi ptr [ %0, %bb.ap ], [ %i.bu, %vec.epilog.middle.block ], [ %i.bo, %middle.block ], [ %i.cb, %.lr.ph.i ] ; 3 uses
  %.lcssa.i = phi i1 [ %i.bd, %bb.ap ], [ %i.by, %vec.epilog.middle.block ], [ %i.bs, %middle.block ], [ %i.cc, %.lr.ph.i ]
  %i.ce = icmp eq ptr %.lcssa12.i, %i.ba
  br i1 %i.ce, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.critedge.i
  %i.cf = ptrtoint ptr %i.bc to i64
  %i.cg = ptrtoint ptr %.sroa.07.0.lcssa.i to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 2
  %i.cj = sub i64 %.fr, %i.ci
  br label %bb.av

bb.ar:                                            ; preds = %.critedge.i
  %i.ck = ptrtoint ptr %i.ba to i64
  %i.cl = ptrtoint ptr %.lcssa12.i to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 2 uses
  %i.cn = ashr exact i64 %i.cm, 2                 ; 2 uses
  %i.co = sub i64 0, %.fr
  %.not.i.i.i94 = icmp ugt i64 %i.cn, %i.co
  br i1 %.not.i.i.i94, label %bb.au, label %bb.as, !prof !42

bb.as:                                            ; preds = %bb.ar
  br i1 %.lcssa.i, label %bb.at, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i, !prof !152

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bc, ptr nonnull align 1 %.lcssa12.i, i64 %i.cm, i1 false), !noalias !844
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !833, !noalias !845
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i

bb.au:                                            ; preds = %bb.ar
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc95 unwind label %bb.az

.noexc95:                                         ; preds = %bb.au
  unreachable

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i: ; preds = %bb.at, %bb.as
  %i.cp = phi i64 [ %.fr, %bb.as ], [ %.pre.i, %bb.at ]
  %i.cq = add i64 %i.cp, %i.cn
  br label %bb.av

bb.av:                                            ; preds = %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i, %bb.aq
  %storemerge.i = phi i64 [ %i.cq, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i ], [ %i.cj, %bb.aq ]
  store i64 %storemerge.i, ptr %i.b, align 8, !tbaa !833
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.bb unwind label %bb.az

bb.aw:                                            ; preds = %bb.an
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %.sink.split185 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.ay:                                            ; preds = %bb.ao
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.az:                                            ; preds = %bb.au, %bb.av
  %i.ct = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  %i.cv = extractvalue { ptr, i32 } %i.ct, 1
  %i.cw = icmp eq i32 %i.cv, %i.o
  %i.cx = call ptr @__cxa_begin_catch(ptr %i.cu) #25 ; 0 uses
  br i1 %i.cw, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %bb.az
  %i.cy = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split186 unwind label %bb.bh ; 0 uses

.sink.split186:                                   ; preds = %bb.ba, %bb.bf
  call void @__cxa_end_catch()
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split186, %bb.av
  %i.cz = load i64, ptr %i.b, align 8, !tbaa !835, !noalias !846 ; 5 uses
  %.idx.i.i = shl i64 %i.cz, 2                    ; 3 uses
  %i.da = getelementptr i8, ptr %1, i64 %.idx.i.i
  %.not = icmp eq i64 %i.cz, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.bb
  %i.db = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.dc = lshr exact i64 %i.db, 2
  %umin168 = call i64 @llvm.umin.i64(i64 %i.dc, i64 4) ; 2 uses
  %i.dd = shl nuw nsw i64 %umin168, 2
  %i.de = add nuw nsw i64 %i.dd, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.de, i1 false), !tbaa !41
  %i.df = sub nuw nsw i64 4, %umin168
  %i.dg = icmp ugt i64 %i.db, 12
  br i1 %i.dg, label %bb.bc, label %.critedge.i.i.thread

bb.bc:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.de
  %i.dh = ashr exact i64 %gepdiff, 2
  %i.di = sub i64 %i.cz, %i.dh
  br label %bb.be

.critedge.i.i.thread:                             ; preds = %bb.bb, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i148 = phi i64 [ %i.df, %.lr.ph.i.i.preheader ], [ 5, %bb.bb ] ; 3 uses
  %i.dj = sub i64 0, %i.cz
  %.not.i.i.i.i96 = icmp ugt i64 %.sroa.3.0.lcssa.i.i148, %i.dj
  br i1 %.not.i.i.i.i96, label %bb.bd, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.dk = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i148, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.da, i8 0, i64 %i.dk, i1 false), !tbaa !41, !noalias !847
  %i.dl = add i64 %.sroa.3.0.lcssa.i.i148, %i.cz
  br label %bb.be

bb.bd:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc98 unwind label %bb.bi

.noexc98:                                         ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.bc
  %storemerge.i.i = phi i64 [ %i.dl, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.di, %bb.bc ]
  store i64 %storemerge.i.i, ptr %i.b, align 8, !tbaa !833
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.bm unwind label %bb.bj

bb.bf:                                            ; preds = %bb.az
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %.sink.split186 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.bh:                                            ; preds = %bb.ba
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.bi:                                            ; preds = %bb.bd
  %i.do = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bk

bb.bj:                                            ; preds = %bb.be
  %i.dp = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn69 = phi { ptr, i32 } [ %i.dp, %bb.bj ], [ %i.do, %bb.bi ] ; 2 uses
  %.10 = extractvalue { ptr, i32 } %.pn69, 1
  %.1041 = extractvalue { ptr, i32 } %.pn69, 0
  %i.dq = icmp eq i32 %.10, %i.o
  %i.dr = call ptr @__cxa_begin_catch(ptr %.1041) #25 ; 0 uses
  br i1 %i.dq, label %bb.bl, label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  %i.ds = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split187 unwind label %bb.bs ; 0 uses

.sink.split187:                                   ; preds = %bb.bl, %bb.bq
  call void @__cxa_end_catch()
  br label %bb.bm

bb.bm:                                            ; preds = %.sink.split187, %bb.be
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !835, !noalias !848 ; 5 uses
  %.idx.i.i99 = shl i64 %i.dt, 2                  ; 3 uses
  %i.du = getelementptr i8, ptr %1, i64 %.idx.i.i99
  %.not154 = icmp eq i64 %i.dt, 0
  br i1 %.not154, label %.critedge.i.i100.thread, label %.lr.ph.i.i114.preheader

.lr.ph.i.i114.preheader:                          ; preds = %bb.bm
  %i.dv = add i64 %.idx.i.i99, -4                 ; 2 uses
  %i.dw = lshr exact i64 %i.dv, 2
  %umin170 = call i64 @llvm.umin.i64(i64 %i.dw, i64 4) ; 2 uses
  %i.dx = shl nuw nsw i64 %umin170, 2
  %i.dy = add nuw nsw i64 %i.dx, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.dy, i1 false), !tbaa !41
  %i.dz = sub nuw nsw i64 4, %umin170
  %i.ea = icmp ugt i64 %i.dv, 12
  br i1 %i.ea, label %bb.bn, label %.critedge.i.i100.thread

bb.bn:                                            ; preds = %.lr.ph.i.i114.preheader
  %gepdiff181 = sub i64 %.idx.i.i99, %i.dy
  %i.eb = ashr exact i64 %gepdiff181, 2
  %i.ec = sub i64 %i.dt, %i.eb
  br label %bb.bp

.critedge.i.i100.thread:                          ; preds = %bb.bm, %.lr.ph.i.i114.preheader
  %.sroa.3.0.lcssa.i.i101151 = phi i64 [ %i.dz, %.lr.ph.i.i114.preheader ], [ 5, %bb.bm ] ; 3 uses
  %i.ed = sub i64 0, %i.dt
  %.not.i.i.i.i103 = icmp ugt i64 %.sroa.3.0.lcssa.i.i101151, %i.ed
  br i1 %.not.i.i.i.i103, label %bb.bo, label %.lr.ph.i.i.i.i.i.i.i.i106.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i106.preheader:              ; preds = %.critedge.i.i100.thread
  %i.ee = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i101151, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.du, i8 0, i64 %i.ee, i1 false), !tbaa !41, !noalias !849
  %i.ef = add i64 %.sroa.3.0.lcssa.i.i101151, %i.dt
  br label %bb.bp

bb.bo:                                            ; preds = %.critedge.i.i100.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc118 unwind label %bb.bt

.noexc118:                                        ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i106.preheader, %bb.bn
  %storemerge.i.i111 = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i.i.i.i106.preheader ], [ %i.ec, %bb.bn ]
  store i64 %storemerge.i.i111, ptr %i.b, align 8, !tbaa !833
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.bx unwind label %bb.bu

bb.bq:                                            ; preds = %bb.bk
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %.sink.split187 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.bs:                                            ; preds = %bb.bl
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.bt:                                            ; preds = %bb.bo
  %i.ei = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bp
  %i.ej = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn73 = phi { ptr, i32 } [ %i.ej, %bb.bu ], [ %i.ei, %bb.bt ] ; 2 uses
  %.12 = extractvalue { ptr, i32 } %.pn73, 1
  %.1243 = extractvalue { ptr, i32 } %.pn73, 0
  %i.ek = icmp eq i32 %.12, %i.o
  %i.el = call ptr @__cxa_begin_catch(ptr %.1243) #25 ; 0 uses
  br i1 %i.ek, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.em = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split188 unwind label %bb.cb ; 0 uses

.sink.split188:                                   ; preds = %bb.bw, %bb.bz
  call void @__cxa_end_catch()
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split188, %bb.bp
  %i.en = load i64, ptr %i.a, align 8, !tbaa !95, !noalias !850
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %_ZN5boost9container13static_vectorIiLm0EvEC2INS0_12vec_iteratorIPiLb0EEEEET_S7_.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc120 unwind label %bb.cc

.noexc120:                                        ; preds = %bb.by
  unreachable

_ZN5boost9container13static_vectorIiLm0EvEC2INS0_12vec_iteratorIPiLb0EEEEET_S7_.exit: ; preds = %bb.bx
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 433, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.cg unwind label %bb.cd

bb.bz:                                            ; preds = %bb.bv
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %.sink.split188 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.cb:                                            ; preds = %bb.bw
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.cc:                                            ; preds = %bb.by
  %i.er = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ce

bb.cd:                                            ; preds = %_ZN5boost9container13static_vectorIiLm0EvEC2INS0_12vec_iteratorIPiLb0EEEEET_S7_.exit
  %i.es = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pn77 = phi { ptr, i32 } [ %i.es, %bb.cd ], [ %i.er, %bb.cc ] ; 2 uses
  %.14 = extractvalue { ptr, i32 } %.pn77, 1
  %.1445 = extractvalue { ptr, i32 } %.pn77, 0
  %i.et = icmp eq i32 %.14, %i.o
  %i.eu = call ptr @__cxa_begin_catch(ptr %.1445) #25 ; 0 uses
  br i1 %i.et, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.ev = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split189 unwind label %bb.cj ; 0 uses

.sink.split189:                                   ; preds = %bb.cf, %bb.ch
  call void @__cxa_end_catch()
  br label %bb.cg

bb.cg:                                            ; preds = %.sink.split189, %_ZN5boost9container13static_vectorIiLm0EvEC2INS0_12vec_iteratorIPiLb0EEEEET_S7_.exit
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc121 unwind label %bb.ck

.noexc121:                                        ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %bb.ce
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 433, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %.sink.split189 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.cj:                                            ; preds = %bb.cf
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.ck:                                            ; preds = %bb.cg
  %i.ey = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.16 = extractvalue { ptr, i32 } %i.ey, 1
  %.1647 = extractvalue { ptr, i32 } %i.ey, 0
  %i.ez = icmp eq i32 %.16, %i.o
  %i.fa = call ptr @__cxa_begin_catch(ptr %.1647) #25 ; 0 uses
  br i1 %i.ez, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.fb = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.cm unwind label %bb.cp     ; 0 uses

bb.cm:                                            ; preds = %bb.cl, %bb.cn
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  ret void

bb.cn:                                            ; preds = %bb.ck
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 434, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.cm unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.cp:                                            ; preds = %bb.cl
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %bb.cj, %bb.cb, %bb.bs, %bb.bh, %bb.ay, %bb.ak, %bb.y, %bb.o, %bb.g, %bb.co, %bb.ci, %bb.ca, %bb.br, %bb.bg, %bb.ax, %bb.aj, %bb.x, %bb.n, %bb.f
  %.pn83.pn = phi { ptr, i32 } [ %i.ex, %bb.cj ], [ %i.fd, %bb.cp ], [ %i.fc, %bb.co ], [ %i.eq, %bb.cb ], [ %i.ew, %bb.ci ], [ %i.eh, %bb.bs ], [ %i.ep, %bb.ca ], [ %i.dn, %bb.bh ], [ %i.eg, %bb.br ], [ %i.cs, %bb.ay ], [ %i.dm, %bb.bg ], [ %i.at, %bb.ak ], [ %i.cr, %bb.ax ], [ %i.ag, %bb.y ], [ %i.as, %bb.aj ], [ %i.w, %bb.o ], [ %i.af, %bb.x ], [ %i.m, %bb.g ], [ %i.v, %bb.n ], [ %i.l, %bb.f ]
end_hunk_4
begin_hunk_5_@_Z18test_capacity_0_ndI8value_ndEvv:bb.a
  %i.aj = icmp eq i32 %.5, %i.o
  %i.ak = tail call ptr @__cxa_begin_catch(ptr %.536) #25 ; 0 uses
  br i1 %i.aj, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.al = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split189 unwind label %bb.ai ; 0 uses

.sink.split189:                                   ; preds = %bb.ac, %bb.ag
  tail call void @__cxa_end_catch()
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split189, %bb.v
  %i.am = load i64, ptr %i.b, align 8, !tbaa !895, !noalias !898 ; 3 uses
  %i.an = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !899 ; 4 uses
  %i.ao = sub i64 0, %i.am
  %.not.i.i93 = icmp ugt i64 %i.an, %i.ao
  br i1 %.not.i.i93, label %bb.af, label %bb.ae, !prof !42

bb.ae:                                            ; preds = %bb.ad
  %.not13.i.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not13.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ae
  %i.ap = getelementptr [4 x i8], ptr %1, i64 %i.am
  %i.aq = shl nuw i64 %i.an, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ap, ptr nonnull align 8 %0, i64 %i.aq, i1 false), !tbaa !41, !noalias !900
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc94 unwind label %bb.aj

.noexc94:                                         ; preds = %bb.af
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.ae
  %i.ar = add i64 %i.am, %i.an
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !893, !noalias !901
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.an unwind label %bb.ak

bb.ag:                                            ; preds = %bb.ab
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 428, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %.sink.split189 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.ai:                                            ; preds = %bb.ac
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.aj:                                            ; preds = %bb.af
  %i.au = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.al

bb.ak:                                            ; preds = %.loopexit
  %i.av = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn64 = phi { ptr, i32 } [ %i.av, %bb.ak ], [ %i.au, %bb.aj ] ; 2 uses
  %.7 = extractvalue { ptr, i32 } %.pn64, 1
  %.738 = extractvalue { ptr, i32 } %.pn64, 0
  %i.aw = icmp eq i32 %.7, %i.o
  %i.ax = tail call ptr @__cxa_begin_catch(ptr %.738) #25 ; 0 uses
  br i1 %i.aw, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  %i.ay = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split190 unwind label %bb.au ; 0 uses

.sink.split190:                                   ; preds = %bb.am, %bb.as
  tail call void @__cxa_end_catch()
  br label %bb.an

bb.an:                                            ; preds = %.sink.split190, %.loopexit
  %i.az = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !902 ; 2 uses
  %.idx = shl i64 %i.az, 2                        ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %.idx ; 2 uses
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !895, !noalias !903
  %.fr = freeze i64 %i.bb                         ; 5 uses
  %.idx.i = shl i64 %.fr, 2                       ; 2 uses
  %i.bc = getelementptr i8, ptr %1, i64 %.idx.i   ; 2 uses
  %i.bd = icmp ne i64 %i.az, 0
  %i.be = icmp ne i64 %.fr, 0
  %or.cond12.i = and i1 %i.bd, %i.be
  br i1 %or.cond12.i, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %bb.an
  %i.bf = add i64 %.idx.i, -4
  %i.bg = lshr exact i64 %i.bf, 2
  %i.bh = add i64 %.idx, -4
  %i.bi = lshr exact i64 %i.bh, 2
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bi)
  %i.bj = shl nuw i64 %umin, 2
  %i.bk = add i64 %i.bj, 4                        ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.bk, i1 false), !tbaa !41
  %scevgep = getelementptr i8, ptr %1, i64 %i.bk
  %scevgep173 = getelementptr i8, ptr %0, i64 %i.bk
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i.preheader, %bb.an
  %.sroa.07.0.lcssa.i = phi ptr [ %1, %bb.an ], [ %scevgep, %.lr.ph.i.preheader ]
  %.lcssa11.i = phi ptr [ %0, %bb.an ], [ %scevgep173, %.lr.ph.i.preheader ] ; 3 uses
  %i.bl = icmp eq ptr %.lcssa11.i, %i.ba
  br i1 %i.bl, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.critedge.i
  %i.bm = ptrtoint ptr %i.bc to i64
  %i.bn = ptrtoint ptr %.sroa.07.0.lcssa.i to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2
  %i.bq = sub i64 %.fr, %i.bp
  br label %bb.ar

bb.ap:                                            ; preds = %.critedge.i
  %i.br = ptrtoint ptr %i.ba to i64
  %i.bs = ptrtoint ptr %.lcssa11.i to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 2 uses
  %i.bu = ashr exact i64 %i.bt, 2                 ; 2 uses
  %i.bv = sub i64 0, %.fr
  %.not.i.i.i95 = icmp ugt i64 %i.bu, %i.bv
  br i1 %.not.i.i.i95, label %bb.aq, label %.lr.ph.i.i.i.i.i.i.i96.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i96.preheader:                 ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bc, ptr align 4 %.lcssa11.i, i64 %i.bt, i1 false), !tbaa !41, !noalias !904
  %i.bw = add i64 %i.bu, %.fr
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc100 unwind label %bb.av

.noexc100:                                        ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i96.preheader, %bb.ao
  %storemerge.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.i.i96.preheader ], [ %i.bq, %bb.ao ]
  store i64 %storemerge.i, ptr %i.b, align 8, !tbaa !893
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.ax unwind label %bb.av

bb.as:                                            ; preds = %bb.al
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %.sink.split190 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.au:                                            ; preds = %bb.am
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.av:                                            ; preds = %bb.aq, %bb.ar
  %i.bz = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  %i.cb = extractvalue { ptr, i32 } %i.bz, 1
  %i.cc = icmp eq i32 %i.cb, %i.o
  %i.cd = call ptr @__cxa_begin_catch(ptr %i.ca) #25 ; 0 uses
  br i1 %i.cc, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.ce = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split191 unwind label %bb.bd ; 0 uses

.sink.split191:                                   ; preds = %bb.aw, %bb.bb
  call void @__cxa_end_catch()
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split191, %bb.ar
  %i.cf = load i64, ptr %i.b, align 8, !tbaa !895, !noalias !905 ; 5 uses
  %.idx.i.i = shl i64 %i.cf, 2                    ; 3 uses
  %i.cg = getelementptr i8, ptr %1, i64 %.idx.i.i
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ax
  %i.ch = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.ci = lshr exact i64 %i.ch, 2
  %umin174 = call i64 @llvm.umin.i64(i64 %i.ci, i64 4) ; 2 uses
  %i.cj = shl nuw nsw i64 %umin174, 2
  %i.ck = add nuw nsw i64 %i.cj, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.ck, i1 false), !tbaa !41
  %i.cl = sub nuw nsw i64 4, %umin174
  %i.cm = icmp ugt i64 %i.ch, 12
  br i1 %i.cm, label %bb.ay, label %.critedge.i.i.thread

bb.ay:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.ck
  %i.cn = ashr exact i64 %gepdiff, 2
  %i.co = sub i64 %i.cf, %i.cn
  br label %bb.ba

.critedge.i.i.thread:                             ; preds = %bb.ax, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i156 = phi i64 [ %i.cl, %.lr.ph.i.i.preheader ], [ 5, %bb.ax ] ; 3 uses
  %i.cp = sub i64 0, %i.cf
  %.not.i.i.i.i101 = icmp ugt i64 %.sroa.3.0.lcssa.i.i156, %i.cp
  br i1 %.not.i.i.i.i101, label %bb.az, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.cq = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i156, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cg, i8 0, i64 %i.cq, i1 false), !tbaa !41, !noalias !906
  %i.cr = add i64 %.sroa.3.0.lcssa.i.i156, %i.cf
  br label %bb.ba

bb.az:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc103 unwind label %bb.be

.noexc103:                                        ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.ay
  %storemerge.i.i = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.co, %bb.ay ]
  store i64 %storemerge.i.i, ptr %i.b, align 8, !tbaa !893
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.bi unwind label %bb.bf

bb.bb:                                            ; preds = %bb.av
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %.sink.split191 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.bd:                                            ; preds = %bb.aw
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.be:                                            ; preds = %bb.az
  %i.cu = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bg

bb.bf:                                            ; preds = %bb.ba
  %i.cv = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn70 = phi { ptr, i32 } [ %i.cv, %bb.bf ], [ %i.cu, %bb.be ] ; 2 uses
  %.10 = extractvalue { ptr, i32 } %.pn70, 1
  %.1041 = extractvalue { ptr, i32 } %.pn70, 0
  %i.cw = icmp eq i32 %.10, %i.o
  %i.cx = call ptr @__cxa_begin_catch(ptr %.1041) #25 ; 0 uses
  br i1 %i.cw, label %bb.bh, label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  %i.cy = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split192 unwind label %bb.bo ; 0 uses

.sink.split192:                                   ; preds = %bb.bh, %bb.bm
  call void @__cxa_end_catch()
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split192, %bb.ba
  %i.cz = load i64, ptr %i.b, align 8, !tbaa !895, !noalias !907 ; 5 uses
  %.idx.i.i104 = shl i64 %i.cz, 2                 ; 3 uses
  %i.da = getelementptr i8, ptr %1, i64 %.idx.i.i104
  %.not160 = icmp eq i64 %i.cz, 0
  br i1 %.not160, label %.critedge.i.i105.thread, label %.lr.ph.i.i119.preheader

.lr.ph.i.i119.preheader:                          ; preds = %bb.bi
  %i.db = add i64 %.idx.i.i104, -4                ; 2 uses
  %i.dc = lshr exact i64 %i.db, 2
  %umin177 = call i64 @llvm.umin.i64(i64 %i.dc, i64 4) ; 2 uses
  %i.dd = shl nuw nsw i64 %umin177, 2
  %i.de = add nuw nsw i64 %i.dd, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.de, i1 false), !tbaa !41
  %i.df = sub nuw nsw i64 4, %umin177
  %i.dg = icmp ugt i64 %i.db, 12
  br i1 %i.dg, label %bb.bj, label %.critedge.i.i105.thread

bb.bj:                                            ; preds = %.lr.ph.i.i119.preheader
  %gepdiff188 = sub i64 %.idx.i.i104, %i.de
  %i.dh = ashr exact i64 %gepdiff188, 2
  %i.di = sub i64 %i.cz, %i.dh
  br label %bb.bl

.critedge.i.i105.thread:                          ; preds = %bb.bi, %.lr.ph.i.i119.preheader
  %.sroa.3.0.lcssa.i.i106159 = phi i64 [ %i.df, %.lr.ph.i.i119.preheader ], [ 5, %bb.bi ] ; 3 uses
  %i.dj = sub i64 0, %i.cz
  %.not.i.i.i.i108 = icmp ugt i64 %.sroa.3.0.lcssa.i.i106159, %i.dj
  br i1 %.not.i.i.i.i108, label %bb.bk, label %.lr.ph.i.i.i.i.i.i.i.i111.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i111.preheader:              ; preds = %.critedge.i.i105.thread
  %i.dk = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i106159, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.da, i8 0, i64 %i.dk, i1 false), !tbaa !41, !noalias !908
  %i.dl = add i64 %.sroa.3.0.lcssa.i.i106159, %i.cz
  br label %bb.bl

bb.bk:                                            ; preds = %.critedge.i.i105.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc123 unwind label %bb.bp

.noexc123:                                        ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i111.preheader, %bb.bj
  %storemerge.i.i116 = phi i64 [ %i.dl, %.lr.ph.i.i.i.i.i.i.i.i111.preheader ], [ %i.di, %bb.bj ]
  store i64 %storemerge.i.i116, ptr %i.b, align 8, !tbaa !893
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.bt unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bg
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %.sink.split192 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.bo:                                            ; preds = %bb.bh
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.bp:                                            ; preds = %bb.bk
  %i.do = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.br

bb.bq:                                            ; preds = %bb.bl
  %i.dp = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn74 = phi { ptr, i32 } [ %i.dp, %bb.bq ], [ %i.do, %bb.bp ] ; 2 uses
  %.12 = extractvalue { ptr, i32 } %.pn74, 1
  %.1243 = extractvalue { ptr, i32 } %.pn74, 0
  %i.dq = icmp eq i32 %.12, %i.o
  %i.dr = call ptr @__cxa_begin_catch(ptr %.1243) #25 ; 0 uses
  br i1 %i.dq, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.ds = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split193 unwind label %bb.bx ; 0 uses

.sink.split193:                                   ; preds = %bb.bs, %bb.bv
  call void @__cxa_end_catch()
  br label %bb.bt

bb.bt:                                            ; preds = %.sink.split193, %bb.bl
  %i.dt = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !909
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %_ZN5boost9container13static_vectorI8value_ndLm0EvEC2INS0_12vec_iteratorIPS2_Lb0EEEEET_S8_.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc125 unwind label %bb.by

.noexc125:                                        ; preds = %bb.bu
  unreachable

_ZN5boost9container13static_vectorI8value_ndLm0EvEC2INS0_12vec_iteratorIPS2_Lb0EEEEET_S8_.exit: ; preds = %bb.bt
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 433, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.cc unwind label %bb.bz

bb.bv:                                            ; preds = %bb.br
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %.sink.split193 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.bx:                                            ; preds = %bb.bs
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.by:                                            ; preds = %bb.bu
  %i.dx = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ca

bb.bz:                                            ; preds = %_ZN5boost9container13static_vectorI8value_ndLm0EvEC2INS0_12vec_iteratorIPS2_Lb0EEEEET_S8_.exit
  %i.dy = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.pn78 = phi { ptr, i32 } [ %i.dy, %bb.bz ], [ %i.dx, %bb.by ] ; 2 uses
  %.14 = extractvalue { ptr, i32 } %.pn78, 1
  %.1445 = extractvalue { ptr, i32 } %.pn78, 0
  %i.dz = icmp eq i32 %.14, %i.o
  %i.ea = call ptr @__cxa_begin_catch(ptr %.1445) #25 ; 0 uses
  br i1 %i.dz, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.eb = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split194 unwind label %bb.cf ; 0 uses

.sink.split194:                                   ; preds = %bb.cb, %bb.cd
  call void @__cxa_end_catch()
  br label %bb.cc

bb.cc:                                            ; preds = %.sink.split194, %_ZN5boost9container13static_vectorI8value_ndLm0EvEC2INS0_12vec_iteratorIPS2_Lb0EEEEET_S8_.exit
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc126 unwind label %bb.cg

.noexc126:                                        ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %bb.ca
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 433, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %.sink.split194 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.cf:                                            ; preds = %bb.cb
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.cg:                                            ; preds = %bb.cc
  %i.ee = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.16 = extractvalue { ptr, i32 } %i.ee, 1
  %.1647 = extractvalue { ptr, i32 } %i.ee, 0
  %i.ef = icmp eq i32 %.16, %i.o
  %i.eg = call ptr @__cxa_begin_catch(ptr %.1647) #25 ; 0 uses
  br i1 %i.ef, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.eh = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ci unwind label %bb.cl     ; 0 uses

bb.ci:                                            ; preds = %bb.ch, %bb.cj
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  ret void

bb.cj:                                            ; preds = %bb.cg
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 434, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.ci unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.cl:                                            ; preds = %bb.ch
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.cm:                                            ; preds = %bb.cl, %bb.cf, %bb.bx, %bb.bo, %bb.bd, %bb.au, %bb.ai, %bb.y, %bb.o, %bb.g, %bb.ck, %bb.ce, %bb.bw, %bb.bn, %bb.bc, %bb.at, %bb.ah, %bb.x, %bb.n, %bb.f
  %.pn84.pn = phi { ptr, i32 } [ %i.ed, %bb.cf ], [ %i.ej, %bb.cl ], [ %i.ei, %bb.ck ], [ %i.dw, %bb.bx ], [ %i.ec, %bb.ce ], [ %i.dn, %bb.bo ], [ %i.dv, %bb.bw ], [ %i.ct, %bb.bd ], [ %i.dm, %bb.bn ], [ %i.by, %bb.au ], [ %i.cs, %bb.bc ], [ %i.at, %bb.ai ], [ %i.bx, %bb.at ], [ %i.ag, %bb.y ], [ %i.as, %bb.ah ], [ %i.w, %bb.o ], [ %i.af, %bb.x ], [ %i.m, %bb.g ], [ %i.v, %bb.n ], [ %i.l, %bb.f ]
end_hunk_5
begin_hunk_6_@_Z18test_capacity_0_ndI14counting_valueEvv:bb.a

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dr = add i64 %.idx.i, %i.do                  ; 2 uses
  %i.ds = getelementptr i8, ptr %1, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 -4
  %i.du = getelementptr i8, ptr %.lcssa10.i, i64 %i.do
  %i.dv = getelementptr i8, ptr %i.du, i64 -4
  %i.dw = getelementptr i8, ptr %1, i64 %.idx.i
  %i.dx = getelementptr i8, ptr %i.dw, i64 4
  %i.dy = getelementptr i8, ptr %1, i64 %i.dr
  %i.dz = getelementptr i8, ptr %.lcssa10.i, i64 4
  %bound0 = icmp ult ptr %i.ck, %i.dv
  %bound1 = icmp ult ptr %.lcssa10.i, %i.dt
  %found.conflict = and i1 %bound0, %bound1
  %bound0274 = icmp ult ptr %i.dx, %i.ci
  %bound1275 = icmp ult ptr %i.dz, %i.dy
  %found.conflict276 = and i1 %bound0274, %bound1275
  %conflict.rdx = or i1 %found.conflict, %found.conflict276
  br i1 %conflict.rdx, label %scalar.ph272.preheader, label %vector.ph277

vector.ph277:                                     ; preds = %vector.memcheck
  %n.vec278 = and i64 %i.dp, -4                   ; 3 uses
  %i.ea = shl nsw i64 %n.vec278, 3                ; 2 uses
  %i.eb = getelementptr i8, ptr %.lcssa10.i, i64 %i.ea
  %i.ec = and i64 %i.dp, 3
  %i.ed = getelementptr i8, ptr %i.ck, i64 %i.ea
  br label %vector.body279

vector.body279:                                   ; preds = %vector.body279, %vector.ph277
  %index280 = phi i64 [ 0, %vector.ph277 ], [ %index.next295, %vector.body279 ] ; 2 uses
  %i.ee = shl i64 %index280, 3                    ; 3 uses
  %i.ef = or disjoint i64 %i.ee, 16               ; 2 uses
  %next.gep281 = getelementptr i8, ptr %.lcssa10.i, i64 %i.ee
  %next.gep282 = getelementptr i8, ptr %.lcssa10.i, i64 %i.ef
  %next.gep283 = getelementptr i8, ptr %i.ck, i64 %i.ee ; 2 uses
  %next.gep285 = getelementptr i8, ptr %i.ck, i64 %i.ef ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep283) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep285) ]
  %wide.vec287 = load <4 x i32>, ptr %next.gep281, align 4, !tbaa !41, !noalias !970
  %wide.vec290 = load <4 x i32>, ptr %next.gep282, align 4, !tbaa !41, !noalias !970
  store <4 x i32> %wide.vec287, ptr %next.gep283, align 8, !tbaa !41, !noalias !970
  store <4 x i32> %wide.vec290, ptr %next.gep285, align 8, !tbaa !41, !noalias !970
  %index.next295 = add nuw i64 %index280, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next295, %n.vec278
  br i1 %i.eg, label %middle.block296, label %vector.body279, !llvm.loop !940

middle.block296:                                  ; preds = %vector.body279
  %cmp.n297 = icmp eq i64 %i.dp, %n.vec278
  br i1 %cmp.n297, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %scalar.ph272.preheader

scalar.ph272.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i, %middle.block296
  %.ph = phi ptr [ %.lcssa10.i, %vector.memcheck ], [ %.lcssa10.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.eb, %middle.block296 ] ; 2 uses
  %.015.i.i.i.i.i.i.i.ph = phi i64 [ %i.dp, %vector.memcheck ], [ %i.dp, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ec, %middle.block296 ] ; 4 uses
  %.01214.i.i.i.i.i.i.i.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ed, %middle.block296 ] ; 2 uses
  %i.eh = add nsw i64 %.015.i.i.i.i.i.i.i.ph, -1
  %xtraiter = and i64 %.015.i.i.i.i.i.i.i.ph, 7   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph272.prol.loopexit, label %scalar.ph272.prol

scalar.ph272.prol:                                ; preds = %scalar.ph272.preheader, %scalar.ph272.prol
  %i.ei = phi ptr [ %i.ek, %scalar.ph272.prol ], [ %.ph, %scalar.ph272.preheader ] ; 2 uses
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.em, %scalar.ph272.prol ], [ %.015.i.i.i.i.i.i.i.ph, %scalar.ph272.preheader ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.el, %scalar.ph272.prol ], [ %.01214.i.i.i.i.i.i.i.ph, %scalar.ph272.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph272.prol ], [ 0, %scalar.ph272.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i.prol) ]
  %i.ej = load <2 x i32>, ptr %i.ei, align 4, !tbaa !41, !noalias !970
  store <2 x i32> %i.ej, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !970
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.em = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph272.prol.loopexit, label %scalar.ph272.prol, !llvm.loop !941

scalar.ph272.prol.loopexit:                       ; preds = %scalar.ph272.prol, %scalar.ph272.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph272.preheader ], [ %i.ek, %scalar.ph272.prol ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %.015.i.i.i.i.i.i.i.ph, %scalar.ph272.preheader ], [ %i.em, %scalar.ph272.prol ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %.01214.i.i.i.i.i.i.i.ph, %scalar.ph272.preheader ], [ %i.el, %scalar.ph272.prol ]
  %i.en = icmp ult i64 %i.eh, 7
  br i1 %i.en, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %scalar.ph272

scalar.ph272:                                     ; preds = %scalar.ph272.prol.loopexit, %scalar.ph272
  %i.eo = phi ptr [ %i.fl, %scalar.ph272 ], [ %.unr, %scalar.ph272.prol.loopexit ] ; 9 uses
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.fn, %scalar.ph272 ], [ %.015.i.i.i.i.i.i.i.unr, %scalar.ph272.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.fm, %scalar.ph272 ], [ %.01214.i.i.i.i.i.i.i.unr, %scalar.ph272.prol.loopexit ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i) ]
  %i.ep = load <2 x i32>, ptr %i.eo, align 4, !tbaa !41, !noalias !970
  store <2 x i32> %i.ep, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !970
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.es = load <2 x i32>, ptr %i.eq, align 4, !tbaa !41, !noalias !970
  store <2 x i32> %i.es, ptr %i.er, align 4, !tbaa !41, !noalias !970
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.ev = load <2 x i32>, ptr %i.et, align 4, !tbaa !41, !noalias !970
  store <2 x i32> %i.ev, ptr %i.eu, align 4, !tbaa !41, !noalias !970
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 24
  %i.ey = load <2 x i32>, ptr %i.ew, align 4, !tbaa !41, !noalias !970
  store <2 x i32> %i.ey, ptr %i.ex, align 4, !tbaa !41, !noalias !970
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 32
  %i.fb = load <2 x i32>, ptr %i.ez, align 4, !tbaa !41, !noalias !970
  store <2 x i32> %i.fb, ptr %i.fa, align 4, !tbaa !41, !noalias !970
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.fd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 40
  %i.fe = load <2 x i32>, ptr %i.fc, align 4, !tbaa !41, !noalias !970
  store <2 x i32> %i.fe, ptr %i.fd, align 4, !tbaa !41, !noalias !970
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.fg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 48
  %i.fh = load <2 x i32>, ptr %i.ff, align 4, !tbaa !41, !noalias !970
  store <2 x i32> %i.fh, ptr %i.fg, align 4, !tbaa !41, !noalias !970
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.fj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 56
  %i.fk = load <2 x i32>, ptr %i.fi, align 4, !tbaa !41, !noalias !970
  store <2 x i32> %i.fk, ptr %i.fj, align 4, !tbaa !41, !noalias !970
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.fm = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 64
  %i.fn = add i64 %.015.i.i.i.i.i.i.i, -8         ; 2 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.fn, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %scalar.ph272, !llvm.loop !942

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc99 unwind label %bb.bp

.noexc99:                                         ; preds = %bb.bi
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i: ; preds = %scalar.ph272.prol.loopexit, %scalar.ph272, %middle.block296
  %i.fo = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i, %i.dp
  store i64 %i.fo, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !970
  %i.fp = add i64 %i.dp, %.fr
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %storemerge.i = phi i64 [ %i.fp, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i ], [ %i.dl, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !tbaa !959
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.bs unwind label %bb.bp

bb.bk:                                            ; preds = %bb.bc
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  invoke void @__cxa_end_catch()
          to label %bb.bf unwind label %bb.e

bb.bm:                                            ; preds = %bb.bk
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.du

bb.bn:                                            ; preds = %bb.bd
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.du

bb.bo:                                            ; preds = %bb.be
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.bp:                                            ; preds = %bb.bi, %bb.bj
  %i.ft = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  %i.fv = extractvalue { ptr, i32 } %i.ft, 1
  %i.fw = icmp eq i32 %i.fv, %i.x
  %i.fx = call ptr @__cxa_begin_catch(ptr %i.fu) #25 ; 0 uses
  br i1 %i.fw, label %bb.bq, label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  %i.fy = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.br unwind label %bb.bz     ; 0 uses

bb.br:                                            ; preds = %bb.bq
  invoke void @__cxa_end_catch()
          to label %bb.bs unwind label %bb.ca

bb.bs:                                            ; preds = %bb.br, %bb.bx, %bb.bj
  %i.fz = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ga = add i64 %i.fz, 1                        ; 4 uses
  store i64 %i.ga, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.gb = load i64, ptr %i.d, align 8, !tbaa !961, !noalias !971 ; 5 uses
  %.idx.i.i = shl i64 %i.gb, 3                    ; 4 uses
  %i.gc = getelementptr i8, ptr %1, i64 %.idx.i.i
  %.not = icmp eq i64 %i.gb, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.bs
  %i.gd = add i64 %.idx.i.i, -8                   ; 2 uses
  %i.ge = lshr exact i64 %i.gd, 3
  %umin = call i64 @llvm.umin.i64(i64 %i.ge, i64 4) ; 2 uses
  %i.gf = shl nuw nsw i64 %umin, 3
  %i.gg = add nuw nsw i64 %i.gf, 8                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.gg, i1 false), !tbaa !41
  %i.gh = sub nuw nsw i64 4, %umin
  %i.gi = icmp ugt i64 %i.gd, 24
  br i1 %i.gi, label %bb.bt, label %.critedge.i.i.thread

bb.bt:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.gg
  %i.gj = ashr exact i64 %gepdiff, 3              ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %.idx.i.i, %i.gg
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.bt
  %i.gk = sub i64 %i.ga, %i.gj                    ; 2 uses
  store i64 %i.gk, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.bt
  %i.gl = phi i64 [ %i.gk, %.lr.ph.preheader.i.i.i.i ], [ %i.ga, %bb.bt ]
  %i.gm = sub i64 %i.gb, %i.gj
  br label %bb.bv

.critedge.i.i.thread:                             ; preds = %bb.bs, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i194 = phi i64 [ %i.gh, %.lr.ph.i.i.preheader ], [ 5, %bb.bs ] ; 4 uses
  %i.gn = sub i64 0, %i.gb
  %.not.i.i.i.i100 = icmp ugt i64 %.sroa.3.0.lcssa.i.i194, %i.gn
  br i1 %.not.i.i.i.i100, label %bb.bu, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.go = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i194, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gc, i8 0, i64 %i.go, i1 false), !tbaa !41, !noalias !972
  %i.gp = add i64 %.sroa.3.0.lcssa.i.i194, %i.ga  ; 2 uses
  store i64 %i.gp, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !972
  %i.gq = add i64 %.sroa.3.0.lcssa.i.i194, %i.gb
  br label %bb.bv

bb.bu:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc102 unwind label %bb.cb

.noexc102:                                        ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i
  %i.gr = phi i64 [ %i.gp, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gl, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  %storemerge.i.i = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gm, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  store i64 %storemerge.i.i, ptr %i.d, align 8, !tbaa !959
  %i.gs = add i64 %i.gr, -1
  store i64 %i.gs, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.cg unwind label %bb.cc

bb.bw:                                            ; preds = %bb.bp
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw
  invoke void @__cxa_end_catch()
          to label %bb.bs unwind label %bb.e

bb.by:                                            ; preds = %bb.bw
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.du

bb.bz:                                            ; preds = %bb.bq
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.du

bb.ca:                                            ; preds = %bb.br
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.cb:                                            ; preds = %bb.bu
  %i.gw = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.gx = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.gy = add i64 %i.gx, -1
  store i64 %i.gy, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bv
  %i.gz = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn70 = phi { ptr, i32 } [ %i.gz, %bb.cc ], [ %i.gw, %bb.cb ] ; 2 uses
  %.10 = extractvalue { ptr, i32 } %.pn70, 1
  %.1041 = extractvalue { ptr, i32 } %.pn70, 0
  %i.ha = icmp eq i32 %.10, %i.x
  %i.hb = call ptr @__cxa_begin_catch(ptr %.1041) #25 ; 0 uses
  br i1 %i.ha, label %bb.ce, label %bb.ck

bb.ce:                                            ; preds = %bb.cd
  %i.hc = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.cf unwind label %bb.cn     ; 0 uses

bb.cf:                                            ; preds = %bb.ce
  invoke void @__cxa_end_catch()
          to label %bb.cg unwind label %bb.co

bb.cg:                                            ; preds = %bb.cf, %bb.cl, %bb.bv
  %i.hd = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.he = add i64 %i.hd, 1                        ; 4 uses
  store i64 %i.he, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.hf = load i64, ptr %i.d, align 8, !tbaa !961, !noalias !973 ; 5 uses
  %.idx.i.i103 = shl i64 %i.hf, 3                 ; 4 uses
  %i.hg = getelementptr i8, ptr %1, i64 %.idx.i.i103
  %.not198 = icmp eq i64 %i.hf, 0
  br i1 %.not198, label %.critedge.i.i104.thread, label %.lr.ph.i.i121.preheader

.lr.ph.i.i121.preheader:                          ; preds = %bb.cg
  %i.hh = add i64 %.idx.i.i103, -8                ; 2 uses
  %i.hi = lshr exact i64 %i.hh, 3
  %umin211 = call i64 @llvm.umin.i64(i64 %i.hi, i64 4) ; 2 uses
  %i.hj = shl nuw nsw i64 %umin211, 3
  %i.hk = add nuw nsw i64 %i.hj, 8                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.hk, i1 false), !tbaa !41
  %i.hl = sub nuw nsw i64 4, %umin211
  %i.hm = icmp ugt i64 %i.hh, 24
  br i1 %i.hm, label %bb.ch, label %.critedge.i.i104.thread

bb.ch:                                            ; preds = %.lr.ph.i.i121.preheader
  %gepdiff226 = sub i64 %.idx.i.i103, %i.hk
  %i.hn = ashr exact i64 %gepdiff226, 3           ; 2 uses
  %.not3.i.i.i.i117 = icmp eq i64 %.idx.i.i103, %i.hk
  br i1 %.not3.i.i.i.i117, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i120, label %.lr.ph.preheader.i.i.i.i118

.lr.ph.preheader.i.i.i.i118:                      ; preds = %bb.ch
  %i.ho = sub i64 %i.he, %i.hn                    ; 2 uses
  store i64 %i.ho, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i120

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i120: ; preds = %.lr.ph.preheader.i.i.i.i118, %bb.ch
  %i.hp = phi i64 [ %i.ho, %.lr.ph.preheader.i.i.i.i118 ], [ %i.he, %bb.ch ]
  %i.hq = sub i64 %i.hf, %i.hn
  br label %bb.cj

.critedge.i.i104.thread:                          ; preds = %bb.cg, %.lr.ph.i.i121.preheader
  %.sroa.3.0.lcssa.i.i105197 = phi i64 [ %i.hl, %.lr.ph.i.i121.preheader ], [ 5, %bb.cg ] ; 4 uses
  %i.hr = sub i64 0, %i.hf
  %.not.i.i.i.i107 = icmp ugt i64 %.sroa.3.0.lcssa.i.i105197, %i.hr
  br i1 %.not.i.i.i.i107, label %bb.ci, label %.lr.ph.i.i.i.i.i.i.i.i108.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i108.preheader:              ; preds = %.critedge.i.i104.thread
  %i.hs = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i105197, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.hg, i8 0, i64 %i.hs, i1 false), !tbaa !41, !noalias !974
  %i.ht = add i64 %.sroa.3.0.lcssa.i.i105197, %i.he ; 2 uses
  store i64 %i.ht, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !974
  %i.hu = add i64 %.sroa.3.0.lcssa.i.i105197, %i.hf
  br label %bb.cj

bb.ci:                                            ; preds = %.critedge.i.i104.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc127 unwind label %bb.cp

.noexc127:                                        ; preds = %bb.ci
  unreachable

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i108.preheader, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i120
  %i.hv = phi i64 [ %i.ht, %.lr.ph.i.i.i.i.i.i.i.i108.preheader ], [ %i.hp, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i120 ]
  %storemerge.i.i116 = phi i64 [ %i.hu, %.lr.ph.i.i.i.i.i.i.i.i108.preheader ], [ %i.hq, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i120 ]
  store i64 %storemerge.i.i116, ptr %i.d, align 8, !tbaa !959
  %i.hw = add i64 %i.hv, -1
  store i64 %i.hw, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.cu unwind label %bb.cq

bb.ck:                                            ; preds = %bb.cd
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.cl unwind label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  invoke void @__cxa_end_catch()
          to label %bb.cg unwind label %bb.e

bb.cm:                                            ; preds = %bb.ck
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.du

bb.cn:                                            ; preds = %bb.ce
  %i.hy = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.du

bb.co:                                            ; preds = %bb.cf
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.cp:                                            ; preds = %bb.ci
  %i.ia = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.ib = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ic = add i64 %i.ib, -1
  store i64 %i.ic, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cj
  %i.id = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.pn74 = phi { ptr, i32 } [ %i.id, %bb.cq ], [ %i.ia, %bb.cp ] ; 2 uses
  %.12 = extractvalue { ptr, i32 } %.pn74, 1
  %.1243 = extractvalue { ptr, i32 } %.pn74, 0
  %i.ie = icmp eq i32 %.12, %i.x
  %i.if = call ptr @__cxa_begin_catch(ptr %.1243) #25 ; 0 uses
  br i1 %i.ie, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %bb.cr
  %i.ig = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ct unwind label %bb.cz     ; 0 uses

bb.ct:                                            ; preds = %bb.cs
  invoke void @__cxa_end_catch()
          to label %bb.cu unwind label %bb.da

bb.cu:                                            ; preds = %bb.ct, %bb.cx, %bb.cj
  %i.ih = load i64, ptr %i.b, align 8, !tbaa !102, !noalias !975
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %_ZN5boost9container13static_vectorI14counting_valueLm0EvEC2INS0_12vec_iteratorIPS2_Lb0EEEEET_S8_.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc129 unwind label %bb.db

.noexc129:                                        ; preds = %bb.cv
  unreachable

_ZN5boost9container13static_vectorI14counting_valueLm0EvEC2INS0_12vec_iteratorIPS2_Lb0EEEEET_S8_.exit: ; preds = %bb.cu
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 433, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit unwind label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit133

bb.cw:                                            ; preds = %bb.cr
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.cx unwind label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  invoke void @__cxa_end_catch()
          to label %bb.cu unwind label %bb.e

bb.cy:                                            ; preds = %bb.cw
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.du

bb.cz:                                            ; preds = %bb.cs
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.du

bb.da:                                            ; preds = %bb.ct
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.db:                                            ; preds = %bb.cv
  %i.im = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.dc

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit133: ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm0EvEC2INS0_12vec_iteratorIPS2_Lb0EEEEET_S8_.exit
  %i.in = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.dc

bb.dc:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit133, %bb.db
  %.pn78 = phi { ptr, i32 } [ %i.in, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit133 ], [ %i.im, %bb.db ] ; 2 uses
  %.14 = extractvalue { ptr, i32 } %.pn78, 1
  %.1445 = extractvalue { ptr, i32 } %.pn78, 0
  %i.io = icmp eq i32 %.14, %i.x
  %i.ip = call ptr @__cxa_begin_catch(ptr %.1445) #25 ; 0 uses
  br i1 %i.io, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.iq = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.de unwind label %bb.di     ; 0 uses

bb.de:                                            ; preds = %bb.dd
  invoke void @__cxa_end_catch()
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit unwind label %bb.dj

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit: ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm0EvEC2INS0_12vec_iteratorIPS2_Lb0EEEEET_S8_.exit, %bb.de, %bb.dg
  %i.ir = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.is = add i64 %i.ir, 1
  store i64 %i.is, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc134 unwind label %bb.dk

.noexc134:                                        ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit
  unreachable

bb.df:                                            ; preds = %bb.dc
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 433, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.dg unwind label %bb.dh

bb.dg:                                            ; preds = %bb.df
  invoke void @__cxa_end_catch()
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit unwind label %bb.e

bb.dh:                                            ; preds = %bb.df
  %i.it = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.du

bb.di:                                            ; preds = %bb.dd
end_hunk_6
begin_hunk_7_@_Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv:_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.cg, i1 false), !tbaa !82
  %scevgep = getelementptr i8, ptr %1, i64 %i.cg
  %scevgep260 = getelementptr i8, ptr %0, i64 %i.cg
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i.preheader, %bb.be
  %.sroa.07.0.lcssa.i = phi ptr [ %1, %bb.be ], [ %scevgep, %.lr.ph.i.preheader ] ; 2 uses
  %.lcssa11.i = phi ptr [ %0, %bb.be ], [ %scevgep260, %.lr.ph.i.preheader ] ; 3 uses
  %i.ch = icmp eq ptr %.lcssa11.i, %i.bw
  br i1 %i.ch, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.critedge.i
  %i.ci = ptrtoint ptr %i.by to i64
  %i.cj = ptrtoint ptr %.sroa.07.0.lcssa.i to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2                 ; 8 uses
  %.not3.i.i.i = icmp eq ptr %i.by, %.sroa.07.0.lcssa.i
  br i1 %.not3.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.bf
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cm ; 3 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted237 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check286 = icmp ult i64 %i.cl, 8
  br i1 %min.iters.check286, label %.lr.ph.i.i.i99.preheader, label %vector.ph287

vector.ph287:                                     ; preds = %.lr.ph.i.preheader.i.i
  %n.vec288 = and i64 %i.cl, -8                   ; 3 uses
  %i.co = and i64 %i.cl, 7
  %i.cp = shl nsw i64 %n.vec288, 2
  %i.cq = getelementptr i8, ptr %i.cn, i64 %i.cp
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph287
  %index290 = phi i64 [ 0, %vector.ph287 ], [ %index.next291, %vector.body289 ] ; 2 uses
  %i.cr = shl i64 %index290, 2
  %next.gep = getelementptr i8, ptr %i.cn, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 4, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.cs, align 4, !tbaa !82
  %index.next291 = add nuw i64 %index290, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next291, %n.vec288
  br i1 %i.ct, label %middle.block292, label %vector.body289, !llvm.loop !996

middle.block292:                                  ; preds = %vector.body289
  %cmp.n293 = icmp eq i64 %i.cl, %n.vec288
  br i1 %cmp.n293, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, label %.lr.ph.i.i.i99.preheader

.lr.ph.i.i.i99.preheader:                         ; preds = %.lr.ph.i.preheader.i.i, %middle.block292
  %.05.i.i.i.ph = phi i64 [ %i.cl, %.lr.ph.i.preheader.i.i ], [ %i.co, %middle.block292 ]
  %storemerge4.i.i.i.ph = phi ptr [ %i.cn, %.lr.ph.i.preheader.i.i ], [ %i.cq, %middle.block292 ]
  br label %.lr.ph.i.i.i99

.lr.ph.i.i.i99:                                   ; preds = %.lr.ph.i.i.i99.preheader, %.lr.ph.i.i.i99
  %.05.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i99 ], [ %.05.i.i.i.ph, %.lr.ph.i.i.i99.preheader ]
  %storemerge4.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i99 ], [ %storemerge4.i.i.i.ph, %.lr.ph.i.i.i99.preheader ] ; 2 uses
  %i.cu = add i64 %.05.i.i.i, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i, align 4, !tbaa !82
  %i.cv = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 4
  %.not.i.i.i100 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i100, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, label %.lr.ph.i.i.i99, !llvm.loop !997

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit: ; preds = %.lr.ph.i.i.i99, %middle.block292
  %i.cw = trunc i64 %i.cl to i32
  %i.cx = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted237, %i.cw
  store i32 %i.cx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, %bb.bf
  %i.cy = sub i64 %.fr, %i.cl
  br label %bb.bi

bb.bg:                                            ; preds = %.critedge.i
  %i.cz = ptrtoint ptr %i.bw to i64
  %i.da = ptrtoint ptr %.lcssa11.i to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 2 uses
  %i.dc = ashr exact i64 %i.db, 2                 ; 7 uses
  %i.dd = sub i64 0, %.fr
  %.not.i.i2.i = icmp ugt i64 %i.dc, %i.dd
  br i1 %.not.i.i2.i, label %bb.bh, label %.lr.ph.i.i.i.i.i.i.i95.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i95.preheader:                 ; preds = %bb.bg
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted236 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1045 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.by, ptr align 4 %.lcssa11.i, i64 %i.db, i1 false), !tbaa !82, !noalias !1045
  %min.iters.check = icmp ult i64 %i.dc, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i95.preheader368, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i95.preheader
  %n.vec = and i64 %i.dc, -8                      ; 2 uses
  %i.de = and i64 %i.dc, 7
  %i.df = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted236, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.df, %vector.ph ], [ %i.dg, %vector.body ]
  %vec.phi283 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dh, %vector.body ]
  %i.dg = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.dh = add <4 x i32> %vec.phi283, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !1004

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dh, %i.dg
  %i.dj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i95.preheader368

.lr.ph.i.i.i.i.i.i.i95.preheader368:              ; preds = %.lr.ph.i.i.i.i.i.i.i95.preheader, %middle.block
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted236, %.lr.ph.i.i.i.i.i.i.i95.preheader ], [ %i.dj, %middle.block ]
  %.015.i.i.i.i.i.i.i96.ph = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i.i.i95.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i95

.lr.ph.i.i.i.i.i.i.i95:                           ; preds = %.lr.ph.i.i.i.i.i.i.i95.preheader368, %.lr.ph.i.i.i.i.i.i.i95
  %i.dk = phi i32 [ %i.dl, %.lr.ph.i.i.i.i.i.i.i95 ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i95.preheader368 ]
  %.015.i.i.i.i.i.i.i96 = phi i64 [ %i.dm, %.lr.ph.i.i.i.i.i.i.i95 ], [ %.015.i.i.i.i.i.i.i96.ph, %.lr.ph.i.i.i.i.i.i.i95.preheader368 ]
  %i.dl = add i32 %i.dk, 1                        ; 2 uses
  %i.dm = add i64 %.015.i.i.i.i.i.i.i96, -1       ; 2 uses
  %.not.i.i.i.i.i.i.i98 = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i.i98, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i95, !llvm.loop !1005

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc101 unwind label %bb.bo

.noexc101:                                        ; preds = %bb.bh
  unreachable

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i95, %middle.block
  %.lcssa = phi i32 [ %i.dj, %middle.block ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i95 ]
  store i32 %.lcssa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1045
  %i.dn = add i64 %i.dc, %.fr
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %storemerge.i = phi i64 [ %i.dn, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i ], [ %i.cy, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !tbaa !1034
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.br unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bb
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @__cxa_end_catch()
          to label %bb.be unwind label %bb.d

bb.bl:                                            ; preds = %bb.bj
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.bm:                                            ; preds = %bb.bc
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.bn:                                            ; preds = %bb.bd
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.bo:                                            ; preds = %bb.bh, %bb.bi
  %i.dr = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  %i.dt = extractvalue { ptr, i32 } %i.dr, 1
  %i.du = icmp eq i32 %i.dt, %i.x
  %i.dv = call ptr @__cxa_begin_catch(ptr %i.ds) #25 ; 0 uses
  br i1 %i.du, label %bb.bp, label %bb.bv

bb.bp:                                            ; preds = %bb.bo
  %i.dw = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bq unwind label %bb.by     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bz

bb.br:                                            ; preds = %bb.bq, %bb.bw, %bb.bi
  %i.dx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dy = add i32 %i.dx, 1                        ; 4 uses
  store i32 %i.dy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dz = load i64, ptr %i.d, align 8, !tbaa !1036, !noalias !1046 ; 5 uses
  %.idx.i.i = shl i64 %i.dz, 2                    ; 4 uses
  %i.ea = getelementptr i8, ptr %1, i64 %.idx.i.i ; 2 uses
  %.not = icmp eq i64 %i.dz, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.br
  %i.eb = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.ec = lshr exact i64 %i.eb, 2
  %umin261 = call i64 @llvm.umin.i64(i64 %i.ec, i64 4) ; 2 uses
  %i.ed = shl nuw nsw i64 %umin261, 2
  %i.ee = add nuw nsw i64 %i.ed, 4                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.ee, i1 false), !tbaa !82
  %i.ef = sub nuw nsw i64 4, %umin261
  %i.eg = icmp ugt i64 %i.eb, 12
  br i1 %i.eg, label %bb.bs, label %.critedge.i.i.thread

bb.bs:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.ee
  %i.eh = ashr exact i64 %gepdiff, 2              ; 8 uses
  %.not3.i.i.i.i = icmp eq i64 %.idx.i.i, %i.ee
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.bs
  %i.ei = sub nsw i64 0, %i.eh
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.ei ; 3 uses
  %min.iters.check297 = icmp ult i64 %i.eh, 8
  br i1 %min.iters.check297, label %.lr.ph.i.i.i.i102.preheader, label %vector.ph298

vector.ph298:                                     ; preds = %.lr.ph.i.preheader.i.i.i
  %n.vec299 = and i64 %i.eh, -8                   ; 3 uses
  %i.ek = and i64 %i.eh, 7
  %i.el = shl nsw i64 %n.vec299, 2
  %i.em = getelementptr i8, ptr %i.ej, i64 %i.el
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph298
  %index301 = phi i64 [ 0, %vector.ph298 ], [ %index.next303, %vector.body300 ] ; 2 uses
  %i.en = shl i64 %index301, 2
  %next.gep302 = getelementptr i8, ptr %i.ej, i64 %i.en ; 2 uses
  %i.eo = getelementptr i8, ptr %next.gep302, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep302, align 4, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.eo, align 4, !tbaa !82
  %index.next303 = add nuw i64 %index301, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next303, %n.vec299
  br i1 %i.ep, label %middle.block304, label %vector.body300, !llvm.loop !1008

middle.block304:                                  ; preds = %vector.body300
  %cmp.n305 = icmp eq i64 %i.eh, %n.vec299
  br i1 %cmp.n305, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, label %.lr.ph.i.i.i.i102.preheader

.lr.ph.i.i.i.i102.preheader:                      ; preds = %.lr.ph.i.preheader.i.i.i, %middle.block304
  %.05.i.i.i.i.ph = phi i64 [ %i.eh, %.lr.ph.i.preheader.i.i.i ], [ %i.ek, %middle.block304 ]
  %storemerge4.i.i.i.i.ph = phi ptr [ %i.ej, %.lr.ph.i.preheader.i.i.i ], [ %i.em, %middle.block304 ]
  br label %.lr.ph.i.i.i.i102

.lr.ph.i.i.i.i102:                                ; preds = %.lr.ph.i.i.i.i102.preheader, %.lr.ph.i.i.i.i102
  %.05.i.i.i.i = phi i64 [ %i.eq, %.lr.ph.i.i.i.i102 ], [ %.05.i.i.i.i.ph, %.lr.ph.i.i.i.i102.preheader ]
  %storemerge4.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i102 ], [ %storemerge4.i.i.i.i.ph, %.lr.ph.i.i.i.i102.preheader ] ; 2 uses
  %i.eq = add i64 %.05.i.i.i.i, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i, align 4, !tbaa !82
  %i.er = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  %.not.i.i.i.i103 = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i.i.i103, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, label %.lr.ph.i.i.i.i102, !llvm.loop !1009

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit: ; preds = %.lr.ph.i.i.i.i102, %middle.block304
  %i.es = trunc i64 %i.eh to i32
  %i.et = sub i32 %i.dy, %i.es                    ; 2 uses
  store i32 %i.et, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, %bb.bs
  %i.eu = phi i32 [ %i.et, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit ], [ %i.dy, %bb.bs ]
  %i.ev = sub i64 %i.dz, %i.eh
  br label %bb.bu

.critedge.i.i.thread:                             ; preds = %bb.br, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i222 = phi i64 [ %i.ef, %.lr.ph.i.i.preheader ], [ 5, %bb.br ] ; 4 uses
  %i.ew = sub i64 0, %i.dz
  %.not.i.i2.i.i = icmp ugt i64 %.sroa.3.0.lcssa.i.i222, %i.ew
  br i1 %.not.i.i2.i.i, label %bb.bt, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.ex = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i222, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ea, i8 0, i64 %i.ex, i1 false), !tbaa !82, !noalias !1047
  %i.ey = trunc nuw nsw i64 %.sroa.3.0.lcssa.i.i222 to i32
  %i.ez = add i32 %i.dy, %i.ey                    ; 2 uses
  store i32 %i.ez, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1047
  %i.fa = add i64 %.sroa.3.0.lcssa.i.i222, %i.dz
  br label %bb.bu

bb.bt:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc105 unwind label %bb.ca

.noexc105:                                        ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i
  %i.fb = phi i32 [ %i.ez, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.eu, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  %storemerge.i.i = phi i64 [ %i.fa, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ev, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  store i64 %storemerge.i.i, ptr %i.d, align 8, !tbaa !1034
  %i.fc = add i32 %i.fb, -1
  store i32 %i.fc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.cf unwind label %bb.cb

bb.bv:                                            ; preds = %bb.bo
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.d

bb.bx:                                            ; preds = %bb.bv
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.by:                                            ; preds = %bb.bp
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.bz:                                            ; preds = %bb.bq
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.ca:                                            ; preds = %bb.bt
  %i.fg = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.fh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.fi = add i32 %i.fh, -1
  store i32 %i.fi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bu
  %i.fj = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pn70 = phi { ptr, i32 } [ %i.fj, %bb.cb ], [ %i.fg, %bb.ca ] ; 2 uses
  %.10 = extractvalue { ptr, i32 } %.pn70, 1
  %.1041 = extractvalue { ptr, i32 } %.pn70, 0
  %i.fk = icmp eq i32 %.10, %i.x
  %i.fl = call ptr @__cxa_begin_catch(ptr %.1041) #25 ; 0 uses
  br i1 %i.fk, label %bb.cd, label %bb.cj

bb.cd:                                            ; preds = %bb.cc
  %i.fm = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ce unwind label %bb.cm     ; 0 uses

bb.ce:                                            ; preds = %bb.cd
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cn

bb.cf:                                            ; preds = %bb.ce, %bb.ck, %bb.bu
  %i.fn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.fo = add i32 %i.fn, 1                        ; 4 uses
  store i32 %i.fo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.fp = load i64, ptr %i.d, align 8, !tbaa !1036, !noalias !1048 ; 5 uses
  %.idx.i.i106 = shl i64 %i.fp, 2                 ; 4 uses
  %i.fq = getelementptr i8, ptr %1, i64 %.idx.i.i106 ; 2 uses
  %.not226 = icmp eq i64 %i.fp, 0
  br i1 %.not226, label %.critedge.i.i107.thread, label %.lr.ph.i.i126.preheader

.lr.ph.i.i126.preheader:                          ; preds = %bb.cf
  %i.fr = add i64 %.idx.i.i106, -4                ; 2 uses
  %i.fs = lshr exact i64 %i.fr, 2
  %umin264 = call i64 @llvm.umin.i64(i64 %i.fs, i64 4) ; 2 uses
  %i.ft = shl nuw nsw i64 %umin264, 2
  %i.fu = add nuw nsw i64 %i.ft, 4                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.fu, i1 false), !tbaa !82
  %i.fv = sub nuw nsw i64 4, %umin264
  %i.fw = icmp ugt i64 %i.fr, 12
  br i1 %i.fw, label %bb.cg, label %.critedge.i.i107.thread

bb.cg:                                            ; preds = %.lr.ph.i.i126.preheader
  %gepdiff282 = sub i64 %.idx.i.i106, %i.fu
  %i.fx = ashr exact i64 %gepdiff282, 2           ; 8 uses
  %.not3.i.i.i.i117 = icmp eq i64 %.idx.i.i106, %i.fu
  br i1 %.not3.i.i.i.i117, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123, label %.lr.ph.i.preheader.i.i.i118

.lr.ph.i.preheader.i.i.i118:                      ; preds = %bb.cg
  %i.fy = sub nsw i64 0, %i.fx
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fy ; 3 uses
  %min.iters.check309 = icmp ult i64 %i.fx, 8
  br i1 %min.iters.check309, label %.lr.ph.i.i.i.i119.preheader, label %vector.ph310

vector.ph310:                                     ; preds = %.lr.ph.i.preheader.i.i.i118
  %n.vec311 = and i64 %i.fx, -8                   ; 3 uses
  %i.ga = and i64 %i.fx, 7
  %i.gb = shl nsw i64 %n.vec311, 2
  %i.gc = getelementptr i8, ptr %i.fz, i64 %i.gb
  br label %vector.body312

vector.body312:                                   ; preds = %vector.body312, %vector.ph310
  %index313 = phi i64 [ 0, %vector.ph310 ], [ %index.next315, %vector.body312 ] ; 2 uses
  %i.gd = shl i64 %index313, 2
  %next.gep314 = getelementptr i8, ptr %i.fz, i64 %i.gd ; 2 uses
  %i.ge = getelementptr i8, ptr %next.gep314, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep314, align 4, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.ge, align 4, !tbaa !82
  %index.next315 = add nuw i64 %index313, 8       ; 2 uses
  %i.gf = icmp eq i64 %index.next315, %n.vec311
  br i1 %i.gf, label %middle.block316, label %vector.body312, !llvm.loop !1016

middle.block316:                                  ; preds = %vector.body312
  %cmp.n317 = icmp eq i64 %i.fx, %n.vec311
  br i1 %cmp.n317, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123.loopexit, label %.lr.ph.i.i.i.i119.preheader

.lr.ph.i.i.i.i119.preheader:                      ; preds = %.lr.ph.i.preheader.i.i.i118, %middle.block316
  %.05.i.i.i.i120.ph = phi i64 [ %i.fx, %.lr.ph.i.preheader.i.i.i118 ], [ %i.ga, %middle.block316 ]
  %storemerge4.i.i.i.i121.ph = phi ptr [ %i.fz, %.lr.ph.i.preheader.i.i.i118 ], [ %i.gc, %middle.block316 ]
  br label %.lr.ph.i.i.i.i119

.lr.ph.i.i.i.i119:                                ; preds = %.lr.ph.i.i.i.i119.preheader, %.lr.ph.i.i.i.i119
  %.05.i.i.i.i120 = phi i64 [ %i.gg, %.lr.ph.i.i.i.i119 ], [ %.05.i.i.i.i120.ph, %.lr.ph.i.i.i.i119.preheader ]
  %storemerge4.i.i.i.i121 = phi ptr [ %i.gh, %.lr.ph.i.i.i.i119 ], [ %storemerge4.i.i.i.i121.ph, %.lr.ph.i.i.i.i119.preheader ] ; 2 uses
  %i.gg = add i64 %.05.i.i.i.i120, -1             ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i121, align 4, !tbaa !82
  %i.gh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i121, i64 4
  %.not.i.i.i.i122 = icmp eq i64 %i.gg, 0
  br i1 %.not.i.i.i.i122, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123.loopexit, label %.lr.ph.i.i.i.i119, !llvm.loop !1017

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123.loopexit: ; preds = %.lr.ph.i.i.i.i119, %middle.block316
  %i.gi = trunc i64 %i.fx to i32
  %i.gj = sub i32 %i.fo, %i.gi                    ; 2 uses
  store i32 %i.gj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123.loopexit, %bb.cg
  %i.gk = phi i32 [ %i.gj, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123.loopexit ], [ %i.fo, %bb.cg ]
  %i.gl = sub i64 %i.fp, %i.fx
  br label %bb.ci

.critedge.i.i107.thread:                          ; preds = %bb.cf, %.lr.ph.i.i126.preheader
  %.sroa.3.0.lcssa.i.i108225 = phi i64 [ %i.fv, %.lr.ph.i.i126.preheader ], [ 5, %bb.cf ] ; 4 uses
  %i.gm = sub i64 0, %i.fp
  %.not.i.i2.i.i110 = icmp ugt i64 %.sroa.3.0.lcssa.i.i108225, %i.gm
  br i1 %.not.i.i2.i.i110, label %bb.ch, label %.lr.ph.i.i.i.i.i.i.i.i111.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i111.preheader:              ; preds = %.critedge.i.i107.thread
  %i.gn = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i108225, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fq, i8 0, i64 %i.gn, i1 false), !tbaa !82, !noalias !1049
  %i.go = trunc nuw nsw i64 %.sroa.3.0.lcssa.i.i108225 to i32
  %i.gp = add i32 %i.fo, %i.go                    ; 2 uses
  store i32 %i.gp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1049
  %i.gq = add i64 %.sroa.3.0.lcssa.i.i108225, %i.fp
  br label %bb.ci

bb.ch:                                            ; preds = %.critedge.i.i107.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc130 unwind label %bb.co

.noexc130:                                        ; preds = %bb.ch
  unreachable

bb.ci:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i111.preheader, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123
  %i.gr = phi i32 [ %i.gp, %.lr.ph.i.i.i.i.i.i.i.i111.preheader ], [ %i.gk, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123 ]
  %storemerge.i.i116 = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.i111.preheader ], [ %i.gl, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123 ]
  store i64 %storemerge.i.i116, ptr %i.d, align 8, !tbaa !1034
  %i.gs = add i32 %i.gr, -1
  store i32 %i.gs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.ct unwind label %bb.cp

bb.cj:                                            ; preds = %bb.cc
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.d

bb.cl:                                            ; preds = %bb.cj
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.cm:                                            ; preds = %bb.cd
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.cn:                                            ; preds = %bb.ce
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.co:                                            ; preds = %bb.ch
  %i.gw = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.gx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.gy = add i32 %i.gx, -1
  store i32 %i.gy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.cq

bb.cp:                                            ; preds = %bb.ci
  %i.gz = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn74 = phi { ptr, i32 } [ %i.gz, %bb.cp ], [ %i.gw, %bb.co ] ; 2 uses
  %.12 = extractvalue { ptr, i32 } %.pn74, 1
  %.1243 = extractvalue { ptr, i32 } %.pn74, 0
  %i.ha = icmp eq i32 %.12, %i.x
  %i.hb = call ptr @__cxa_begin_catch(ptr %.1243) #25 ; 0 uses
  br i1 %i.ha, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %bb.cq
  %i.hc = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.cs unwind label %bb.cy     ; 0 uses

bb.cs:                                            ; preds = %bb.cr
  invoke void @__cxa_end_catch()
          to label %bb.ct unwind label %bb.cz

bb.ct:                                            ; preds = %bb.cs, %bb.cw, %bb.ci
  %i.hd = load i64, ptr %i.b, align 8, !tbaa !141, !noalias !1050
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm0EvEC2INS0_12vec_iteratorIPS3_Lb0EEEEET_S9_.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc132 unwind label %bb.da

.noexc132:                                        ; preds = %bb.cu
  unreachable

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm0EvEC2INS0_12vec_iteratorIPS3_Lb0EEEEET_S9_.exit: ; preds = %bb.ct
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 433, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvED2Ev.exit unwind label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvED2Ev.exit143

bb.cv:                                            ; preds = %bb.cq
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.cw unwind label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  invoke void @__cxa_end_catch()
          to label %bb.ct unwind label %bb.d

bb.cx:                                            ; preds = %bb.cv
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.cy:                                            ; preds = %bb.cr
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.cz:                                            ; preds = %bb.cs
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.da:                                            ; preds = %bb.cu
  %i.hi = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.db

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvED2Ev.exit143: ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm0EvEC2INS0_12vec_iteratorIPS3_Lb0EEEEET_S9_.exit
  %i.hj = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
end_hunk_7
begin_hunk_8_@_Z18test_exceptions_ndIiLm10EEvv:_ZN5boost9container13static_vectorIiLm10EvEC2EmRKi.exit
bb.ar:                                            ; preds = %.sink.split174, %bb.aj
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !95, !noalias !1106 ; 2 uses
  %.idx147 = shl i64 %i.ay, 2                     ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %0, i64 %.idx147 ; 5 uses
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !157, !noalias !1107
  %.fr = freeze i64 %i.ba                         ; 5 uses
  %.idx.i = shl i64 %.fr, 2                       ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %1, i64 %.idx.i ; 3 uses
  %i.bc = icmp ne i64 %i.ay, 0                    ; 2 uses
  %i.bd = icmp ne i64 %.fr, 0
  %or.cond13.i = and i1 %i.bc, %i.bd
  br i1 %or.cond13.i, label %iter.check, label %.critedge.i

iter.check:                                       ; preds = %bb.ar
  %i.be = add i64 %.idx.i, -4
  %i.bf = lshr exact i64 %i.be, 2                 ; 2 uses
  %i.bg = add i64 %.idx147, -4
  %i.bh = lshr exact i64 %i.bg, 2                 ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bh)
  %i.bi = shl nuw i64 %umin, 2
  %i.bj = add i64 %i.bi, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.bj, i1 false), !tbaa !41
  %umin179 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bh) ; 3 uses
  %i.bk = add nuw nsw i64 %umin179, 1             ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin179, 3
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check180 = icmp samesign ult i64 %umin179, 31
  br i1 %min.iters.check180, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bl = and i64 %i.bk, 28
  %n.vec = and i64 %i.bk, 9223372036854775776     ; 4 uses
  %i.bm = shl i64 %n.vec, 2                       ; 2 uses
  %i.bn = getelementptr i8, ptr %0, i64 %i.bm     ; 3 uses
  %i.bo = getelementptr i8, ptr %1, i64 %i.bm     ; 2 uses
  %broadcast.splatinsert = insertelement <16 x ptr> poison, ptr %i.az, i64 0
  %broadcast.splat = shufflevector <16 x ptr> %broadcast.splatinsert, <16 x ptr> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %0, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 128
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !1079

middle.block:                                     ; preds = %vector.body
  %vector.gep = getelementptr i8, ptr %pointer.phi, <16 x i64> <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28, i64 32, i64 36, i64 40, i64 44, i64 48, i64 52, i64 56, i64 60>
  %wide.gep = getelementptr i8, <16 x ptr> %vector.gep, i64 68
  %i.bq = icmp ne <16 x ptr> %wide.gep, %broadcast.splat
  %i.br = extractelement <16 x i1> %i.bq, i64 15
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %.critedge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !151

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.bn, %vec.epilog.iter.check ], [ %0, %vector.main.loop.iter.check ]
  %n.vec182 = and i64 %i.bk, 9223372036854775804  ; 3 uses
  %i.bs = shl i64 %n.vec182, 2                    ; 2 uses
  %i.bt = getelementptr i8, ptr %0, i64 %i.bs     ; 2 uses
  %i.bu = getelementptr i8, ptr %1, i64 %i.bs     ; 2 uses
  %broadcast.splatinsert183 = insertelement <4 x ptr> poison, ptr %i.az, i64 0
  %broadcast.splat184 = shufflevector <4 x ptr> %broadcast.splatinsert183, <4 x ptr> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index185 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next188, %vec.epilog.vector.body ]
  %pointer.phi186 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind189, %vec.epilog.vector.body ] ; 2 uses
  %index.next188 = add nuw i64 %index185, 4       ; 2 uses
  %ptr.ind189 = getelementptr i8, ptr %pointer.phi186, i64 16
  %i.bv = icmp eq i64 %index.next188, %n.vec182
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1080

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %vector.gep187 = getelementptr i8, ptr %pointer.phi186, <4 x i64> <i64 0, i64 4, i64 8, i64 12>
  %wide.gep190 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep187, i64 4
  %i.bw = icmp ne <4 x ptr> %wide.gep190, %broadcast.splat184
  %i.bx = extractelement <4 x i1> %i.bw, i64 3
  %cmp.n191 = icmp eq i64 %i.bk, %n.vec182
  br i1 %cmp.n191, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %0, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  %.sroa.07.014.i.ph = phi ptr [ %1, %iter.check ], [ %i.bo, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.by = phi ptr [ %i.ca, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ]
  %.sroa.07.014.i = phi ptr [ %i.bz, %.lr.ph.i ], [ %.sroa.07.014.i.ph, %.lr.ph.i.preheader ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.07.014.i, i64 4 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 3 uses
  %i.cb = icmp ne ptr %i.ca, %i.az                ; 2 uses
  %i.cc = icmp ne ptr %i.bz, %i.bb
  %or.cond.i = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !1081

.critedge.i:                                      ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.ar
  %.sroa.07.0.lcssa.i = phi ptr [ %1, %bb.ar ], [ %i.bu, %vec.epilog.middle.block ], [ %i.bo, %middle.block ], [ %i.bz, %.lr.ph.i ]
  %.lcssa12.i = phi ptr [ %0, %bb.ar ], [ %i.bt, %vec.epilog.middle.block ], [ %i.bn, %middle.block ], [ %i.ca, %.lr.ph.i ] ; 3 uses
  %.lcssa.i = phi i1 [ %i.bc, %bb.ar ], [ %i.bx, %vec.epilog.middle.block ], [ %i.br, %middle.block ], [ %i.cb, %.lr.ph.i ]
  %i.cd = icmp eq ptr %.lcssa12.i, %i.az
  br i1 %i.cd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.critedge.i
  %i.ce = ptrtoint ptr %i.bb to i64
  %i.cf = ptrtoint ptr %.sroa.07.0.lcssa.i to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2
  %i.ci = sub i64 %.fr, %i.ch
  br label %bb.ax

bb.at:                                            ; preds = %.critedge.i
  %i.cj = ptrtoint ptr %i.az to i64
  %i.ck = ptrtoint ptr %.lcssa12.i to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 2 uses
  %i.cm = ashr exact i64 %i.cl, 2                 ; 2 uses
  %i.cn = sub i64 5, %.fr
  %.not.i.i.i97 = icmp ugt i64 %i.cm, %i.cn
  br i1 %.not.i.i.i97, label %bb.aw, label %bb.au, !prof !42

bb.au:                                            ; preds = %bb.at
  br i1 %.lcssa.i, label %bb.av, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i, !prof !152

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bb, ptr nonnull align 1 %.lcssa12.i, i64 %i.cl, i1 false), !noalias !1108
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !155, !noalias !1109
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i

bb.aw:                                            ; preds = %bb.at
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc98 unwind label %bb.bb

.noexc98:                                         ; preds = %bb.aw
  unreachable

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i: ; preds = %bb.av, %bb.au
  %i.co = phi i64 [ %.fr, %bb.au ], [ %.pre.i, %bb.av ]
  %i.cp = add i64 %i.co, %i.cm
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i, %bb.as
  %storemerge.i = phi i64 [ %i.cp, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i ], [ %i.ci, %bb.as ]
  store i64 %storemerge.i, ptr %i.b, align 8, !tbaa !155
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %bb.bd unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ap
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %.sink.split174 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.ba:                                            ; preds = %bb.aq
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.bb:                                            ; preds = %bb.aw, %bb.ax
  %i.cs = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  %i.cu = extractvalue { ptr, i32 } %i.cs, 1
  %i.cv = icmp eq i32 %i.cu, %i.d
  %i.cw = call ptr @__cxa_begin_catch(ptr %i.ct) #25 ; 0 uses
  br i1 %i.cv, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.cx = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split175 unwind label %bb.bj ; 0 uses

.sink.split175:                                   ; preds = %bb.bc, %bb.bh
  call void @__cxa_end_catch()
  br label %bb.bd

bb.bd:                                            ; preds = %.sink.split175, %bb.ax
  %i.cy = load i64, ptr %i.b, align 8, !tbaa !157, !noalias !1110 ; 5 uses
  %.idx.i.i = shl i64 %i.cy, 2                    ; 3 uses
  %i.cz = getelementptr i8, ptr %1, i64 %.idx.i.i
  %.not = icmp eq i64 %i.cy, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.bd
  %i.da = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.db = lshr exact i64 %i.da, 2
  %umin157 = call i64 @llvm.umin.i64(i64 %i.db, i64 9) ; 2 uses
  %i.dc = shl nuw nsw i64 %umin157, 2
  %i.dd = add nuw nsw i64 %i.dc, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.dd, i1 false), !tbaa !41
  %i.de = sub nuw nsw i64 9, %umin157
  %i.df = icmp ugt i64 %i.da, 32
  br i1 %i.df, label %bb.be, label %.critedge.i.i.thread

bb.be:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.dd
  %i.dg = ashr exact i64 %gepdiff, 2
  %i.dh = sub i64 %i.cy, %i.dg
  br label %bb.bg

.critedge.i.i.thread:                             ; preds = %bb.bd, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i145 = phi i64 [ %i.de, %.lr.ph.i.i.preheader ], [ 10, %bb.bd ] ; 3 uses
  %i.di = sub i64 5, %i.cy
  %.not.i.i.i.i99 = icmp ugt i64 %.sroa.3.0.lcssa.i.i145, %i.di
  br i1 %.not.i.i.i.i99, label %bb.bf, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.dj = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i145, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cz, i8 0, i64 %i.dj, i1 false), !tbaa !41, !noalias !1111
  %i.dk = add i64 %.sroa.3.0.lcssa.i.i145, %i.cy
  br label %bb.bg

bb.bf:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc101 unwind label %bb.bk

.noexc101:                                        ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.be
  %storemerge.i.i = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.dh, %bb.be ]
  store i64 %storemerge.i.i, ptr %i.b, align 8, !tbaa !155
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %bb.bo unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bb
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %.sink.split175 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.bj:                                            ; preds = %bb.bc
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.bk:                                            ; preds = %bb.bf
  %i.dn = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bg
  %i.do = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn68 = phi { ptr, i32 } [ %i.do, %bb.bl ], [ %i.dn, %bb.bk ] ; 2 uses
  %.11 = extractvalue { ptr, i32 } %.pn68, 1
  %.1139 = extractvalue { ptr, i32 } %.pn68, 0
  %i.dp = icmp eq i32 %.11, %i.d
  %i.dq = call ptr @__cxa_begin_catch(ptr %.1139) #25 ; 0 uses
  br i1 %i.dp, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %i.dr = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split176 unwind label %bb.bs ; 0 uses

.sink.split176:                                   ; preds = %bb.bn, %bb.bq
  call void @__cxa_end_catch()
  br label %bb.bo

bb.bo:                                            ; preds = %.sink.split176, %bb.bg
  %i.ds = load i64, ptr %i.a, align 8, !tbaa !95, !noalias !1112
  %i.dt = icmp ult i64 %i.ds, 6
  br i1 %i.dt, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i.i.i, label %bb.bp, !prof !158

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc105 unwind label %bb.bt

.noexc105:                                        ; preds = %bb.bp
  unreachable

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i.i.i: ; preds = %bb.bo
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %bb.bx unwind label %bb.bu

bb.bq:                                            ; preds = %bb.bm
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %.sink.split176 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.bs:                                            ; preds = %bb.bn
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.bt:                                            ; preds = %bb.bp
  %i.dw = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bv

bb.bu:                                            ; preds = %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i.i.i
  %i.dx = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn72 = phi { ptr, i32 } [ %i.dx, %bb.bu ], [ %i.dw, %bb.bt ] ; 2 uses
  %.13 = extractvalue { ptr, i32 } %.pn72, 1
  %.1341 = extractvalue { ptr, i32 } %.pn72, 0
  %i.dy = icmp eq i32 %.13, %i.d
  %i.dz = call ptr @__cxa_begin_catch(ptr %.1341) #25 ; 0 uses
  br i1 %i.dy, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.ea = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split195 unwind label %bb.ca ; 0 uses

.sink.split195:                                   ; preds = %bb.bw, %bb.by
  call void @__cxa_end_catch()
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split195, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i.i.i
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc106 unwind label %bb.cb

.noexc106:                                        ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %bb.bv
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %.sink.split195 unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.ca:                                            ; preds = %bb.bw
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.cb:                                            ; preds = %bb.bx
  %i.ed = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.15 = extractvalue { ptr, i32 } %i.ed, 1
  %.1543 = extractvalue { ptr, i32 } %i.ed, 0
  %i.ee = icmp eq i32 %.15, %i.d
  %i.ef = call ptr @__cxa_begin_catch(ptr %.1543) #25 ; 0 uses
  br i1 %i.ee, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.eg = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.cd unwind label %bb.cg     ; 0 uses

bb.cd:                                            ; preds = %bb.cc, %bb.ce
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  ret void

bb.ce:                                            ; preds = %bb.cb
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 452, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %bb.cd unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cc
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.ch:                                            ; preds = %bb.g, %bb.q, %bb.z, %bb.al, %bb.az, %bb.bi, %bb.br, %bb.bz, %bb.cf, %bb.h, %bb.r, %bb.aa, %bb.am, %bb.ba, %bb.bj, %bb.bs, %bb.ca, %bb.cg
  %.pn78.pn.pn = phi { ptr, i32 } [ %i.ei, %bb.cg ], [ %i.ec, %bb.ca ], [ %i.k, %bb.g ], [ %i.eh, %bb.cf ], [ %i.dv, %bb.bs ], [ %i.eb, %bb.bz ], [ %i.dm, %bb.bj ], [ %i.du, %bb.br ], [ %i.cr, %bb.ba ], [ %i.dl, %bb.bi ], [ %i.as, %bb.am ], [ %i.cq, %bb.az ], [ %i.af, %bb.aa ], [ %i.ar, %bb.al ], [ %i.v, %bb.r ], [ %i.ae, %bb.z ], [ %i.l, %bb.h ], [ %i.u, %bb.q ]
end_hunk_8
begin_hunk_9_@_Z18test_exceptions_ndI8value_ndLm10EEvv:_ZN5boost9container13static_vectorI8value_ndLm10EvEC2EmRKS2_.exit
  %i.ai = icmp eq i32 %.6, %i.d
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %.634) #25 ; 0 uses
  br i1 %i.ai, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.ak = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split187 unwind label %bb.ak ; 0 uses

.sink.split187:                                   ; preds = %bb.ae, %bb.ai
  tail call void @__cxa_end_catch()
  br label %bb.af

bb.af:                                            ; preds = %.sink.split187, %.lr.ph.i.i.i.i.i.i
  %i.al = load i64, ptr %i.b, align 8, !tbaa !163, !noalias !1157 ; 3 uses
  %i.am = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !1158 ; 4 uses
  %i.an = sub i64 5, %i.al
  %.not.i.i96 = icmp ugt i64 %i.am, %i.an
  br i1 %.not.i.i96, label %bb.ah, label %bb.ag, !prof !42

bb.ag:                                            ; preds = %bb.af
  %.not13.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not13.i.i.i.i.i.i, label %.loopexit162, label %.lr.ph.i.i.i.i.i.i111.preheader

.lr.ph.i.i.i.i.i.i111.preheader:                  ; preds = %bb.ag
  %i.ao = getelementptr [4 x i8], ptr %1, i64 %i.al
  %i.ap = shl nuw i64 %i.am, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ao, ptr nonnull align 8 %0, i64 %i.ap, i1 false), !tbaa !41, !noalias !1159
  br label %.loopexit162

bb.ah:                                            ; preds = %bb.af
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc113 unwind label %bb.al

.noexc113:                                        ; preds = %bb.ah
  unreachable

.loopexit162:                                     ; preds = %.lr.ph.i.i.i.i.i.i111.preheader, %bb.ag
  %i.aq = add i64 %i.al, %i.am
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !161, !noalias !1160
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.ap unwind label %bb.am

bb.ai:                                            ; preds = %bb.ad
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 447, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %.sink.split187 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.ak:                                            ; preds = %bb.ae
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.al:                                            ; preds = %bb.ah
  %i.at = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.an

bb.am:                                            ; preds = %.loopexit162
  %i.au = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn63 = phi { ptr, i32 } [ %i.au, %bb.am ], [ %i.at, %bb.al ] ; 2 uses
  %.8 = extractvalue { ptr, i32 } %.pn63, 1
  %.836 = extractvalue { ptr, i32 } %.pn63, 0
  %i.av = icmp eq i32 %.8, %i.d
  %i.aw = tail call ptr @__cxa_begin_catch(ptr %.836) #25 ; 0 uses
  br i1 %i.av, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.ax = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split188 unwind label %bb.aw ; 0 uses

.sink.split188:                                   ; preds = %bb.ao, %bb.au
  tail call void @__cxa_end_catch()
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split188, %.loopexit162
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !1161 ; 2 uses
  %.idx = shl i64 %i.ay, 2                        ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %0, i64 %.idx ; 2 uses
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !163, !noalias !1162
  %.fr = freeze i64 %i.ba                         ; 5 uses
  %.idx.i = shl i64 %.fr, 2                       ; 2 uses
  %i.bb = getelementptr i8, ptr %1, i64 %.idx.i   ; 2 uses
  %i.bc = icmp ne i64 %i.ay, 0
  %i.bd = icmp ne i64 %.fr, 0
  %or.cond12.i = and i1 %i.bc, %i.bd
  br i1 %or.cond12.i, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %bb.ap
  %i.be = add i64 %.idx.i, -4
  %i.bf = lshr exact i64 %i.be, 2
  %i.bg = add i64 %.idx, -4
  %i.bh = lshr exact i64 %i.bg, 2
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bh)
  %i.bi = shl nuw i64 %umin, 2
  %i.bj = add i64 %i.bi, 4                        ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.bj, i1 false), !tbaa !41
  %scevgep = getelementptr i8, ptr %1, i64 %i.bj
  %scevgep170 = getelementptr i8, ptr %0, i64 %i.bj
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i.preheader, %bb.ap
  %.sroa.07.0.lcssa.i = phi ptr [ %1, %bb.ap ], [ %scevgep, %.lr.ph.i.preheader ]
  %.lcssa11.i = phi ptr [ %0, %bb.ap ], [ %scevgep170, %.lr.ph.i.preheader ] ; 3 uses
  %i.bk = icmp eq ptr %.lcssa11.i, %i.az
  br i1 %i.bk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.critedge.i
  %i.bl = ptrtoint ptr %i.bb to i64
  %i.bm = ptrtoint ptr %.sroa.07.0.lcssa.i to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 2
  %i.bp = sub i64 %.fr, %i.bo
  br label %bb.at

bb.ar:                                            ; preds = %.critedge.i
  %i.bq = ptrtoint ptr %i.az to i64
  %i.br = ptrtoint ptr %.lcssa11.i to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 2 uses
  %i.bt = ashr exact i64 %i.bs, 2                 ; 2 uses
  %i.bu = sub i64 5, %.fr
  %.not.i.i.i114 = icmp ugt i64 %i.bt, %i.bu
  br i1 %.not.i.i.i114, label %bb.as, label %.lr.ph.i.i.i.i.i.i.i115.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i115.preheader:                ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bb, ptr align 4 %.lcssa11.i, i64 %i.bs, i1 false), !tbaa !41, !noalias !1163
  %i.bv = add i64 %i.bt, %.fr
  br label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc119 unwind label %bb.ax

.noexc119:                                        ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i115.preheader, %bb.aq
  %storemerge.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.i.i115.preheader ], [ %i.bp, %bb.aq ]
  store i64 %storemerge.i, ptr %i.b, align 8, !tbaa !161
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.az unwind label %bb.ax

bb.au:                                            ; preds = %bb.an
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %.sink.split188 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.aw:                                            ; preds = %bb.ao
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.ax:                                            ; preds = %bb.as, %bb.at
  %i.by = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  %i.ca = extractvalue { ptr, i32 } %i.by, 1
  %i.cb = icmp eq i32 %i.ca, %i.d
  %i.cc = call ptr @__cxa_begin_catch(ptr %i.bz) #25 ; 0 uses
  br i1 %i.cb, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.cd = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split189 unwind label %bb.bf ; 0 uses

.sink.split189:                                   ; preds = %bb.ay, %bb.bd
  call void @__cxa_end_catch()
  br label %bb.az

bb.az:                                            ; preds = %.sink.split189, %bb.at
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !163, !noalias !1164 ; 5 uses
  %.idx.i.i = shl i64 %i.ce, 2                    ; 3 uses
  %i.cf = getelementptr i8, ptr %1, i64 %.idx.i.i
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.az
  %i.cg = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.ch = lshr exact i64 %i.cg, 2
  %umin171 = call i64 @llvm.umin.i64(i64 %i.ch, i64 9) ; 2 uses
  %i.ci = shl nuw nsw i64 %umin171, 2
  %i.cj = add nuw nsw i64 %i.ci, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.cj, i1 false), !tbaa !41
  %i.ck = sub nuw nsw i64 9, %umin171
  %i.cl = icmp ugt i64 %i.cg, 32
  br i1 %i.cl, label %bb.ba, label %.critedge.i.i.thread

bb.ba:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.cj
  %i.cm = ashr exact i64 %gepdiff, 2
  %i.cn = sub i64 %i.ce, %i.cm
  br label %bb.bc

.critedge.i.i.thread:                             ; preds = %bb.az, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i160 = phi i64 [ %i.ck, %.lr.ph.i.i.preheader ], [ 10, %bb.az ] ; 3 uses
  %i.co = sub i64 5, %i.ce
  %.not.i.i.i.i120 = icmp ugt i64 %.sroa.3.0.lcssa.i.i160, %i.co
  br i1 %.not.i.i.i.i120, label %bb.bb, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.cp = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i160, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cf, i8 0, i64 %i.cp, i1 false), !tbaa !41, !noalias !1165
  %i.cq = add i64 %.sroa.3.0.lcssa.i.i160, %i.ce
  br label %bb.bc

bb.bb:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc122 unwind label %bb.bg

.noexc122:                                        ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.ba
  %storemerge.i.i = phi i64 [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cn, %bb.ba ]
  store i64 %storemerge.i.i, ptr %i.b, align 8, !tbaa !161
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.bk unwind label %bb.bh

bb.bd:                                            ; preds = %bb.ax
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %.sink.split189 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.bf:                                            ; preds = %bb.ay
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.bg:                                            ; preds = %bb.bb
  %i.ct = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bc
  %i.cu = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn69 = phi { ptr, i32 } [ %i.cu, %bb.bh ], [ %i.ct, %bb.bg ] ; 2 uses
  %.11 = extractvalue { ptr, i32 } %.pn69, 1
  %.1139 = extractvalue { ptr, i32 } %.pn69, 0
  %i.cv = icmp eq i32 %.11, %i.d
  %i.cw = call ptr @__cxa_begin_catch(ptr %.1139) #25 ; 0 uses
  br i1 %i.cv, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.cx = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split190 unwind label %bb.bo ; 0 uses

.sink.split190:                                   ; preds = %bb.bj, %bb.bm
  call void @__cxa_end_catch()
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split190, %bb.bc
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !1166
  %i.cz = icmp ult i64 %i.cy, 6
  br i1 %i.cz, label %.loopexit, label %bb.bl, !prof !158

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc124 unwind label %bb.bp

.noexc124:                                        ; preds = %bb.bl
  unreachable

.loopexit:                                        ; preds = %bb.bk
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.bt unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bi
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %.sink.split190 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.bo:                                            ; preds = %bb.bj
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.bp:                                            ; preds = %bb.bl
  %i.dc = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.br

bb.bq:                                            ; preds = %.loopexit
  %i.dd = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn73 = phi { ptr, i32 } [ %i.dd, %bb.bq ], [ %i.dc, %bb.bp ] ; 2 uses
  %.13 = extractvalue { ptr, i32 } %.pn73, 1
  %.1341 = extractvalue { ptr, i32 } %.pn73, 0
  %i.de = icmp eq i32 %.13, %i.d
  %i.df = call ptr @__cxa_begin_catch(ptr %.1341) #25 ; 0 uses
  br i1 %i.de, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.dg = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split191 unwind label %bb.bw ; 0 uses

.sink.split191:                                   ; preds = %bb.bs, %bb.bu
  call void @__cxa_end_catch()
  br label %bb.bt

bb.bt:                                            ; preds = %.sink.split191, %.loopexit
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc125 unwind label %bb.bx

.noexc125:                                        ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.br
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %.sink.split191 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.bw:                                            ; preds = %bb.bs
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.bx:                                            ; preds = %bb.bt
  %i.dj = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.15 = extractvalue { ptr, i32 } %i.dj, 1
  %.1543 = extractvalue { ptr, i32 } %i.dj, 0
  %i.dk = icmp eq i32 %.15, %i.d
  %i.dl = call ptr @__cxa_begin_catch(ptr %.1543) #25 ; 0 uses
  br i1 %i.dk, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.dm = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bz unwind label %bb.cc     ; 0 uses

bb.bz:                                            ; preds = %bb.by, %bb.ca
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  ret void

bb.ca:                                            ; preds = %bb.bx
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 452, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.bz unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.cc:                                            ; preds = %bb.by
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.cd:                                            ; preds = %bb.g, %bb.q, %bb.z, %bb.aj, %bb.av, %bb.be, %bb.bn, %bb.bv, %bb.cb, %bb.h, %bb.r, %bb.aa, %bb.ak, %bb.aw, %bb.bf, %bb.bo, %bb.bw, %bb.cc
  %.pn79.pn.pn = phi { ptr, i32 } [ %i.do, %bb.cc ], [ %i.di, %bb.bw ], [ %i.k, %bb.g ], [ %i.dn, %bb.cb ], [ %i.db, %bb.bo ], [ %i.dh, %bb.bv ], [ %i.cs, %bb.bf ], [ %i.da, %bb.bn ], [ %i.bx, %bb.aw ], [ %i.cr, %bb.be ], [ %i.as, %bb.ak ], [ %i.bw, %bb.av ], [ %i.af, %bb.aa ], [ %i.ar, %bb.aj ], [ %i.v, %bb.r ], [ %i.ae, %bb.z ], [ %i.l, %bb.h ], [ %i.u, %bb.q ]
end_hunk_9
begin_hunk_10_@_Z18test_exceptions_ndI14counting_valueLm10EEvv:bb.a

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ds = add i64 %.idx.i, %i.dp                  ; 2 uses
  %i.dt = getelementptr i8, ptr %1, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dt, i64 -4
  %i.dv = getelementptr i8, ptr %.lcssa10.i, i64 %i.dp
  %i.dw = getelementptr i8, ptr %i.dv, i64 -4
  %i.dx = getelementptr i8, ptr %1, i64 %.idx.i
  %i.dy = getelementptr i8, ptr %i.dx, i64 4
  %i.dz = getelementptr i8, ptr %1, i64 %i.ds
  %i.ea = getelementptr i8, ptr %.lcssa10.i, i64 4
  %bound0 = icmp ult ptr %i.cl, %i.dw
  %bound1 = icmp ult ptr %.lcssa10.i, %i.du
  %found.conflict = and i1 %bound0, %bound1
  %bound0263 = icmp ult ptr %i.dy, %i.cj
  %bound1264 = icmp ult ptr %i.ea, %i.dz
  %found.conflict265 = and i1 %bound0263, %bound1264
  %conflict.rdx = or i1 %found.conflict, %found.conflict265
  br i1 %conflict.rdx, label %scalar.ph261.preheader, label %vector.ph266

vector.ph266:                                     ; preds = %vector.memcheck
  %n.vec267 = and i64 %i.dq, -4                   ; 3 uses
  %i.eb = shl nsw i64 %n.vec267, 3                ; 2 uses
  %i.ec = getelementptr i8, ptr %.lcssa10.i, i64 %i.eb
  %i.ed = and i64 %i.dq, 3
  %i.ee = getelementptr i8, ptr %i.cl, i64 %i.eb
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph266
  %index269 = phi i64 [ 0, %vector.ph266 ], [ %index.next284, %vector.body268 ] ; 2 uses
  %i.ef = shl i64 %index269, 3                    ; 3 uses
  %i.eg = or disjoint i64 %i.ef, 16               ; 2 uses
  %next.gep270 = getelementptr i8, ptr %.lcssa10.i, i64 %i.ef
  %next.gep271 = getelementptr i8, ptr %.lcssa10.i, i64 %i.eg
  %next.gep272 = getelementptr i8, ptr %i.cl, i64 %i.ef ; 2 uses
  %next.gep274 = getelementptr i8, ptr %i.cl, i64 %i.eg ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep272) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep274) ]
  %wide.vec276 = load <4 x i32>, ptr %next.gep270, align 4, !tbaa !41, !noalias !1235
  %wide.vec279 = load <4 x i32>, ptr %next.gep271, align 4, !tbaa !41, !noalias !1235
  store <4 x i32> %wide.vec276, ptr %next.gep272, align 8, !tbaa !41, !noalias !1235
  store <4 x i32> %wide.vec279, ptr %next.gep274, align 8, !tbaa !41, !noalias !1235
  %index.next284 = add nuw i64 %index269, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next284, %n.vec267
  br i1 %i.eh, label %middle.block285, label %vector.body268, !llvm.loop !1203

middle.block285:                                  ; preds = %vector.body268
  %cmp.n286 = icmp eq i64 %i.dq, %n.vec267
  br i1 %cmp.n286, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %scalar.ph261.preheader

scalar.ph261.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i, %middle.block285
  %.ph = phi ptr [ %.lcssa10.i, %vector.memcheck ], [ %.lcssa10.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ec, %middle.block285 ] ; 2 uses
  %.015.i.i.i.i.i.i.i.ph = phi i64 [ %i.dq, %vector.memcheck ], [ %i.dq, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ed, %middle.block285 ] ; 4 uses
  %.01214.i.i.i.i.i.i.i.ph = phi ptr [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ee, %middle.block285 ] ; 2 uses
  %i.ei = add nsw i64 %.015.i.i.i.i.i.i.i.ph, -1
  %xtraiter = and i64 %.015.i.i.i.i.i.i.i.ph, 7   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph261.prol.loopexit, label %scalar.ph261.prol

scalar.ph261.prol:                                ; preds = %scalar.ph261.preheader, %scalar.ph261.prol
  %i.ej = phi ptr [ %i.el, %scalar.ph261.prol ], [ %.ph, %scalar.ph261.preheader ] ; 2 uses
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.en, %scalar.ph261.prol ], [ %.015.i.i.i.i.i.i.i.ph, %scalar.ph261.preheader ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.em, %scalar.ph261.prol ], [ %.01214.i.i.i.i.i.i.i.ph, %scalar.ph261.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph261.prol ], [ 0, %scalar.ph261.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i.prol) ]
  %i.ek = load <2 x i32>, ptr %i.ej, align 4, !tbaa !41, !noalias !1235
  store <2 x i32> %i.ek, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1235
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.en = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph261.prol.loopexit, label %scalar.ph261.prol, !llvm.loop !1204

scalar.ph261.prol.loopexit:                       ; preds = %scalar.ph261.prol, %scalar.ph261.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph261.preheader ], [ %i.el, %scalar.ph261.prol ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %.015.i.i.i.i.i.i.i.ph, %scalar.ph261.preheader ], [ %i.en, %scalar.ph261.prol ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %.01214.i.i.i.i.i.i.i.ph, %scalar.ph261.preheader ], [ %i.em, %scalar.ph261.prol ]
  %i.eo = icmp ult i64 %i.ei, 7
  br i1 %i.eo, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %scalar.ph261

scalar.ph261:                                     ; preds = %scalar.ph261.prol.loopexit, %scalar.ph261
  %i.ep = phi ptr [ %i.fm, %scalar.ph261 ], [ %.unr, %scalar.ph261.prol.loopexit ] ; 9 uses
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.fo, %scalar.ph261 ], [ %.015.i.i.i.i.i.i.i.unr, %scalar.ph261.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.fn, %scalar.ph261 ], [ %.01214.i.i.i.i.i.i.i.unr, %scalar.ph261.prol.loopexit ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i) ]
  %i.eq = load <2 x i32>, ptr %i.ep, align 4, !tbaa !41, !noalias !1235
  store <2 x i32> %i.eq, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1235
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.et = load <2 x i32>, ptr %i.er, align 4, !tbaa !41, !noalias !1235
  store <2 x i32> %i.et, ptr %i.es, align 4, !tbaa !41, !noalias !1235
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.ew = load <2 x i32>, ptr %i.eu, align 4, !tbaa !41, !noalias !1235
  store <2 x i32> %i.ew, ptr %i.ev, align 4, !tbaa !41, !noalias !1235
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.ey = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 24
  %i.ez = load <2 x i32>, ptr %i.ex, align 4, !tbaa !41, !noalias !1235
  store <2 x i32> %i.ez, ptr %i.ey, align 4, !tbaa !41, !noalias !1235
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 32
  %i.fc = load <2 x i32>, ptr %i.fa, align 4, !tbaa !41, !noalias !1235
  store <2 x i32> %i.fc, ptr %i.fb, align 4, !tbaa !41, !noalias !1235
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.fe = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 40
  %i.ff = load <2 x i32>, ptr %i.fd, align 4, !tbaa !41, !noalias !1235
  store <2 x i32> %i.ff, ptr %i.fe, align 4, !tbaa !41, !noalias !1235
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.fh = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 48
  %i.fi = load <2 x i32>, ptr %i.fg, align 4, !tbaa !41, !noalias !1235
  store <2 x i32> %i.fi, ptr %i.fh, align 4, !tbaa !41, !noalias !1235
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ep, i64 56
  %i.fk = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 56
  %i.fl = load <2 x i32>, ptr %i.fj, align 4, !tbaa !41, !noalias !1235
  store <2 x i32> %i.fl, ptr %i.fk, align 4, !tbaa !41, !noalias !1235
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.fn = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 64
  %i.fo = add i64 %.015.i.i.i.i.i.i.i, -8         ; 2 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.fo, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %scalar.ph261, !llvm.loop !1205

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc107 unwind label %bb.bp

.noexc107:                                        ; preds = %bb.bi
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i: ; preds = %scalar.ph261.prol.loopexit, %scalar.ph261, %middle.block285
  %i.fp = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i, %i.dq
  store i64 %i.fp, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1235
  %i.fq = add i64 %i.dq, %.fr
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %storemerge.i = phi i64 [ %i.fq, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i ], [ %i.dm, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i ]
  store i64 %storemerge.i, ptr %i.c, align 8, !tbaa !1222
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.bs unwind label %bb.bp

bb.bk:                                            ; preds = %bb.bc
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  invoke void @__cxa_end_catch()
          to label %bb.bf unwind label %bb.k

bb.bm:                                            ; preds = %bb.bk
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.bn:                                            ; preds = %bb.bd
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.bo:                                            ; preds = %bb.be
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.bp:                                            ; preds = %bb.bi, %bb.bj
  %i.fu = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  %i.fw = extractvalue { ptr, i32 } %i.fu, 1
  %i.fx = icmp eq i32 %i.fw, %i.h
  %i.fy = call ptr @__cxa_begin_catch(ptr %i.fv) #25 ; 0 uses
  br i1 %i.fx, label %bb.bq, label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  %i.fz = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.br unwind label %bb.bz     ; 0 uses

bb.br:                                            ; preds = %bb.bq
  invoke void @__cxa_end_catch()
          to label %bb.bs unwind label %bb.ca

bb.bs:                                            ; preds = %bb.br, %bb.bx, %bb.bj
  %i.ga = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.gb = add i64 %i.ga, 1                        ; 4 uses
  store i64 %i.gb, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.gc = load i64, ptr %i.c, align 8, !tbaa !1224, !noalias !1236 ; 5 uses
  %.idx.i.i = shl i64 %i.gc, 3                    ; 4 uses
  %i.gd = getelementptr i8, ptr %1, i64 %.idx.i.i
  %.not = icmp eq i64 %i.gc, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.bs
  %i.ge = add i64 %.idx.i.i, -8                   ; 2 uses
  %i.gf = lshr exact i64 %i.ge, 3
  %umin = call i64 @llvm.umin.i64(i64 %i.gf, i64 9) ; 2 uses
  %i.gg = shl nuw nsw i64 %umin, 3
  %i.gh = add nuw nsw i64 %i.gg, 8                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.gh, i1 false), !tbaa !41
  %i.gi = sub nuw nsw i64 9, %umin
  %i.gj = icmp ugt i64 %i.ge, 64
  br i1 %i.gj, label %bb.bt, label %.critedge.i.i.thread

bb.bt:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.gh
  %i.gk = ashr exact i64 %gepdiff, 3              ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %.idx.i.i, %i.gh
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.bt
  %i.gl = sub i64 %i.gb, %i.gk                    ; 2 uses
  store i64 %i.gl, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.bt
  %i.gm = phi i64 [ %i.gl, %.lr.ph.preheader.i.i.i.i ], [ %i.gb, %bb.bt ]
  %i.gn = sub i64 %i.gc, %i.gk
  br label %bb.bv

.critedge.i.i.thread:                             ; preds = %bb.bs, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i194 = phi i64 [ %i.gi, %.lr.ph.i.i.preheader ], [ 10, %bb.bs ] ; 4 uses
  %i.go = sub i64 5, %i.gc
  %.not.i.i.i.i108 = icmp ugt i64 %.sroa.3.0.lcssa.i.i194, %i.go
  br i1 %.not.i.i.i.i108, label %bb.bu, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.gp = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i194, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gd, i8 0, i64 %i.gp, i1 false), !tbaa !41, !noalias !1237
  %i.gq = add i64 %.sroa.3.0.lcssa.i.i194, %i.gb  ; 2 uses
  store i64 %i.gq, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1237
  %i.gr = add i64 %.sroa.3.0.lcssa.i.i194, %i.gc
  br label %bb.bv

bb.bu:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc110 unwind label %bb.cb

.noexc110:                                        ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i
  %i.gs = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gm, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  %storemerge.i.i = phi i64 [ %i.gr, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gn, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  store i64 %storemerge.i.i, ptr %i.c, align 8, !tbaa !1222
  %i.gt = add i64 %i.gs, -1
  store i64 %i.gt, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.cg unwind label %bb.cc

bb.bw:                                            ; preds = %bb.bp
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw
  invoke void @__cxa_end_catch()
          to label %bb.bs unwind label %bb.k

bb.by:                                            ; preds = %bb.bw
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.bz:                                            ; preds = %bb.bq
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.ca:                                            ; preds = %bb.br
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.cb:                                            ; preds = %bb.bu
  %i.gx = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.gy = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.gz = add i64 %i.gy, -1
  store i64 %i.gz, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bv
  %i.ha = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn69 = phi { ptr, i32 } [ %i.ha, %bb.cc ], [ %i.gx, %bb.cb ] ; 2 uses
  %.11 = extractvalue { ptr, i32 } %.pn69, 1
  %.1139 = extractvalue { ptr, i32 } %.pn69, 0
  %i.hb = icmp eq i32 %.11, %i.h
  %i.hc = call ptr @__cxa_begin_catch(ptr %.1139) #25 ; 0 uses
  br i1 %i.hb, label %bb.ce, label %bb.cl

bb.ce:                                            ; preds = %bb.cd
  %i.hd = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.cf unwind label %bb.co     ; 0 uses

bb.cf:                                            ; preds = %bb.ce
  invoke void @__cxa_end_catch()
          to label %bb.cg unwind label %bb.cp

bb.cg:                                            ; preds = %bb.cf, %bb.cm, %bb.bv
  %i.he = load i64, ptr %i.b, align 8, !tbaa !102, !noalias !1238 ; 7 uses
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.not.i.i.i.i.i = icmp ugt i64 %i.he, 5
  br i1 %.not.i.i.i.i.i, label %bb.ci, label %.lr.ph.i.i.i.i.i.i.i.i.i, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ch
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1239
  %i.hg = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i.i.i, %i.he
  store i64 %i.hg, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1239
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc111 unwind label %bb.cq

.noexc111:                                        ; preds = %bb.ci
  unreachable

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.cg
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.ck unwind label %bb.cr

bb.ck:                                            ; preds = %bb.cj
  %.not3.i.i = icmp eq i64 %i.he, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ck
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.hh = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.he
  store i64 %i.hh, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit

bb.cl:                                            ; preds = %bb.cd
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.cm unwind label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  invoke void @__cxa_end_catch()
          to label %bb.cg unwind label %bb.k

bb.cn:                                            ; preds = %bb.cl
  %i.hi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.co:                                            ; preds = %bb.ce
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.cp:                                            ; preds = %bb.cf
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.cq:                                            ; preds = %bb.ci
  %i.hl = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit115

bb.cr:                                            ; preds = %bb.cj
  %i.hm = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.not3.i.i112 = icmp eq i64 %i.he, 0
  br i1 %.not3.i.i112, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit115, label %.lr.ph.preheader.i.i113

.lr.ph.preheader.i.i113:                          ; preds = %bb.cr
  %_ZZN14counting_value1cEvE2co.promoted.i.i114 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.hn = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i114, %i.he
  store i64 %i.hn, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit115

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit115: ; preds = %.lr.ph.preheader.i.i113, %bb.cr, %bb.cq
  %.pn73 = phi { ptr, i32 } [ %i.hl, %bb.cq ], [ %i.hm, %bb.cr ], [ %i.hm, %.lr.ph.preheader.i.i113 ] ; 2 uses
  %.13 = extractvalue { ptr, i32 } %.pn73, 1
  %.1341 = extractvalue { ptr, i32 } %.pn73, 0
  %i.ho = icmp eq i32 %.13, %i.h
  %i.hp = call ptr @__cxa_begin_catch(ptr %.1341) #25 ; 0 uses
  br i1 %i.ho, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit115
  %i.hq = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ct unwind label %bb.cx     ; 0 uses

bb.ct:                                            ; preds = %bb.cs
  invoke void @__cxa_end_catch()
end_hunk_10
begin_hunk_11_@_Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv:_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.cg, i1 false), !tbaa !82
  %scevgep = getelementptr i8, ptr %1, i64 %i.cg
  %scevgep254 = getelementptr i8, ptr %0, i64 %i.cg
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i.preheader, %bb.be
  %.sroa.07.0.lcssa.i = phi ptr [ %1, %bb.be ], [ %scevgep, %.lr.ph.i.preheader ] ; 2 uses
  %.lcssa11.i = phi ptr [ %0, %bb.be ], [ %scevgep254, %.lr.ph.i.preheader ] ; 3 uses
  %i.ch = icmp eq ptr %.lcssa11.i, %i.bw
  br i1 %i.ch, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.critedge.i
  %i.ci = ptrtoint ptr %i.by to i64
  %i.cj = ptrtoint ptr %.sroa.07.0.lcssa.i to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2                 ; 8 uses
  %.not3.i.i.i = icmp eq ptr %i.by, %.sroa.07.0.lcssa.i
  br i1 %.not3.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.bf
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cm ; 3 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted235 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check276 = icmp ult i64 %i.cl, 8
  br i1 %min.iters.check276, label %.lr.ph.i.i.i116.preheader, label %vector.ph277

vector.ph277:                                     ; preds = %.lr.ph.i.preheader.i.i
  %n.vec278 = and i64 %i.cl, -8                   ; 3 uses
  %i.co = and i64 %i.cl, 7
  %i.cp = shl nsw i64 %n.vec278, 2
  %i.cq = getelementptr i8, ptr %i.cn, i64 %i.cp
  br label %vector.body279

vector.body279:                                   ; preds = %vector.body279, %vector.ph277
  %index280 = phi i64 [ 0, %vector.ph277 ], [ %index.next281, %vector.body279 ] ; 2 uses
  %i.cr = shl i64 %index280, 2
  %next.gep = getelementptr i8, ptr %i.cn, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 4, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.cs, align 4, !tbaa !82
  %index.next281 = add nuw i64 %index280, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next281, %n.vec278
  br i1 %i.ct, label %middle.block282, label %vector.body279, !llvm.loop !1266

middle.block282:                                  ; preds = %vector.body279
  %cmp.n283 = icmp eq i64 %i.cl, %n.vec278
  br i1 %cmp.n283, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, label %.lr.ph.i.i.i116.preheader

.lr.ph.i.i.i116.preheader:                        ; preds = %.lr.ph.i.preheader.i.i, %middle.block282
  %.05.i.i.i.ph = phi i64 [ %i.cl, %.lr.ph.i.preheader.i.i ], [ %i.co, %middle.block282 ]
  %storemerge4.i.i.i.ph = phi ptr [ %i.cn, %.lr.ph.i.preheader.i.i ], [ %i.cq, %middle.block282 ]
  br label %.lr.ph.i.i.i116

.lr.ph.i.i.i116:                                  ; preds = %.lr.ph.i.i.i116.preheader, %.lr.ph.i.i.i116
  %.05.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i116 ], [ %.05.i.i.i.ph, %.lr.ph.i.i.i116.preheader ]
  %storemerge4.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i116 ], [ %storemerge4.i.i.i.ph, %.lr.ph.i.i.i116.preheader ] ; 2 uses
  %i.cu = add i64 %.05.i.i.i, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i, align 4, !tbaa !82
  %i.cv = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 4
  %.not.i.i.i117 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i117, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, label %.lr.ph.i.i.i116, !llvm.loop !1267

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit: ; preds = %.lr.ph.i.i.i116, %middle.block282
  %i.cw = trunc i64 %i.cl to i32
  %i.cx = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted235, %i.cw
  store i32 %i.cx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, %bb.bf
  %i.cy = sub i64 %.fr, %i.cl
  br label %bb.bi

bb.bg:                                            ; preds = %.critedge.i
  %i.cz = ptrtoint ptr %i.bw to i64
  %i.da = ptrtoint ptr %.lcssa11.i to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 2 uses
  %i.dc = ashr exact i64 %i.db, 2                 ; 7 uses
  %i.dd = sub i64 5, %.fr
  %.not.i.i2.i = icmp ugt i64 %i.dc, %i.dd
  br i1 %.not.i.i2.i, label %bb.bh, label %.lr.ph.i.i.i.i.i.i.i112.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i112.preheader:                ; preds = %bb.bg
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted234 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1319 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.by, ptr align 4 %.lcssa11.i, i64 %i.db, i1 false), !tbaa !82, !noalias !1319
  %min.iters.check = icmp ult i64 %i.dc, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader370, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader
  %n.vec = and i64 %i.dc, -8                      ; 2 uses
  %i.de = and i64 %i.dc, 7
  %i.df = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted234, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.df, %vector.ph ], [ %i.dg, %vector.body ]
  %vec.phi273 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dh, %vector.body ]
  %i.dg = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.dh = add <4 x i32> %vec.phi273, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !1274

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dh, %i.dg
  %i.dj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i112.preheader370

.lr.ph.i.i.i.i.i.i.i112.preheader370:             ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader, %middle.block
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted234, %.lr.ph.i.i.i.i.i.i.i112.preheader ], [ %i.dj, %middle.block ]
  %.015.i.i.i.i.i.i.i113.ph = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i.i.i112.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i.i112:                          ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader370, %.lr.ph.i.i.i.i.i.i.i112
  %i.dk = phi i32 [ %i.dl, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader370 ]
  %.015.i.i.i.i.i.i.i113 = phi i64 [ %i.dm, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.015.i.i.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader370 ]
  %i.dl = add i32 %i.dk, 1                        ; 2 uses
  %i.dm = add i64 %.015.i.i.i.i.i.i.i113, -1      ; 2 uses
  %.not.i.i.i.i.i.i.i115 = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i.i115, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i112, !llvm.loop !1275

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc118 unwind label %bb.bo

.noexc118:                                        ; preds = %bb.bh
  unreachable

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i112, %middle.block
  %.lcssa = phi i32 [ %i.dj, %middle.block ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i112 ]
  store i32 %.lcssa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1319
  %i.dn = add i64 %i.dc, %.fr
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %storemerge.i = phi i64 [ %i.dn, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i ], [ %i.cy, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i ]
  store i64 %storemerge.i, ptr %i.c, align 8, !tbaa !1306
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.br unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bb
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @__cxa_end_catch()
          to label %bb.be unwind label %bb.j

bb.bl:                                            ; preds = %bb.bj
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.bm:                                            ; preds = %bb.bc
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.bn:                                            ; preds = %bb.bd
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.bo:                                            ; preds = %bb.bh, %bb.bi
  %i.dr = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  %i.dt = extractvalue { ptr, i32 } %i.dr, 1
  %i.du = icmp eq i32 %i.dt, %i.h
  %i.dv = call ptr @__cxa_begin_catch(ptr %i.ds) #25 ; 0 uses
  br i1 %i.du, label %bb.bp, label %bb.bv

bb.bp:                                            ; preds = %bb.bo
  %i.dw = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bq unwind label %bb.by     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bz

bb.br:                                            ; preds = %bb.bq, %bb.bw, %bb.bi
  %i.dx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dy = add i32 %i.dx, 1                        ; 4 uses
  store i32 %i.dy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dz = load i64, ptr %i.c, align 8, !tbaa !1308, !noalias !1320 ; 5 uses
  %.idx.i.i = shl i64 %i.dz, 2                    ; 4 uses
  %i.ea = getelementptr i8, ptr %1, i64 %.idx.i.i ; 2 uses
  %.not = icmp eq i64 %i.dz, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.br
  %i.eb = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.ec = lshr exact i64 %i.eb, 2
  %umin255 = call i64 @llvm.umin.i64(i64 %i.ec, i64 9) ; 2 uses
  %i.ed = shl nuw nsw i64 %umin255, 2
  %i.ee = add nuw nsw i64 %i.ed, 4                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.ee, i1 false), !tbaa !82
  %i.ef = sub nuw nsw i64 9, %umin255
  %i.eg = icmp ugt i64 %i.eb, 32
  br i1 %i.eg, label %bb.bs, label %.critedge.i.i.thread

bb.bs:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.ee
  %i.eh = ashr exact i64 %gepdiff, 2              ; 8 uses
  %.not3.i.i.i.i = icmp eq i64 %.idx.i.i, %i.ee
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.bs
  %i.ei = sub nsw i64 0, %i.eh
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.ei ; 3 uses
  %min.iters.check287 = icmp ult i64 %i.eh, 8
  br i1 %min.iters.check287, label %.lr.ph.i.i.i.i119.preheader, label %vector.ph288

vector.ph288:                                     ; preds = %.lr.ph.i.preheader.i.i.i
  %n.vec289 = and i64 %i.eh, -8                   ; 3 uses
  %i.ek = and i64 %i.eh, 7
  %i.el = shl nsw i64 %n.vec289, 2
  %i.em = getelementptr i8, ptr %i.ej, i64 %i.el
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290, %vector.ph288
  %index291 = phi i64 [ 0, %vector.ph288 ], [ %index.next293, %vector.body290 ] ; 2 uses
  %i.en = shl i64 %index291, 2
  %next.gep292 = getelementptr i8, ptr %i.ej, i64 %i.en ; 2 uses
  %i.eo = getelementptr i8, ptr %next.gep292, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep292, align 4, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.eo, align 4, !tbaa !82
  %index.next293 = add nuw i64 %index291, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next293, %n.vec289
  br i1 %i.ep, label %middle.block294, label %vector.body290, !llvm.loop !1278

middle.block294:                                  ; preds = %vector.body290
  %cmp.n295 = icmp eq i64 %i.eh, %n.vec289
  br i1 %cmp.n295, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, label %.lr.ph.i.i.i.i119.preheader

.lr.ph.i.i.i.i119.preheader:                      ; preds = %.lr.ph.i.preheader.i.i.i, %middle.block294
  %.05.i.i.i.i.ph = phi i64 [ %i.eh, %.lr.ph.i.preheader.i.i.i ], [ %i.ek, %middle.block294 ]
  %storemerge4.i.i.i.i.ph = phi ptr [ %i.ej, %.lr.ph.i.preheader.i.i.i ], [ %i.em, %middle.block294 ]
  br label %.lr.ph.i.i.i.i119

.lr.ph.i.i.i.i119:                                ; preds = %.lr.ph.i.i.i.i119.preheader, %.lr.ph.i.i.i.i119
  %.05.i.i.i.i = phi i64 [ %i.eq, %.lr.ph.i.i.i.i119 ], [ %.05.i.i.i.i.ph, %.lr.ph.i.i.i.i119.preheader ]
  %storemerge4.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i119 ], [ %storemerge4.i.i.i.i.ph, %.lr.ph.i.i.i.i119.preheader ] ; 2 uses
  %i.eq = add i64 %.05.i.i.i.i, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i, align 4, !tbaa !82
  %i.er = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  %.not.i.i.i.i120 = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i.i.i120, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, label %.lr.ph.i.i.i.i119, !llvm.loop !1279

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit: ; preds = %.lr.ph.i.i.i.i119, %middle.block294
  %i.es = trunc i64 %i.eh to i32
  %i.et = sub i32 %i.dy, %i.es                    ; 2 uses
  store i32 %i.et, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, %bb.bs
  %i.eu = phi i32 [ %i.et, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit ], [ %i.dy, %bb.bs ]
  %i.ev = sub i64 %i.dz, %i.eh
  br label %bb.bu

.critedge.i.i.thread:                             ; preds = %bb.br, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i220 = phi i64 [ %i.ef, %.lr.ph.i.i.preheader ], [ 10, %bb.br ] ; 4 uses
  %i.ew = sub i64 5, %i.dz
  %.not.i.i2.i.i = icmp ugt i64 %.sroa.3.0.lcssa.i.i220, %i.ew
  br i1 %.not.i.i2.i.i, label %bb.bt, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.ex = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i220, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ea, i8 0, i64 %i.ex, i1 false), !tbaa !82, !noalias !1321
  %i.ey = trunc nuw nsw i64 %.sroa.3.0.lcssa.i.i220 to i32
  %i.ez = add i32 %i.dy, %i.ey                    ; 2 uses
  store i32 %i.ez, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1321
  %i.fa = add i64 %.sroa.3.0.lcssa.i.i220, %i.dz
  br label %bb.bu

bb.bt:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc122 unwind label %bb.ca

.noexc122:                                        ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i
  %i.fb = phi i32 [ %i.ez, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.eu, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  %storemerge.i.i = phi i64 [ %i.fa, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ev, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  store i64 %storemerge.i.i, ptr %i.c, align 8, !tbaa !1306
  %i.fc = add i32 %i.fb, -1
  store i32 %i.fc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.cf unwind label %bb.cb

bb.bv:                                            ; preds = %bb.bo
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.j

bb.bx:                                            ; preds = %bb.bv
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.by:                                            ; preds = %bb.bp
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.bz:                                            ; preds = %bb.bq
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.ca:                                            ; preds = %bb.bt
  %i.fg = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.fh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.fi = add i32 %i.fh, -1
  store i32 %i.fi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bu
  %i.fj = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pn69 = phi { ptr, i32 } [ %i.fj, %bb.cb ], [ %i.fg, %bb.ca ] ; 2 uses
  %.11 = extractvalue { ptr, i32 } %.pn69, 1
  %.1139 = extractvalue { ptr, i32 } %.pn69, 0
  %i.fk = icmp eq i32 %.11, %i.h
  %i.fl = call ptr @__cxa_begin_catch(ptr %.1139) #25 ; 0 uses
  br i1 %i.fk, label %bb.cd, label %bb.ck

bb.cd:                                            ; preds = %bb.cc
  %i.fm = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ce unwind label %bb.cn     ; 0 uses

bb.ce:                                            ; preds = %bb.cd
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.co

bb.cf:                                            ; preds = %bb.ce, %bb.cl, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.fn = load i64, ptr %i.b, align 8, !tbaa !141, !noalias !1322 ; 17 uses
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.not.i.i2.i.i.i = icmp ugt i64 %i.fn, 5
  br i1 %.not.i.i2.i.i.i, label %bb.ch, label %.lr.ph.i.i.i.i.i.i.i.preheader.i.i, !prof !42

.lr.ph.i.i.i.i.i.i.i.preheader.i.i:               ; preds = %bb.cg
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1323
  %i.fp = trunc nuw nsw i64 %i.fn to i32
  %i.fq = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.fp
  store i32 %i.fq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1323
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc123 unwind label %bb.cp

.noexc123:                                        ; preds = %bb.ch
  unreachable

bb.ci:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.i.i, %bb.cf
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.cj unwind label %bb.cq

bb.cj:                                            ; preds = %bb.ci
  %.not3.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.cj
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check311 = icmp ult i64 %i.fn, 8
  br i1 %min.iters.check311, label %.lr.ph.i.i124.preheader, label %vector.ph312

vector.ph312:                                     ; preds = %.lr.ph.i.preheader.i
  %n.vec313 = and i64 %i.fn, -8                   ; 3 uses
  %i.fr = and i64 %i.fn, 7
  %i.fs = shl i64 %n.vec313, 2
  %i.ft = getelementptr i8, ptr %2, i64 %i.fs
  br label %vector.body314

vector.body314:                                   ; preds = %vector.body314, %vector.ph312
  %index315 = phi i64 [ 0, %vector.ph312 ], [ %index.next317, %vector.body314 ] ; 2 uses
  %i.fu = shl i64 %index315, 2
  %next.gep316 = getelementptr i8, ptr %2, i64 %i.fu ; 2 uses
  %i.fv = getelementptr i8, ptr %next.gep316, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep316, align 8, !tbaa !82
end_hunk_11
begin_hunk_12_@_Z21test_swap_and_move_ndIiLm10EEvv:bb.a
          to label %bb.aw unwind label %bb.bb     ; 0 uses

bb.aw:                                            ; preds = %_ZN5boost9container13static_vectorIiLm5EvEC2ILm10EvEEONS1_IiXT_ET0_EE.exit
  %i.fs = load i64, ptr %i.fj, align 8, !tbaa !157
  %i.ft = icmp eq i64 %i.fs, 5
  %i.fu = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.1, i32 noundef 525, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.ft)
          to label %bb.ax unwind label %bb.bb     ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  %i.fv = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.1, i32 noundef 528, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true)
          to label %bb.ay unwind label %bb.bb     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  %i.fw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.1, i32 noundef 529, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true)
          to label %bb.az unwind label %bb.bb     ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.fx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.1, i32 noundef 532, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true)
          to label %.preheader241.preheader unwind label %bb.bb ; 0 uses

.preheader241.preheader:                          ; preds = %bb.az
  %i.fy = load i32, ptr %4, align 16, !tbaa !41
  %i.fz = icmp eq i32 %i.fy, 100
  %i.ga = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.1, i32 noundef 534, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.fz)
          to label %.preheader241.1 unwind label %bb.bc ; 0 uses

bb.ba:                                            ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEE9deep_swapINS3_IiLm10ELm0ELb1EEEmS7_EEvRNS1_IT_T0_T1_EE.exit.i
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bb:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %_ZN5boost9container13static_vectorIiLm5EvEC2ILm10EvEEONS1_IiXT_ET0_EE.exit
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.preheader241.1:                                  ; preds = %.preheader241.preheader
  %i.gd = load i32, ptr %i.fk, align 4, !tbaa !41
  %i.ge = icmp eq i32 %i.gd, 101
  %i.gf = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.1, i32 noundef 534, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.ge)
          to label %.preheader241.2 unwind label %bb.bc ; 0 uses

.preheader241.2:                                  ; preds = %.preheader241.1
  %i.gg = load i32, ptr %i.fl, align 8, !tbaa !41
  %i.gh = icmp eq i32 %i.gg, 102
  %i.gi = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.1, i32 noundef 534, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.gh)
          to label %.preheader.preheader unwind label %bb.bc ; 0 uses

.preheader.preheader:                             ; preds = %.preheader241.2
  %i.gj = load i32, ptr %5, align 8, !tbaa !41
  %i.gk = icmp eq i32 %i.gj, 0
  %i.gl = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.gk)
          to label %bb.bd unwind label %bb.bs     ; 0 uses

bb.bc:                                            ; preds = %.preheader241.2, %.preheader241.1, %.preheader241.preheader
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bd:                                            ; preds = %.preheader.preheader
  %i.gn = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true)
          to label %bb.be unwind label %bb.bs     ; 0 uses

bb.be:                                            ; preds = %bb.bd
  %i.go = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true)
          to label %bb.bf unwind label %bb.bs     ; 0 uses

bb.bf:                                            ; preds = %bb.be
  %i.gp = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true)
          to label %.preheader.1 unwind label %bb.bs ; 0 uses

.preheader.1:                                     ; preds = %bb.bf
  %i.gq = load i32, ptr %i.fn, align 4, !tbaa !41
  %i.gr = icmp eq i32 %i.gq, 1
  %i.gs = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.gr)
          to label %bb.bg unwind label %bb.bs     ; 0 uses

bb.bg:                                            ; preds = %.preheader.1
  %i.gt = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true)
          to label %bb.bh unwind label %bb.bs     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  %i.gu = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true)
          to label %bb.bi unwind label %bb.bs     ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  %i.gv = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true)
          to label %.preheader.2 unwind label %bb.bs ; 0 uses

.preheader.2:                                     ; preds = %bb.bi
  %i.gw = load i32, ptr %i.fo, align 8, !tbaa !41
  %i.gx = icmp eq i32 %i.gw, 2
  %i.gy = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.gx)
          to label %bb.bj unwind label %bb.bs     ; 0 uses

bb.bj:                                            ; preds = %.preheader.2
  %i.gz = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bs     ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  %i.ha = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true)
          to label %bb.bl unwind label %bb.bs     ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  %i.hb = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true)
          to label %.preheader.3 unwind label %bb.bs ; 0 uses

.preheader.3:                                     ; preds = %bb.bl
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !41
  %i.he = icmp eq i32 %i.hd, 3
  %i.hf = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.he)
          to label %bb.bm unwind label %bb.bs     ; 0 uses

bb.bm:                                            ; preds = %.preheader.3
  %i.hg = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true)
          to label %bb.bn unwind label %bb.bs     ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  %i.hh = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true)
          to label %bb.bo unwind label %bb.bs     ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  %i.hi = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true)
          to label %.preheader.4 unwind label %bb.bs ; 0 uses

.preheader.4:                                     ; preds = %bb.bo
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !41
  %i.hl = icmp eq i32 %i.hk, 4
  %i.hm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.hl)
          to label %bb.bp unwind label %bb.bs     ; 0 uses

bb.bp:                                            ; preds = %.preheader.4
  %i.hn = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true)
          to label %bb.bq unwind label %bb.bs     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %i.ho = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true)
          to label %bb.br unwind label %bb.bs     ; 0 uses

bb.br:                                            ; preds = %bb.bq
  %i.hp = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true)
          to label %bb.bt unwind label %bb.bs     ; 0 uses

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp, %.preheader.4, %bb.bo, %bb.bn, %bb.bm, %.preheader.3, %bb.bl, %bb.bk, %bb.bj, %.preheader.2, %bb.bi, %bb.bh, %bb.bg, %.preheader.1, %bb.bf, %bb.be, %bb.bd, %.preheader.preheader
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.hr = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store i64 10, ptr %i.hr, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false), !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.hs = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store i64 5, ptr %i.hs, align 8, !tbaa !155
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc192 unwind label %bb.bv

.noexc192:                                        ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.bs, %bb.bc, %bb.bb, %bb.ba
  %.pn104.pn = phi { ptr, i32 } [ %i.gb, %bb.ba ], [ %i.gc, %bb.bb ], [ %i.gm, %bb.bc ], [ %i.hq, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.dj

bb.bv:                                            ; preds = %bb.bt
  %i.ht = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  %i.hv = extractvalue { ptr, i32 } %i.ht, 1
  %i.hw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25
  %i.hx = icmp eq i32 %i.hv, %i.hw
  %i.hy = call ptr @__cxa_begin_catch(ptr %i.hu) #25 ; 0 uses
  br i1 %i.hx, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.hz = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bx unwind label %bb.cd     ; 0 uses

bb.bx:                                            ; preds = %bb.bw
  invoke void @__cxa_end_catch()
          to label %bb.by unwind label %bb.ce

bb.by:                                            ; preds = %bb.bx, %bb.ca
  %i.ia = load i64, ptr %i.hr, align 8, !tbaa !95 ; 3 uses
  %or.cond = icmp ugt i64 %i.ia, 9
  br i1 %or.cond, label %.loopexit240, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.by
  %i.ib = getelementptr [4 x i8], ptr %6, i64 %i.ia
  %i.ic = shl nuw nsw i64 %i.ia, 2
  %i.id = sub nuw nsw i64 40, %i.ic
  call void @llvm.memset.p0.i64(ptr align 4 %i.ib, i8 0, i64 %i.id, i1 false), !tbaa !41
  br label %.loopexit240

.loopexit240:                                     ; preds = %.lr.ph.preheader.i.i.i.i, %bb.by
  store i64 10, ptr %i.hr, align 8, !tbaa !93
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc200 unwind label %bb.cf

.noexc200:                                        ; preds = %.loopexit240
  unreachable

bb.bz:                                            ; preds = %bb.bv
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 547, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  invoke void @__cxa_end_catch()
          to label %bb.by unwind label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.ie = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dk

bb.cc:                                            ; preds = %bb.de, %bb.cv, %bb.cn, %bb.ca
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.cd:                                            ; preds = %bb.bw
  %i.ig = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dk

bb.ce:                                            ; preds = %bb.bx
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.cf:                                            ; preds = %.loopexit240
  %i.ii = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  %i.ik = extractvalue { ptr, i32 } %i.ii, 1
  %i.il = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25 ; 3 uses
  %i.im = icmp eq i32 %i.ik, %i.il
  %i.in = call ptr @__cxa_begin_catch(ptr %i.ij) #25 ; 0 uses
  br i1 %i.im, label %bb.cg, label %bb.cm

bb.cg:                                            ; preds = %bb.cf
  %i.io = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ch unwind label %bb.cp     ; 0 uses

bb.ch:                                            ; preds = %bb.cg
  invoke void @__cxa_end_catch()
          to label %bb.ci unwind label %bb.cq

bb.ci:                                            ; preds = %bb.ch, %bb.cn
  %i.ip = load i64, ptr %i.hr, align 8, !tbaa !95 ; 3 uses
  %i.iq = icmp ugt i64 %i.ip, 5
  br i1 %i.iq, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc207 unwind label %bb.cr

.noexc207:                                        ; preds = %bb.cj
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %i.ir = load i64, ptr %i.hs, align 8, !tbaa !157 ; 4 uses
  %i.is = icmp ult i64 %i.ir, %i.ip
  br i1 %i.is, label %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i.i.i.i204, label %bb.cl

_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i.i.i.i204: ; preds = %bb.ck
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ir
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.ir
  %i.iv = sub nuw nsw i64 %i.ip, %i.ir
  %i.iw = shl nuw nsw i64 %i.iv, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.iu, ptr nonnull align 4 %i.it, i64 %i.iw, i1 false)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i.i.i.i204
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 550, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv)
          to label %.loopexit unwind label %bb.cr

bb.cm:                                            ; preds = %bb.cf
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 549, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm
  invoke void @__cxa_end_catch()
          to label %bb.ci unwind label %bb.cc

bb.co:                                            ; preds = %bb.cm
  %i.ix = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dk

bb.cp:                                            ; preds = %bb.cg
  %i.iy = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dk

bb.cq:                                            ; preds = %bb.ch
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.cr:                                            ; preds = %bb.cj, %bb.cl
  %i.ja = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.jb = extractvalue { ptr, i32 } %i.ja, 0
  %i.jc = extractvalue { ptr, i32 } %i.ja, 1
  %i.jd = icmp eq i32 %i.jc, %i.il
  %i.je = call ptr @__cxa_begin_catch(ptr %i.jb) #25 ; 0 uses
  br i1 %i.jd, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.jf = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ct unwind label %bb.cx     ; 0 uses

bb.ct:                                            ; preds = %bb.cs
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.cy

.loopexit:                                        ; preds = %bb.ct, %bb.cv, %bb.cl
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc219 unwind label %bb.cz

.noexc219:                                        ; preds = %.loopexit
  unreachable

bb.cu:                                            ; preds = %bb.cr
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 550, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv)
          to label %bb.cv unwind label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.cc

bb.cw:                                            ; preds = %bb.cu
  %i.jg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dk

bb.cx:                                            ; preds = %bb.cs
  %i.jh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dk

bb.cy:                                            ; preds = %bb.ct
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.cz:                                            ; preds = %.loopexit
  %i.jj = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.12 = extractvalue { ptr, i32 } %i.jj, 1
  %.1282 = extractvalue { ptr, i32 } %i.jj, 0
  %i.jk = icmp eq i32 %.12, %i.il
  %i.jl = call ptr @__cxa_begin_catch(ptr %.1282) #25 ; 0 uses
  br i1 %i.jk, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %bb.cz
  %i.jm = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.db unwind label %bb.dg     ; 0 uses

bb.db:                                            ; preds = %bb.da
  invoke void @__cxa_end_catch()
          to label %bb.dc unwind label %bb.dh

bb.dc:                                            ; preds = %bb.db, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.dd:                                            ; preds = %bb.cz
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 552, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv)
          to label %bb.de unwind label %bb.df

bb.de:                                            ; preds = %bb.dd
  invoke void @__cxa_end_catch()
          to label %bb.dc unwind label %bb.cc

bb.df:                                            ; preds = %bb.dd
  %i.jn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dk

end_hunk_12
begin_hunk_13_@_Z21test_swap_and_move_ndI8value_ndLm10EEvv:bb.a

bb.bd:                                            ; preds = %bb.bc
  %i.gb = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.1, i32 noundef 532, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true)
          to label %.preheader294.preheader unwind label %bb.bf ; 0 uses

.preheader294.preheader:                          ; preds = %bb.bd
  %i.gc = load i32, ptr %4, align 16, !tbaa !77
  %i.gd = icmp eq i32 %i.gc, 100
  %i.ge = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.1, i32 noundef 534, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.gd)
          to label %.preheader294.1 unwind label %bb.bg ; 0 uses

bb.be:                                            ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEE9deep_swapINS3_IS4_Lm10ELm0ELb1EEEmS8_EEvRNS1_IT_T0_T1_EE.exit.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bf:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %_ZN5boost9container13static_vectorI8value_ndLm5EvEC2ILm10EvEEONS1_IS2_XT_ET0_EE.exit
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.preheader294.1:                                  ; preds = %.preheader294.preheader
  %i.gh = load i32, ptr %i.fo, align 4, !tbaa !77
  %i.gi = icmp eq i32 %i.gh, 101
  %i.gj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.1, i32 noundef 534, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.gi)
          to label %.preheader294.2 unwind label %bb.bg ; 0 uses

.preheader294.2:                                  ; preds = %.preheader294.1
  %i.gk = load i32, ptr %i.fp, align 8, !tbaa !77
  %i.gl = icmp eq i32 %i.gk, 102
  %i.gm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.1, i32 noundef 534, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.gl)
          to label %.preheader.preheader unwind label %bb.bg ; 0 uses

.preheader.preheader:                             ; preds = %.preheader294.2
  %i.gn = load i32, ptr %5, align 8, !tbaa !77
  %i.go = icmp eq i32 %i.gn, 0
  %i.gp = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.go)
          to label %bb.bh unwind label %bb.bw     ; 0 uses

bb.bg:                                            ; preds = %.preheader294.2, %.preheader294.1, %.preheader294.preheader
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bh:                                            ; preds = %.preheader.preheader
  %i.gr = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true)
          to label %bb.bi unwind label %bb.bx     ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  %i.gs = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true)
          to label %bb.bj unwind label %bb.by     ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  %i.gt = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true)
          to label %.preheader.1 unwind label %bb.bz ; 0 uses

.preheader.1:                                     ; preds = %bb.bj
  %i.gu = load i32, ptr %i.fr, align 4, !tbaa !77
  %i.gv = icmp eq i32 %i.gu, 1
  %i.gw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.gv)
          to label %bb.bk unwind label %bb.bw     ; 0 uses

bb.bk:                                            ; preds = %.preheader.1
  %i.gx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true)
          to label %bb.bl unwind label %bb.bx     ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  %i.gy = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true)
          to label %bb.bm unwind label %bb.by     ; 0 uses

bb.bm:                                            ; preds = %bb.bl
  %i.gz = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true)
          to label %.preheader.2 unwind label %bb.bz ; 0 uses

.preheader.2:                                     ; preds = %bb.bm
  %i.ha = load i32, ptr %i.fs, align 8, !tbaa !77
  %i.hb = icmp eq i32 %i.ha, 2
  %i.hc = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.hb)
          to label %bb.bn unwind label %bb.bw     ; 0 uses

bb.bn:                                            ; preds = %.preheader.2
  %i.hd = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true)
          to label %bb.bo unwind label %bb.bx     ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  %i.he = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true)
          to label %bb.bp unwind label %bb.by     ; 0 uses

bb.bp:                                            ; preds = %bb.bo
  %i.hf = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true)
          to label %.preheader.3 unwind label %bb.bz ; 0 uses

.preheader.3:                                     ; preds = %bb.bp
  %i.hg = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !77
  %i.hi = icmp eq i32 %i.hh, 3
  %i.hj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.hi)
          to label %bb.bq unwind label %bb.bw     ; 0 uses

bb.bq:                                            ; preds = %.preheader.3
  %i.hk = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true)
          to label %bb.br unwind label %bb.bx     ; 0 uses

bb.br:                                            ; preds = %bb.bq
  %i.hl = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true)
          to label %bb.bs unwind label %bb.by     ; 0 uses

bb.bs:                                            ; preds = %bb.br
  %i.hm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true)
          to label %.preheader.4 unwind label %bb.bz ; 0 uses

.preheader.4:                                     ; preds = %bb.bs
  %i.hn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !77
  %i.hp = icmp eq i32 %i.ho, 4
  %i.hq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.hp)
          to label %bb.bt unwind label %bb.bw     ; 0 uses

bb.bt:                                            ; preds = %.preheader.4
  %i.hr = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true)
          to label %bb.bu unwind label %bb.bx     ; 0 uses

bb.bu:                                            ; preds = %bb.bt
  %i.hs = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true)
          to label %bb.bv unwind label %bb.by     ; 0 uses

bb.bv:                                            ; preds = %bb.bu
  %i.ht = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true)
          to label %bb.ca unwind label %bb.bz     ; 0 uses

bb.bw:                                            ; preds = %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bx:                                            ; preds = %bb.bt, %bb.bq, %bb.bn, %bb.bk, %bb.bh
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.by:                                            ; preds = %bb.bu, %bb.br, %bb.bo, %bb.bl, %bb.bi
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bv, %bb.bs, %bb.bp, %bb.bm, %bb.bj
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store i64 10, ptr %i.hy, align 8, !tbaa !118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false), !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.hz = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store i64 5, ptr %i.hz, align 8, !tbaa !161
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc217 unwind label %bb.cc

.noexc217:                                        ; preds = %bb.ca
  unreachable

bb.cb:                                            ; preds = %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.bg, %bb.bf, %bb.be
  %.pn111.pn = phi { ptr, i32 } [ %i.gf, %bb.be ], [ %i.hu, %bb.bw ], [ %i.gq, %bb.bg ], [ %i.gg, %bb.bf ], [ %i.hx, %bb.bz ], [ %i.hw, %bb.by ], [ %i.hv, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.dp

bb.cc:                                            ; preds = %bb.ca
  %i.ia = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  %i.ic = extractvalue { ptr, i32 } %i.ia, 1
  %i.id = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25
  %i.ie = icmp eq i32 %i.ic, %i.id
  %i.if = call ptr @__cxa_begin_catch(ptr %i.ib) #25 ; 0 uses
  br i1 %i.ie, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.ig = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ce unwind label %bb.ck     ; 0 uses

bb.ce:                                            ; preds = %bb.cd
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cl

bb.cf:                                            ; preds = %bb.ce, %bb.ch
  %i.ih = load i64, ptr %i.hy, align 8, !tbaa !120 ; 3 uses
  %or.cond = icmp ugt i64 %i.ih, 9
  br i1 %or.cond, label %.loopexit293, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.cf
  %i.ii = getelementptr [4 x i8], ptr %6, i64 %i.ih
  %i.ij = shl nuw nsw i64 %i.ih, 2
  %i.ik = sub nuw nsw i64 40, %i.ij
  call void @llvm.memset.p0.i64(ptr align 4 %i.ii, i8 0, i64 %i.ik, i1 false), !tbaa !41
  br label %.loopexit293

.loopexit293:                                     ; preds = %.lr.ph.preheader.i.i.i.i, %bb.cf
  store i64 10, ptr %i.hy, align 8, !tbaa !118
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc232 unwind label %bb.cm

.noexc232:                                        ; preds = %.loopexit293
  unreachable

bb.cg:                                            ; preds = %bb.cc
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 547, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv)
          to label %bb.ch unwind label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.do unwind label %bb.dq

bb.cj:                                            ; preds = %bb.dk, %bb.db, %bb.ct, %bb.ch
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.ck:                                            ; preds = %bb.cd
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.do unwind label %bb.dq

bb.cl:                                            ; preds = %bb.ce
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.cm:                                            ; preds = %.loopexit293
  %i.ip = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.iq = extractvalue { ptr, i32 } %i.ip, 0
  %i.ir = extractvalue { ptr, i32 } %i.ip, 1
  %i.is = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25 ; 3 uses
  %i.it = icmp eq i32 %i.ir, %i.is
  %i.iu = call ptr @__cxa_begin_catch(ptr %i.iq) #25 ; 0 uses
  br i1 %i.it, label %bb.cn, label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  %i.iv = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.co unwind label %bb.cv     ; 0 uses

bb.co:                                            ; preds = %bb.cn
  invoke void @__cxa_end_catch()
          to label %bb.cp unwind label %bb.cw

bb.cp:                                            ; preds = %bb.co, %bb.ct
  %i.iw = load i64, ptr %i.hy, align 8, !tbaa !120 ; 3 uses
  %i.ix = icmp ugt i64 %i.iw, 5
  br i1 %i.ix, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc244 unwind label %bb.cx

.noexc244:                                        ; preds = %bb.cq
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.iy = load i64, ptr %i.hz, align 8, !tbaa !163 ; 4 uses
  %i.iz = icmp ult i64 %i.iy, %i.iw
  br i1 %i.iz, label %_ZN5boost9container18copy_n_source_destIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i236, label %.loopexit292

_ZN5boost9container18copy_n_source_destIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i236: ; preds = %bb.cr
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.iy
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.iy
  %i.jc = sub nuw i64 %i.iw, %i.iy
  %i.jd = shl nuw nsw i64 %i.jc, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jb, ptr nonnull align 4 %i.ja, i64 %i.jd, i1 false), !tbaa !41
  br label %.loopexit292

.loopexit292:                                     ; preds = %bb.cr, %_ZN5boost9container18copy_n_source_destIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i236
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 550, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv)
          to label %.loopexit unwind label %bb.cx

bb.cs:                                            ; preds = %bb.cm
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 549, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  invoke void @__cxa_end_catch()
          to label %bb.cp unwind label %bb.cj

bb.cu:                                            ; preds = %bb.cs
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.do unwind label %bb.dq

bb.cv:                                            ; preds = %bb.cn
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.do unwind label %bb.dq

bb.cw:                                            ; preds = %bb.co
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.cx:                                            ; preds = %bb.cq, %.loopexit292
  %i.jh = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.ji = extractvalue { ptr, i32 } %i.jh, 0
  %i.jj = extractvalue { ptr, i32 } %i.jh, 1
  %i.jk = icmp eq i32 %i.jj, %i.is
  %i.jl = call ptr @__cxa_begin_catch(ptr %i.ji) #25 ; 0 uses
  br i1 %i.jk, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.jm = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.cz unwind label %bb.dd     ; 0 uses

bb.cz:                                            ; preds = %bb.cy
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.de

.loopexit:                                        ; preds = %bb.cz, %bb.db, %.loopexit292
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc261 unwind label %bb.df

.noexc261:                                        ; preds = %.loopexit
  unreachable

bb.da:                                            ; preds = %bb.cx
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 550, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv)
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %bb.da
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.cj

bb.dc:                                            ; preds = %bb.da
  %i.jn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.do unwind label %bb.dq

bb.dd:                                            ; preds = %bb.cy
  %i.jo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.do unwind label %bb.dq

bb.de:                                            ; preds = %bb.cz
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.df:                                            ; preds = %.loopexit
  %i.jq = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.15 = extractvalue { ptr, i32 } %i.jq, 1
  %.1585 = extractvalue { ptr, i32 } %i.jq, 0
  %i.jr = icmp eq i32 %.15, %i.is
  %i.js = call ptr @__cxa_begin_catch(ptr %.1585) #25 ; 0 uses
  br i1 %i.jr, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.jt = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.dh unwind label %bb.dm     ; 0 uses

bb.dh:                                            ; preds = %bb.dg
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dn

bb.di:                                            ; preds = %bb.dh, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.dj:                                            ; preds = %bb.df
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 552, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv)
          to label %bb.dk unwind label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.cj

bb.dl:                                            ; preds = %bb.dj
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.do unwind label %bb.dq

end_hunk_13
begin_hunk_14_@_Z20test_copy_and_assignIiLm10EN5boost9container4listIivEEEvRKT1_:bb.a

.noexc15:                                         ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i.i
  call void @_ZN5boost9container3dtl24static_storage_allocatorIiLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPiLb0EEENSN_ISO_Lb1EEET_SR_PNS_11move_detail13disable_if_orIvNSS_14is_convertibleISR_mEENS2_17is_input_iteratorISR_Xsr21has_iterator_categoryISR_EE5valueEEENSS_5bool_ILb0EEESZ_E4typeE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6assignINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEEvT_SN_PNS_11move_detail13disable_if_orIvNSO_14is_convertibleISN_mEENSO_4and_INSO_12is_differentINSO_17integral_constantIjLj0EEESV_EENS2_21is_not_input_iteratorISN_EENSO_5bool_ILb1EEES10_EENSZ_ILb0EEES12_E4typeE.exit

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6assignINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEEvT_SN_PNS_11move_detail13disable_if_orIvNSO_14is_convertibleISN_mEENSO_4and_INSO_12is_differentINSO_17integral_constantIjLj0EEESV_EENS2_21is_not_input_iteratorISN_EENSO_5bool_ILb1EEES10_EENSZ_ILb0EEES12_E4typeE.exit: ; preds = %.critedge.i, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPiLb0EEENSN_ISO_Lb1EEET_SR_PNS_11move_detail13disable_if_orIvNSS_14is_convertibleISR_mEENS2_17is_input_iteratorISR_Xsr21has_iterator_categoryISR_EE5valueEEENSS_5bool_ILb0EEESZ_E4typeE.exit.i
  %i.bx = phi i64 [ %i.ay, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPiLb0EEENSN_ISO_Lb1EEET_SR_PNS_11move_detail13disable_if_orIvNSS_14is_convertibleISR_mEENS2_17is_input_iteratorISR_Xsr21has_iterator_categoryISR_EE5valueEEENSS_5bool_ILb0EEESZ_E4typeE.exit.i ], [ 0, %.critedge.i ] ; 4 uses
  %i.by = load i64, ptr %0, align 8, !tbaa !114
  %i.bz = icmp eq i64 %i.bx, %i.by
  %i.ca = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignIiLm10EN5boost9container4listIivEEEvRKT1_, i1 noundef zeroext %i.bz) ; 0 uses
  %.idx57 = shl nuw nsw i64 %i.bx, 2
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %.idx57
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1513 ; 3 uses
  %.not2.i.i.i16 = icmp eq ptr %i.cc, %i.a
  br i1 %.not2.i.i.i16, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i20, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6assignINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEEvT_SN_PNS_11move_detail13disable_if_orIvNSO_14is_convertibleISN_mEENSO_4and_INSO_12is_differentINSO_17integral_constantIjLj0EEESV_EENS2_21is_not_input_iteratorISN_EENSO_5bool_ILb1EEES10_EENSZ_ILb0EEES12_E4typeE.exit, %.lr.ph.i.i.i17
  %i.cd = phi ptr [ %i.cf, %.lr.ph.i.i.i17 ], [ %i.cc, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6assignINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEEvT_SN_PNS_11move_detail13disable_if_orIvNSO_14is_convertibleISN_mEENSO_4and_INSO_12is_differentINSO_17integral_constantIjLj0EEESV_EENS2_21is_not_input_iteratorISN_EENSO_5bool_ILb1EEES10_EENSZ_ILb0EEES12_E4typeE.exit ]
  %.03.i.i.i18 = phi i64 [ %i.ce, %.lr.ph.i.i.i17 ], [ 0, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6assignINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEEvT_SN_PNS_11move_detail13disable_if_orIvNSO_14is_convertibleISN_mEENSO_4and_INSO_12is_differentINSO_17integral_constantIjLj0EEESV_EENS2_21is_not_input_iteratorISN_EENSO_5bool_ILb1EEES10_EENSZ_ILb0EEES12_E4typeE.exit ]
  %i.ce = add nuw nsw i64 %.03.i.i.i18, 1         ; 2 uses
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.cf, %i.a
  br i1 %.not.i.i.i19, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i20, label %.lr.ph.i.i.i17, !llvm.loop !18

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i20: ; preds = %.lr.ph.i.i.i17, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6assignINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEEvT_SN_PNS_11move_detail13disable_if_orIvNSO_14is_convertibleISN_mEENSO_4and_INSO_12is_differentINSO_17integral_constantIjLj0EEESV_EENS2_21is_not_input_iteratorISN_EENSO_5bool_ILb1EEES10_EENSZ_ILb0EEES12_E4typeE.exit
  %.0.lcssa.i.i.i21 = phi i64 [ 0, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6assignINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEEvT_SN_PNS_11move_detail13disable_if_orIvNSO_14is_convertibleISN_mEENSO_4and_INSO_12is_differentINSO_17integral_constantIjLj0EEESV_EENS2_21is_not_input_iteratorISN_EENSO_5bool_ILb1EEES10_EENSZ_ILb0EEES12_E4typeE.exit ], [ %i.ce, %.lr.ph.i.i.i17 ]
  %i.cg = icmp eq i64 %i.bx, %.0.lcssa.i.i.i21
  %i.ch = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS7_8bhtraitsINS1_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEvT_SM_T0_SN_, i1 noundef zeroext %i.cg) ; 0 uses
  %.not5.i22 = icmp eq i64 %i.bx, 0
  br i1 %.not5.i22, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS7_8bhtraitsINS1_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEvT_SM_T0_SN_.exit31, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i20, %.noexc30
  %.sroa.038.0 = phi ptr [ %i.cn, %.noexc30 ], [ %2, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i20 ] ; 2 uses
  %.sroa.033.0 = phi ptr [ %i.co, %.noexc30 ], [ %i.cc, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i20 ] ; 3 uses
  %.not4.i26 = icmp eq ptr %.sroa.033.0, %i.a
  br i1 %.not4.i26, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS7_8bhtraitsINS1_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEvT_SM_T0_SN_.exit31, label %.noexc30

.noexc30:                                         ; preds = %.lr.ph.i25
  %i.ci = load i32, ptr %.sroa.038.0, align 4, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 16
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !41
  %i.cl = icmp eq i32 %i.ci, %i.ck
  %i.cm = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS7_8bhtraitsINS1_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEvT_SM_T0_SN_, i1 noundef zeroext %i.cl) ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 4 ; 2 uses
  %i.co = load ptr, ptr %.sroa.033.0, align 8, !tbaa !105
  %.not.i27 = icmp eq ptr %i.cn, %i.cb
  br i1 %.not.i27, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS7_8bhtraitsINS1_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEvT_SM_T0_SN_.exit31, label %.lr.ph.i25, !llvm.loop !1484

_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS7_8bhtraitsINS1_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEvT_SM_T0_SN_.exit31: ; preds = %.noexc30, %.lr.ph.i25, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJRKiEEEEENS0_12vec_iteratorIPiLb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !110  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !189  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !42

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27 ; 5 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !111    ; 6 uses
  %i.t = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = load i64, ptr %i.d, align 8, !tbaa !109  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.w ; 2 uses
  %i.y = icmp ne ptr %i.s, %2
  %i.z = icmp ne ptr %i.s, null                   ; 2 uses
  %spec.select.i.i.i.i = and i1 %i.z, %i.y
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i, !prof !190

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 4 %i.s, i64 %i.v, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i: ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.0.i.i.i.i = phi ptr [ %i.aa, %bb.g ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i) ]
  %i.ab = load i32, ptr %4, align 4, !tbaa !41
  store i32 %i.ab, ptr %.0.i.i.i.i, align 4, !tbaa !41
  %i.ac = icmp ne ptr %2, %i.x
  %i.ad = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.ad, %i.ac
  br i1 %spec.select.i.i18.i.i, label %bb.h, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl20insert_emplace_proxyIS3_JRKiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, !prof !190

bb.h:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.af = ptrtoint ptr %i.x to i64
  %i.ag = sub i64 %i.af, %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 4 %2, i64 %i.ag, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl20insert_emplace_proxyIS3_JRKiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl20insert_emplace_proxyIS3_JRKiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i: ; preds = %bb.h, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i
  br i1 %i.z, label %bb.i, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJRKiEEEEEvPimSB_mT_.exit

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl20insert_emplace_proxyIS3_JRKiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !110
  %i.ai = shl i64 %i.ah, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.ai) #25
  %.pre = load i64, ptr %i.d, align 8, !tbaa !189
  br label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJRKiEEEEEvPimSB_mT_.exit

_ZN5boost9container6vectorIivvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJRKiEEEEEvPimSB_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl20insert_emplace_proxyIS3_JRKiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, %bb.i
  %i.aj = phi i64 [ %i.w, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl20insert_emplace_proxyIS3_JRKiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i ], [ %.pre, %bb.i ]
  store ptr %i.r, ptr %1, align 8, !tbaa !111
  %i.ak = add i64 %i.aj, %3
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !189
  store i64 %i.o, ptr %i.a, align 8, !tbaa !75
  %i.al = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store ptr %i.al, ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef %0) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !184
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9container12length_errorE, i64 16), ptr %i.a, align 8, !tbaa !49
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost9container12length_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #20

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container12length_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z20test_copy_and_assignI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::static_vector.43", align 8 ; 5 uses
  %2 = alloca %"class.boost::container::static_vector.43", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !1542 ; 6 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp ugt i64 %i.b, 10
  br i1 %.not.i.i.i.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.b
  %i.d = shl nuw nsw i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.d, i1 false), !tbaa !41, !noalias !1543
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24, !noalias !1544
  unreachable

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit: ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.e = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_, i1 noundef zeroext true) ; 0 uses
  %.idx = shl nuw nsw i64 %i.b, 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.g = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !1545 ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g
  %i.i = icmp eq i64 %i.b, %i.g
  %i.j = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.i) ; 0 uses
  %.not5.i = icmp eq i64 %i.b, 0
  br i1 %.not5.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit, %.noexc13
  %.sroa.040.0 = phi ptr [ %i.p, %.noexc13 ], [ %0, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit ] ; 3 uses
  %.sroa.045.0 = phi ptr [ %i.o, %.noexc13 ], [ %1, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.040.0, %i.h
  br i1 %.not4.i, label %.critedge.i, label %.noexc13

.noexc13:                                         ; preds = %.lr.ph.i
  %i.k = load i32, ptr %.sroa.045.0, align 4, !tbaa !77
  %i.l = load i32, ptr %.sroa.040.0, align 4, !tbaa !77
  %i.m = icmp eq i32 %i.k, %i.l
  %i.n = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.m) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 4
  %.not.i = icmp eq ptr %i.o, %i.f
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !20

.critedge.i:                                      ; preds = %.lr.ph.i, %.noexc13, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.q = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.1, i32 noundef 217, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_, i1 noundef zeroext true) ; 0 uses
  %i.r = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !1546 ; 2 uses
  %.idx51 = shl i64 %i.r, 2                       ; 3 uses
  %i.s = icmp eq i64 %.idx51, 0
  br i1 %i.s, label %.noexc23, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.t = ashr exact i64 %.idx51, 2                ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.t, 10
  br i1 %.not.i.i.i, label %.noexc15, label %.lr.ph.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %0, i64 %.idx51, i1 false), !tbaa !41, !noalias !1547
  br label %.noexc23

.noexc15:                                         ; preds = %bb.d
  call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

.noexc23:                                         ; preds = %.critedge.i, %.lr.ph.i.i.i.i.i.i.i.preheader
  %storemerge.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ 0, %.critedge.i ] ; 4 uses
  %i.u = icmp eq i64 %storemerge.i, %i.r
  %i.v = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_, i1 noundef zeroext %i.u) ; 0 uses
  %.idx54 = shl nuw nsw i64 %storemerge.i, 2
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %.idx54
  %i.x = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !1548 ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = icmp eq i64 %storemerge.i, %i.x
  %i.aa = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.z) ; 0 uses
  %.not5.i16 = icmp eq i64 %storemerge.i, 0
  br i1 %.not5.i16, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.noexc23, %.noexc24
  %.sroa.032.0 = phi ptr [ %i.af, %.noexc24 ], [ %2, %.noexc23 ] ; 2 uses
  %.sroa.027.0 = phi ptr [ %i.ag, %.noexc24 ], [ %0, %.noexc23 ] ; 3 uses
  %.not4.i20 = icmp eq ptr %.sroa.027.0, %i.y
  br i1 %.not4.i20, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %.noexc24

.noexc24:                                         ; preds = %.lr.ph.i19
  %i.ab = load i32, ptr %.sroa.032.0, align 4, !tbaa !77
  %i.ac = load i32, ptr %.sroa.027.0, align 4, !tbaa !77
  %i.ad = icmp eq i32 %i.ab, %i.ac
  %i.ae = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.ad) ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.027.0, i64 4
  %.not.i21 = icmp eq ptr %i.af, %i.w
  br i1 %.not.i21, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %.lr.ph.i19, !llvm.loop !20

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25: ; preds = %.noexc24, %.lr.ph.i19, %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z20test_copy_and_assignI8value_ndLm10EN5boost9container6vectorIS0_vvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::static_vector.43", align 8 ; 5 uses
  %2 = alloca %"class.boost::container::static_vector.43", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = load ptr, ptr %0, align 8, !tbaa !126, !noalias !1587
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !124, !noalias !1588 ; 6 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp ugt i64 %i.c, 10
  br i1 %.not.i.i.i.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.b
  %i.e = shl nuw nsw i64 %i.c, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr align 4 %i.a, i64 %i.e, i1 false), !tbaa !41, !noalias !1589
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24, !noalias !1590
  unreachable

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit: ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.f = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI8value_ndLm10EN5boost9container6vectorIS0_vvEEEvRKT1_, i1 noundef zeroext true) ; 0 uses
  %.idx = shl nuw nsw i64 %i.c, 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.h = load ptr, ptr %0, align 8, !tbaa !126, !noalias !1591 ; 2 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !124, !noalias !1592 ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i
  %i.k = icmp eq i64 %i.c, %i.i
  %i.l = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.k) ; 0 uses
  %.not5.i = icmp eq i64 %i.c, 0
  br i1 %.not5.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit, %.noexc13
  %.sroa.040.0 = phi ptr [ %i.r, %.noexc13 ], [ %i.h, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit ] ; 3 uses
  %.sroa.045.0 = phi ptr [ %i.q, %.noexc13 ], [ %1, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.040.0, %i.j
  br i1 %.not4.i, label %.critedge.i, label %.noexc13

.noexc13:                                         ; preds = %.lr.ph.i
  %i.m = load i32, ptr %.sroa.045.0, align 4, !tbaa !77
  %i.n = load i32, ptr %.sroa.040.0, align 4, !tbaa !77
  %i.o = icmp eq i32 %i.m, %i.n
  %i.p = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.o) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 4
  %.not.i = icmp eq ptr %i.q, %i.g
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !20

.critedge.i:                                      ; preds = %.lr.ph.i, %.noexc13, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.s = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.1, i32 noundef 217, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI8value_ndLm10EN5boost9container6vectorIS0_vvEEEvRKT1_, i1 noundef zeroext true) ; 0 uses
  %i.t = load i64, ptr %i.b, align 8, !tbaa !124, !noalias !1593 ; 9 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.noexc23, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %.not.i.i.i = icmp ugt i64 %i.t, 10
  br i1 %.not.i.i.i, label %.noexc15, label %.lr.ph.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d
  %i.v = load ptr, ptr %0, align 8, !tbaa !126, !noalias !1594 ; 2 uses
  %xtraiter = and i64 %i.t, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %i.w = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.x = load i32, ptr %i.w, align 4, !tbaa !41, !noalias !1595
  store i32 %i.x, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1595
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.aa = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !1579

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.unr = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ab = icmp ult i64 %i.t, 8
  br i1 %i.ab, label %.noexc23, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %i.ac = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !41, !noalias !1595
  store i32 %i.ad, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1595
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 4
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !41, !noalias !1595
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !41, !noalias !1595
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !41, !noalias !1595
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !41, !noalias !1595
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 12
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !41, !noalias !1595
  store i32 %i.am, ptr %i.al, align 4, !tbaa !41, !noalias !1595
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !41, !noalias !1595
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !41, !noalias !1595
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ar = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 20
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !41, !noalias !1595
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !41, !noalias !1595
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 24
  %i.av = load i32, ptr %i.at, align 4, !tbaa !41, !noalias !1595
  store i32 %i.av, ptr %i.au, align 4, !tbaa !41, !noalias !1595
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ax = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 28
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !41, !noalias !1595
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !41, !noalias !1595
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 32
  %i.bb = add i64 %.015.i.i.i.i.i.i.i, -8         ; 2 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %.noexc23, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1580

.noexc15:                                         ; preds = %bb.d
  call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

.noexc23:                                         ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %.critedge.i
  %i.bc = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI8value_ndLm10EN5boost9container6vectorIS0_vvEEEvRKT1_, i1 noundef zeroext true) ; 0 uses
  %.idx54 = shl nuw nsw i64 %i.t, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %.idx54
  %i.be = load ptr, ptr %0, align 8, !tbaa !126, !noalias !1596 ; 2 uses
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !124, !noalias !1597 ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bf
  %i.bh = icmp eq i64 %i.t, %i.bf
  %i.bi = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.bh) ; 0 uses
  %.not5.i16 = icmp eq i64 %i.t, 0
  br i1 %.not5.i16, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.noexc23, %.noexc24
  %.sroa.032.0 = phi ptr [ %i.bn, %.noexc24 ], [ %2, %.noexc23 ] ; 2 uses
  %.sroa.027.0 = phi ptr [ %i.bo, %.noexc24 ], [ %i.be, %.noexc23 ] ; 3 uses
  %.not4.i20 = icmp eq ptr %.sroa.027.0, %i.bg
  br i1 %.not4.i20, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %.noexc24

.noexc24:                                         ; preds = %.lr.ph.i19
  %i.bj = load i32, ptr %.sroa.032.0, align 4, !tbaa !77
  %i.bk = load i32, ptr %.sroa.027.0, align 4, !tbaa !77
  %i.bl = icmp eq i32 %i.bj, %i.bk
  %i.bm = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.bl) ; 0 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.027.0, i64 4
  %.not.i21 = icmp eq ptr %i.bn, %i.bd
  br i1 %.not.i21, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %.lr.ph.i19, !llvm.loop !20

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25: ; preds = %.noexc24, %.lr.ph.i19, %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z20test_copy_and_assignI8value_ndLm10EN5boost9container4listIS0_vEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i = alloca ptr, align 8          ; 5 uses
  %.sroa.0.i.i.i.i.i.i = alloca ptr, align 8      ; 5 uses
  %1 = alloca %"class.boost::container::static_vector.43", align 8 ; 6 uses
  %2 = alloca %"class.boost::container::static_vector.43", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1637 ; 3 uses
  %i.c = icmp eq ptr %i.b, %i.a
  br i1 %i.c, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %i.d = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.b, %bb.a ]
  %.03.i.i.i.i.i.i = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.e = add nuw i64 %.03.i.i.i.i.i.i, 1          ; 5 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !105, !noalias !1638 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, %i.a
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !21

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.not.i.i.i.i = icmp samesign ult i64 %.03.i.i.i.i.i.i, 10
  br i1 %.not.i.not.i.i.i.i, label %bb.b, label %bb.c, !prof !185

bb.b:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  store ptr %i.b, ptr %.sroa.0.i.i.i.i.i.i, align 8, !tbaa !192, !noalias !1639
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.in.i.i.i.i.i.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.0.i.i.i.i.i.i, %bb.b ]
  %.015.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.e, %bb.b ]
  %.01214.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %1, %bb.b ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.b ]
  %i.g = load ptr, ptr %.in.i.i.i.i.i.i.i.prol, align 8, !tbaa !188, !noalias !1639 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !41, !noalias !1640
  store i32 %i.i, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1640
  %i.j = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.k = add nsw i64 %.015.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1610

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %bb.b
  %.in.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.i.i.i.i.i.i, %bb.b ], [ %i.g, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.015.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.e, %bb.b ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
end_hunk_14
begin_hunk_15_@_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_NS2_18insert_range_proxyIS5_NS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS4_NS2_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SW_mSR_:bb.a

vector.body113:                                   ; preds = %vector.body113, %vector.ph111
  %index114 = phi i64 [ 0, %vector.ph111 ], [ %index.next130, %vector.body113 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.bq, %vector.ph111 ], [ %i.bt, %vector.body113 ]
  %vec.phi115 = phi <2 x i64> [ zeroinitializer, %vector.ph111 ], [ %i.bu, %vector.body113 ]
  %i.br = shl i64 %index114, 3                    ; 3 uses
  %i.bs = or disjoint i64 %i.br, 16               ; 2 uses
  %next.gep116 = getelementptr i8, ptr %1, i64 %i.br ; 2 uses
  %next.gep117 = getelementptr i8, ptr %1, i64 %i.bs ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.au, i64 %i.br ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.au, i64 %i.bs ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep118) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep120) ]
  %wide.vec122 = load <4 x i32>, ptr %next.gep116, align 4, !tbaa !41
  %wide.vec125 = load <4 x i32>, ptr %next.gep117, align 4, !tbaa !41
  store <4 x i32> %wide.vec122, ptr %next.gep118, align 4, !tbaa !41
  store <4 x i32> %wide.vec125, ptr %next.gep120, align 4, !tbaa !41
  store <4 x i32> zeroinitializer, ptr %next.gep116, align 4, !tbaa !41
  store <4 x i32> zeroinitializer, ptr %next.gep117, align 4, !tbaa !41
  %i.bt = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.bu = add <2 x i64> %vec.phi115, splat (i64 1) ; 2 uses
  %index.next130 = add nuw i64 %index114, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next130, %n.vec112
  br i1 %i.bv, label %middle.block131, label %vector.body113, !llvm.loop !1830

middle.block131:                                  ; preds = %vector.body113
  %bin.rdx = add <2 x i64> %i.bu, %i.bt
  %i.bw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n132 = icmp eq i64 %i.ay, %n.vec112
  br i1 %cmp.n132, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %scalar.ph106.preheader

scalar.ph106.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i50, %middle.block131
  %.ph = phi i64 [ %_ZZN14counting_value1cEvE2co.promoted.i51, %vector.memcheck ], [ %_ZZN14counting_value1cEvE2co.promoted.i51, %.lr.ph.i50 ], [ %i.bw, %middle.block131 ]
  %.018.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i50 ], [ %i.bo, %middle.block131 ]
  %.01517.i.ph = phi ptr [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph.i50 ], [ %i.bp, %middle.block131 ]
  br label %scalar.ph106

scalar.ph106:                                     ; preds = %scalar.ph106.preheader, %scalar.ph106
  %i.bx = phi i64 [ %i.ca, %scalar.ph106 ], [ %.ph, %scalar.ph106.preheader ]
  %.018.i = phi ptr [ %i.cb, %scalar.ph106 ], [ %.018.i.ph, %scalar.ph106.preheader ] ; 4 uses
  %.01517.i = phi ptr [ %i.cc, %scalar.ph106 ], [ %.01517.i.ph, %scalar.ph106.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.by = getelementptr inbounds nuw i8, ptr %.018.i, i64 4
  %i.bz = load <2 x i32>, ptr %.018.i, align 4, !tbaa !41
  store <2 x i32> %i.bz, ptr %.01517.i, align 4, !tbaa !41
  store i32 0, ptr %.018.i, align 4, !tbaa !79
  store i32 0, ptr %i.by, align 4, !tbaa !80
  %i.ca = add i64 %i.bx, 1                        ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  %.not.i52 = icmp eq ptr %i.cb, %2
  br i1 %.not.i52, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %scalar.ph106, !llvm.loop !1831

_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit: ; preds = %scalar.ph106, %middle.block131
  %.lcssa92 = phi i64 [ %i.bw, %middle.block131 ], [ %i.ca, %scalar.ph106 ]
  store i64 %.lcssa92, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.cd = load ptr, ptr %4, align 8, !tbaa !1840  ; 2 uses
  %xtraiter138 = and i64 %i.d, 3                  ; 2 uses
  %lcmp.mod139.not = icmp eq i64 %xtraiter138, 0
  br i1 %lcmp.mod139.not, label %.lr.ph.i.i55.prol.loopexit, label %.lr.ph.i.i55.prol

.lr.ph.i.i55.prol:                                ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, %.lr.ph.i.i55.prol
  %i.ce = phi ptr [ %i.ci, %.lr.ph.i.i55.prol ], [ %i.cd, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ] ; 2 uses
  %.06.i.i56.prol = phi ptr [ %i.cj, %.lr.ph.i.i55.prol ], [ %1, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ] ; 2 uses
  %.035.i.i57.prol = phi i64 [ %i.cf, %.lr.ph.i.i55.prol ], [ %i.d, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ]
  %prol.iter140 = phi i64 [ %prol.iter140.next, %.lr.ph.i.i55.prol ], [ 0, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ]
  %i.cf = add i64 %.035.i.i57.prol, -1            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ch = load <2 x i32>, ptr %i.cg, align 4, !tbaa !41, !noalias !1841
  store <2 x i32> %i.ch, ptr %.06.i.i56.prol, align 4, !tbaa !41, !noalias !1841
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !105, !noalias !1841 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.06.i.i56.prol, i64 8 ; 2 uses
  %prol.iter140.next = add i64 %prol.iter140, 1   ; 2 uses
  %prol.iter140.cmp.not = icmp eq i64 %prol.iter140.next, %xtraiter138
  br i1 %prol.iter140.cmp.not, label %.lr.ph.i.i55.prol.loopexit, label %.lr.ph.i.i55.prol, !llvm.loop !1834

.lr.ph.i.i55.prol.loopexit:                       ; preds = %.lr.ph.i.i55.prol, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit
  %.lcssa.unr = phi ptr [ poison, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.ci, %.lr.ph.i.i55.prol ]
  %.unr = phi ptr [ %i.cd, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.ci, %.lr.ph.i.i55.prol ]
  %.06.i.i56.unr = phi ptr [ %1, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.cj, %.lr.ph.i.i55.prol ]
  %.035.i.i57.unr = phi i64 [ %i.d, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.cf, %.lr.ph.i.i55.prol ]
  %i.ck = icmp ult i64 %i.d, 4
  br i1 %i.ck, label %.loopexit, label %.lr.ph.i.i55

.lr.ph.i.i55:                                     ; preds = %.lr.ph.i.i55.prol.loopexit, %.lr.ph.i.i55
  %i.cl = phi ptr [ %i.db, %.lr.ph.i.i55 ], [ %.unr, %.lr.ph.i.i55.prol.loopexit ] ; 2 uses
  %.06.i.i56 = phi ptr [ %i.dc, %.lr.ph.i.i55 ], [ %.06.i.i56.unr, %.lr.ph.i.i55.prol.loopexit ] ; 5 uses
  %.035.i.i57 = phi i64 [ %i.cy, %.lr.ph.i.i55 ], [ %.035.i.i57.unr, %.lr.ph.i.i55.prol.loopexit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load <2 x i32>, ptr %i.cm, align 4, !tbaa !41, !noalias !1841
  store <2 x i32> %i.cn, ptr %.06.i.i56, align 4, !tbaa !41, !noalias !1841
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !105, !noalias !1841 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cr = load <2 x i32>, ptr %i.cq, align 4, !tbaa !41, !noalias !1841
  store <2 x i32> %i.cr, ptr %i.cp, align 4, !tbaa !41, !noalias !1841
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !105, !noalias !1841 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = load <2 x i32>, ptr %i.cu, align 4, !tbaa !41, !noalias !1841
  store <2 x i32> %i.cv, ptr %i.ct, align 4, !tbaa !41, !noalias !1841
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !105, !noalias !1841 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 24
  %i.cy = add i64 %.035.i.i57, -4                 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.da = load <2 x i32>, ptr %i.cz, align 4, !tbaa !41, !noalias !1841
  store <2 x i32> %i.da, ptr %i.cx, align 4, !tbaa !41, !noalias !1841
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !105, !noalias !1841 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 32
  %.not.i.i58.3 = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i58.3, label %.loopexit, label %.lr.ph.i.i55, !llvm.loop !1829

.loopexit:                                        ; preds = %.lr.ph.i.i55.prol.loopexit, %.lr.ph.i.i55, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.thread
  %i.dd = phi ptr [ %i.at, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.thread ], [ %.lcssa.unr, %.lr.ph.i.i55.prol.loopexit ], [ %i.db, %.lr.ph.i.i55 ] ; 2 uses
  %i.de = sub i64 %3, %i.d                        ; 4 uses
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1842
  %xtraiter141 = and i64 %i.de, 3                 ; 2 uses
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  br i1 %lcmp.mod142.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.loopexit, %.prol.preheader
  %i.df = phi ptr [ %i.di, %.prol.preheader ], [ %i.dd, %.loopexit ] ; 2 uses
  %.015.i.i.prol = phi i64 [ %i.dk, %.prol.preheader ], [ %i.de, %.loopexit ]
  %.01214.i.i.prol = phi ptr [ %i.dj, %.prol.preheader ], [ %2, %.loopexit ] ; 3 uses
  %prol.iter143 = phi i64 [ %prol.iter143.next, %.prol.preheader ], [ 0, %.loopexit ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.prol) ]
  %i.dh = load <2 x i32>, ptr %i.dg, align 4, !tbaa !41, !noalias !1842
  store <2 x i32> %i.dh, ptr %.01214.i.i.prol, align 4, !tbaa !41, !noalias !1842
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !105, !noalias !1842 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.01214.i.i.prol, i64 8 ; 2 uses
  %i.dk = add i64 %.015.i.i.prol, -1              ; 2 uses
  %prol.iter143.next = add i64 %prol.iter143, 1   ; 2 uses
  %prol.iter143.cmp.not = icmp eq i64 %prol.iter143.next, %xtraiter141
  br i1 %prol.iter143.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1837

.prol.loopexit:                                   ; preds = %.prol.preheader, %.loopexit
  %.unr144 = phi ptr [ %i.dd, %.loopexit ], [ %i.di, %.prol.preheader ]
  %.015.i.i.unr = phi i64 [ %i.de, %.loopexit ], [ %i.dk, %.prol.preheader ]
  %.01214.i.i.unr = phi ptr [ %2, %.loopexit ], [ %i.dj, %.prol.preheader ]
  %i.dl = sub i64 %i.d, %3
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %._crit_edge.i.i, label %.loopexit.new

.loopexit.new:                                    ; preds = %.prol.loopexit, %.loopexit.new
  %i.dn = phi ptr [ %i.ec, %.loopexit.new ], [ %.unr144, %.prol.loopexit ] ; 2 uses
  %.015.i.i = phi i64 [ %i.ee, %.loopexit.new ], [ %.015.i.i.unr, %.prol.loopexit ]
  %.01214.i.i = phi ptr [ %i.ed, %.loopexit.new ], [ %.01214.i.i.unr, %.prol.loopexit ] ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i) ]
  %i.dp = load <2 x i32>, ptr %i.do, align 4, !tbaa !41, !noalias !1842
  store <2 x i32> %i.dp, ptr %.01214.i.i, align 4, !tbaa !41, !noalias !1842
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !105, !noalias !1842 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dt = load <2 x i32>, ptr %i.ds, align 4, !tbaa !41, !noalias !1842
  store <2 x i32> %i.dt, ptr %i.dr, align 4, !tbaa !41, !noalias !1842
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !105, !noalias !1842 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = load <2 x i32>, ptr %i.dw, align 4, !tbaa !41, !noalias !1842
  store <2 x i32> %i.dx, ptr %i.dv, align 4, !tbaa !41, !noalias !1842
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !105, !noalias !1842 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eb = load <2 x i32>, ptr %i.ea, align 4, !tbaa !41, !noalias !1842
  store <2 x i32> %i.eb, ptr %i.dz, align 4, !tbaa !41, !noalias !1842
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !105, !noalias !1842
  %i.ed = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 32
  %i.ee = add i64 %.015.i.i, -4                   ; 2 uses
  %.not.i.i61.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i61.3, label %._crit_edge.i.i, label %.loopexit.new, !llvm.loop !26

._crit_edge.i.i:                                  ; preds = %.loopexit.new, %.prol.loopexit
  %i.ef = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.de
  store i64 %i.ef, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1842
  br label %_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit

_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %._crit_edge.i.i, %_ZN5boost9container13move_backwardIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z20test_copy_and_assignIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::static_vector.35", align 8 ; 12 uses
  %2 = alloca %"class.boost::container::static_vector.35", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !141, !noalias !1883 ; 20 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2INS0_12vec_iteratorIPS3_Lb1EEEEET_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i2.i.i.i = icmp ugt i64 %i.b, 10
  br i1 %.not.i.i2.i.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.i.preheader.i.i, !prof !42

.lr.ph.i.i.i.i.i.i.i.preheader.i.i:               ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1884
  %i.d = shl nuw nsw i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.d, i1 false), !tbaa !82, !noalias !1884
  %i.e = trunc nuw nsw i64 %i.b to i32
  %i.f = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.e
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1884
  br label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2INS0_12vec_iteratorIPS3_Lb1EEEEET_S9_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24, !noalias !1885
  unreachable

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2INS0_12vec_iteratorIPS3_Lb1EEEEET_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.i.i, %bb.a
  %i.g = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEEEvRKT1_, i1 noundef zeroext true)
          to label %bb.d unwind label %.loopexit.split-lp83 ; 0 uses

bb.d:                                             ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2INS0_12vec_iteratorIPS3_Lb1EEEEET_S9_.exit
  %.idx = shl nuw nsw i64 %i.b, 2
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.i = load i64, ptr %i.a, align 8, !tbaa !141, !noalias !1886 ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %0, i64 %i.i
  %i.k = icmp eq i64 %i.b, %i.i
  %i.l = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEENS2_IS5_Lb1EEEEvT_S8_T0_S9_, i1 noundef zeroext %i.k)
          to label %.noexc unwind label %.loopexit.split-lp83 ; 0 uses

.noexc:                                           ; preds = %bb.d
  %.not5.i = icmp eq i64 %i.b, 0
  br i1 %.not5.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc13
  %.sroa.067.0 = phi ptr [ %i.r, %.noexc13 ], [ %0, %.noexc ] ; 3 uses
  %.sroa.072.0 = phi ptr [ %i.q, %.noexc13 ], [ %1, %.noexc ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.067.0, %i.j
  br i1 %.not4.i, label %.lr.ph.i.preheader.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.m = load i32, ptr %.sroa.072.0, align 4, !tbaa !82
  %i.n = load i32, ptr %.sroa.067.0, align 4, !tbaa !82
  %i.o = icmp eq i32 %i.m, %i.n
  %i.p = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEENS2_IS5_Lb1EEEEvT_S8_T0_S9_, i1 noundef zeroext %i.o)
          to label %.noexc13 unwind label %.loopexit82 ; 0 uses

.noexc13:                                         ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.072.0, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.067.0, i64 4
  %.not.i = icmp eq ptr %i.q, %i.h
  br i1 %.not.i, label %.lr.ph.i.preheader.i, label %.lr.ph.i, !llvm.loop !28

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %.noexc13
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check106 = icmp ult i64 %i.b, 8
  br i1 %min.iters.check106, label %.lr.ph.i.i.preheader, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.i.preheader.i
  %n.vec108 = and i64 %i.b, -8                    ; 3 uses
  %i.s = and i64 %i.b, 7
  %i.t = shl i64 %n.vec108, 2
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph107
  %index110 = phi i64 [ 0, %vector.ph107 ], [ %index.next112, %vector.body109 ] ; 2 uses
  %i.v = shl i64 %index110, 2
  %next.gep111 = getelementptr i8, ptr %1, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep111, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep111, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.w, align 8, !tbaa !82
  %index.next112 = add nuw i64 %index110, 8       ; 2 uses
  %i.x = icmp eq i64 %index.next112, %n.vec108
  br i1 %i.x, label %middle.block113, label %vector.body109, !llvm.loop !1857

middle.block113:                                  ; preds = %vector.body109
  %cmp.n114 = icmp eq i64 %i.b, %n.vec108
  br i1 %cmp.n114, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block113
  %.05.i.i.ph = phi i64 [ %i.b, %.lr.ph.i.preheader.i ], [ %i.s, %middle.block113 ]
  %storemerge4.i.i.ph = phi ptr [ %1, %.lr.ph.i.preheader.i ], [ %i.u, %middle.block113 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.y = add i64 %.05.i.i, -1                     ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !82
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1858

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block113
  %i.aa = trunc nuw nsw i64 %i.b to i32
  %i.ab = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.aa
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.noexc, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !139
  %i.ad = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.1, i32 noundef 217, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEEEvRKT1_, i1 noundef zeroext true)
          to label %.critedge.i unwind label %.loopexit.split-lp ; 0 uses

.critedge.i:                                      ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !141, !noalias !1887 ; 3 uses
  %.idx78 = shl i64 %i.ae, 2                      ; 3 uses
  %i.af = icmp eq i64 %.idx78, 0
  br i1 %i.af, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %bb.f

bb.f:                                             ; preds = %.critedge.i
  %i.ag = ashr exact i64 %.idx78, 2               ; 5 uses
  %.not.i.i2.i = icmp ugt i64 %i.ag, 10
  br i1 %.not.i.i2.i, label %bb.g, label %.lr.ph.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.f
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1888 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %0, i64 %.idx78, i1 false), !tbaa !82, !noalias !1888
  %min.iters.check118 = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check118, label %.lr.ph.i.i.i.i.i.i.i.preheader152, label %vector.ph119

vector.ph119:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ah = and i64 %i.ae, 7                        ; 3 uses
  %n.vec120 = sub nuw nsw i64 %i.ag, %i.ah
  %i.ai = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph119
  %index122 = phi i64 [ 0, %vector.ph119 ], [ %index.next124, %vector.body121 ]
  %vec.phi = phi <4 x i32> [ %i.ai, %vector.ph119 ], [ %i.aj, %vector.body121 ]
  %vec.phi123 = phi <4 x i32> [ zeroinitializer, %vector.ph119 ], [ %i.ak, %vector.body121 ]
  %i.aj = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ak = add <4 x i32> %vec.phi123, splat (i32 1) ; 2 uses
  %index.next124 = add nuw i64 %index122, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next124, %n.vec120
  br i1 %i.al, label %middle.block125, label %vector.body121, !llvm.loop !1869

middle.block125:                                  ; preds = %vector.body121
  %bin.rdx = add <4 x i32> %i.ak, %i.aj
  %i.am = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n126 = icmp eq i64 %i.ah, 0
  br i1 %cmp.n126, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, label %.lr.ph.i.i.i.i.i.i.i.preheader152

.lr.ph.i.i.i.i.i.i.i.preheader152:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block125
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.am, %middle.block125 ]
  %.015.i.i.i.i.i.i.i.ph = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block125 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader152, %.lr.ph.i.i.i.i.i.i.i
  %i.an = phi i32 [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader152 ]
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader152 ]
  %i.ao = add i32 %i.an, 1                        ; 2 uses
  %i.ap = add i64 %.015.i.i.i.i.i.i.i, -1         ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1870

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc15 unwind label %.loopexit.split-lp

.noexc15:                                         ; preds = %bb.g
  unreachable

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block125
  %.lcssa = phi i32 [ %i.am, %middle.block125 ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ]
  store i32 %.lcssa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1888
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, %.critedge.i
  %storemerge.i = phi i64 [ 0, %.critedge.i ], [ %i.ag, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit ] ; 2 uses
  store i64 %storemerge.i, ptr %i.ac, align 8, !tbaa !139
  %i.aq = icmp eq i64 %storemerge.i, %i.ae
  %i.ar = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEEEvRKT1_, i1 noundef zeroext %i.aq)
          to label %bb.h unwind label %.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %i.as = load i64, ptr %i.ac, align 8, !tbaa !141, !noalias !1889 ; 3 uses
  %.idx81 = shl nsw i64 %i.as, 2
  %i.at = getelementptr inbounds i8, ptr %2, i64 %.idx81
  %i.au = load i64, ptr %i.a, align 8, !tbaa !141, !noalias !1890 ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %i.au
  %i.aw = icmp eq i64 %i.as, %i.au
  %i.ax = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEENS2_IS5_Lb1EEEEvT_S8_T0_S9_, i1 noundef zeroext %i.aw)
          to label %.noexc23 unwind label %.loopexit.split-lp ; 0 uses

.noexc23:                                         ; preds = %bb.h
  %.not5.i16 = icmp eq i64 %i.as, 0
  br i1 %.not5.i16, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEENS2_IS5_Lb1EEEEvT_S8_T0_S9_.exit25, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.noexc23, %.noexc24
  %.sroa.059.0 = phi ptr [ %i.bc, %.noexc24 ], [ %2, %.noexc23 ] ; 2 uses
  %.sroa.054.0 = phi ptr [ %i.bd, %.noexc24 ], [ %0, %.noexc23 ] ; 3 uses
  %.not4.i20 = icmp eq ptr %.sroa.054.0, %i.av
  br i1 %.not4.i20, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEENS2_IS5_Lb1EEEEvT_S8_T0_S9_.exit25, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i19
  %i.ay = load i32, ptr %.sroa.059.0, align 4, !tbaa !82
  %i.az = load i32, ptr %.sroa.054.0, align 4, !tbaa !82
  %i.ba = icmp eq i32 %i.ay, %i.az
  %i.bb = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEENS2_IS5_Lb1EEEEvT_S8_T0_S9_, i1 noundef zeroext %i.ba)
          to label %.noexc24 unwind label %.loopexit ; 0 uses

.noexc24:                                         ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.059.0, i64 4 ; 2 uses
end_hunk_15
begin_hunk_16_@_Z11test_insertIiLm10EN5boost9container13static_vectorIiLm10EvEENS1_4listIivEEEvRKT1_RKT2_:bb.a
  %prol.iter94.cmp.not = icmp eq i64 %prol.iter94.next, %xtraiter92
  br i1 %prol.iter94.cmp.not, label %.lr.ph.i.i39.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i39.i.i.i.i.i.prol, !llvm.loop !2131

.lr.ph.i.i39.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i39.i.i.i.i.i.prol, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEPiS5_EENS2_40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i.i.i.i
  %.lcssa91.unr = phi ptr [ poison, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEPiS5_EENS2_40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i.i.i.i ], [ %i.cb, %.lr.ph.i.i39.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %i.h, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEPiS5_EENS2_40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i.i.i.i ], [ %i.cb, %.lr.ph.i.i39.i.i.i.i.i.prol ]
  %.06.i.i40.i.i.i.i.i.unr = phi ptr [ %i.l, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEPiS5_EENS2_40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i.i.i.i ], [ %i.cc, %.lr.ph.i.i39.i.i.i.i.i.prol ]
  %.035.i.i41.i.i.i.i.i.unr = phi i64 [ %i.as, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEPiS5_EENS2_40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i.i.i.i ], [ %i.by, %.lr.ph.i.i39.i.i.i.i.i.prol ]
  %i.cd = icmp ult i64 %i.as, 4
  br i1 %i.cd, label %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEENS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i.i.i, label %.lr.ph.i.i39.i.i.i.i.i

.lr.ph.i.i39.i.i.i.i.i:                           ; preds = %.lr.ph.i.i39.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i39.i.i.i.i.i
  %i.ce = phi ptr [ %i.cu, %.lr.ph.i.i39.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i39.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.06.i.i40.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i39.i.i.i.i.i ], [ %.06.i.i40.i.i.i.i.i.unr, %.lr.ph.i.i39.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.035.i.i41.i.i.i.i.i = phi i64 [ %i.cr, %.lr.ph.i.i39.i.i.i.i.i ], [ %.035.i.i41.i.i.i.i.i.unr, %.lr.ph.i.i39.i.i.i.i.i.prol.loopexit ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !41, !noalias !2143
  store i32 %i.cg, ptr %.06.i.i40.i.i.i.i.i, align 4, !tbaa !41, !noalias !2143
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !105, !noalias !2143 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.06.i.i40.i.i.i.i.i, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !41, !noalias !2143
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !41, !noalias !2143
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !105, !noalias !2143 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i40.i.i.i.i.i, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !41, !noalias !2143
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !41, !noalias !2143
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !105, !noalias !2143 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i40.i.i.i.i.i, i64 12
  %i.cr = add i64 %.035.i.i41.i.i.i.i.i, -4       ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !41, !noalias !2143
  store i32 %i.ct, ptr %i.cq, align 4, !tbaa !41, !noalias !2143
  %i.cu = load ptr, ptr %i.cp, align 8, !tbaa !105, !noalias !2143 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.06.i.i40.i.i.i.i.i, i64 16
  %.not.i.i42.i.i.i.i.i.3 = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i42.i.i.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEENS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i.i.i, label %.lr.ph.i.i39.i.i.i.i.i, !llvm.loop !2128

_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEENS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i.i.i: ; preds = %.lr.ph.i.i39.i.i.i.i.i, %.lr.ph.i.i39.i.i.i.i.i.prol.loopexit
  %.lcssa91 = phi ptr [ %.lcssa91.unr, %.lr.ph.i.i39.i.i.i.i.i.prol.loopexit ], [ %i.cu, %.lr.ph.i.i39.i.i.i.i.i ] ; 2 uses
  %i.cw = sub i64 %.0.lcssa.i.i8.i, %i.as         ; 3 uses
  %xtraiter95 = and i64 %i.cw, 3                  ; 2 uses
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %.lr.ph.i.i44.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.i.i.i.prol

.lr.ph.i.i44.i.i.i.i.i.prol:                      ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEENS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i.prol
  %i.cx = phi ptr [ %i.da, %.lr.ph.i.i44.i.i.i.i.i.prol ], [ %.lcssa91, %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEENS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i.i.i ] ; 2 uses
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.dc, %.lr.ph.i.i44.i.i.i.i.i.prol ], [ %i.cw, %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEENS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i.i.i ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.db, %.lr.ph.i.i44.i.i.i.i.i.prol ], [ %i.t, %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEENS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i.i.i ] ; 3 uses
  %prol.iter97 = phi i64 [ %prol.iter97.next, %.lr.ph.i.i44.i.i.i.i.i.prol ], [ 0, %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEENS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i.prol) ]
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !41, !noalias !2144
  store i32 %i.cz, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !2144
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !105, !noalias !2144 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.dc = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter97.next = add i64 %prol.iter97, 1     ; 2 uses
  %prol.iter97.cmp.not = icmp eq i64 %prol.iter97.next, %xtraiter95
  br i1 %prol.iter97.cmp.not, label %.lr.ph.i.i44.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.i.i.i.prol, !llvm.loop !2134

.lr.ph.i.i44.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i44.i.i.i.i.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEENS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i.i.i
  %.unr98 = phi ptr [ %.lcssa91, %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEENS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i.i.i ], [ %i.da, %.lr.ph.i.i44.i.i.i.i.i.prol ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %i.cw, %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEENS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i.i.i ], [ %i.dc, %.lr.ph.i.i44.i.i.i.i.i.prol ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %i.t, %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEENS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i.i.i ], [ %i.db, %.lr.ph.i.i44.i.i.i.i.i.prol ]
  %i.dd = sub i64 %i.as, %.0.lcssa.i.i8.i
  %i.de = icmp ugt i64 %i.dd, -4
  br i1 %i.de, label %.loopexit, label %.lr.ph.i.i44.i.i.i.i.i

.lr.ph.i.i44.i.i.i.i.i:                           ; preds = %.lr.ph.i.i44.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i44.i.i.i.i.i
  %i.df = phi ptr [ %i.du, %.lr.ph.i.i44.i.i.i.i.i ], [ %.unr98, %.lr.ph.i.i44.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.dw, %.lr.ph.i.i44.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.unr, %.lr.ph.i.i44.i.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i44.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.unr, %.lr.ph.i.i44.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i) ]
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !41, !noalias !2144
  store i32 %i.dh, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !2144
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !105, !noalias !2144 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !41, !noalias !2144
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !41, !noalias !2144
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !105, !noalias !2144 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !41, !noalias !2144
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !41, !noalias !2144
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !105, !noalias !2144 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 12
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !41, !noalias !2144
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !41, !noalias !2144
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !105, !noalias !2144
  %i.dv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.dw = add i64 %.015.i.i.i.i.i.i.i, -4         ; 2 uses
  %.not.i.i45.i.i.i.i.i.3 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i45.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i44.i.i.i.i.i, !llvm.loop !19

.noexc:                                           ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorIiLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i44.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.dx = load i64, ptr %i.b, align 8, !tbaa !93, !noalias !2140
  %i.dy = add i64 %i.dx, %.0.lcssa.i.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.dz = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1, i32 noundef 347, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIiLm10EN5boost9container13static_vectorIiLm10EvEENS1_4listIivEEEvRKT1_RKT2_, i1 noundef zeroext true) ; 0 uses
  %i.ea = icmp eq i64 %i.dy, 8
  %i.eb = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 348, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIiLm10EN5boost9container13static_vectorIiLm10EvEENS1_4listIivEEEvRKT1_RKT2_, i1 noundef zeroext %i.ea) ; 0 uses
  %.not = icmp eq i64 %.0386486, 0
  br i1 %.not, label %.preheader53, label %.lr.ph

.preheader53:                                     ; preds = %.lr.ph, %.loopexit
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0386486 ; 4 uses
  %i.ec = load i32, ptr %invariant.gep, align 4, !tbaa !41
  %i.ed = icmp eq i32 %i.ec, 100
  %i.ee = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIiLm10EN5boost9container13static_vectorIiLm10EvEENS1_4listIivEEEvRKT1_RKT2_, i1 noundef zeroext %i.ed) ; 0 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.ef = load i32, ptr %gep.1, align 4, !tbaa !41
  %i.eg = icmp eq i32 %i.ef, 101
  %i.eh = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIiLm10EN5boost9container13static_vectorIiLm10EvEENS1_4listIivEEEvRKT1_RKT2_, i1 noundef zeroext %i.eg) ; 0 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %i.ei = load i32, ptr %gep.2, align 4, !tbaa !41
  %i.ej = icmp eq i32 %i.ei, 102
  %i.ek = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIiLm10EN5boost9container13static_vectorIiLm10EvEENS1_4listIivEEEvRKT1_RKT2_, i1 noundef zeroext %i.ej) ; 0 uses
  %.not65 = icmp eq i64 %.0386486, 5
  br i1 %.not65, label %bb.b, label %.lr.ph63

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph
  %.03458 = phi i64 [ %i.eq, %.lr.ph ], [ 0, %.loopexit ] ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03458
  %i.em = load i32, ptr %i.el, align 4, !tbaa !41
  %i.en = trunc nuw nsw i64 %.03458 to i32
  %i.eo = icmp eq i32 %i.em, %i.en
  %i.ep = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 350, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIiLm10EN5boost9container13static_vectorIiLm10EvEENS1_4listIivEEEvRKT1_RKT2_, i1 noundef zeroext %i.eo) ; 0 uses
  %i.eq = add nuw nsw i64 %.03458, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.eq, %.0386486
  br i1 %exitcond.not, label %.preheader53, label %.lr.ph, !llvm.loop !2135

.lr.ph63:                                         ; preds = %.preheader53
  %i.er = trunc nuw nsw i64 %.0386486 to i32
  br label %bb.j

._crit_edge:                                      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.es = add nuw nsw i64 %.0386486, 1
  %indvars.iv.next = add nsw i64 %indvars.iv85, -1 ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %indvars.iv.next, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.et = load i64, ptr %i.a, align 8, !tbaa !95  ; 3 uses
  store i64 %i.et, ptr %i.b, align 8, !tbaa !93
  %i.eu = icmp ugt i64 %i.et, 10
  br i1 %i.eu, label %._crit_edge88, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.j:                                             ; preds = %.lr.ph63, %bb.j
  %.062 = phi i64 [ 0, %.lr.ph63 ], [ %i.fb, %bb.j ] ; 3 uses
  %gep61 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.062
  %i.ev = getelementptr inbounds nuw i8, ptr %gep61, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !41
  %i.ex = trunc nuw nsw i64 %.062 to i32
  %i.ey = add nuw nsw i32 %i.ex, %i.er
  %i.ez = icmp eq i32 %i.ew, %i.ey
  %i.fa = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 354, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIiLm10EN5boost9container13static_vectorIiLm10EvEENS1_4listIivEEEvRKT1_RKT2_, i1 noundef zeroext %i.ez) ; 0 uses
  %i.fb = add nuw nsw i64 %.062, 1                ; 2 uses
  %exitcond71.not = icmp eq i64 %i.fb, %umax87
  br i1 %exitcond71.not, label %._crit_edge, label %bb.j, !llvm.loop !2136
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::static_vector.43", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.c = load i64, ptr %i.a, align 8, !tbaa !120  ; 3 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !118
  %i.d = icmp ugt i64 %i.c, 10
  br i1 %i.d, label %._crit_edge82, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.b:                                             ; preds = %.preheader56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

._crit_edge82:                                    ; preds = %._crit_edge, %bb.a
  call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.a, %._crit_edge
  %i.e = phi i64 [ %i.bv, %._crit_edge ], [ %i.c, %bb.a ] ; 6 uses
  %umax81 = phi i64 [ %umax, %._crit_edge ], [ 5, %bb.a ]
  %.0386580 = phi i64 [ %i.bu, %._crit_edge ], [ 0, %bb.a ] ; 9 uses
  %indvars.iv79 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 5, %bb.a ]
  %.not17.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not17.i.i.i, label %.loopexit58.thread, label %.loopexit58

.loopexit58:                                      ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.f = shl nuw nsw i64 %i.e, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %0, i64 %i.f, i1 false), !tbaa !41
  %.not.i.i = icmp samesign ugt i64 %i.e, 7
  br i1 %.not.i.i, label %.noexc, label %.loopexit58.thread, !prof !149

.loopexit58.thread:                               ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i, %.loopexit58
  %.idx5476 = shl nuw nsw i64 %.0386580, 2        ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx5476 ; 6 uses
  %.idx = shl nuw nsw i64 %i.e, 2                 ; 3 uses
  %i.h = getelementptr i8, ptr %2, i64 %.idx      ; 9 uses
  %i.i = icmp samesign eq i64 %i.e, %.0386580
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.i.preheader, label %bb.c

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.loopexit58.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !tbaa !41, !noalias !2164
  br label %.loopexit

bb.c:                                             ; preds = %.loopexit58.thread
  %gepdiff = sub nsw i64 %.idx, %.idx5476         ; 5 uses
  %.not.i.i.i.i.i = icmp ult i64 %gepdiff, 9
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i38.preheader.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i

.lr.ph.i.i10.i.i.i.i:                             ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.k = load <2 x i32>, ptr %i.j, align 4, !tbaa !41, !noalias !2165
  store <2 x i32> %i.k, ptr %i.h, align 4, !tbaa !41, !noalias !2165
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i32, ptr %i.l, align 4, !tbaa !41, !noalias !2165
  store i32 %i.n, ptr %i.m, align 4, !tbaa !41, !noalias !2165
  %i.o = add nsw i64 %.idx, -12
  %.not.i37.i.i.i.i.i = icmp eq i64 %i.o, %.idx5476
  br i1 %.not.i37.i.i.i.i.i, label %_ZN5boost9container13move_backwardIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i.i.i.i.i, label %bb.d, !prof !42

bb.d:                                             ; preds = %.lr.ph.i.i10.i.i.i.i
  %gepdiff55 = add i64 %gepdiff, -12              ; 2 uses
  %i.p = ashr exact i64 %gepdiff55, 2
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.q
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 4 %i.g, i64 %gepdiff55, i1 false), !noalias !2165
  br label %_ZN5boost9container13move_backwardIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i.i.i.i.i

_ZN5boost9container13move_backwardIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i10.i.i.i.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !noalias !2166
  br label %.loopexit

.lr.ph.i38.preheader.i.i.i.i.i:                   ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.t = sub nsw i64 %i.e, %.0386580              ; 2 uses
  %i.u = add i64 %i.t, 4611686018427387903
  %i.v = and i64 %i.u, 4611686018427387903
  %xtraiter = and i64 %i.t, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i38.i.i.i.i.i.prol.loopexit, label %.lr.ph.i38.i.i.i.i.i.prol

.lr.ph.i38.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i38.preheader.i.i.i.i.i, %.lr.ph.i38.i.i.i.i.i.prol
  %.018.i.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i38.i.i.i.i.i.prol ], [ %i.g, %.lr.ph.i38.preheader.i.i.i.i.i ] ; 2 uses
  %.01517.i.i.i.i.i.i.prol = phi ptr [ %i.y, %.lr.ph.i38.i.i.i.i.i.prol ], [ %i.s, %.lr.ph.i38.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i38.i.i.i.i.i.prol ], [ 0, %.lr.ph.i38.preheader.i.i.i.i.i ]
  %i.w = load i32, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !2165
  store i32 %i.w, ptr %.01517.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !2165
  %i.x = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i38.i.i.i.i.i.prol.loopexit, label %.lr.ph.i38.i.i.i.i.i.prol, !llvm.loop !2155

.lr.ph.i38.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i38.i.i.i.i.i.prol, %.lr.ph.i38.preheader.i.i.i.i.i
  %.018.i.i.i.i.i.i.unr = phi ptr [ %i.g, %.lr.ph.i38.preheader.i.i.i.i.i ], [ %i.x, %.lr.ph.i38.i.i.i.i.i.prol ]
  %.01517.i.i.i.i.i.i.unr = phi ptr [ %i.s, %.lr.ph.i38.preheader.i.i.i.i.i ], [ %i.y, %.lr.ph.i38.i.i.i.i.i.prol ]
  %i.z = icmp samesign ult i64 %i.v, 7
  br i1 %i.z, label %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEENS0_12vec_iteratorIPS4_Lb1EEEE17copy_n_and_updateIS7_EEvRS5_T_m.exit42.i.i.i.i.i, label %.lr.ph.i38.i.i.i.i.i

.lr.ph.i38.i.i.i.i.i:                             ; preds = %.lr.ph.i38.i.i.i.i.i.prol.loopexit, %.lr.ph.i38.i.i.i.i.i
  %.018.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i38.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i38.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01517.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i38.i.i.i.i.i ], [ %.01517.i.i.i.i.i.i.unr, %.lr.ph.i38.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.aa = load i32, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !2165
  store i32 %i.aa, ptr %.01517.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !2165
  %i.ab = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 4
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !41, !noalias !2165
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !41, !noalias !2165
  %i.ae = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 8
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !41, !noalias !2165
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !41, !noalias !2165
  %i.ah = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !41, !noalias !2165
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !41, !noalias !2165
  %i.ak = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 16
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !41, !noalias !2165
  store i32 %i.am, ptr %i.al, align 4, !tbaa !41, !noalias !2165
  %i.an = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 20
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !41, !noalias !2165
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !41, !noalias !2165
  %i.aq = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 24
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !41, !noalias !2165
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !41, !noalias !2165
  %i.at = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 28
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 28
  %i.av = load i32, ptr %i.at, align 4, !tbaa !41, !noalias !2165
  store i32 %i.av, ptr %i.au, align 4, !tbaa !41, !noalias !2165
  %i.aw = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 32
  %.not.i39.i.i.i.i.i.7 = icmp eq ptr %i.aw, %i.h
  br i1 %.not.i39.i.i.i.i.i.7, label %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEENS0_12vec_iteratorIPS4_Lb1EEEE17copy_n_and_updateIS7_EEvRS5_T_m.exit42.i.i.i.i.i, label %.lr.ph.i38.i.i.i.i.i, !llvm.loop !13

_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEENS0_12vec_iteratorIPS4_Lb1EEEE17copy_n_and_updateIS7_EEvRS5_T_m.exit42.i.i.i.i.i: ; preds = %.lr.ph.i38.i.i.i.i.i, %.lr.ph.i38.i.i.i.i.i.prol.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.g, ptr nonnull align 8 %1, i64 %gepdiff, i1 false), !noalias !2167
  %i.ay = getelementptr i8, ptr %1, i64 %gepdiff
  %i.az = sub nuw nsw i64 12, %gepdiff
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %i.ay, i64 %i.az, i1 false), !tbaa !41, !noalias !2168
  br label %.loopexit

.noexc:                                           ; preds = %.loopexit58
  call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

.loopexit:                                        ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEENS0_12vec_iteratorIPS4_Lb1EEEE17copy_n_and_updateIS7_EEvRS5_T_m.exit42.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader, %_ZN5boost9container13move_backwardIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i.i.i.i.i
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !118, !noalias !2165
  %i.bb = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1, i32 noundef 347, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_, i1 noundef zeroext true) ; 0 uses
  %i.bc = icmp eq i64 %i.ba, 5
  %i.bd = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 348, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_, i1 noundef zeroext %i.bc) ; 0 uses
  %.not = icmp eq i64 %.0386580, 0
  br i1 %.not, label %.preheader56, label %.lr.ph

.preheader56:                                     ; preds = %.lr.ph, %.loopexit
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0386580 ; 4 uses
  %i.be = load i32, ptr %invariant.gep, align 4, !tbaa !77
  %i.bf = icmp eq i32 %i.be, 100
  %i.bg = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_, i1 noundef zeroext %i.bf) ; 0 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.bh = load i32, ptr %gep.1, align 4, !tbaa !77
  %i.bi = icmp eq i32 %i.bh, 101
  %i.bj = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_, i1 noundef zeroext %i.bi) ; 0 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %i.bk = load i32, ptr %gep.2, align 4, !tbaa !77
  %i.bl = icmp eq i32 %i.bk, 102
  %i.bm = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_, i1 noundef zeroext %i.bl) ; 0 uses
  %.not66 = icmp eq i64 %.0386580, 5
  br i1 %.not66, label %bb.b, label %.lr.ph64

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph
  %.03459 = phi i64 [ %i.bs, %.lr.ph ], [ 0, %.loopexit ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03459
  %i.bo = trunc nuw nsw i64 %.03459 to i32
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !77
  %i.bq = icmp eq i32 %i.bp, %i.bo
  %i.br = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 350, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_, i1 noundef zeroext %i.bq) ; 0 uses
  %i.bs = add nuw nsw i64 %.03459, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bs, %.0386580
  br i1 %exitcond.not, label %.preheader56, label %.lr.ph, !llvm.loop !2162

.lr.ph64:                                         ; preds = %.preheader56
  %i.bt = trunc nuw nsw i64 %.0386580 to i32
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.bu = add nuw nsw i64 %.0386580, 1
  %indvars.iv.next = add nsw i64 %indvars.iv79, -1 ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv.next, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !120 ; 3 uses
  store i64 %i.bv, ptr %i.b, align 8, !tbaa !118
  %i.bw = icmp ugt i64 %i.bv, 10
  br i1 %i.bw, label %._crit_edge82, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.e:                                             ; preds = %.lr.ph64, %bb.e
  %.063 = phi i64 [ 0, %.lr.ph64 ], [ %i.cd, %bb.e ] ; 3 uses
  %gep62 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.063
  %i.bx = getelementptr inbounds nuw i8, ptr %gep62, i64 12
  %i.by = trunc nuw nsw i64 %.063 to i32
  %i.bz = add nuw nsw i32 %i.by, %i.bt
  %i.ca = load i32, ptr %i.bx, align 4, !tbaa !77
  %i.cb = icmp eq i32 %i.ca, %i.bz
  %i.cc = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 354, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_, i1 noundef zeroext %i.cb) ; 0 uses
  %i.cd = add nuw nsw i64 %.063, 1                ; 2 uses
  %exitcond69.not = icmp eq i64 %i.cd, %umax81
  br i1 %exitcond69.not, label %._crit_edge, label %bb.e, !llvm.loop !2163
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::static_vector.43", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.c = load i64, ptr %i.a, align 8, !tbaa !120  ; 3 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !118
  %i.d = icmp ugt i64 %i.c, 10
  br i1 %i.d, label %._crit_edge85, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.b:                                             ; preds = %.preheader57
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

._crit_edge85:                                    ; preds = %._crit_edge, %bb.a
  call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.a, %._crit_edge
  %i.e = phi i64 [ %i.bw, %._crit_edge ], [ %i.c, %bb.a ] ; 6 uses
  %umax84 = phi i64 [ %umax, %._crit_edge ], [ 5, %bb.a ]
  %.0386683 = phi i64 [ %i.bv, %._crit_edge ], [ 0, %bb.a ] ; 9 uses
  %indvars.iv82 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 5, %bb.a ]
  %.not17.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not17.i.i.i, label %.loopexit59.thread, label %.loopexit59

.loopexit59:                                      ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.f = shl nuw nsw i64 %i.e, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %0, i64 %i.f, i1 false), !tbaa !41
  %.not.i.i = icmp samesign ugt i64 %i.e, 7
  br i1 %.not.i.i, label %.noexc, label %.loopexit59.thread, !prof !149

.loopexit59.thread:                               ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i, %.loopexit59
  %i.g = load ptr, ptr %1, align 8, !tbaa !126, !noalias !2190 ; 6 uses
  %.idx5479 = shl nuw nsw i64 %.0386683, 2        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.idx5479 ; 6 uses
  %.idx = shl nuw nsw i64 %i.e, 2                 ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 %.idx      ; 9 uses
  %i.j = icmp samesign eq i64 %i.e, %.0386683
  br i1 %i.j, label %.lr.ph.i.i.i.i.i.i.preheader, label %bb.c

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.loopexit59.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false), !tbaa !41, !noalias !2191
  br label %.loopexit

bb.c:                                             ; preds = %.loopexit59.thread
  %gepdiff = sub nsw i64 %.idx, %.idx5479         ; 5 uses
  %.not.i.i.i.i.i = icmp ult i64 %gepdiff, 9
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i38.preheader.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i

.lr.ph.i.i10.i.i.i.i:                             ; preds = %bb.c
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.l = load <2 x i32>, ptr %i.k, align 4, !tbaa !41, !noalias !2192
  store <2 x i32> %i.l, ptr %i.i, align 4, !tbaa !41, !noalias !2192
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load i32, ptr %i.m, align 4, !tbaa !41, !noalias !2192
  store i32 %i.o, ptr %i.n, align 4, !tbaa !41, !noalias !2192
  %i.p = add nsw i64 %.idx, -12
  %.not.i37.i.i.i.i.i = icmp eq i64 %i.p, %.idx5479
  br i1 %.not.i37.i.i.i.i.i, label %_ZN5boost9container13move_backwardIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i.i.i.i.i, label %bb.d, !prof !42

bb.d:                                             ; preds = %.lr.ph.i.i10.i.i.i.i
  %gepdiff55 = add i64 %gepdiff, -12              ; 2 uses
  %i.q = ashr exact i64 %gepdiff55, 2
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.r
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 4 %i.h, i64 %gepdiff55, i1 false), !noalias !2192
  br label %_ZN5boost9container13move_backwardIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i.i.i.i.i

_ZN5boost9container13move_backwardIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i10.i.i.i.i
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13move_backwardIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 1 dereferenceable(12) %i.g, i64 12, i1 false), !noalias !2193
  br label %.loopexit

.lr.ph.i38.preheader.i.i.i.i.i:                   ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.u = sub nsw i64 %i.e, %.0386683              ; 2 uses
  %i.v = add i64 %i.u, 4611686018427387903
  %i.w = and i64 %i.v, 4611686018427387903
  %xtraiter = and i64 %i.u, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i38.i.i.i.i.i.prol.loopexit, label %.lr.ph.i38.i.i.i.i.i.prol

.lr.ph.i38.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i38.preheader.i.i.i.i.i, %.lr.ph.i38.i.i.i.i.i.prol
  %.018.i.i.i.i.i.i.prol = phi ptr [ %i.y, %.lr.ph.i38.i.i.i.i.i.prol ], [ %i.h, %.lr.ph.i38.preheader.i.i.i.i.i ] ; 2 uses
  %.01517.i.i.i.i.i.i.prol = phi ptr [ %i.z, %.lr.ph.i38.i.i.i.i.i.prol ], [ %i.t, %.lr.ph.i38.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i38.i.i.i.i.i.prol ], [ 0, %.lr.ph.i38.preheader.i.i.i.i.i ]
  %i.x = load i32, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !2192
  store i32 %i.x, ptr %.01517.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !2192
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i38.i.i.i.i.i.prol.loopexit, label %.lr.ph.i38.i.i.i.i.i.prol, !llvm.loop !2181

.lr.ph.i38.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i38.i.i.i.i.i.prol, %.lr.ph.i38.preheader.i.i.i.i.i
  %.018.i.i.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i38.preheader.i.i.i.i.i ], [ %i.y, %.lr.ph.i38.i.i.i.i.i.prol ]
  %.01517.i.i.i.i.i.i.unr = phi ptr [ %i.t, %.lr.ph.i38.preheader.i.i.i.i.i ], [ %i.z, %.lr.ph.i38.i.i.i.i.i.prol ]
  %i.aa = icmp samesign ult i64 %i.w, 7
  br i1 %i.aa, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i.i.i.i, label %.lr.ph.i38.i.i.i.i.i

.lr.ph.i38.i.i.i.i.i:                             ; preds = %.lr.ph.i38.i.i.i.i.i.prol.loopexit, %.lr.ph.i38.i.i.i.i.i
  %.018.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i38.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i38.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01517.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i38.i.i.i.i.i ], [ %.01517.i.i.i.i.i.i.unr, %.lr.ph.i38.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ab = load i32, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !2192
  store i32 %i.ab, ptr %.01517.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !2192
  %i.ac = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 4
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !41, !noalias !2192
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !41, !noalias !2192
  %i.af = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 8
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !41, !noalias !2192
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !41, !noalias !2192
  %i.ai = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 12
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !41, !noalias !2192
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !41, !noalias !2192
  %i.al = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 16
  %i.an = load i32, ptr %i.al, align 4, !tbaa !41, !noalias !2192
  store i32 %i.an, ptr %i.am, align 4, !tbaa !41, !noalias !2192
  %i.ao = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 20
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !41, !noalias !2192
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !41, !noalias !2192
  %i.ar = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 24
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !41, !noalias !2192
  store i32 %i.at, ptr %i.as, align 4, !tbaa !41, !noalias !2192
  %i.au = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 28
  %i.av = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 28
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !41, !noalias !2192
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !41, !noalias !2192
  %i.ax = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 32
  %.not.i39.i.i.i.i.i.7 = icmp eq ptr %i.ax, %i.i
  br i1 %.not.i39.i.i.i.i.i.7, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i.i.i.i, label %.lr.ph.i38.i.i.i.i.i, !llvm.loop !13

_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i.i.i.i: ; preds = %.lr.ph.i38.i.i.i.i.i, %.lr.ph.i38.i.i.i.i.i.prol.loopexit
  %.not56 = icmp eq ptr %i.g, null
  br i1 %.not56, label %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEENS0_12vec_iteratorIPS4_Lb1EEEE17copy_n_and_updateIS7_EEvRS5_T_m.exit42.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull align 1 %i.g, i64 %gepdiff, i1 false), !noalias !2194
  br label %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEENS0_12vec_iteratorIPS4_Lb1EEEE17copy_n_and_updateIS7_EEvRS5_T_m.exit42.i.i.i.i.i

_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEENS0_12vec_iteratorIPS4_Lb1EEEE17copy_n_and_updateIS7_EEvRS5_T_m.exit42.i.i.i.i.i: ; preds = %bb.f, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i.i.i.i
  %i.az = getelementptr i8, ptr %i.g, i64 %gepdiff
  %i.ba = sub nuw nsw i64 12, %gepdiff
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.az, i64 %i.ba, i1 false), !tbaa !41, !noalias !2195
  br label %.loopexit

.noexc:                                           ; preds = %.loopexit59
  call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

.loopexit:                                        ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEENS0_12vec_iteratorIPS4_Lb1EEEE17copy_n_and_updateIS7_EEvRS5_T_m.exit42.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader, %bb.e, %_ZN5boost9container13move_backwardIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i.i.i.i.i
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !118, !noalias !2192
  %i.bc = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1, i32 noundef 347, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_, i1 noundef zeroext true) ; 0 uses
  %i.bd = icmp eq i64 %i.bb, 5
  %i.be = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 348, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.bd) ; 0 uses
  %.not67 = icmp eq i64 %.0386683, 0
  br i1 %.not67, label %.preheader57, label %.lr.ph

.preheader57:                                     ; preds = %.lr.ph, %.loopexit
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0386683 ; 4 uses
  %i.bf = load i32, ptr %invariant.gep, align 4, !tbaa !77
  %i.bg = icmp eq i32 %i.bf, 100
  %i.bh = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.bg) ; 0 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.bi = load i32, ptr %gep.1, align 4, !tbaa !77
  %i.bj = icmp eq i32 %i.bi, 101
  %i.bk = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.bj) ; 0 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %i.bl = load i32, ptr %gep.2, align 4, !tbaa !77
  %i.bm = icmp eq i32 %i.bl, 102
  %i.bn = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.bm) ; 0 uses
  %.not68 = icmp eq i64 %.0386683, 5
  br i1 %.not68, label %bb.b, label %.lr.ph65

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph
  %.03460 = phi i64 [ %i.bt, %.lr.ph ], [ 0, %.loopexit ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03460
  %i.bp = trunc nuw nsw i64 %.03460 to i32
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !77
  %i.br = icmp eq i32 %i.bq, %i.bp
  %i.bs = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 350, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.br) ; 0 uses
  %i.bt = add nuw nsw i64 %.03460, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %.0386683
  br i1 %exitcond.not, label %.preheader57, label %.lr.ph, !llvm.loop !2188

.lr.ph65:                                         ; preds = %.preheader57
  %i.bu = trunc nuw nsw i64 %.0386683 to i32
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.bv = add nuw nsw i64 %.0386683, 1
  %indvars.iv.next = add nsw i64 %indvars.iv82, -1 ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv.next, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !120 ; 3 uses
  store i64 %i.bw, ptr %i.b, align 8, !tbaa !118
  %i.bx = icmp ugt i64 %i.bw, 10
  br i1 %i.bx, label %._crit_edge85, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.g:                                             ; preds = %.lr.ph65, %bb.g
  %.064 = phi i64 [ 0, %.lr.ph65 ], [ %i.ce, %bb.g ] ; 3 uses
  %gep63 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.064
  %i.by = getelementptr inbounds nuw i8, ptr %gep63, i64 12
  %i.bz = trunc nuw nsw i64 %.064 to i32
  %i.ca = add nuw nsw i32 %i.bz, %i.bu
  %i.cb = load i32, ptr %i.by, align 4, !tbaa !77
  %i.cc = icmp eq i32 %i.cb, %i.ca
  %i.cd = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 354, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.cc) ; 0 uses
  %i.ce = add nuw nsw i64 %.064, 1                ; 2 uses
  %exitcond71.not = icmp eq i64 %i.ce, %umax84
  br i1 %exitcond71.not, label %._crit_edge, label %bb.g, !llvm.loop !2189
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_4listIS0_vEEEvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i = alloca ptr, align 8          ; 5 uses
  %.sroa.0.i.i.i = alloca ptr, align 8            ; 5 uses
  %2 = alloca %"class.boost::container::static_vector.43", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.d = load i64, ptr %i.a, align 8, !tbaa !120  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !118
  %i.e = icmp ugt i64 %i.d, 10
  br i1 %i.e, label %._crit_edge89, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.b:                                             ; preds = %.preheader57
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

._crit_edge89:                                    ; preds = %._crit_edge, %bb.a
  call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.a, %._crit_edge
  %i.f = phi i64 [ %i.ft, %._crit_edge ], [ %i.d, %bb.a ] ; 9 uses
  %umax88 = phi i64 [ %umax, %._crit_edge ], [ 5, %bb.a ]
  %.0386787 = phi i64 [ %i.fs, %._crit_edge ], [ 0, %bb.a ] ; 12 uses
  %indvars.iv86 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 5, %bb.a ]
  %.not17.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not17.i.i.i, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.g = shl nuw nsw i64 %i.f, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %0, i64 %i.g, i1 false), !tbaa !41
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.preheader, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !105, !noalias !2225 ; 7 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105  ; 2 uses
  %.idx54 = shl nuw nsw i64 %.0386787, 2          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.idx54 ; 10 uses
  %.not2.i.i.i = icmp eq ptr %i.h, %i.k
  br i1 %.not2.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.thread.i, label %.lr.ph.i.i.i41

.lr.ph.i.i.i41:                                   ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit, %.lr.ph.i.i.i41
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i41 ], [ %i.h, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit ]
  %.03.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i41 ], [ 0, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit ] ; 2 uses
  %i.n = add nuw nsw i64 %.03.i.i.i, 1            ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !105, !noalias !2226 ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.o, %i.k
  br i1 %.not.i.i.i42, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i, label %.lr.ph.i.i.i41, !llvm.loop !21

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i: ; preds = %.lr.ph.i.i.i41
  %i.p = sub nuw nsw i64 10, %i.f
  %.not.i.not.i = icmp samesign ult i64 %.03.i.i.i, %i.p
  br i1 %.not.i.not.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.thread.i, label %.noexc, !prof !185

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.thread.i: ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i
  %.0.lcssa.i.i8.i = phi i64 [ %i.n, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i ], [ 0, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit ] ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %.idx = shl nuw nsw i64 %i.f, 2                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 10 uses
  store ptr %i.h, ptr %.sroa.0.i.i.i, align 8, !tbaa !192, !noalias !2227
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.r = icmp samesign eq i64 %i.f, %.0386787
  %.not13.i.i.i.i.i.i = icmp eq i64 %.0.lcssa.i.i8.i, 0 ; 2 uses
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.thread.i
  br i1 %.not13.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %i.s = add i64 %.0.lcssa.i.i8.i, -1
  %xtraiter132 = and i64 %.0.lcssa.i.i8.i, 3      ; 2 uses
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.in.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.015.i.i.i.i.i.i.prol = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ], [ %.0.lcssa.i.i8.i, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.01214.i.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.q, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter134 = phi i64 [ %prol.iter134.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.t = load ptr, ptr %.in.i.i.i.i.prol, align 8, !tbaa !188, !noalias !2227 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.prol) ]
  %i.v = load i32, ptr %i.u, align 4, !tbaa !41, !noalias !2228
  store i32 %i.v, ptr %.01214.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !2228
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.x = add i64 %.015.i.i.i.i.i.i.prol, -1       ; 2 uses
  %prol.iter134.next = add i64 %prol.iter134, 1   ; 2 uses
  %prol.iter134.cmp.not = icmp eq i64 %prol.iter134.next, %xtraiter132
  br i1 %prol.iter134.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2208

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.in.i.i.i.i.unr = phi ptr [ %.sroa.0.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.i.i.prol ]
  %.015.i.i.i.i.i.i.unr = phi i64 [ %.0.lcssa.i.i8.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01214.i.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.y = icmp ult i64 %i.s, 3
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.in.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.in.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.015.i.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.z = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !188, !noalias !2227 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i) ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !41, !noalias !2228
  store i32 %i.ab, ptr %.01214.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !2228
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 4
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !188, !noalias !2227 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !41, !noalias !2228
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !41, !noalias !2228
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 8
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !188, !noalias !2227 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41, !noalias !2228
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !41, !noalias !2228
  %i.ak = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 12
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !188, !noalias !2227 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 4, !tbaa !41, !noalias !2228
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !41, !noalias !2228
  %i.ao = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 16
  %i.ap = add i64 %.015.i.i.i.i.i.i, -4           ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !22

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.thread.i
  br i1 %.not13.i.i.i.i.i.i, label %.loopexit, label %bb.e, !prof !42

bb.e:                                             ; preds = %bb.d
  store ptr %i.h, ptr %.sroa.0.i.i.i.i, align 8, !tbaa !192, !noalias !2227
  %gepdiff = sub nsw i64 %.idx, %.idx54           ; 2 uses
  %i.aq = ashr exact i64 %gepdiff, 2              ; 7 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.aq, %.0.lcssa.i.i8.i
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i41.preheader.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.neg = mul nsw i64 %.0.lcssa.i.i8.i, -4        ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %i.q, i64 %.neg ; 3 uses
  %min.iters.check101 = icmp ult i64 %.0.lcssa.i.i8.i, 8
  br i1 %min.iters.check101, label %.lr.ph.i.i10.i.i.i.i.preheader, label %vector.ph102

vector.ph102:                                     ; preds = %bb.f
  %n.vec103 = and i64 %.0.lcssa.i.i8.i, -8        ; 3 uses
  %i.as = and i64 %.0.lcssa.i.i8.i, 7
  %i.at = shl i64 %n.vec103, 2                    ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 %i.at
  %i.av = getelementptr i8, ptr %i.q, i64 %i.at
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph102
  %index105 = phi i64 [ 0, %vector.ph102 ], [ %index.next117, %vector.body104 ] ; 2 uses
  %i.aw = shl i64 %index105, 2                    ; 2 uses
  %next.gep106 = getelementptr i8, ptr %i.ar, i64 %i.aw ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.q, i64 %i.aw ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep107) ]
  %i.ax = getelementptr i8, ptr %next.gep106, i64 16
  %wide.load115 = load <4 x i32>, ptr %next.gep106, align 4, !tbaa !41, !noalias !2227
  %wide.load116 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !41, !noalias !2227
  %i.ay = getelementptr i8, ptr %next.gep107, i64 16
  store <4 x i32> %wide.load115, ptr %next.gep107, align 4, !tbaa !41, !noalias !2227
  store <4 x i32> %wide.load116, ptr %i.ay, align 4, !tbaa !41, !noalias !2227
  %index.next117 = add nuw i64 %index105, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next117, %n.vec103
  br i1 %i.az, label %middle.block118, label %vector.body104, !llvm.loop !2209

middle.block118:                                  ; preds = %vector.body104
  %cmp.n119 = icmp eq i64 %.0.lcssa.i.i8.i, %n.vec103
  br i1 %cmp.n119, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i.preheader

.lr.ph.i.i10.i.i.i.i.preheader:                   ; preds = %bb.f, %middle.block118
  %.020.i.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i8.i, %bb.f ], [ %i.as, %middle.block118 ]
  %.0819.i.i.i.i.i.i.ph = phi ptr [ %i.ar, %bb.f ], [ %i.au, %middle.block118 ]
  %.01618.i.i.i.i.i.i.ph = phi ptr [ %i.q, %bb.f ], [ %i.av, %middle.block118 ]
  br label %.lr.ph.i.i10.i.i.i.i

.lr.ph.i.i10.i.i.i.i:                             ; preds = %.lr.ph.i.i10.i.i.i.i.preheader, %.lr.ph.i.i10.i.i.i.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i10.i.i.i.i ], [ %.020.i.i.i.i.i.i.ph, %.lr.ph.i.i10.i.i.i.i.preheader ]
  %.0819.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i10.i.i.i.i ], [ %.0819.i.i.i.i.i.i.ph, %.lr.ph.i.i10.i.i.i.i.preheader ] ; 2 uses
  %.01618.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i10.i.i.i.i ], [ %.01618.i.i.i.i.i.i.ph, %.lr.ph.i.i10.i.i.i.i.preheader ] ; 3 uses
  %i.ba = add i64 %.020.i.i.i.i.i.i, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i.i) ]
  %i.bb = load i32, ptr %.0819.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !2227
  store i32 %i.bb, ptr %.01618.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !2227
  %i.bc = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 4
  %.not.i.i11.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i11.i.i.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i, !llvm.loop !2210

_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i10.i.i.i.i, %middle.block118
  %i.be = add nsw i64 %.neg, %.idx
  %.not.i40.i.i.i.i.i = icmp eq i64 %i.be, %.idx54
  br i1 %.not.i40.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %bb.g, !prof !42

bb.g:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i.i
  %gepdiff56 = add i64 %gepdiff, %.neg            ; 2 uses
  %i.bf = ashr exact i64 %gepdiff56, 2
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bg
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr nonnull align 4 %i.l, i64 %gepdiff56, i1 false), !noalias !2227
  br label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.g, %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i.i
  %i.bi = add i64 %.0.lcssa.i.i8.i, -1
  %xtraiter = and i64 %.0.lcssa.i.i8.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.in.i.i.i.i.i.prol = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.sroa.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.06.i.i.i.i.i.i.i.prol = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.i.i.prol = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.0.lcssa.i.i8.i, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.bj = load ptr, ptr %.in.i.i.i.i.i.prol, align 8, !tbaa !188, !noalias !2227 ; 3 uses
  %i.bk = add i64 %.035.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !41, !noalias !2229
  store i32 %i.bm, ptr %.06.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !2229
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !2213

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.in.i.i.i.i.i.unr = phi ptr [ %.sroa.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.i.i.unr = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.i.i.unr = phi i64 [ %.0.lcssa.i.i8.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bo = icmp ult i64 %i.bi, 3
  br i1 %i.bo, label %_ZN5boost9container31expand_forward_and_insert_allocINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_NS2_18insert_range_proxyIS5_NS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS4_NS2_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEEEvRT_T0_SR_mT1_.exit.loopexit6.i.i.i, label %.lr.ph.i.i.i.i.i.i.i
end_hunk_16
begin_hunk_17_@_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_NS2_21insert_n_copies_proxyIS5_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_:bb.a
  %bound0 = icmp ult ptr %i.af, %i.aq
  %bound1 = icmp ult ptr %1, %i.ao
  %found.conflict = and i1 %bound0, %bound1
  %bound0114 = icmp ult ptr %i.as, %i.ax
  %bound1115 = icmp ult ptr %i.av, %i.au
  %found.conflict116 = and i1 %bound0114, %bound1115
  %conflict.rdx = or i1 %found.conflict, %found.conflict116
  br i1 %conflict.rdx, label %scalar.ph112.preheader, label %vector.ph117

vector.ph117:                                     ; preds = %vector.memcheck
  %n.vec118 = and i64 %i.aj, 4611686018427387900  ; 3 uses
  %i.ay = shl i64 %n.vec118, 3                    ; 2 uses
  %i.az = getelementptr i8, ptr %1, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.af, i64 %i.ay
  %i.bb = insertelement <2 x i64> <i64 poison, i64 0>, i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.pre, i64 0
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next136, %vector.body119 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.bb, %vector.ph117 ], [ %i.be, %vector.body119 ]
  %vec.phi121 = phi <2 x i64> [ zeroinitializer, %vector.ph117 ], [ %i.bf, %vector.body119 ]
  %i.bc = shl i64 %index120, 3                    ; 3 uses
  %i.bd = or disjoint i64 %i.bc, 16               ; 2 uses
  %next.gep122 = getelementptr i8, ptr %1, i64 %i.bc ; 2 uses
  %next.gep123 = getelementptr i8, ptr %1, i64 %i.bd ; 2 uses
  %next.gep124 = getelementptr i8, ptr %i.af, i64 %i.bc ; 2 uses
  %next.gep126 = getelementptr i8, ptr %i.af, i64 %i.bd ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep124) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep126) ]
  %wide.vec128 = load <4 x i32>, ptr %next.gep122, align 4, !tbaa !41
  %wide.vec131 = load <4 x i32>, ptr %next.gep123, align 4, !tbaa !41
  store <4 x i32> %wide.vec128, ptr %next.gep124, align 4, !tbaa !41
  store <4 x i32> %wide.vec131, ptr %next.gep126, align 4, !tbaa !41
  store <4 x i32> zeroinitializer, ptr %next.gep122, align 4, !tbaa !41
  store <4 x i32> zeroinitializer, ptr %next.gep123, align 4, !tbaa !41
  %i.be = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.bf = add <2 x i64> %vec.phi121, splat (i64 1) ; 2 uses
  %index.next136 = add nuw i64 %index120, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next136, %n.vec118
  br i1 %i.bg, label %middle.block137, label %vector.body119, !llvm.loop !2284

middle.block137:                                  ; preds = %vector.body119
  %bin.rdx = add <2 x i64> %i.bf, %i.be
  %i.bh = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n138 = icmp eq i64 %i.aj, %n.vec118
  br i1 %cmp.n138, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %scalar.ph112.preheader

scalar.ph112.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i44, %middle.block137
  %.ph = phi i64 [ %_ZZN14counting_value1cEvE2co.promoted.i.i.pre, %vector.memcheck ], [ %_ZZN14counting_value1cEvE2co.promoted.i.i.pre, %.lr.ph.i44 ], [ %i.bh, %middle.block137 ]
  %.018.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i44 ], [ %i.az, %middle.block137 ]
  %.01517.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i44 ], [ %i.ba, %middle.block137 ]
  br label %scalar.ph112

scalar.ph112:                                     ; preds = %scalar.ph112.preheader, %scalar.ph112
  %i.bi = phi i64 [ %i.bl, %scalar.ph112 ], [ %.ph, %scalar.ph112.preheader ]
  %.018.i = phi ptr [ %i.bm, %scalar.ph112 ], [ %.018.i.ph, %scalar.ph112.preheader ] ; 4 uses
  %.01517.i = phi ptr [ %i.bn, %scalar.ph112 ], [ %.01517.i.ph, %scalar.ph112.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.018.i, i64 4
  %i.bk = load <2 x i32>, ptr %.018.i, align 4, !tbaa !41
  store <2 x i32> %i.bk, ptr %.01517.i, align 4, !tbaa !41
  store i32 0, ptr %.018.i, align 4, !tbaa !79
  store i32 0, ptr %i.bj, align 4, !tbaa !80
  %i.bl = add i64 %i.bi, 1                        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  %.not.i46 = icmp eq ptr %i.bm, %2
  br i1 %.not.i46, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %scalar.ph112, !llvm.loop !2285

_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit: ; preds = %scalar.ph112, %middle.block137
  %.lcssa = phi i64 [ %i.bh, %middle.block137 ], [ %i.bl, %scalar.ph112 ] ; 2 uses
  %i.bo = load <2 x i32>, ptr %4, align 4, !tbaa !41 ; 2 uses
  %min.iters.check142 = icmp ult i64 %i.d, 4
  br i1 %min.iters.check142, label %scalar.ph141.preheader, label %vector.ph143

vector.ph143:                                     ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit
  %n.vec144 = and i64 %i.d, -4                    ; 3 uses
  %i.bp = and i64 %i.d, 3
  %i.bq = shl nsw i64 %n.vec144, 3
  %i.br = getelementptr i8, ptr %1, i64 %i.bq
  %interleaved.vec153 = shufflevector <2 x i32> %i.bo, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph143
  %index150 = phi i64 [ 0, %vector.ph143 ], [ %index.next155, %vector.body149 ] ; 2 uses
  %i.bs = shl i64 %index150, 3                    ; 2 uses
  %next.gep151 = getelementptr i8, ptr %1, i64 %i.bs
  %i.bt = getelementptr i8, ptr %1, i64 %i.bs
  %next.gep152 = getelementptr i8, ptr %i.bt, i64 16
  store <4 x i32> %interleaved.vec153, ptr %next.gep151, align 4, !tbaa !41
  store <4 x i32> %interleaved.vec153, ptr %next.gep152, align 4, !tbaa !41
  %index.next155 = add nuw i64 %index150, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next155, %n.vec144
  br i1 %i.bu, label %middle.block156, label %vector.body149, !llvm.loop !2286

middle.block156:                                  ; preds = %vector.body149
  %cmp.n157 = icmp eq i64 %i.d, %n.vec144
  br i1 %cmp.n157, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit56, label %scalar.ph141.preheader

scalar.ph141.preheader:                           ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, %middle.block156
  %.07.i52.ph = phi i64 [ %i.d, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.bp, %middle.block156 ]
  %.046.i53.ph = phi ptr [ %1, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.br, %middle.block156 ]
  br label %scalar.ph141

scalar.ph141:                                     ; preds = %scalar.ph141.preheader, %scalar.ph141
  %.07.i52 = phi i64 [ %i.bv, %scalar.ph141 ], [ %.07.i52.ph, %scalar.ph141.preheader ]
  %.046.i53 = phi ptr [ %i.bw, %scalar.ph141 ], [ %.046.i53.ph, %scalar.ph141.preheader ] ; 2 uses
  %i.bv = add i64 %.07.i52, -1                    ; 2 uses
  store <2 x i32> %i.bo, ptr %.046.i53, align 4, !tbaa !41
  %i.bw = getelementptr inbounds nuw i8, ptr %.046.i53, i64 8
  %.not.i54 = icmp eq i64 %i.bv, 0
  br i1 %.not.i54, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit56, label %scalar.ph141, !llvm.loop !2287

_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit56: ; preds = %scalar.ph141, %middle.block156, %bb.c
  %_ZZN14counting_value1cEvE2co.promoted.i.i = phi i64 [ %_ZZN14counting_value1cEvE2co.promoted.i.i.pre, %bb.c ], [ %.lcssa, %middle.block156 ], [ %.lcssa, %scalar.ph141 ]
  %i.bx = sub i64 %3, %i.d                        ; 6 uses
  %i.by = load <2 x i32>, ptr %4, align 4, !tbaa !41 ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.bx, 4
  br i1 %min.iters.check161, label %scalar.ph160.preheader, label %vector.ph162

vector.ph162:                                     ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit56
  %n.vec163 = and i64 %i.bx, -4                   ; 3 uses
  %i.bz = and i64 %i.bx, 3
  %i.ca = shl i64 %n.vec163, 3
  %i.cb = getelementptr i8, ptr %2, i64 %i.ca
  %interleaved.vec174 = shufflevector <2 x i32> %i.by, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph162
  %index169 = phi i64 [ 0, %vector.ph162 ], [ %index.next176, %vector.body168 ] ; 2 uses
  %i.cc = shl i64 %index169, 3                    ; 2 uses
  %next.gep170 = getelementptr i8, ptr %2, i64 %i.cc ; 2 uses
  %i.cd = getelementptr i8, ptr %2, i64 %i.cc
  %next.gep172 = getelementptr i8, ptr %i.cd, i64 16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep170) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep172) ]
  store <4 x i32> %interleaved.vec174, ptr %next.gep170, align 4, !tbaa !41
  store <4 x i32> %interleaved.vec174, ptr %next.gep172, align 4, !tbaa !41
  %index.next176 = add nuw i64 %index169, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next176, %n.vec163
  br i1 %i.ce, label %middle.block177, label %vector.body168, !llvm.loop !2288

middle.block177:                                  ; preds = %vector.body168
  %cmp.n178 = icmp eq i64 %i.bx, %n.vec163
  br i1 %cmp.n178, label %._crit_edge.i.i, label %scalar.ph160.preheader

scalar.ph160.preheader:                           ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit56, %middle.block177
  %.017.i.i.ph = phi i64 [ %i.bx, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit56 ], [ %i.bz, %middle.block177 ]
  %.01416.i.i.ph = phi ptr [ %2, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit56 ], [ %i.cb, %middle.block177 ]
  br label %scalar.ph160

scalar.ph160:                                     ; preds = %scalar.ph160.preheader, %scalar.ph160
  %.017.i.i = phi i64 [ %i.cf, %scalar.ph160 ], [ %.017.i.i.ph, %scalar.ph160.preheader ]
  %.01416.i.i = phi ptr [ %i.cg, %scalar.ph160 ], [ %.01416.i.i.ph, %scalar.ph160.preheader ] ; 3 uses
  %i.cf = add i64 %.017.i.i, -1                   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i) ]
  store <2 x i32> %i.by, ptr %.01416.i.i, align 4, !tbaa !41
  %i.cg = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 8
  %.not.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %scalar.ph160, !llvm.loop !2289

._crit_edge.i.i:                                  ; preds = %scalar.ph160, %middle.block177
  %i.ch = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.bx
  store i64 %i.ch, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit

_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit: ; preds = %scalar.ph87, %middle.block100, %._crit_edge.i.i, %_ZN5boost9container13move_backwardIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::static_vector.35", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.b:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  %indvars.iv = phi i64 [ 5, %bb.a ], [ %indvars.iv.next, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 2 uses
  %.03888 = phi i64 [ 0, %bb.a ], [ %i.dx, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 10 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = load i64, ptr %i.a, align 8, !tbaa !141  ; 12 uses
  %i.c = icmp ugt i64 %i.b, 10
  br i1 %i.c, label %bb.d, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.c
  %.not17.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not17.i.i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.d = shl nuw nsw i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %0, i64 %i.d, i1 false), !tbaa !82
  %i.e = trunc nuw nsw i64 %i.b to i32
  %i.f = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.e
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not.i.i = icmp samesign ugt i64 %i.b, 7
  br i1 %.not.i.i, label %bb.g, label %.thread, !prof !149

.thread:                                          ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i, %bb.e
  %.idx63106 = shl nuw nsw i64 %.03888, 2         ; 3 uses
  %i.g = getelementptr i8, ptr %2, i64 %.idx63106 ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 2                 ; 3 uses
  %i.h = getelementptr i8, ptr %2, i64 %.idx      ; 11 uses
  %i.i = icmp samesign eq i64 %i.b, %.03888
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.i.preheader, label %bb.f

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.thread
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted80 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !tbaa !82, !noalias !2311
  %i.j = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted80, 3
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2311
  br label %.loopexit67

bb.f:                                             ; preds = %.thread
  %gepdiff = sub nsw i64 %.idx, %.idx63106        ; 4 uses
  %i.k = ashr exact i64 %gepdiff, 2               ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.k, 3
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2312 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i48.preheader.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i

.lr.ph.i.i10.i.i.i.i:                             ; preds = %bb.f
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -12 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.n = load <2 x i32>, ptr %i.l, align 4, !tbaa !82, !noalias !2312
  store i32 0, ptr %i.l, align 4, !tbaa !82, !noalias !2312
  store <2 x i32> %i.n, ptr %i.h, align 4, !tbaa !82, !noalias !2312
  store i32 0, ptr %i.m, align 4, !tbaa !82, !noalias !2312
  %i.o = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = load i32, ptr %i.o, align 4, !tbaa !82, !noalias !2312
  store i32 %i.q, ptr %i.p, align 4, !tbaa !82, !noalias !2312
  store i32 0, ptr %i.o, align 4, !tbaa !82, !noalias !2312
  %i.r = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76, 3
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2312
  %i.s = add nsw i64 %.idx, -12
  %.not8.i.i.i.i.i.i = icmp eq i64 %.idx63106, %i.s
  br i1 %.not8.i.i.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i.preheader

.lr.ph.i40.i.i.i.i.i.preheader:                   ; preds = %.lr.ph.i.i10.i.i.i.i
  %i.t = sub nsw i64 %i.b, %.03888                ; 2 uses
  %i.u = add i64 %i.t, 4611686018427387900
  %i.v = and i64 %i.u, 4611686018427387903
  %i.w = add i64 %i.t, 5
  %xtraiter = and i64 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol

.lr.ph.i40.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i40.i.i.i.i.i.preheader, %.lr.ph.i40.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi ptr [ %i.y, %.lr.ph.i40.i.i.i.i.i.prol ], [ %i.h, %.lr.ph.i40.i.i.i.i.i.preheader ]
  %.079.i.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i40.i.i.i.i.i.prol ], [ %i.l, %.lr.ph.i40.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i40.i.i.i.i.i.prol ], [ 0, %.lr.ph.i40.i.i.i.i.i.preheader ]
  %i.x = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i.prol, i64 -4 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i.prol, i64 -4 ; 3 uses
  %i.z = load i32, ptr %i.x, align 4, !tbaa !82, !noalias !2312
  store i32 %i.z, ptr %i.y, align 4, !tbaa !82, !noalias !2312
  store i32 0, ptr %i.x, align 4, !tbaa !82, !noalias !2312
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol, !llvm.loop !2296

.lr.ph.i40.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i40.i.i.i.i.i.prol, %.lr.ph.i40.i.i.i.i.i.preheader
  %.010.i.i.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i40.i.i.i.i.i.preheader ], [ %i.y, %.lr.ph.i40.i.i.i.i.i.prol ]
  %.079.i.i.i.i.i.i.unr = phi ptr [ %i.l, %.lr.ph.i40.i.i.i.i.i.preheader ], [ %i.x, %.lr.ph.i40.i.i.i.i.i.prol ]
  %i.aa = icmp samesign ult i64 %i.v, 7
  br i1 %i.aa, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i

.lr.ph.i40.i.i.i.i.i:                             ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit, %.lr.ph.i40.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i40.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.079.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i40.i.i.i.i.i ], [ %.079.i.i.i.i.i.i.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.ab = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -4 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -4
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !82, !noalias !2312
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !82, !noalias !2312
  store i32 0, ptr %i.ab, align 4, !tbaa !82, !noalias !2312
  %i.ae = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -8
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !82, !noalias !2312
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !82, !noalias !2312
  store i32 0, ptr %i.ae, align 4, !tbaa !82, !noalias !2312
  %i.ah = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -12 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !82, !noalias !2312
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !82, !noalias !2312
  store i32 0, ptr %i.ah, align 4, !tbaa !82, !noalias !2312
  %i.ak = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -16 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -16
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !82, !noalias !2312
  store i32 %i.am, ptr %i.al, align 4, !tbaa !82, !noalias !2312
  store i32 0, ptr %i.ak, align 4, !tbaa !82, !noalias !2312
  %i.an = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -20 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -20
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !82, !noalias !2312
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !82, !noalias !2312
  store i32 0, ptr %i.an, align 4, !tbaa !82, !noalias !2312
  %i.aq = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -24
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !82, !noalias !2312
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !82, !noalias !2312
  store i32 0, ptr %i.aq, align 4, !tbaa !82, !noalias !2312
  %i.at = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -28 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -28
  %i.av = load i32, ptr %i.at, align 4, !tbaa !82, !noalias !2312
  store i32 %i.av, ptr %i.au, align 4, !tbaa !82, !noalias !2312
  store i32 0, ptr %i.at, align 4, !tbaa !82, !noalias !2312
  %i.aw = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -32 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !82, !noalias !2312
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !82, !noalias !2312
  store i32 0, ptr %i.aw, align 4, !tbaa !82, !noalias !2312
  %.not.i41.i.i.i.i.i.7 = icmp eq ptr %i.g, %i.aw
  br i1 %.not.i41.i.i.i.i.i.7, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i, !llvm.loop !15

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i: ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit, %.lr.ph.i40.i.i.i.i.i, %.lr.ph.i.i10.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !tbaa !82, !noalias !2313
  br label %.loopexit67

.lr.ph.i48.preheader.i.i.i.i.i:                   ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.ba = sub nsw i64 %i.b, %.03888               ; 2 uses
  %i.bb = add i64 %i.ba, 4611686018427387903
  %i.bc = and i64 %i.bb, 4611686018427387903
  %xtraiter168 = and i64 %i.ba, 3                 ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.lr.ph.i48.i.i.i.i.i.prol.loopexit, label %.lr.ph.i48.i.i.i.i.i.prol

.lr.ph.i48.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i48.preheader.i.i.i.i.i, %.lr.ph.i48.i.i.i.i.i.prol
  %i.bd = phi i32 [ %i.bf, %.lr.ph.i48.i.i.i.i.i.prol ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76, %.lr.ph.i48.preheader.i.i.i.i.i ] ; 2 uses
  %.018.i.i.i.i.i.i.prol = phi ptr [ %i.bg, %.lr.ph.i48.i.i.i.i.i.prol ], [ %i.g, %.lr.ph.i48.preheader.i.i.i.i.i ] ; 3 uses
  %.01517.i.i.i.i.i.i.prol = phi ptr [ %i.bh, %.lr.ph.i48.i.i.i.i.i.prol ], [ %i.az, %.lr.ph.i48.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter170 = phi i64 [ %prol.iter170.next, %.lr.ph.i48.i.i.i.i.i.prol ], [ 0, %.lr.ph.i48.preheader.i.i.i.i.i ]
  %i.be = load i32, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !2312
  store i32 %i.be, ptr %.01517.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !2312
  store i32 0, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !2312
  %i.bf = add i32 %i.bd, 1                        ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter170.next = add i64 %prol.iter170, 1   ; 2 uses
  %prol.iter170.cmp.not = icmp eq i64 %prol.iter170.next, %xtraiter168
  br i1 %prol.iter170.cmp.not, label %.lr.ph.i48.i.i.i.i.i.prol.loopexit, label %.lr.ph.i48.i.i.i.i.i.prol, !llvm.loop !2299

.lr.ph.i48.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i48.i.i.i.i.i.prol, %.lr.ph.i48.preheader.i.i.i.i.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i48.preheader.i.i.i.i.i ], [ %i.bd, %.lr.ph.i48.i.i.i.i.i.prol ]
  %.unr = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76, %.lr.ph.i48.preheader.i.i.i.i.i ], [ %i.bf, %.lr.ph.i48.i.i.i.i.i.prol ]
  %.018.i.i.i.i.i.i.unr = phi ptr [ %i.g, %.lr.ph.i48.preheader.i.i.i.i.i ], [ %i.bg, %.lr.ph.i48.i.i.i.i.i.prol ]
  %.01517.i.i.i.i.i.i.unr = phi ptr [ %i.az, %.lr.ph.i48.preheader.i.i.i.i.i ], [ %i.bh, %.lr.ph.i48.i.i.i.i.i.prol ]
  %i.bi = icmp samesign ult i64 %i.bc, 3
  br i1 %i.bi, label %.lr.ph.i.i51.i.i.i.i.i.preheader, label %.lr.ph.i48.i.i.i.i.i

.lr.ph.i48.i.i.i.i.i:                             ; preds = %.lr.ph.i48.i.i.i.i.i.prol.loopexit, %.lr.ph.i48.i.i.i.i.i
  %i.bj = phi i32 [ %i.bu, %.lr.ph.i48.i.i.i.i.i ], [ %.unr, %.lr.ph.i48.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.018.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i48.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i48.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01517.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i48.i.i.i.i.i ], [ %.01517.i.i.i.i.i.i.unr, %.lr.ph.i48.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.bk = load i32, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !2312
  store i32 %i.bk, ptr %.01517.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !2312
  store i32 0, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !2312
  %i.bl = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 4
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !82, !noalias !2312
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !82, !noalias !2312
  store i32 0, ptr %i.bl, align 4, !tbaa !82, !noalias !2312
  %i.bo = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 8
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !82, !noalias !2312
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !82, !noalias !2312
  store i32 0, ptr %i.bo, align 4, !tbaa !82, !noalias !2312
  %i.br = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 12
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !82, !noalias !2312
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !82, !noalias !2312
  store i32 0, ptr %i.br, align 4, !tbaa !82, !noalias !2312
  %i.bu = add i32 %i.bj, 4
  %i.bv = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 16
  %.not.i49.i.i.i.i.i.3 = icmp eq ptr %i.bv, %i.h
  br i1 %.not.i49.i.i.i.i.i.3, label %.lr.ph.i.i51.i.i.i.i.i.preheader.unr-lcssa, label %.lr.ph.i48.i.i.i.i.i, !llvm.loop !16

.lr.ph.i.i51.i.i.i.i.i.preheader.unr-lcssa:       ; preds = %.lr.ph.i48.i.i.i.i.i
  %i.bx = add i32 %i.bj, 3
  br label %.lr.ph.i.i51.i.i.i.i.i.preheader

.lr.ph.i.i51.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i48.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i.i.i.preheader.unr-lcssa
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph.i48.i.i.i.i.i.prol.loopexit ], [ %i.bx, %.lr.ph.i.i51.i.i.i.i.i.preheader.unr-lcssa ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.g, ptr nonnull align 8 %1, i64 %gepdiff, i1 false), !tbaa !82, !noalias !2314
  %scevgep = getelementptr i8, ptr %1, i64 %gepdiff
  %i.by = sub i64 12, %gepdiff
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %scevgep, i64 %i.by, i1 false), !tbaa !82, !noalias !2315
  %i.bz = add i32 %.lcssa, 4
  %i.ca = trunc nuw nsw i64 %i.k to i32
  %i.cb = sub i32 %i.bz, %i.ca
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2315
  br label %.loopexit67

bb.g:                                             ; preds = %bb.e
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

.loopexit67:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, %.lr.ph.i.i51.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.preheader
  %i.cc = add nuw nsw i64 %i.b, 3                 ; 11 uses
  %i.cd = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1, i32 noundef 347, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %.loopexit67
  %i.ce = icmp eq i64 %i.cc, 8
  %i.cf = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 348, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext %i.ce)
          to label %.preheader65 unwind label %bb.k ; 0 uses

.preheader65:                                     ; preds = %bb.h
  %.not = icmp eq i64 %.03888, 0
  %.pre97 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  br i1 %.not, label %.preheader64, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader65
  %i.cg = add i32 %.pre97, 1
  br label %.lr.ph

.preheader64:                                     ; preds = %bb.l, %.preheader65
  %i.ch = phi i32 [ %.pre97, %.preheader65 ], [ %i.cw, %bb.l ]
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03888 ; 4 uses
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cj = load i32, ptr %invariant.gep, align 4, !tbaa !82
  %i.ck = icmp eq i32 %i.cj, 100
  %i.cl = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext %i.ck)
          to label %bb.n unwind label %bb.p       ; 0 uses

bb.i:                                             ; preds = %bb.g
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i43

bb.j:                                             ; preds = %.loopexit67
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i43

bb.k:                                             ; preds = %bb.h
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i43

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %i.cp = phi i32 [ %i.cv, %bb.l ], [ %i.cg, %.lr.ph.preheader ]
  %.03482 = phi i64 [ %i.cx, %bb.l ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03482
  %i.cr = trunc nuw nsw i64 %.03482 to i32
  store i32 %i.cp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !82
  %i.ct = icmp eq i32 %i.cs, %i.cr
  %i.cu = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 350, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext %i.ct)
          to label %bb.l unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %.lr.ph
  %i.cv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.cw = add i32 %i.cv, -1                       ; 2 uses
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cx = add nuw nsw i64 %.03482, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cx, %.03888
  br i1 %exitcond.not, label %.preheader64, label %.lr.ph, !llvm.loop !2304

bb.m:                                             ; preds = %.lr.ph
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %i.cz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.da = add i32 %i.cz, -1
  store i32 %i.da, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i43

.lr.ph87:                                         ; preds = %.preheader
  %i.db = trunc nuw nsw i64 %.03888 to i32
  br label %bb.q

bb.n:                                             ; preds = %.preheader64
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.dc = load i32, ptr %gep.1, align 4, !tbaa !82
  %i.dd = icmp eq i32 %i.dc, 101
  %i.de = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext %i.dd)
          to label %bb.o unwind label %bb.p       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %i.df = load i32, ptr %gep.2, align 4, !tbaa !82
  %i.dg = icmp eq i32 %i.df, 102
  %i.dh = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext %i.dg)
          to label %.preheader unwind label %bb.p ; 0 uses

.preheader:                                       ; preds = %bb.o
  %i.di = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.dj = add i32 %i.di, -1                       ; 2 uses
  store i32 %i.dj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not89 = icmp eq i64 %.03888, 5
  br i1 %.not89, label %.lr.ph.i.preheader.i, label %.lr.ph87

bb.p:                                             ; preds = %bb.o, %bb.n, %.preheader64
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %i.dl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dm = add i32 %i.dl, -1
  store i32 %i.dm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i43

.lr.ph.i.preheader.i:                             ; preds = %bb.r, %.preheader
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = phi i32 [ %i.dj, %.preheader ], [ %i.eg, %bb.r ]
  %min.iters.check = icmp ult i64 %i.b, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.cc, 24                      ; 3 uses
  %i.dn = and i64 %i.cc, 7
  %i.do = shl nuw nsw i64 %n.vec, 2
  %i.dp = getelementptr i8, ptr %2, i64 %i.do
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.dq ; 2 uses
  %i.dr = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.dr, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !2305

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.05.i.i.ph = phi i64 [ %i.cc, %.lr.ph.i.preheader.i ], [ %i.dn, %middle.block ]
  %storemerge4.i.i.ph = phi ptr [ %2, %.lr.ph.i.preheader.i ], [ %i.dp, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.dt, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.du, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.dt = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !82
  %i.du = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i41 = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i41, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !2306

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.lr.ph.i.i, %middle.block
  %i.dv = trunc nuw nsw i64 %i.cc to i32
  %i.dw = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.dv
  store i32 %i.dw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.dx = add nuw nsw i64 %.03888, 1              ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond96.not = icmp eq i64 %i.dx, 6
  br i1 %exitcond96.not, label %bb.b, label %bb.c, !llvm.loop !2307

bb.q:                                             ; preds = %.lr.ph87, %bb.r
  %i.dy = phi i32 [ %i.di, %.lr.ph87 ], [ %i.ef, %bb.r ]
  %.086 = phi i64 [ 0, %.lr.ph87 ], [ %i.eh, %bb.r ] ; 3 uses
  %gep85 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.086
  %i.dz = getelementptr inbounds nuw i8, ptr %gep85, i64 12
  %i.ea = trunc nuw nsw i64 %.086 to i32
  %i.eb = add nuw nsw i32 %i.ea, %i.db
  store i32 %i.dy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ec = load i32, ptr %i.dz, align 4, !tbaa !82
  %i.ed = icmp eq i32 %i.ec, %i.eb
  %i.ee = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 354, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext %i.ed)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ef = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.eg = add i32 %i.ef, -1                       ; 2 uses
  store i32 %i.eg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.eh = add nuw nsw i64 %.086, 1                ; 2 uses
  %exitcond95.not = icmp eq i64 %i.eh, %umax
  br i1 %exitcond95.not, label %.lr.ph.i.preheader.i, label %bb.q, !llvm.loop !2308

bb.s:                                             ; preds = %bb.q
  %i.ei = landingpad { ptr, i32 }
          cleanup
  %i.ej = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ek = add i32 %i.ej, -1
  store i32 %i.ek, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i43

.lr.ph.i.preheader.i43:                           ; preds = %bb.s, %bb.p, %bb.m, %bb.k, %bb.j, %bb.i
  %i.el = phi i64 [ %i.b, %bb.i ], [ %i.cc, %bb.m ], [ %i.cc, %bb.p ], [ %i.cc, %bb.s ], [ %i.cc, %bb.k ], [ %i.cc, %bb.j ] ; 6 uses
  %.pn.pn = phi { ptr, i32 } [ %i.cm, %bb.i ], [ %i.cy, %bb.m ], [ %i.dk, %bb.p ], [ %i.ei, %bb.s ], [ %i.co, %bb.k ], [ %i.cn, %bb.j ]
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i44 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check141 = icmp ult i64 %i.el, 8
  br i1 %min.iters.check141, label %.lr.ph.i.i45.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %.lr.ph.i.preheader.i43
  %n.vec143 = and i64 %i.el, -8                   ; 3 uses
  %i.em = and i64 %i.el, 7
  %i.en = shl i64 %n.vec143, 2
  %i.eo = getelementptr i8, ptr %2, i64 %i.en
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph142
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.ep = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %2, i64 %i.ep ; 2 uses
  %i.eq = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep146, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.eq, align 8, !tbaa !82
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next147, %n.vec143
  br i1 %i.er, label %middle.block148, label %vector.body144, !llvm.loop !2309

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.el, %n.vec143
  br i1 %cmp.n149, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit50, label %.lr.ph.i.i45.preheader

.lr.ph.i.i45.preheader:                           ; preds = %.lr.ph.i.preheader.i43, %middle.block148
  %.05.i.i46.ph = phi i64 [ %i.el, %.lr.ph.i.preheader.i43 ], [ %i.em, %middle.block148 ]
  %storemerge4.i.i47.ph = phi ptr [ %2, %.lr.ph.i.preheader.i43 ], [ %i.eo, %middle.block148 ]
  br label %.lr.ph.i.i45

.lr.ph.i.i45:                                     ; preds = %.lr.ph.i.i45.preheader, %.lr.ph.i.i45
  %.05.i.i46 = phi i64 [ %i.es, %.lr.ph.i.i45 ], [ %.05.i.i46.ph, %.lr.ph.i.i45.preheader ]
  %storemerge4.i.i47 = phi ptr [ %i.et, %.lr.ph.i.i45 ], [ %storemerge4.i.i47.ph, %.lr.ph.i.i45.preheader ] ; 2 uses
  %i.es = add i64 %.05.i.i46, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i47, align 4, !tbaa !82
  %i.et = getelementptr inbounds nuw i8, ptr %storemerge4.i.i47, i64 4
  %.not.i.i48 = icmp eq i64 %i.es, 0
  br i1 %.not.i.i48, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit50, label %.lr.ph.i.i45, !llvm.loop !2310

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit50: ; preds = %.lr.ph.i.i45, %middle.block148
  %i.eu = trunc nuw nsw i64 %i.el to i32
  %i.ev = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i44, %i.eu
  store i32 %i.ev, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_6vectorIS3_vvEEEvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::static_vector.35", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.b:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  %indvars.iv = phi i64 [ 5, %bb.a ], [ %indvars.iv.next, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 2 uses
  %.03886 = phi i64 [ 0, %bb.a ], [ %i.ea, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 10 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = load i64, ptr %i.a, align 8, !tbaa !141  ; 12 uses
  %i.c = icmp ugt i64 %i.b, 10
  br i1 %i.c, label %bb.d, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.c
  %.not17.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not17.i.i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.d = shl nuw nsw i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %0, i64 %i.d, i1 false), !tbaa !82
  %i.e = trunc nuw nsw i64 %i.b to i32
  %i.f = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.e
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not.i.i = icmp samesign ugt i64 %i.b, 7
  br i1 %.not.i.i, label %bb.g, label %.thread, !prof !149

.thread:                                          ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i, %bb.e
  %i.g = load ptr, ptr %1, align 8, !tbaa !147, !noalias !2340 ; 4 uses
  %.idx63104 = shl nuw nsw i64 %.03886, 2         ; 3 uses
  %i.h = getelementptr i8, ptr %2, i64 %.idx63104 ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 2                 ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 %.idx      ; 11 uses
  %i.j = icmp samesign eq i64 %i.b, %.03886
  br i1 %i.j, label %.lr.ph.i.i.i.i.i.i.preheader, label %bb.f

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.thread
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted79 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false), !tbaa !82, !noalias !2341
  %i.k = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted79, 3
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2341
  br label %.loopexit

bb.f:                                             ; preds = %.thread
  %gepdiff = sub nsw i64 %.idx, %.idx63104        ; 3 uses
  %i.l = ashr exact i64 %gepdiff, 2               ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.l, 3
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2342 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i48.preheader.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i

.lr.ph.i.i10.i.i.i.i:                             ; preds = %bb.f
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -12 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.o = load <2 x i32>, ptr %i.m, align 4, !tbaa !82, !noalias !2342
  store i32 0, ptr %i.m, align 4, !tbaa !82, !noalias !2342
  store <2 x i32> %i.o, ptr %i.i, align 4, !tbaa !82, !noalias !2342
  store i32 0, ptr %i.n, align 4, !tbaa !82, !noalias !2342
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 -4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.r = load i32, ptr %i.p, align 4, !tbaa !82, !noalias !2342
  store i32 %i.r, ptr %i.q, align 4, !tbaa !82, !noalias !2342
  store i32 0, ptr %i.p, align 4, !tbaa !82, !noalias !2342
  %i.s = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76, 3
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2342
  %i.t = add nsw i64 %.idx, -12
  %.not8.i.i.i.i.i.i = icmp eq i64 %.idx63104, %i.t
  br i1 %.not8.i.i.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i.preheader

.lr.ph.i40.i.i.i.i.i.preheader:                   ; preds = %.lr.ph.i.i10.i.i.i.i
  %i.u = sub nsw i64 %i.b, %.03886                ; 2 uses
  %i.v = add i64 %i.u, 4611686018427387900
  %i.w = and i64 %i.v, 4611686018427387903
  %i.x = add i64 %i.u, 5
  %xtraiter = and i64 %i.x, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol

.lr.ph.i40.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i40.i.i.i.i.i.preheader, %.lr.ph.i40.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi ptr [ %i.z, %.lr.ph.i40.i.i.i.i.i.prol ], [ %i.i, %.lr.ph.i40.i.i.i.i.i.preheader ]
  %.079.i.i.i.i.i.i.prol = phi ptr [ %i.y, %.lr.ph.i40.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i40.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i40.i.i.i.i.i.prol ], [ 0, %.lr.ph.i40.i.i.i.i.i.preheader ]
  %i.y = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i.prol, i64 -4 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i.prol, i64 -4 ; 3 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !82, !noalias !2342
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !82, !noalias !2342
  store i32 0, ptr %i.y, align 4, !tbaa !82, !noalias !2342
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol, !llvm.loop !2324

.lr.ph.i40.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i40.i.i.i.i.i.prol, %.lr.ph.i40.i.i.i.i.i.preheader
  %.010.i.i.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i40.i.i.i.i.i.preheader ], [ %i.z, %.lr.ph.i40.i.i.i.i.i.prol ]
  %.079.i.i.i.i.i.i.unr = phi ptr [ %i.m, %.lr.ph.i40.i.i.i.i.i.preheader ], [ %i.y, %.lr.ph.i40.i.i.i.i.i.prol ]
  %i.ab = icmp samesign ult i64 %i.w, 7
  br i1 %i.ab, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i

.lr.ph.i40.i.i.i.i.i:                             ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit, %.lr.ph.i40.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i40.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.079.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i40.i.i.i.i.i ], [ %.079.i.i.i.i.i.i.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.ac = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -4 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -4
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !82, !noalias !2342
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !82, !noalias !2342
  store i32 0, ptr %i.ac, align 4, !tbaa !82, !noalias !2342
  %i.af = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -8
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !82, !noalias !2342
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !82, !noalias !2342
  store i32 0, ptr %i.af, align 4, !tbaa !82, !noalias !2342
  %i.ai = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -12 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -12
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !82, !noalias !2342
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !82, !noalias !2342
  store i32 0, ptr %i.ai, align 4, !tbaa !82, !noalias !2342
  %i.al = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -16 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -16
  %i.an = load i32, ptr %i.al, align 4, !tbaa !82, !noalias !2342
  store i32 %i.an, ptr %i.am, align 4, !tbaa !82, !noalias !2342
  store i32 0, ptr %i.al, align 4, !tbaa !82, !noalias !2342
  %i.ao = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -20 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -20
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !82, !noalias !2342
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !82, !noalias !2342
  store i32 0, ptr %i.ao, align 4, !tbaa !82, !noalias !2342
  %i.ar = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -24
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !82, !noalias !2342
  store i32 %i.at, ptr %i.as, align 4, !tbaa !82, !noalias !2342
  store i32 0, ptr %i.ar, align 4, !tbaa !82, !noalias !2342
  %i.au = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -28 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -28
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !82, !noalias !2342
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !82, !noalias !2342
  store i32 0, ptr %i.au, align 4, !tbaa !82, !noalias !2342
  %i.ax = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -32 ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !82, !noalias !2342
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !82, !noalias !2342
  store i32 0, ptr %i.ax, align 4, !tbaa !82, !noalias !2342
  %.not.i41.i.i.i.i.i.7 = icmp eq ptr %i.h, %i.ax
  br i1 %.not.i41.i.i.i.i.i.7, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i, !llvm.loop !15

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i: ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit, %.lr.ph.i40.i.i.i.i.i, %.lr.ph.i.i10.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false), !tbaa !82, !noalias !2343
  br label %.loopexit

.lr.ph.i48.preheader.i.i.i.i.i:                   ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.bb = sub nsw i64 %i.b, %.03886               ; 2 uses
  %i.bc = add i64 %i.bb, 4611686018427387903
  %i.bd = and i64 %i.bc, 4611686018427387903
  %xtraiter166 = and i64 %i.bb, 3                 ; 2 uses
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod167.not, label %.lr.ph.i48.i.i.i.i.i.prol.loopexit, label %.lr.ph.i48.i.i.i.i.i.prol

.lr.ph.i48.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i48.preheader.i.i.i.i.i, %.lr.ph.i48.i.i.i.i.i.prol
  %i.be = phi i32 [ %i.bg, %.lr.ph.i48.i.i.i.i.i.prol ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76, %.lr.ph.i48.preheader.i.i.i.i.i ]
  %.018.i.i.i.i.i.i.prol = phi ptr [ %i.bh, %.lr.ph.i48.i.i.i.i.i.prol ], [ %i.h, %.lr.ph.i48.preheader.i.i.i.i.i ] ; 3 uses
  %.01517.i.i.i.i.i.i.prol = phi ptr [ %i.bi, %.lr.ph.i48.i.i.i.i.i.prol ], [ %i.ba, %.lr.ph.i48.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter168 = phi i64 [ %prol.iter168.next, %.lr.ph.i48.i.i.i.i.i.prol ], [ 0, %.lr.ph.i48.preheader.i.i.i.i.i ]
  %i.bf = load i32, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !2342
  store i32 %i.bf, ptr %.01517.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !2342
  store i32 0, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !2342
  %i.bg = add i32 %i.be, 1                        ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter168.next = add i64 %prol.iter168, 1   ; 2 uses
  %prol.iter168.cmp.not = icmp eq i64 %prol.iter168.next, %xtraiter166
  br i1 %prol.iter168.cmp.not, label %.lr.ph.i48.i.i.i.i.i.prol.loopexit, label %.lr.ph.i48.i.i.i.i.i.prol, !llvm.loop !2327

.lr.ph.i48.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i48.i.i.i.i.i.prol, %.lr.ph.i48.preheader.i.i.i.i.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i48.preheader.i.i.i.i.i ], [ %i.bg, %.lr.ph.i48.i.i.i.i.i.prol ]
  %.unr = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76, %.lr.ph.i48.preheader.i.i.i.i.i ], [ %i.bg, %.lr.ph.i48.i.i.i.i.i.prol ]
  %.018.i.i.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i48.preheader.i.i.i.i.i ], [ %i.bh, %.lr.ph.i48.i.i.i.i.i.prol ]
  %.01517.i.i.i.i.i.i.unr = phi ptr [ %i.ba, %.lr.ph.i48.preheader.i.i.i.i.i ], [ %i.bi, %.lr.ph.i48.i.i.i.i.i.prol ]
  %i.bj = icmp samesign ult i64 %i.bd, 3
  br i1 %i.bj, label %.lr.ph.i.i51.i.i.i.i.i.preheader, label %.lr.ph.i48.i.i.i.i.i

.lr.ph.i48.i.i.i.i.i:                             ; preds = %.lr.ph.i48.i.i.i.i.i.prol.loopexit, %.lr.ph.i48.i.i.i.i.i
  %i.bk = phi i32 [ %i.bv, %.lr.ph.i48.i.i.i.i.i ], [ %.unr, %.lr.ph.i48.i.i.i.i.i.prol.loopexit ]
  %.018.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i48.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i48.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01517.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i48.i.i.i.i.i ], [ %.01517.i.i.i.i.i.i.unr, %.lr.ph.i48.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.bl = load i32, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !2342
  store i32 %i.bl, ptr %.01517.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !2342
  store i32 0, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !2342
  %i.bm = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 4
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !82, !noalias !2342
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !82, !noalias !2342
  store i32 0, ptr %i.bm, align 4, !tbaa !82, !noalias !2342
  %i.bp = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 8
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !82, !noalias !2342
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !82, !noalias !2342
  store i32 0, ptr %i.bp, align 4, !tbaa !82, !noalias !2342
  %i.bs = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 12
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !82, !noalias !2342
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !82, !noalias !2342
  store i32 0, ptr %i.bs, align 4, !tbaa !82, !noalias !2342
  %i.bv = add i32 %i.bk, 4                        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 16
  %.not.i49.i.i.i.i.i.3 = icmp eq ptr %i.bw, %i.i
  br i1 %.not.i49.i.i.i.i.i.3, label %.lr.ph.i.i51.i.i.i.i.i.preheader, label %.lr.ph.i48.i.i.i.i.i, !llvm.loop !16

.lr.ph.i.i51.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i48.i.i.i.i.i, %.lr.ph.i48.i.i.i.i.i.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph.i48.i.i.i.i.i.prol.loopexit ], [ %i.bv, %.lr.ph.i48.i.i.i.i.i ] ; 2 uses
  store i32 %.lcssa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2342
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %i.g, i64 %gepdiff, i1 false), !tbaa !82, !noalias !2344
  %i.by = sub nuw nsw i64 3, %i.l
  %scevgep = getelementptr i8, ptr %i.g, i64 %gepdiff
  br label %.lr.ph.i.i56.i.i.i.i.i.prol

.lr.ph.i.i56.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i56.i.i.i.i.i.prol, %.lr.ph.i.i51.i.i.i.i.i.preheader
  %i.bz = phi i32 [ %i.cc, %.lr.ph.i.i56.i.i.i.i.i.prol ], [ %.lcssa, %.lr.ph.i.i51.i.i.i.i.i.preheader ]
  %i.ca = phi ptr [ %i.cd, %.lr.ph.i.i56.i.i.i.i.i.prol ], [ %scevgep, %.lr.ph.i.i51.i.i.i.i.i.preheader ] ; 2 uses
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.ce, %.lr.ph.i.i56.i.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i51.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter171 = phi i64 [ %prol.iter171.next, %.lr.ph.i.i56.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i51.i.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i.prol) ]
end_hunk_17
begin_hunk_18_@_Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_6vectorIS3_vvEEEvRKT1_RKT2_:bb.a
.lr.ph85:                                         ; preds = %.preheader
  %i.de = trunc nuw nsw i64 %.03886 to i32
  br label %bb.q

bb.n:                                             ; preds = %.preheader64
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.df = load i32, ptr %gep.1, align 4, !tbaa !82
  %i.dg = icmp eq i32 %i.df, 101
  %i.dh = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_6vectorIS3_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.dg)
          to label %bb.o unwind label %bb.p       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %i.di = load i32, ptr %gep.2, align 4, !tbaa !82
  %i.dj = icmp eq i32 %i.di, 102
  %i.dk = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_6vectorIS3_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.dj)
          to label %.preheader unwind label %bb.p ; 0 uses

.preheader:                                       ; preds = %bb.o
  %i.dl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.dm = add i32 %i.dl, -1                       ; 2 uses
  store i32 %i.dm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not87 = icmp eq i64 %.03886, 5
  br i1 %.not87, label %.lr.ph.i.preheader.i, label %.lr.ph85

bb.p:                                             ; preds = %bb.o, %bb.n, %.preheader64
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dp = add i32 %i.do, -1
  store i32 %i.dp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i43

.lr.ph.i.preheader.i:                             ; preds = %bb.r, %.preheader
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = phi i32 [ %i.dm, %.preheader ], [ %i.ej, %bb.r ]
  %min.iters.check = icmp ult i64 %i.b, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.cf, 24                      ; 3 uses
  %i.dq = and i64 %i.cf, 7
  %i.dr = shl nuw nsw i64 %n.vec, 2
  %i.ds = getelementptr i8, ptr %2, i64 %i.dr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.dt ; 2 uses
  %i.du = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.du, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !2334

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.05.i.i.ph = phi i64 [ %i.cf, %.lr.ph.i.preheader.i ], [ %i.dq, %middle.block ]
  %storemerge4.i.i.ph = phi ptr [ %2, %.lr.ph.i.preheader.i ], [ %i.ds, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.dw, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.dw = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !82
  %i.dx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i41 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i41, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !2335

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.lr.ph.i.i, %middle.block
  %i.dy = trunc nuw nsw i64 %i.cf to i32
  %i.dz = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.dy
  store i32 %i.dz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ea = add nuw nsw i64 %.03886, 1              ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond94.not = icmp eq i64 %i.ea, 6
  br i1 %exitcond94.not, label %bb.b, label %bb.c, !llvm.loop !2336

bb.q:                                             ; preds = %.lr.ph85, %bb.r
  %i.eb = phi i32 [ %i.dl, %.lr.ph85 ], [ %i.ei, %bb.r ]
  %.084 = phi i64 [ 0, %.lr.ph85 ], [ %i.ek, %bb.r ] ; 3 uses
  %gep83 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.084
  %i.ec = getelementptr inbounds nuw i8, ptr %gep83, i64 12
  %i.ed = trunc nuw nsw i64 %.084 to i32
  %i.ee = add nuw nsw i32 %i.ed, %i.de
  store i32 %i.eb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ef = load i32, ptr %i.ec, align 4, !tbaa !82
  %i.eg = icmp eq i32 %i.ef, %i.ee
  %i.eh = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 354, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_6vectorIS3_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.eg)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ei = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.ej = add i32 %i.ei, -1                       ; 2 uses
  store i32 %i.ej, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ek = add nuw nsw i64 %.084, 1                ; 2 uses
  %exitcond93.not = icmp eq i64 %i.ek, %umax
  br i1 %exitcond93.not, label %.lr.ph.i.preheader.i, label %bb.q, !llvm.loop !2337

bb.s:                                             ; preds = %bb.q
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.en = add i32 %i.em, -1
  store i32 %i.en, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i43

.lr.ph.i.preheader.i43:                           ; preds = %bb.s, %bb.p, %bb.m, %bb.k, %bb.j, %bb.i
  %i.eo = phi i64 [ %i.b, %bb.i ], [ %i.cf, %bb.m ], [ %i.cf, %bb.p ], [ %i.cf, %bb.s ], [ %i.cf, %bb.k ], [ %i.cf, %bb.j ] ; 6 uses
  %.pn.pn = phi { ptr, i32 } [ %i.cp, %bb.i ], [ %i.db, %bb.m ], [ %i.dn, %bb.p ], [ %i.el, %bb.s ], [ %i.cr, %bb.k ], [ %i.cq, %bb.j ]
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i44 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check139 = icmp ult i64 %i.eo, 8
  br i1 %min.iters.check139, label %.lr.ph.i.i45.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %.lr.ph.i.preheader.i43
  %n.vec141 = and i64 %i.eo, -8                   ; 3 uses
  %i.ep = and i64 %i.eo, 7
  %i.eq = shl i64 %n.vec141, 2
  %i.er = getelementptr i8, ptr %2, i64 %i.eq
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next145, %vector.body142 ] ; 2 uses
  %i.es = shl i64 %index143, 2
  %next.gep144 = getelementptr i8, ptr %2, i64 %i.es ; 2 uses
  %i.et = getelementptr i8, ptr %next.gep144, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep144, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.et, align 8, !tbaa !82
  %index.next145 = add nuw i64 %index143, 8       ; 2 uses
  %i.eu = icmp eq i64 %index.next145, %n.vec141
  br i1 %i.eu, label %middle.block146, label %vector.body142, !llvm.loop !2338

middle.block146:                                  ; preds = %vector.body142
  %cmp.n147 = icmp eq i64 %i.eo, %n.vec141
  br i1 %cmp.n147, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit50, label %.lr.ph.i.i45.preheader

.lr.ph.i.i45.preheader:                           ; preds = %.lr.ph.i.preheader.i43, %middle.block146
  %.05.i.i46.ph = phi i64 [ %i.eo, %.lr.ph.i.preheader.i43 ], [ %i.ep, %middle.block146 ]
  %storemerge4.i.i47.ph = phi ptr [ %2, %.lr.ph.i.preheader.i43 ], [ %i.er, %middle.block146 ]
  br label %.lr.ph.i.i45

.lr.ph.i.i45:                                     ; preds = %.lr.ph.i.i45.preheader, %.lr.ph.i.i45
  %.05.i.i46 = phi i64 [ %i.ev, %.lr.ph.i.i45 ], [ %.05.i.i46.ph, %.lr.ph.i.i45.preheader ]
  %storemerge4.i.i47 = phi ptr [ %i.ew, %.lr.ph.i.i45 ], [ %storemerge4.i.i47.ph, %.lr.ph.i.i45.preheader ] ; 2 uses
  %i.ev = add i64 %.05.i.i46, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i47, align 4, !tbaa !82
  %i.ew = getelementptr inbounds nuw i8, ptr %storemerge4.i.i47, i64 4
  %.not.i.i48 = icmp eq i64 %i.ev, 0
  br i1 %.not.i.i48, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit50, label %.lr.ph.i.i45, !llvm.loop !2339

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit50: ; preds = %.lr.ph.i.i45, %middle.block146
  %i.ex = trunc nuw nsw i64 %i.eo to i32
  %i.ey = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i44, %i.ex
  store i32 %i.ey, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_4listIS3_vEEEvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::container::dtl::insert_range_proxy.161", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::static_vector.35", align 8 ; 14 uses
  %4 = alloca %"class.boost::container::vec_iterator.59", align 8 ; 5 uses
  %5 = alloca %"class.boost::container::vec_iterator.155", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.b:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  %indvars.iv = phi i64 [ 5, %bb.a ], [ %indvars.iv.next, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 2 uses
  %.03879 = phi i64 [ 0, %bb.a ], [ %i.bo, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 6 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.d = load i64, ptr %i.a, align 8, !tbaa !141  ; 5 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !139
  %i.e = icmp ugt i64 %i.d, 10
  br i1 %i.e, label %bb.d, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.c
  %.not17.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not17.i.i.i, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.f = shl nuw nsw i64 %i.d, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %3, ptr nonnull align 8 %0, i64 %i.f, i1 false), !tbaa !82
  %i.g = trunc nuw nsw i64 %i.d to i32
  %i.h = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.g
  store i32 %i.h, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i, %.lr.ph.i.preheader.i.i
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !105, !noalias !2361 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03879 ; 6 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.not2.i.i.i = icmp eq ptr %i.i, %i.l
  br i1 %.not2.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESN_SN_.exit.i, label %.lr.ph.i.i.i41

.lr.ph.i.i.i41:                                   ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit, %.lr.ph.i.i.i41
  %i.n = phi ptr [ %i.p, %.lr.ph.i.i.i41 ], [ %i.i, %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit ]
  %.03.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i41 ], [ 0, %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit ]
  %i.o = add nuw nsw i64 %.03.i.i.i, 1            ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !105, !noalias !2362 ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.p, %i.l
  br i1 %.not.i.i.i42, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESN_SN_.exit.i, label %.lr.ph.i.i.i41, !llvm.loop !29

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESN_SN_.exit.i: ; preds = %.lr.ph.i.i.i41, %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit
  %.0.lcssa.i.i.i = phi i64 [ 0, %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit ], [ %i.o, %.lr.ph.i.i.i41 ]
  store ptr %i.i, ptr %2, align 8, !tbaa !203, !noalias !2362
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS4_18insert_range_proxyIS6_NS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS4_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb1EEEEEEENS0_12vec_iteratorIPS3_Lb0EEERKSS_mT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.59") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %.0.lcssa.i.i.i, ptr noundef nonnull align 8 dead_on_return %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESN_SN_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.q = load ptr, ptr %4, align 8, !tbaa !205
  %i.r = icmp eq ptr %i.m, %i.q
  %i.s = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1, i32 noundef 347, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_4listIS3_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.r)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.b, align 8, !tbaa !141
  %i.u = icmp eq i64 %i.t, 8
  %i.v = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 348, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_4listIS3_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.u)
          to label %.preheader64 unwind label %bb.i ; 0 uses

.preheader64:                                     ; preds = %bb.f
  %.not = icmp eq i64 %.03879, 0
  %.pre85 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  br i1 %.not, label %.preheader63, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader64
  %i.w = add i32 %.pre85, 1
  br label %.lr.ph

.preheader63:                                     ; preds = %bb.j, %.preheader64
  %i.x = phi i32 [ %.pre85, %.preheader64 ], [ %i.am, %bb.j ]
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.z = load i32, ptr %i.m, align 4, !tbaa !82
  %i.aa = icmp eq i32 %i.z, 100
  %i.ab = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_4listIS3_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.aa)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.g:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESN_SN_.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.h:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.i:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %i.af = phi i32 [ %i.al, %bb.j ], [ %i.w, %.lr.ph.preheader ]
  %.03473 = phi i64 [ %i.an, %bb.j ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03473
  %i.ah = trunc nuw nsw i64 %.03473 to i32
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !82
  %i.aj = icmp eq i32 %i.ai, %i.ah
  %i.ak = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 350, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_4listIS3_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.aj)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %.lr.ph
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.an = add nuw nsw i64 %.03473, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %.03879
  br i1 %exitcond.not, label %.preheader63, label %.lr.ph, !llvm.loop !2354

bb.k:                                             ; preds = %.lr.ph
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.r

.lr.ph78:                                         ; preds = %.preheader
  %i.ar = trunc nuw nsw i64 %.03879 to i32
  br label %bb.o

bb.l:                                             ; preds = %.preheader63
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.as = load i32, ptr %gep.1, align 4, !tbaa !82
  %i.at = icmp eq i32 %i.as, 101
  %i.au = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_4listIS3_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.at)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.av = load i32, ptr %gep.2, align 4, !tbaa !82
  %i.aw = icmp eq i32 %i.av, 102
  %i.ax = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_4listIS3_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.aw)
          to label %.preheader unwind label %bb.n ; 0 uses

.preheader:                                       ; preds = %bb.m
  %i.ay = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not80 = icmp eq i64 %.03879, 5
  br i1 %.not80, label %._crit_edge, label %.lr.ph78

bb.n:                                             ; preds = %bb.m, %bb.l, %.preheader63
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.r

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = phi i32 [ %i.az, %.preheader ], [ %i.bx, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !141 ; 7 uses
  %.not3.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i43.preheader

.lr.ph.i.i43.preheader:                           ; preds = %._crit_edge
  %min.iters.check = icmp ult i64 %i.bd, 8
  br i1 %min.iters.check, label %.lr.ph.i.i43.preheader111, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i43.preheader
  %n.vec = and i64 %i.bd, -8                      ; 3 uses
  %i.be = and i64 %i.bd, 7
  %i.bf = shl i64 %n.vec, 2
  %i.bg = getelementptr i8, ptr %3, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %3, i64 %i.bh ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.bi, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !2355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i43.preheader111

.lr.ph.i.i43.preheader111:                        ; preds = %.lr.ph.i.i43.preheader, %middle.block
  %.05.i.i44.ph = phi i64 [ %i.bd, %.lr.ph.i.i43.preheader ], [ %i.be, %middle.block ]
  %storemerge4.i.i.ph = phi ptr [ %3, %.lr.ph.i.i43.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph.i.i43

.lr.ph.i.i43:                                     ; preds = %.lr.ph.i.i43.preheader111, %.lr.ph.i.i43
  %.05.i.i44 = phi i64 [ %i.bk, %.lr.ph.i.i43 ], [ %.05.i.i44.ph, %.lr.ph.i.i43.preheader111 ]
  %storemerge4.i.i = phi ptr [ %i.bl, %.lr.ph.i.i43 ], [ %storemerge4.i.i.ph, %.lr.ph.i.i43.preheader111 ] ; 2 uses
  %i.bk = add i64 %.05.i.i44, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !82
  %i.bl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i43, !llvm.loop !2356

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i: ; preds = %.lr.ph.i.i43, %middle.block
  %i.bm = trunc i64 %i.bd to i32
  %i.bn = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.bm
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %._crit_edge, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bo = add nuw nsw i64 %.03879, 1              ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond84.not = icmp eq i64 %i.bo, 6
  br i1 %exitcond84.not, label %bb.b, label %bb.c, !llvm.loop !2357

bb.o:                                             ; preds = %.lr.ph78, %bb.p
  %i.bp = phi i32 [ %i.ay, %.lr.ph78 ], [ %i.bw, %bb.p ]
  %.077 = phi i64 [ 0, %.lr.ph78 ], [ %i.by, %bb.p ] ; 3 uses
end_hunk_18
