Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_vector_test?download=true
inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 210
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 310
begin_hunk_0_@_Z23test_copy_and_assign_ndIiLm10EEvRKT_:bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 20
  %.sroa.080.0.ptr.5 = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  %i.dw = load i32, ptr %.sroa.080.0.ptr.5, align 4, !tbaa !41
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !41
  %i.dy = icmp eq i32 %i.dw, %i.dx
  %i.dz = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_, i1 noundef zeroext %i.dy)
          to label %.noexc60.5 unwind label %_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc60.5:                                       ; preds = %bb.ae
  %.not4.i57.6 = icmp eq i64 %storemerge.i.i, 6
  br i1 %.not4.i57.6, label %_ZN5boost9container6vectorIivvED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %.noexc60.5
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.080.0.ptr.6 = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.eb = load i32, ptr %.sroa.080.0.ptr.6, align 4, !tbaa !41
  %i.ec = load i32, ptr %i.ea, align 8, !tbaa !41
  %i.ed = icmp eq i32 %i.eb, %i.ec
  %i.ee = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_, i1 noundef zeroext %i.ed)
          to label %.noexc60.6 unwind label %_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc60.6:                                       ; preds = %bb.af
  %.not4.i57.7 = icmp eq i64 %storemerge.i.i, 7
  br i1 %.not4.i57.7, label %_ZN5boost9container6vectorIivvED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %.noexc60.6
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 28
  %.sroa.080.0.ptr.7 = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  %i.eg = load i32, ptr %.sroa.080.0.ptr.7, align 4, !tbaa !41
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !41
  %i.ei = icmp eq i32 %i.eg, %i.eh
  %i.ej = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_, i1 noundef zeroext %i.ei)
          to label %.noexc60.7 unwind label %_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc60.7:                                       ; preds = %bb.ag
  %.not4.i57.8 = icmp eq i64 %storemerge.i.i, 8
  br i1 %.not4.i57.8, label %_ZN5boost9container6vectorIivvED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %.noexc60.7
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.080.0.ptr.8 = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.el = load i32, ptr %.sroa.080.0.ptr.8, align 4, !tbaa !41
  %i.em = load i32, ptr %i.ek, align 8, !tbaa !41
  %i.en = icmp eq i32 %i.el, %i.em
  %i.eo = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_, i1 noundef zeroext %i.en)
          to label %.noexc60.8 unwind label %_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc60.8:                                       ; preds = %bb.ah
  %.not4.i57.9 = icmp eq i64 %storemerge.i.i, 9
  br i1 %.not4.i57.9, label %_ZN5boost9container6vectorIivvED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %.noexc60.8
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 36
  %.sroa.080.0.ptr.9 = getelementptr inbounds nuw i8, ptr %i.bv, i64 36
  %i.eq = load i32, ptr %.sroa.080.0.ptr.9, align 4, !tbaa !41
  %i.er = load i32, ptr %i.ep, align 4, !tbaa !41
  %i.es = icmp eq i32 %i.eq, %i.er
  %i.et = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_, i1 noundef zeroext %i.es)
          to label %_ZN5boost9container6vectorIivvED2Ev.exit unwind label %_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN5boost9container6vectorIivvED2Ev.exit:         ; preds = %bb.ai, %.noexc60.8, %.noexc60.7, %.noexc60.6, %.noexc60.5, %.noexc60.4, %.noexc60.3, %.noexc60.2, %.noexc60.1, %.noexc60, %.lr.ph.i56.preheader
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 40) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.eu = load ptr, ptr %i.c, align 8, !tbaa !105, !noalias !334 ; 2 uses
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
  br i1 %.not.i.i63, label %_ZN5boost9container6vectorIivvED2Ev.exit64, label %bb.aj

bb.aj:                                            ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit
  %i.ex = load ptr, ptr %3, align 8, !tbaa !115
  %i.ey = shl i64 %i.ew, 2
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.ey) #25
  br label %_ZN5boost9container6vectorIivvED2Ev.exit64

_ZN5boost9container6vectorIivvED2Ev.exit64:       ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.c, %bb.k, %_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.al

.loopexit.split-lp137.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.o, %bb.n, %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_.exit
  %lpad.loopexit.split-lp220 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.al

bb.ak:                                            ; preds = %bb.r, %bb.q, %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_.exit34
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_.exit38, %bb.t, %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_.exit47
  %lpad.loopexit.split-lp218 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.y, %bb.x
  %lpad.loopexit.split-lp153 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 40) #25
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit.split-lp.loopexit.split-lp
  %.pn13.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp153, %_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp218, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp, %bb.ak, %.loopexit.split-lp137.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp147.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn17 = phi { ptr, i32 } [ %lpad.loopexit.split-lp225, %.loopexit.split-lp147.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn13.pn.pn, %.loopexit.split-lp ], [ %i.ez, %bb.ak ], [ %lpad.loopexit.split-lp220, %.loopexit.split-lp137.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp142.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !105, !noalias !335 ; 2 uses
  %.not8.i.i.i67 = icmp eq ptr %i.fa, %i.c
  br i1 %.not8.i.i.i67, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit71, label %.lr.ph.i.i.i68

.lr.ph.i.i.i68:                                   ; preds = %bb.al, %.lr.ph.i.i.i68
  %.sroa.04.09.i.i.i69 = phi ptr [ %i.fb, %.lr.ph.i.i.i68 ], [ %i.fa, %bb.al ] ; 2 uses
  %i.fb = load ptr, ptr %.sroa.04.09.i.i.i69, align 8, !tbaa !105 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i.i69, i64 noundef 24) #25
  %.not.i.i.i70 = icmp eq ptr %i.fb, %i.c
  br i1 %.not.i.i.i70, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit71, label %.lr.ph.i.i.i68, !llvm.loop !6

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit71: ; preds = %.lr.ph.i.i.i68, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.fc = load i64, ptr %i.f, align 8, !tbaa !110 ; 2 uses
  %.not.i.i72 = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i72, label %_ZN5boost9container6vectorIivvED2Ev.exit73, label %bb.am

bb.am:                                            ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit71
  %i.fd = load ptr, ptr %3, align 8, !tbaa !115
  %i.fe = shl i64 %i.fc, 2
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fe) #25
  br label %_ZN5boost9container6vectorIivvED2Ev.exit73

_ZN5boost9container6vectorIivvED2Ev.exit73:       ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit71, %bb.am
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
          to label %.noexc unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.b
  %.not17.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not17.i.i.i, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.h = shl nuw nsw i64 %i.f, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %6, ptr nonnull align 8 %2, i64 range(i64 0, 41) %i.h, i1 false), !tbaa !41
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
          to label %.noexc19 unwind label %.loopexit.split-lp154.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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
          to label %.noexc21 unwind label %.loopexit.split-lp154.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backERKS2_.exit

_ZN5boost9container6vectorI8value_ndvvE9push_backERKS2_.exit: ; preds = %.noexc21, %bb.g
  %i.t = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.i unwind label %.loopexit.split-lp154.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

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
  br i1 %exitcond.not, label %bb.b, label %bb.d, !llvm.loop !336

.loopexit.split-lp154.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN5boost9container6vectorI8value_ndvvE9push_backERKS2_.exit, %bb.h, %bb.e
  %lpad.loopexit.split-lp230 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ai

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.preheader, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.ab = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 241, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.j unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.j:                                             ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !354 ; 3 uses
  %.idx = shl nsw i64 %i.ac, 2
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %.idx
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.f
  %i.af = icmp eq i64 %i.ac, %i.f
  %i.ag = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.af)
          to label %.noexc24 unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc24:                                         ; preds = %bb.j
  %.not5.i = icmp eq i64 %i.ac, 0
  br i1 %.not5.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc24, %.noexc25
  %.sroa.0119.0 = phi ptr [ %i.am, %.noexc25 ], [ %6, %.noexc24 ] ; 3 uses
  %.sroa.0124.0 = phi ptr [ %i.al, %.noexc25 ], [ %2, %.noexc24 ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.0119.0, %i.ae
  br i1 %.not4.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.ah = load i32, ptr %.sroa.0124.0, align 4, !tbaa !77
  %i.ai = load i32, ptr %.sroa.0119.0, align 4, !tbaa !77
  %i.aj = icmp eq i32 %i.ah, %i.ai
  %i.ak = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.aj)
          to label %.noexc25 unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc25:                                         ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0124.0, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0119.0, i64 4
  %.not.i23 = icmp eq ptr %i.al, %i.ad
  br i1 %.not.i23, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit, label %.lr.ph.i, !llvm.loop !339

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit: ; preds = %.noexc25, %.lr.ph.i, %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.an = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.1, i32 noundef 247, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.l unwind label %.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.l:                                             ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !120 ; 4 uses
  %.not201 = icmp eq i64 %i.ao, 0
  br i1 %.not201, label %.loopexit147, label %_ZN5boost9container18copy_n_source_destIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i

_ZN5boost9container18copy_n_source_destIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i: ; preds = %bb.l
  %i.ap = shl i64 %i.ao, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %2, i64 %i.ap, i1 false), !tbaa !41
  br label %.loopexit147

.loopexit147:                                     ; preds = %bb.l, %_ZN5boost9container18copy_n_source_destIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i
  %i.aq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 249, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.m unwind label %.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.m:                                             ; preds = %.loopexit147
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !355 ; 3 uses
  %.idx134 = shl nsw i64 %i.ar, 2
  %i.as = getelementptr inbounds i8, ptr %2, i64 %.idx134
  %i.at = getelementptr inbounds [4 x i8], ptr %7, i64 %i.ao
  %i.au = icmp eq i64 %i.ar, %i.ao
  %i.av = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.au)
          to label %.noexc32 unwind label %.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc32:                                         ; preds = %bb.m
  %.not5.i26 = icmp eq i64 %i.ar, 0
  br i1 %.not5.i26, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit34, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.noexc32, %.noexc33
  %.sroa.0108.0 = phi ptr [ %i.bb, %.noexc33 ], [ %7, %.noexc32 ] ; 3 uses
  %.sroa.0113.0 = phi ptr [ %i.ba, %.noexc33 ], [ %2, %.noexc32 ] ; 2 uses
  %.not4.i30 = icmp eq ptr %.sroa.0108.0, %i.at
  br i1 %.not4.i30, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit34, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i29
  %i.aw = load i32, ptr %.sroa.0113.0, align 4, !tbaa !77
  %i.ax = load i32, ptr %.sroa.0108.0, align 4, !tbaa !77
  %i.ay = icmp eq i32 %i.aw, %i.ax
  %i.az = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.ay)
          to label %.noexc33 unwind label %.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc33:                                         ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0113.0, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0108.0, i64 4
  %.not.i31 = icmp eq ptr %i.ba, %i.as
  br i1 %.not.i31, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit34, label %.lr.ph.i29, !llvm.loop !339

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit34: ; preds = %.noexc33, %.lr.ph.i29, %.noexc32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  invoke void @_Z20test_copy_and_assignI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.o unwind label %bb.ah

bb.o:                                             ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit34
  invoke void @_Z20test_copy_and_assignI8value_ndLm10EN5boost9container6vectorIS0_vvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.p unwind label %bb.ah

bb.p:                                             ; preds = %bb.o
  invoke void @_Z20test_copy_and_assignI8value_ndLm10EN5boost9container4listIS0_vEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.q unwind label %bb.ah

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !120 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !118
  %i.be = icmp ugt i64 %i.bc, 10
  br i1 %i.be, label %bb.r, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.r
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35: ; preds = %bb.q
  %.not17.i.i.i36 = icmp eq i64 %i.bc, 0          ; 2 uses
  br i1 %.not17.i.i.i36, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit43, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35
  %i.bf = shl nuw nsw i64 %i.bc, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %8, ptr nonnull align 8 %2, i64 range(i64 0, 41) %i.bf, i1 false), !tbaa !41
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit43

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit43: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35, %.lr.ph.i.i.i37.preheader
  %.idx137.pre-phi = phi i64 [ %i.bf, %.lr.ph.i.i.i37.preheader ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %.idx137.pre-phi
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.bc
  %i.bi = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext true)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc50:                                         ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit43
  br i1 %.not17.i.i.i36, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit52, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.noexc50, %.noexc51
  %.sroa.0102.0 = phi ptr [ %i.bn, %.noexc51 ], [ %2, %.noexc50 ] ; 2 uses
  %.sroa.097.0 = phi ptr [ %i.bo, %.noexc51 ], [ %8, %.noexc50 ] ; 3 uses
  %.not4.i48 = icmp eq ptr %.sroa.097.0, %i.bh
  br i1 %.not4.i48, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit52, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i47
  %i.bj = load i32, ptr %.sroa.0102.0, align 4, !tbaa !77
  %i.bk = load i32, ptr %.sroa.097.0, align 4, !tbaa !77
  %i.bl = icmp eq i32 %i.bj, %i.bk
  %i.bm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.bl)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc51:                                         ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0102.0, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.097.0, i64 4
  %.not.i49 = icmp eq ptr %i.bn, %i.bg
  br i1 %.not.i49, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit52, label %.lr.ph.i47, !llvm.loop !339

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit52: ; preds = %.noexc51, %.lr.ph.i47, %.noexc50
  %i.bp = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 16 uses

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
  %i.bw = load i64, ptr %i.bd, align 8, !tbaa !120, !noalias !356 ; 5 uses
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
  br i1 %or.cond.i.i, label %.lr.ph.i.i55, label %.critedge.i.i, !llvm.loop !344

.critedge.i.i:                                    ; preds = %.lr.ph.i.i55
  br i1 %i.ca, label %.critedge.i.i.thread, label %bb.t

bb.t:                                             ; preds = %.critedge.i.i
  %i.cc = ptrtoint ptr %i.bx to i64
  %i.cd = ptrtoint ptr %i.by to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2
  %i.cg = sub i64 %i.bw, %i.cf
  br label %bb.v

.critedge.i.i.thread:                             ; preds = %.noexc53, %.critedge.i.i
  %.sroa.3.0.lcssa.i.i130 = phi i64 [ %i.bz, %.critedge.i.i ], [ 10, %.noexc53 ] ; 7 uses
  %i.ch = sub i64 10, %i.bw
  %.not.i.i.i.i = icmp ugt i64 %.sroa.3.0.lcssa.i.i130, %i.ch
  br i1 %.not.i.i.i.i, label %bb.u, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %min.iters.check = icmp ult i64 %.sroa.3.0.lcssa.i.i130, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader220, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.sroa.3.0.lcssa.i.i130, -4    ; 3 uses
  %i.ci = and i64 %.sroa.3.0.lcssa.i.i130, 3
  %i.cj = shl i64 %n.vec, 2
  %i.ck = getelementptr i8, ptr %i.bx, i64 %i.cj
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i32> %broadcast.splat, ptr %i.bx, align 4, !tbaa !41, !noalias !357
  %i.cl = icmp eq i64 %n.vec, 4
  br i1 %i.cl, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %i.bx, i64 16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep.1) ]
  store <4 x i32> %broadcast.splat, ptr %next.gep.1, align 4, !tbaa !41, !noalias !357
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %.sroa.3.0.lcssa.i.i130, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_17constant_iteratorIS2_EEEENS0_12vec_iteratorIPS2_Lb0EEENSA_ISB_Lb1EEET_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS3_17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESM_E4typeE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader220

.lr.ph.i.i.i.i.i.i.i.i.preheader220:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.022.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.3.0.lcssa.i.i130, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ci, %middle.block ]
  %.01821.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader220, %.lr.ph.i.i.i.i.i.i.i.i
  %.022.i.i.i.i.i.i.i.i = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.022.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader220 ]
  %.01821.i.i.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.01821.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader220 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i.i.i.i.i.i) ]
  store i32 %.pre.i.i, ptr %.01821.i.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !357
  %i.cm = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.i.i.i.i.i, i64 4
  %i.cn = add i64 %.022.i.i.i.i.i.i.i.i, -1       ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_17constant_iteratorIS2_EEEENS0_12vec_iteratorIPS2_Lb0EEENSA_ISB_Lb1EEET_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS3_17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESM_E4typeE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !349

bb.u:                                             ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc56 unwind label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %bb.u
  unreachable

_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_17constant_iteratorIS2_EEEENS0_12vec_iteratorIPS2_Lb0EEENSA_ISB_Lb1EEET_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS3_17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESM_E4typeE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block
  %i.co = add i64 %.sroa.3.0.lcssa.i.i130, %i.bw
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_17constant_iteratorIS2_EEEENS0_12vec_iteratorIPS2_Lb0EEENSA_ISB_Lb1EEET_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS3_17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESM_E4typeE.exit.i.i, %bb.t
  %storemerge.i.i = phi i64 [ %i.co, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_17constant_iteratorIS2_EEEENS0_12vec_iteratorIPS2_Lb0EEENSA_ISB_Lb1EEET_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS3_17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESM_E4typeE.exit.i.i ], [ %i.cg, %bb.t ] ; 12 uses
  store i64 %storemerge.i.i, ptr %i.bd, align 8, !tbaa !118
  %i.cp = icmp eq i64 %storemerge.i.i, 10
  %i.cq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.cp)
          to label %.lr.ph.i60.preheader unwind label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph.i60.preheader:                             ; preds = %bb.v
  %.not4.i61 = icmp eq i64 %storemerge.i.i, 0
  br i1 %.not4.i61, label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i60.preheader
  %i.cr = load i32, ptr %i.bp, align 4, !tbaa !77
  %i.cs = load i32, ptr %8, align 8, !tbaa !77
  %i.ct = icmp eq i32 %i.cr, %i.cs
  %i.cu = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.ct)
          to label %.noexc64 unwind label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc64:                                         ; preds = %bb.w
  %.not4.i61.1 = icmp eq i64 %storemerge.i.i, 1
  br i1 %.not4.i61.1, label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.noexc64
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.cw = load i32, ptr %i.bq, align 4, !tbaa !77
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !77
  %i.cy = icmp eq i32 %i.cw, %i.cx
  %i.cz = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.cy)
          to label %.noexc64.1 unwind label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc64.1:                                       ; preds = %bb.x
  %.not4.i61.2 = icmp eq i64 %storemerge.i.i, 2
  br i1 %.not4.i61.2, label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %.noexc64.1
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.086.0.ptr.2 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.db = load i32, ptr %.sroa.086.0.ptr.2, align 4, !tbaa !77
  %i.dc = load i32, ptr %i.da, align 8, !tbaa !77
  %i.dd = icmp eq i32 %i.db, %i.dc
  %i.de = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.dd)
          to label %.noexc64.2 unwind label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc64.2:                                       ; preds = %bb.y
  %.not4.i61.3 = icmp eq i64 %storemerge.i.i, 3
  br i1 %.not4.i61.3, label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %.noexc64.2
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 12
  %.sroa.086.0.ptr.3 = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.dg = load i32, ptr %.sroa.086.0.ptr.3, align 4, !tbaa !77
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !77
  %i.di = icmp eq i32 %i.dg, %i.dh
  %i.dj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.di)
          to label %.noexc64.3 unwind label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc64.3:                                       ; preds = %bb.z
  %.not4.i61.4 = icmp eq i64 %storemerge.i.i, 4
  br i1 %.not4.i61.4, label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %.noexc64.3
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.086.0.ptr.4 = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.dl = load i32, ptr %.sroa.086.0.ptr.4, align 4, !tbaa !77
  %i.dm = load i32, ptr %i.dk, align 8, !tbaa !77
  %i.dn = icmp eq i32 %i.dl, %i.dm
  %i.do = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.dn)
          to label %.noexc64.4 unwind label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit.split-lp.loopexit.split-lp ; 0 uses
end_hunk_0
begin_hunk_1_@_Z23test_copy_and_assign_ndI14counting_valueLm10EEvRKT_:bb.a
  %_ZZN14counting_value1cEvE2co.promoted.i.i84 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ki = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i84, %i.kh
  store i64 %i.ki, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i85

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i85: ; preds = %.lr.ph.preheader.i.i83, %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit
  %i.kj = load i64, ptr %i.f, align 8, !tbaa !133 ; 2 uses
  %.not.i.i86 = icmp eq i64 %i.kj, 0
  br i1 %.not.i.i86, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit87, label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i85
  %i.kk = load ptr, ptr %3, align 8, !tbaa !136
  %i.kl = shl i64 %i.kj, 3
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.kl) #25
  br label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit87

_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit87: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i85, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.km = load i64, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i88 = icmp eq i64 %i.km, 0
  br i1 %.not3.i.i88, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit91, label %.lr.ph.preheader.i.i89

.lr.ph.preheader.i.i89:                           ; preds = %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit87
  %_ZZN14counting_value1cEvE2co.promoted.i.i90 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.kn = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i90, %i.km
  store i64 %i.kn, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit91

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit91: ; preds = %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit87, %.lr.ph.preheader.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.ah:                                            ; preds = %bb.c
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95

.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.j, %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit
  %lpad.loopexit.split-lp283 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kp = load i64, ptr %i.h, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i92 = icmp eq i64 %i.kp, 0
  br i1 %.not3.i.i92, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95, label %.lr.ph.preheader.i.i93

.lr.ph.preheader.i.i93:                           ; preds = %.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %_ZZN14counting_value1cEvE2co.promoted.i.i94 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.kq = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i94, %i.kp
  store i64 %i.kq, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95: ; preds = %.lr.ph.preheader.i.i93, %.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.ko, %bb.ah ], [ %lpad.loopexit.split-lp283, %.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp283, %.lr.ph.preheader.i.i93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.am

.loopexit.split-lp170.loopexit:                   ; preds = %bb.n
  %lpad.loopexit191 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp170

.loopexit.split-lp170.loopexit.split-lp:          ; preds = %bb.m, %_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.kr = phi i64 [ %i.cj, %bb.m ], [ %i.cj, %_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i ], [ 0, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit ]
  %lpad.loopexit.split-lp192 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp170

.loopexit.split-lp170:                            ; preds = %.loopexit.split-lp170.loopexit.split-lp, %.loopexit.split-lp170.loopexit
  %i.ks = phi i64 [ %i.cj, %.loopexit.split-lp170.loopexit ], [ %i.kr, %.loopexit.split-lp170.loopexit.split-lp ] ; 2 uses
  %lpad.phi193 = phi { ptr, i32 } [ %lpad.loopexit191, %.loopexit.split-lp170.loopexit ], [ %lpad.loopexit.split-lp192, %.loopexit.split-lp170.loopexit.split-lp ]
  %.not3.i.i96 = icmp eq i64 %i.ks, 0
  br i1 %.not3.i.i96, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99, label %.lr.ph.preheader.i.i97

.lr.ph.preheader.i.i97:                           ; preds = %.loopexit.split-lp170
  %_ZZN14counting_value1cEvE2co.promoted.i.i98 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.kt = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i98, %i.ks
  store i64 %i.kt, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99: ; preds = %.loopexit.split-lp170, %.lr.ph.preheader.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.am

bb.ai:                                            ; preds = %bb.p, %bb.o, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit38
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %bb.r
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103

.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit49
  %lpad.loopexit.split-lp280 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp165

bb.ak:                                            ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.v, %bb.u
  %lpad.loopexit.split-lp274 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9container6vectorI14counting_valuevvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ak
  %.pn13 = phi { ptr, i32 } [ %lpad.loopexit.split-lp274, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.kw, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.loopexit.split-lp165

.loopexit.split-lp165:                            ; preds = %.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.al
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %bb.al ], [ %lpad.loopexit.split-lp280, %.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.kx = load i64, ptr %i.dn, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i100 = icmp eq i64 %i.kx, 0
  br i1 %.not3.i.i100, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103, label %.lr.ph.preheader.i.i101

.lr.ph.preheader.i.i101:                          ; preds = %.loopexit.split-lp165
  %_ZZN14counting_value1cEvE2co.promoted.i.i102 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ky = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i102, %i.kx
  store i64 %i.ky, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103: ; preds = %.lr.ph.preheader.i.i101, %.loopexit.split-lp165, %bb.aj
  %.pn13.pn.pn = phi { ptr, i32 } [ %i.kv, %bb.aj ], [ %.pn13.pn, %.loopexit.split-lp165 ], [ %.pn13.pn, %.lr.ph.preheader.i.i101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.am

bb.am:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103, %bb.ai, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95, %.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn17 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn13.pn.pn, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103 ], [ %i.ku, %bb.ai ], [ %lpad.phi193, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99 ], [ %.pn, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95 ]
  call void @_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN5boost9container6vectorI14counting_valuevvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.kz = load i64, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i104 = icmp eq i64 %i.kz, 0
  br i1 %.not3.i.i104, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit107, label %.lr.ph.preheader.i.i105

.lr.ph.preheader.i.i105:                          ; preds = %bb.am
  %_ZZN14counting_value1cEvE2co.promoted.i.i106 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.la = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i106, %i.kz
  store i64 %i.la, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit107

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit107: ; preds = %bb.am, %.lr.ph.preheader.i.i105
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
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.b
  %.not17.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not17.i.i.i, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.i = shl nuw nsw i64 %i.f, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %6, ptr nonnull align 8 %2, i64 range(i64 0, 41) %i.i, i1 false), !tbaa !82
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
          to label %.noexc19 unwind label %.loopexit.split-lp224.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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
          to label %.noexc21 unwind label %.loopexit.split-lp224.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backERKS3_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backERKS3_.exit: ; preds = %.noexc21, %bb.g
  %i.ab = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.i unwind label %.loopexit.split-lp224.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

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
  br i1 %exitcond.not, label %bb.b, label %bb.d, !llvm.loop !384

.loopexit.split-lp224.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backERKS3_.exit, %bb.h, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.am

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit: ; preds = %.lr.ph.i.preheader.i.i, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.am = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 241, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.j unwind label %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.j:                                             ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit
  %i.an = load i64, ptr %i.a, align 8, !tbaa !141, !noalias !424 ; 3 uses
  %.idx = shl nsw i64 %i.an, 2
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %.idx
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.f
  %i.aq = icmp eq i64 %i.an, %i.f
  %i.ar = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_, i1 noundef zeroext %i.aq)
          to label %.noexc24 unwind label %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc24:                                         ; preds = %bb.j
  %.not5.i = icmp eq i64 %i.an, 0
  br i1 %.not5.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc24, %.noexc25
  %.sroa.0184.0 = phi ptr [ %i.ax, %.noexc25 ], [ %6, %.noexc24 ] ; 3 uses
  %.sroa.0189.0 = phi ptr [ %i.aw, %.noexc25 ], [ %2, %.noexc24 ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.0184.0, %i.ap
  br i1 %.not4.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = load i32, ptr %.sroa.0189.0, align 4, !tbaa !82
  %i.at = load i32, ptr %.sroa.0184.0, align 4, !tbaa !82
  %i.au = icmp eq i32 %i.as, %i.at
  %i.av = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_, i1 noundef zeroext %i.au)
          to label %.noexc25 unwind label %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc25:                                         ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0189.0, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0184.0, i64 4
  %.not.i23 = icmp eq ptr %i.aw, %i.ao
  br i1 %.not.i23, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit, label %.lr.ph.i, !llvm.loop !11

_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit: ; preds = %.noexc25, %.lr.ph.i, %.noexc24
  %i.ay = load i64, ptr %i.g, align 8, !tbaa !141 ; 7 uses
  %.not3.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check304 = icmp ult i64 %i.ay, 8
  br i1 %min.iters.check304, label %.lr.ph.i.i.preheader, label %vector.ph305

vector.ph305:                                     ; preds = %.lr.ph.i.preheader.i
  %n.vec306 = and i64 %i.ay, -8                   ; 3 uses
  %i.az = and i64 %i.ay, 7
  %i.ba = shl i64 %n.vec306, 2
  %i.bb = getelementptr i8, ptr %6, i64 %i.ba
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph305
  %index308 = phi i64 [ 0, %vector.ph305 ], [ %index.next310, %vector.body307 ] ; 2 uses
  %i.bc = shl i64 %index308, 2
  %next.gep309 = getelementptr i8, ptr %6, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep309, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep309, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.bd, align 8, !tbaa !82
  %index.next310 = add nuw i64 %index308, 8       ; 2 uses
  %i.be = icmp eq i64 %index.next310, %n.vec306
  br i1 %i.be, label %middle.block311, label %vector.body307, !llvm.loop !387

middle.block311:                                  ; preds = %vector.body307
  %cmp.n312 = icmp eq i64 %i.ay, %n.vec306
  br i1 %cmp.n312, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block311
  %.05.i.i.ph = phi i64 [ %i.ay, %.lr.ph.i.preheader.i ], [ %i.az, %middle.block311 ]
  %storemerge4.i.i.ph = phi ptr [ %6, %.lr.ph.i.preheader.i ], [ %i.bb, %middle.block311 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.bf, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bf = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !82
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !388

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block311
  %i.bh = trunc i64 %i.ay to i32
  %i.bi = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.bh
  store i32 %i.bi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.bj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.1, i32 noundef 247, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.l unwind label %.loopexit.split-lp212.loopexit.split-lp ; 0 uses

bb.l:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !141 ; 19 uses
  %.not280 = icmp eq i64 %i.bk, 0
  br i1 %.not280, label %.loopexit216, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i

_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i: ; preds = %bb.l
  %.pre13.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.bl = shl nuw i64 %i.bk, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %2, i64 %i.bl, i1 false), !tbaa !82
  %min.iters.check316 = icmp ult i64 %i.bk, 8
  br i1 %min.iters.check316, label %.lr.ph.i14.i.i.i.i.preheader, label %vector.ph317

vector.ph317:                                     ; preds = %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i
  %n.vec318 = and i64 %i.bk, -8                   ; 2 uses
  %i.bm = and i64 %i.bk, 7
  %i.bn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre13.i.i.i, i64 0
  br label %vector.body319

vector.body319:                                   ; preds = %vector.body319, %vector.ph317
  %index320 = phi i64 [ 0, %vector.ph317 ], [ %index.next322, %vector.body319 ]
  %vec.phi = phi <4 x i32> [ %i.bn, %vector.ph317 ], [ %i.bo, %vector.body319 ]
  %vec.phi321 = phi <4 x i32> [ zeroinitializer, %vector.ph317 ], [ %i.bp, %vector.body319 ]
  %i.bo = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.bp = add <4 x i32> %vec.phi321, splat (i32 1) ; 2 uses
  %index.next322 = add nuw i64 %index320, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next322, %n.vec318
  br i1 %i.bq, label %middle.block323, label %vector.body319, !llvm.loop !389

middle.block323:                                  ; preds = %vector.body319
  %bin.rdx = add <4 x i32> %i.bp, %i.bo
  %i.br = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n324 = icmp eq i64 %i.bk, %n.vec318
  br i1 %cmp.n324, label %.loopexit216.loopexit, label %.lr.ph.i14.i.i.i.i.preheader

.lr.ph.i14.i.i.i.i.preheader:                     ; preds = %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i, %middle.block323
  %.ph437 = phi i32 [ %.pre13.i.i.i, %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i ], [ %i.br, %middle.block323 ]
  %.020.i.i.i.i.i.ph = phi i64 [ %i.bk, %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i ], [ %i.bm, %middle.block323 ]
  br label %.lr.ph.i14.i.i.i.i

.lr.ph.i14.i.i.i.i:                               ; preds = %.lr.ph.i14.i.i.i.i.preheader, %.lr.ph.i14.i.i.i.i
  %i.bs = phi i32 [ %i.bu, %.lr.ph.i14.i.i.i.i ], [ %.ph437, %.lr.ph.i14.i.i.i.i.preheader ]
  %.020.i.i.i.i.i = phi i64 [ %i.bt, %.lr.ph.i14.i.i.i.i ], [ %.020.i.i.i.i.i.ph, %.lr.ph.i14.i.i.i.i.preheader ]
  %i.bt = add i64 %.020.i.i.i.i.i, -1             ; 2 uses
  %i.bu = add i32 %i.bs, 1                        ; 2 uses
  %.not.i15.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i15.i.i.i.i, label %.loopexit216.loopexit, label %.lr.ph.i14.i.i.i.i, !llvm.loop !390

.loopexit216.loopexit:                            ; preds = %.lr.ph.i14.i.i.i.i, %middle.block323
  %.lcssa300 = phi i32 [ %i.br, %middle.block323 ], [ %i.bu, %.lr.ph.i14.i.i.i.i ]
  store i32 %.lcssa300, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.loopexit216

.loopexit216:                                     ; preds = %.loopexit216.loopexit, %bb.l
  %i.bv = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 249, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.m unwind label %.loopexit.split-lp212.loopexit.split-lp ; 0 uses

bb.m:                                             ; preds = %.loopexit216
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !141, !noalias !425 ; 3 uses
  %.idx199 = shl nsw i64 %i.bw, 2
  %i.bx = getelementptr inbounds i8, ptr %2, i64 %.idx199
  %i.by = getelementptr inbounds [4 x i8], ptr %7, i64 %i.bk
  %i.bz = icmp eq i64 %i.bw, %i.bk
  %i.ca = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_, i1 noundef zeroext %i.bz)
          to label %.noexc33 unwind label %.loopexit.split-lp212.loopexit.split-lp ; 0 uses

.noexc33:                                         ; preds = %bb.m
  %.not5.i27 = icmp eq i64 %i.bw, 0
  br i1 %.not5.i27, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit35, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %.noexc33, %.noexc34
  %.sroa.0173.0 = phi ptr [ %i.cg, %.noexc34 ], [ %7, %.noexc33 ] ; 3 uses
  %.sroa.0178.0 = phi ptr [ %i.cf, %.noexc34 ], [ %2, %.noexc33 ] ; 2 uses
  %.not4.i31 = icmp eq ptr %.sroa.0173.0, %i.by
  br i1 %.not4.i31, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit35, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i30
  %i.cb = load i32, ptr %.sroa.0178.0, align 4, !tbaa !82
  %i.cc = load i32, ptr %.sroa.0173.0, align 4, !tbaa !82
  %i.cd = icmp eq i32 %i.cb, %i.cc
  %i.ce = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_, i1 noundef zeroext %i.cd)
          to label %.noexc34 unwind label %.loopexit.split-lp212.loopexit ; 0 uses

.noexc34:                                         ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0178.0, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0173.0, i64 4
  %.not.i32 = icmp eq ptr %i.cf, %i.bx
  br i1 %.not.i32, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit35, label %.lr.ph.i30, !llvm.loop !11

_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit35: ; preds = %.noexc34, %.lr.ph.i30, %.noexc33
  %.not3.i.i36 = icmp eq i64 %i.bk, 0
  br i1 %.not3.i.i36, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit44, label %.lr.ph.i.preheader.i37

.lr.ph.i.preheader.i37:                           ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit35
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i38 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check339 = icmp ult i64 %i.bk, 8
  br i1 %min.iters.check339, label %.lr.ph.i.i39.preheader, label %vector.ph340

vector.ph340:                                     ; preds = %.lr.ph.i.preheader.i37
  %n.vec341 = and i64 %i.bk, -8                   ; 3 uses
  %i.ch = and i64 %i.bk, 7
  %i.ci = shl i64 %n.vec341, 2
  %i.cj = getelementptr i8, ptr %7, i64 %i.ci
  br label %vector.body342

vector.body342:                                   ; preds = %vector.body342, %vector.ph340
  %index343 = phi i64 [ 0, %vector.ph340 ], [ %index.next345, %vector.body342 ] ; 2 uses
  %i.ck = shl i64 %index343, 2
  %next.gep344 = getelementptr i8, ptr %7, i64 %i.ck ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep344, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep344, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.cl, align 8, !tbaa !82
  %index.next345 = add nuw i64 %index343, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next345, %n.vec341
  br i1 %i.cm, label %middle.block346, label %vector.body342, !llvm.loop !393

middle.block346:                                  ; preds = %vector.body342
  %cmp.n347 = icmp eq i64 %i.bk, %n.vec341
  br i1 %cmp.n347, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i43, label %.lr.ph.i.i39.preheader

.lr.ph.i.i39.preheader:                           ; preds = %.lr.ph.i.preheader.i37, %middle.block346
  %.05.i.i40.ph = phi i64 [ %i.bk, %.lr.ph.i.preheader.i37 ], [ %i.ch, %middle.block346 ]
  %storemerge4.i.i41.ph = phi ptr [ %7, %.lr.ph.i.preheader.i37 ], [ %i.cj, %middle.block346 ]
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39.preheader, %.lr.ph.i.i39
  %.05.i.i40 = phi i64 [ %i.cn, %.lr.ph.i.i39 ], [ %.05.i.i40.ph, %.lr.ph.i.i39.preheader ]
  %storemerge4.i.i41 = phi ptr [ %i.co, %.lr.ph.i.i39 ], [ %storemerge4.i.i41.ph, %.lr.ph.i.i39.preheader ] ; 2 uses
  %i.cn = add i64 %.05.i.i40, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i41, align 4, !tbaa !82
  %i.co = getelementptr inbounds nuw i8, ptr %storemerge4.i.i41, i64 4
  %.not.i.i42 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i42, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i43, label %.lr.ph.i.i39, !llvm.loop !394

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i43: ; preds = %.lr.ph.i.i39, %middle.block346
  %i.cp = trunc i64 %i.bk to i32
  %i.cq = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i38, %i.cp
  store i32 %i.cq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit44

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit44: ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit35, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  invoke void @_Z20test_copy_and_assignIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.o unwind label %bb.ai

bb.o:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit44
  invoke void @_Z20test_copy_and_assignIN5boost9container4test24movable_and_copyable_intELm10ENS1_6vectorIS3_vvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o
  invoke void @_Z20test_copy_and_assignIN5boost9container4test24movable_and_copyable_intELm10ENS1_4listIS3_vEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.q unwind label %bb.ai

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !141 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 5 uses
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !139
  %i.ct = icmp ugt i64 %i.cr, 10
  br i1 %i.ct, label %bb.r, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i45

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc55 unwind label %bb.aj

.noexc55:                                         ; preds = %bb.r
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i45: ; preds = %bb.q
  %.not17.i.i.i46 = icmp eq i64 %i.cr, 0          ; 2 uses
  br i1 %.not17.i.i.i46, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit56, label %.lr.ph.i.preheader.i.i47

.lr.ph.i.preheader.i.i47:                         ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i45
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i48 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cu = shl nuw nsw i64 %i.cr, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %8, ptr nonnull align 8 %2, i64 range(i64 0, 41) %i.cu, i1 false), !tbaa !82
  %i.cv = trunc nuw nsw i64 %i.cr to i32
  %i.cw = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i48, %i.cv
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit56

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit56: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i45, %.lr.ph.i.preheader.i.i47
  %.idx202.pre-phi = phi i64 [ %i.cu, %.lr.ph.i.preheader.i.i47 ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i45 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 %.idx202.pre-phi
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.cr
  %i.cz = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_, i1 noundef zeroext true)
          to label %.noexc63 unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc63:                                         ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit56
  br i1 %.not17.i.i.i46, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit65, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.noexc63, %.noexc64
  %.sroa.0167.0 = phi ptr [ %i.de, %.noexc64 ], [ %2, %.noexc63 ] ; 2 uses
  %.sroa.0162.0 = phi ptr [ %i.df, %.noexc64 ], [ %8, %.noexc63 ] ; 3 uses
  %.not4.i61 = icmp eq ptr %.sroa.0162.0, %i.cy
  br i1 %.not4.i61, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit65, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i60
  %i.da = load i32, ptr %.sroa.0167.0, align 4, !tbaa !82
  %i.db = load i32, ptr %.sroa.0162.0, align 4, !tbaa !82
  %i.dc = icmp eq i32 %i.da, %i.db
  %i.dd = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_, i1 noundef zeroext %i.dc)
          to label %.noexc64 unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc64:                                         ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0167.0, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0162.0, i64 4
  %.not.i62 = icmp eq ptr %i.de, %i.cx
  br i1 %.not.i62, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit65, label %.lr.ph.i60, !llvm.loop !11

_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit65: ; preds = %.noexc64, %.lr.ph.i60, %.noexc63
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 10, ptr %i.dg, align 8, !tbaa !148
  %i.dh = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc69 unwind label %bb.ak  ; 32 uses

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
  %i.em = load i64, ptr %i.cs, align 8, !tbaa !141, !noalias !426 ; 5 uses
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
  br i1 %or.cond.i.i, label %.lr.ph.i.i70, label %.critedge.i.i, !llvm.loop !397

.critedge.i.i:                                    ; preds = %.lr.ph.i.i70
  br i1 %i.eq, label %.critedge.i.i.thread, label %bb.t

bb.t:                                             ; preds = %.critedge.i.i
  %i.es = ptrtoint ptr %i.en to i64
  %i.et = ptrtoint ptr %i.eo to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = ashr exact i64 %i.eu, 2                 ; 8 uses
  br i1 %i.er, label %.lr.ph.i.preheader.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.t
  %i.ew = sub nsw i64 0, %i.ev
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.ew ; 3 uses
  %min.iters.check351 = icmp ult i64 %i.ev, 8
  br i1 %min.iters.check351, label %.lr.ph.i.i.i.i.preheader, label %vector.ph352

vector.ph352:                                     ; preds = %.lr.ph.i.preheader.i.i.i
  %n.vec353 = and i64 %i.ev, -8                   ; 3 uses
  %i.ey = and i64 %i.ev, 7
  %i.ez = shl nsw i64 %n.vec353, 2
  %i.fa = getelementptr i8, ptr %i.ex, i64 %i.ez
  br label %vector.body354

vector.body354:                                   ; preds = %vector.body354, %vector.ph352
  %index355 = phi i64 [ 0, %vector.ph352 ], [ %index.next357, %vector.body354 ] ; 2 uses
  %i.fb = shl i64 %index355, 2
  %next.gep356 = getelementptr i8, ptr %i.ex, i64 %i.fb ; 2 uses
  %i.fc = getelementptr i8, ptr %next.gep356, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep356, align 4, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.fc, align 4, !tbaa !82
  %index.next357 = add nuw i64 %index355, 8       ; 2 uses
  %i.fd = icmp eq i64 %index.next357, %n.vec353
  br i1 %i.fd, label %middle.block358, label %vector.body354, !llvm.loop !398

middle.block358:                                  ; preds = %vector.body354
  %cmp.n359 = icmp eq i64 %i.ev, %n.vec353
  br i1 %cmp.n359, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.preheader.i.i.i, %middle.block358
  %.05.i.i.i.i.ph = phi i64 [ %i.ev, %.lr.ph.i.preheader.i.i.i ], [ %i.ey, %middle.block358 ]
  %storemerge4.i.i.i.i.ph = phi ptr [ %i.ex, %.lr.ph.i.preheader.i.i.i ], [ %i.fa, %middle.block358 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i64 [ %i.fe, %.lr.ph.i.i.i.i ], [ %.05.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i ], [ %storemerge4.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.fe = add i64 %.05.i.i.i.i, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i, align 4, !tbaa !82
  %i.ff = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !399

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block358
  %i.fg = trunc i64 %i.ev to i32
  %i.fh = sub i32 %i.el, %i.fg
  store i32 %i.fh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, %bb.t
  %i.fi = sub i64 %i.em, %i.ev
  br label %bb.v

.critedge.i.i.thread:                             ; preds = %.noexc69, %.critedge.i.i
  %.sroa.3.0.lcssa.i.i195 = phi i64 [ %i.ep, %.critedge.i.i ], [ 10, %.noexc69 ] ; 8 uses
  %i.fj = sub i64 10, %i.em
  %.not.i.i2.i.i = icmp ugt i64 %.sroa.3.0.lcssa.i.i195, %i.fj
  br i1 %.not.i.i2.i.i, label %bb.u, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %min.iters.check363 = icmp ult i64 %.sroa.3.0.lcssa.i.i195, 8
  br i1 %min.iters.check363, label %.lr.ph.i.i.i.i.i.i.i.i.preheader428, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 4
  %bound0 = icmp ugt ptr %i.fk, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1 = icmp ult ptr %0, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader428, label %vector.ph364

vector.ph364:                                     ; preds = %vector.memcheck
  %n.vec365 = and i64 %.sroa.3.0.lcssa.i.i195, -4 ; 3 uses
  %i.fl = and i64 %.sroa.3.0.lcssa.i.i195, 3
  %i.fm = shl i64 %n.vec365, 2
  %i.fn = getelementptr i8, ptr %i.en, i64 %i.fm
end_hunk_1
begin_hunk_2_@_Z14test_insert_ndI8value_ndLm10EEvRKT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.t = load ptr, ptr %4, align 8, !tbaa !126
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.o
  invoke void @_ZN5boost9container6vectorI8value_ndvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.53") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.u, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %6)
          to label %.noexc88.1 unwind label %bb.n

.noexc88.1:                                       ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.1

_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.1: ; preds = %.noexc88.1, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.v = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.e unwind label %.loopexit.split-lp166.loopexit.split-lp ; 5 uses

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
          to label %bb.h unwind label %.loopexit.split-lp166.loopexit.split-lp ; 5 uses

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
          to label %bb.k unwind label %.loopexit.split-lp166.loopexit.split-lp ; 5 uses

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
          to label %.preheader162 unwind label %.loopexit.split-lp166.loopexit.split-lp ; 5 uses

.preheader162:                                    ; preds = %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.4
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
  br label %.loopexit.split-lp166

.preheader149:                                    ; preds = %._crit_edge174, %._crit_edge174.thread
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 28
  br label %bb.v

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread: ; preds = %._crit_edge174, %.preheader162
  %indvars.iv = phi i64 [ 5, %.preheader162 ], [ %indvars.iv.next, %._crit_edge174 ] ; 2 uses
  %.065175 = phi i64 [ 0, %.preheader162 ], [ %i.de, %._crit_edge174 ] ; 7 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 range(i64 0, 41) 20, i1 false), !tbaa !41
  %.idx138 = shl nuw nsw i64 %.065175, 2          ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 %.idx138 ; 2 uses
  %.not.i.i.i91 = icmp eq i64 %.065175, 5         ; 2 uses
  br i1 %.not.i.i.i91, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread
  %i.cg = load i32, ptr %0, align 4, !tbaa !41, !noalias !733
  store i32 %i.cg, ptr %i.bv, align 4, !tbaa !41, !noalias !733
  store i64 6, ptr %i.bu, align 8, !tbaa !120, !noalias !733
  br label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit

bb.p:                                             ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread
  %gepdiff139 = sub nsw i64 20, %.idx138
  %i.ch = ashr exact i64 %gepdiff139, 2           ; 2 uses
  %i.ci = load i32, ptr %i.bw, align 8, !tbaa !41, !noalias !733
  store i32 %i.ci, ptr %i.bv, align 4, !tbaa !41, !noalias !733
  store i64 6, ptr %i.bu, align 8, !tbaa !120, !noalias !733
  %i.cj = add nsw i64 %i.ch, -1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container15move_backward_nIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %bb.q, !prof !42

bb.q:                                             ; preds = %bb.p
  %i.ck = sub nsw i64 1, %i.ch                    ; 2 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.ck
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.ck
  %i.cn = shl nsw i64 %i.cj, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr nonnull align 4 %i.cm, i64 %i.cn, i1 false), !noalias !733
  br label %_ZN5boost9container15move_backward_nIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i

_ZN5boost9container15move_backward_nIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i: ; preds = %bb.q, %bb.p
  %i.co = load i32, ptr %0, align 4, !tbaa !41, !noalias !733
  store i32 %i.co, ptr %i.cf, align 4, !tbaa !41, !noalias !733
  br label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit

_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit: ; preds = %_ZN5boost9container15move_backward_nIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, %bb.o
  %i.cp = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 384, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.r unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.r:                                             ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit
  %i.cq = load i64, ptr %i.bu, align 8, !tbaa !120
  %i.cr = icmp eq i64 %i.cq, 6
  %i.cs = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.1, i32 noundef 385, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.cr)
          to label %.preheader158 unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader158:                                    ; preds = %bb.r
  %.not = icmp eq i64 %.065175, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.s, %.preheader158
  %i.ct = load i32, ptr %i.cf, align 4, !tbaa !77
  %i.cu = load i32, ptr %0, align 4, !tbaa !77
  %i.cv = icmp eq i32 %i.ct, %i.cu
  %i.cw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.1, i32 noundef 388, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.cv)
          to label %.preheader153 unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader153:                                    ; preds = %._crit_edge
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.065175
  br i1 %.not.i.i.i91, label %._crit_edge174.thread, label %.lr.ph173

._crit_edge174.thread:                            ; preds = %.preheader153
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.preheader149

.lr.ph173:                                        ; preds = %.preheader153
  %i.cx = trunc nuw nsw i64 %.065175 to i32
  br label %bb.t

.lr.ph:                                           ; preds = %.preheader158, %bb.s
  %.064171 = phi i64 [ %i.dd, %bb.s ], [ 0, %.preheader158 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.064171
  %i.cz = trunc nuw nsw i64 %.064171 to i32
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !77
  %i.db = icmp eq i32 %i.da, %i.cz
  %i.dc = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 387, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.db)
          to label %bb.s unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.s:                                             ; preds = %.lr.ph
  %i.dd = add nuw nsw i64 %.064171, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.dd, %.065175
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !715

._crit_edge174:                                   ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.de = add nuw nsw i64 %.065175, 1             ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond212.not = icmp eq i64 %i.de, 6
  br i1 %exitcond212.not, label %.preheader149, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread, !llvm.loop !716

bb.t:                                             ; preds = %.lr.ph173, %bb.u
  %.063172 = phi i64 [ 0, %.lr.ph173 ], [ %i.dl, %bb.u ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.063172
  %i.df = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.dg = trunc nuw nsw i64 %.063172 to i32
  %i.dh = add nuw nsw i32 %i.dg, %i.cx
  %i.di = load i32, ptr %i.df, align 4, !tbaa !77
  %i.dj = icmp eq i32 %i.di, %i.dh
  %i.dk = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.1, i32 noundef 390, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.dj)
          to label %bb.u unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.dl = add nuw nsw i64 %.063172, 1             ; 2 uses
  %exitcond211.not = icmp eq i64 %i.dl, %umax
  br i1 %exitcond211.not, label %._crit_edge174, label %bb.t, !llvm.loop !717

.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %.lr.ph, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit, %._crit_edge, %bb.r
  %lpad.loopexit.split-lp277 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.loopexit.split-lp166

.loopexit:                                        ; preds = %._crit_edge185, %._crit_edge185.thread
  invoke void @_Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.ae unwind label %.loopexit.split-lp166.loopexit.split-lp

bb.v:                                             ; preds = %.preheader149, %._crit_edge185
  %indvars.iv215 = phi i64 [ 5, %.preheader149 ], [ %indvars.iv.next216, %._crit_edge185 ] ; 2 uses
  %.062186 = phi i64 [ 0, %.preheader149 ], [ %i.go, %._crit_edge185 ] ; 10 uses
  %i.dm = shl i64 %.062186, 2
  %i.dn = sub i64 16, %i.dm                       ; 2 uses
  %i.do = lshr exact i64 %i.dn, 2
  %i.dp = add nuw nsw i64 %i.do, 1
  %umax217 = call i64 @llvm.umax.i64(i64 %indvars.iv215, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 5, ptr %i.by, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 range(i64 0, 41) 20, i1 false), !tbaa !41
  %.idx135 = shl nuw nsw i64 %.062186, 2          ; 5 uses
  %.ptr252 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx135 ; 7 uses
  %i.dq = icmp eq i64 %.062186, 5                 ; 2 uses
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i.i, label %bb.w

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.v
  %.pre.i.i.i.i.i.i = load i32, ptr %0, align 4, !tbaa !41, !noalias !734 ; 3 uses
  store i32 %.pre.i.i.i.i.i.i, ptr %i.bz, align 4, !tbaa !41, !noalias !734
  store i32 %.pre.i.i.i.i.i.i, ptr %i.cd, align 8, !tbaa !41, !noalias !734
  store i32 %.pre.i.i.i.i.i.i, ptr %i.ce, align 4, !tbaa !41, !noalias !734
  br label %.loopexit147

bb.w:                                             ; preds = %bb.v
  %gepdiff = sub nsw i64 20, %.idx135
  %i.dr = ashr exact i64 %gepdiff, 2              ; 5 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.dr, 3
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i40.preheader.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i

.lr.ph.i.i10.i.i.i.i:                             ; preds = %bb.w
  %i.ds = load <2 x i32>, ptr %i.ca, align 8, !tbaa !41, !noalias !734
  store <2 x i32> %i.ds, ptr %i.bz, align 4, !tbaa !41, !noalias !734
  %i.dt = load i32, ptr %i.cb, align 8, !tbaa !41, !noalias !734
  store i32 %i.dt, ptr %i.cc, align 4, !tbaa !41, !noalias !734
  %.not.i37.i.i.i.i.i = icmp eq i64 %.062186, 2
  br i1 %.not.i37.i.i.i.i.i, label %.lr.ph.i38.i.i.i.i.i, label %bb.x, !prof !42

bb.x:                                             ; preds = %.lr.ph.i.i10.i.i.i.i
  %gepdiff136 = sub nsw i64 8, %.idx135           ; 2 uses
  %i.du = ashr exact i64 %gepdiff136, 2
  %i.dv = sub nsw i64 0, %i.du
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.dv
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dw, ptr nonnull align 4 %.ptr252, i64 %gepdiff136, i1 false), !noalias !734
  %.pre.i.i.i.pre = load i64, ptr %i.by, align 8, !tbaa !118, !noalias !734
  %i.dx = icmp eq i64 %.pre.i.i.i.pre, 5
  br label %.lr.ph.i38.i.i.i.i.i

.lr.ph.i38.i.i.i.i.i:                             ; preds = %bb.x, %.lr.ph.i.i10.i.i.i.i
  %.pre.i.i.i = phi i1 [ %i.dx, %bb.x ], [ true, %.lr.ph.i.i10.i.i.i.i ]
  %.pre.i.i12.i.i.i.i = load i32, ptr %0, align 4, !tbaa !41, !noalias !734 ; 3 uses
  store i32 %.pre.i.i12.i.i.i.i, ptr %.ptr252, align 4, !tbaa !41, !noalias !734
  %i.dy = getelementptr inbounds nuw i8, ptr %.ptr252, i64 4
  store i32 %.pre.i.i12.i.i.i.i, ptr %i.dy, align 4, !tbaa !41, !noalias !734
  %i.dz = getelementptr inbounds nuw i8, ptr %.ptr252, i64 8
  store i32 %.pre.i.i12.i.i.i.i, ptr %i.dz, align 4, !tbaa !41, !noalias !734
  br label %.loopexit147

.lr.ph.i40.preheader.i.i.i.i.i:                   ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %.ptr252, i64 12 ; 2 uses
  %xtraiter = and i64 %i.dp, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol

.lr.ph.i40.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i40.preheader.i.i.i.i.i, %.lr.ph.i40.i.i.i.i.i.prol
  %.018.i.i.i.i.i.i.idx.prol = phi i64 [ %.018.i.i.i.i.i.i.add.prol, %.lr.ph.i40.i.i.i.i.i.prol ], [ %.idx135, %.lr.ph.i40.preheader.i.i.i.i.i ] ; 2 uses
  %.01517.i.i.i.i.i.i.prol = phi ptr [ %i.ec, %.lr.ph.i40.i.i.i.i.i.prol ], [ %i.ea, %.lr.ph.i40.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i40.i.i.i.i.i.prol ], [ 0, %.lr.ph.i40.preheader.i.i.i.i.i ]
  %.018.i.i.i.i.i.i.ptr.prol = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx.prol
  %i.eb = load i32, ptr %.018.i.i.i.i.i.i.ptr.prol, align 4, !tbaa !41, !noalias !734
  store i32 %i.eb, ptr %.01517.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !734
  %.018.i.i.i.i.i.i.add.prol = add nuw nsw i64 %.018.i.i.i.i.i.i.idx.prol, 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol, !llvm.loop !722

.lr.ph.i40.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i40.i.i.i.i.i.prol, %.lr.ph.i40.preheader.i.i.i.i.i
  %.018.i.i.i.i.i.i.idx.unr = phi i64 [ %.idx135, %.lr.ph.i40.preheader.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.add.prol, %.lr.ph.i40.i.i.i.i.i.prol ]
  %.01517.i.i.i.i.i.i.unr = phi ptr [ %i.ea, %.lr.ph.i40.preheader.i.i.i.i.i ], [ %i.ec, %.lr.ph.i40.i.i.i.i.i.prol ]
  %i.ed = icmp ult i64 %i.dn, 28
  br i1 %i.ed, label %.lr.ph.i43.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i

.lr.ph.i40.i.i.i.i.i:                             ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit, %.lr.ph.i40.i.i.i.i.i
  %.018.i.i.i.i.i.i.idx = phi i64 [ %.018.i.i.i.i.i.i.add.7, %.lr.ph.i40.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.idx.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01517.i.i.i.i.i.i = phi ptr [ %i.fa, %.lr.ph.i40.i.i.i.i.i ], [ %.01517.i.i.i.i.i.i.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.018.i.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %i.ee = load i32, ptr %.018.i.i.i.i.i.i.ptr, align 4, !tbaa !41, !noalias !734
  store i32 %i.ee, ptr %.01517.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !734
  %i.ef = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.eh = load i32, ptr %.018.i.i.i.i.i.i.ptr.1, align 4, !tbaa !41, !noalias !734
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !41, !noalias !734
  %i.ei = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.ek = load i32, ptr %.018.i.i.i.i.i.i.ptr.2, align 4, !tbaa !41, !noalias !734
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !41, !noalias !734
  %i.el = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 12
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.en = load i32, ptr %.018.i.i.i.i.i.i.ptr.3, align 4, !tbaa !41, !noalias !734
  store i32 %i.en, ptr %i.el, align 4, !tbaa !41, !noalias !734
  %i.eo = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.eq = load i32, ptr %.018.i.i.i.i.i.i.ptr.4, align 4, !tbaa !41, !noalias !734
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !41, !noalias !734
  %i.er = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 20
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.es, i64 20
  %i.et = load i32, ptr %.018.i.i.i.i.i.i.ptr.5, align 4, !tbaa !41, !noalias !734
  store i32 %i.et, ptr %i.er, align 4, !tbaa !41, !noalias !734
  %i.eu = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ew = load i32, ptr %.018.i.i.i.i.i.i.ptr.6, align 4, !tbaa !41, !noalias !734
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !41, !noalias !734
  %i.ex = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 28
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.ey, i64 28
  %i.ez = load i32, ptr %.018.i.i.i.i.i.i.ptr.7, align 4, !tbaa !41, !noalias !734
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !41, !noalias !734
  %.018.i.i.i.i.i.i.add.7 = add nuw nsw i64 %.018.i.i.i.i.i.i.idx, 32
  %i.fa = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 32
  br label %.lr.ph.i40.i.i.i.i.i, !llvm.loop !14

.lr.ph.i43.i.i.i.i.i:                             ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit
  %.pre.i44.i.i.i.i.i = load i32, ptr %0, align 4, !tbaa !41, !noalias !734 ; 11 uses
  %min.iters.check.not = icmp eq i64 %.062186, 3
  br i1 %min.iters.check.not, label %vector.ph, label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph.i43.i.i.i.i.i
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.pre.i44.i.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.ptr252, i64 %i.fb
  store <2 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !41, !noalias !734
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %i.dr
  br i1 %i.fc, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i, label %vector.body, !llvm.loop !723

scalar.ph:                                        ; preds = %.lr.ph.i43.i.i.i.i.i, %scalar.ph
  %.07.i45.i.i.i.i.i = phi i64 [ %i.fd, %scalar.ph ], [ %i.dr, %.lr.ph.i43.i.i.i.i.i ]
  %.046.i46.i.i.i.i.i = phi ptr [ %i.fe, %scalar.ph ], [ %.ptr252, %.lr.ph.i43.i.i.i.i.i ] ; 2 uses
  %i.fd = add nsw i64 %.07.i45.i.i.i.i.i, -1      ; 2 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %.046.i46.i.i.i.i.i, align 4, !tbaa !41, !noalias !734
  %i.fe = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 4
  %.not.i47.i.i.i.i.i = icmp eq i64 %i.fd, 0
  br i1 %.not.i47.i.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i, label %scalar.ph, !llvm.loop !724

_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i: ; preds = %scalar.ph, %vector.body
  %i.ff = sub nuw nsw i64 3, %i.dr                ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.prol = phi i64 [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.ff, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i ]
  %.01416.i.i.i.i.i.i.i.prol = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.bz, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i ] ; 2 uses
  %prol.iter281 = phi i64 [ %prol.iter281.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i ]
  %i.fg = add nsw i64 %.017.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %.01416.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !734
  %i.fh = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter281.next = add i64 %prol.iter281, 1   ; 2 uses
  %prol.iter281.cmp.not = icmp eq i64 %prol.iter281.next, %i.ff
  br i1 %prol.iter281.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !725

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol
  %i.fi = icmp ult i64 %i.dr, 3
  br i1 %i.fi, label %.loopexit147, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i = phi i64 [ %i.fq, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %.01416.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !734
  %i.fj = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 4
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fj, align 4, !tbaa !41, !noalias !734
  %i.fk = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 8
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fk, align 4, !tbaa !41, !noalias !734
  %i.fl = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 12
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fl, align 4, !tbaa !41, !noalias !734
  %i.fm = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 16
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fm, align 4, !tbaa !41, !noalias !734
  %i.fn = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 20
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fn, align 4, !tbaa !41, !noalias !734
  %i.fo = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 24
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fo, align 4, !tbaa !41, !noalias !734
  %i.fp = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 28
  %i.fq = add nsw i64 %.017.i.i.i.i.i.i.i, -8     ; 2 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fp, align 4, !tbaa !41, !noalias !734
  %i.fr = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %.loopexit147, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2

.loopexit147:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i38.i.i.i.i.i
  %i.fs = phi i1 [ %.pre.i.i.i, %.lr.ph.i38.i.i.i.i.i ], [ true, %.lr.ph.i.i.i.i.i.i ], [ true, %.lr.ph.i.i.i.i.i.i.i ], [ true, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ft = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 400, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.y:                                             ; preds = %.loopexit147
  %i.fu = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 401, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.fs)
          to label %.preheader144 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader144:                                    ; preds = %bb.y
  %.not188 = icmp eq i64 %.062186, 0
  br i1 %.not188, label %.preheader140, label %.lr.ph177

.preheader140:                                    ; preds = %bb.z, %.preheader144
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
  %.pre263.3 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.3

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.3: ; preds = %.noexc88.3, %bb.u
  %i.cy = phi i32 [ %.pre263.3, %.noexc88.3 ], [ %i.cu, %bb.u ]
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
  %.pre263.4 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.4

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.4: ; preds = %.noexc88.4, %bb.z
  %i.dy = phi i32 [ %.pre263.4, %.noexc88.4 ], [ %i.du, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store i32 %i.dy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dz = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %.preheader213 unwind label %bb.ae ; 5 uses

.preheader213:                                    ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.4
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
  br label %bb.bk

bb.ac:                                            ; preds = %bb.d
  %i.ek = landingpad { ptr, i32 }
          cleanup
  %i.el = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.em = add i32 %i.el, -1
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.bk

bb.ad:                                            ; preds = %bb.aa, %bb.v, %bb.q, %bb.l, %bb.g
  %i.en = landingpad { ptr, i32 }
          cleanup
  %i.eo = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ep = add i32 %i.eo, -1
  store i32 %i.ep, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.bk

bb.ae:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.4, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.3, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.2, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.1, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.es = add i32 %i.er, -1
  store i32 %i.es, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.bk

.preheader207:                                    ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 40
  br label %bb.as

bb.af:                                            ; preds = %.preheader213, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  %indvars.iv = phi i64 [ 5, %.preheader213 ], [ %indvars.iv.next, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 2 uses
  %.065232 = phi i64 [ 0, %.preheader213 ], [ %i.ho, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 9 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %2, i64 range(i64 0, 41) %i.ew, i1 false), !tbaa !82
  %i.ex = trunc nuw nsw i64 %i.eu to i32
  %i.ey = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.ex
  store i32 %i.ey, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not.i.i = icmp eq i64 %i.eu, 10
  br i1 %.not.i.i, label %bb.aj, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit.thread, !prof !798

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit.thread: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i, %.lr.ph.i.preheader.i.i
  %.idx199.pre-phi = phi i64 [ %i.ew, %.lr.ph.i.preheader.i.i ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i ] ; 2 uses
  %.idx200 = shl nuw nsw i64 %.065232, 2          ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 %.idx200 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 %.idx199.pre-phi ; 5 uses
  %.not.i.i.i91 = icmp samesign eq i64 %i.eu, %.065232
  br i1 %.not.i.i.i91, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit.thread
  %i.fb = load i32, ptr %0, align 4, !tbaa !82, !noalias !799
  store i32 %i.fb, ptr %i.fa, align 4, !tbaa !82, !noalias !799
  %i.fc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !799
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !799
  %i.fe = add nuw nsw i64 %.065232, 1
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEERKS3_.exit

bb.ai:                                            ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit.thread
  %gepdiff201 = sub nsw i64 %.idx199.pre-phi, %.idx200
  %i.ff = ashr exact i64 %gepdiff201, 2           ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.fa, i64 -4 ; 4 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !82, !noalias !799
  store i32 %i.fh, ptr %i.fa, align 4, !tbaa !82, !noalias !799
  store i32 0, ptr %i.fg, align 4, !tbaa !82, !noalias !799
  %i.fi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !799
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !799
  %i.fk = add nuw nsw i64 %i.eu, 1                ; 2 uses
  store i64 %i.fk, ptr %i.eg, align 8, !tbaa !141, !noalias !799
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
  %i.fq = load i32, ptr %i.fo, align 4, !tbaa !82, !noalias !799
  store i32 %i.fq, ptr %i.fp, align 4, !tbaa !82, !noalias !799
  store i32 0, ptr %i.fo, align 4, !tbaa !82, !noalias !799
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !761

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
  %i.fu = load i32, ptr %i.fs, align 4, !tbaa !82, !noalias !799
  store i32 %i.fu, ptr %i.ft, align 4, !tbaa !82, !noalias !799
  store i32 0, ptr %i.fs, align 4, !tbaa !82, !noalias !799
  %i.fv = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -8 ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -8
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !82, !noalias !799
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !82, !noalias !799
  store i32 0, ptr %i.fv, align 4, !tbaa !82, !noalias !799
  %i.fy = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -12 ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -12
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !82, !noalias !799
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !82, !noalias !799
  store i32 0, ptr %i.fy, align 4, !tbaa !82, !noalias !799
  %i.gb = add i64 %.0610.i.i.i.i, -4              ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -16 ; 3 uses
  %i.gd = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -16 ; 2 uses
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !82, !noalias !799
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !82, !noalias !799
  store i32 0, ptr %i.gc, align 4, !tbaa !82, !noalias !799
  %.not.i.i.i.i.3 = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container15move_backward_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !762

_ZN5boost9container15move_backward_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.ai
  %i.gf = load i32, ptr %0, align 4, !tbaa !82, !noalias !799
  store i32 %i.gf, ptr %i.ez, align 4, !tbaa !82, !noalias !799
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEERKS3_.exit

bb.aj:                                            ; preds = %.lr.ph.i.preheader.i.i
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc92 unwind label %.loopexit.split-lp215

.noexc92:                                         ; preds = %bb.aj
  unreachable

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEERKS3_.exit: ; preds = %_ZN5boost9container15move_backward_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i, %bb.ah
  %i.gg = phi i64 [ %i.fk, %_ZN5boost9container15move_backward_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i ], [ %i.fe, %bb.ah ] ; 10 uses
  %i.gh = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 384, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.ak unwind label %.loopexit214 ; 0 uses

bb.ak:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEERKS3_.exit
  %i.gi = icmp eq i64 %i.gg, 6
  %i.gj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.1, i32 noundef 385, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_, i1 noundef zeroext %i.gi)
          to label %.preheader212 unwind label %.loopexit214 ; 0 uses

.preheader212:                                    ; preds = %bb.ak
  %.not = icmp eq i64 %.065232, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader212
  %.pre264 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.gk = add i32 %.pre264, 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.am, %.preheader212
  %i.gl = load i32, ptr %i.ez, align 4, !tbaa !82
  %i.gm = load i32, ptr %0, align 4, !tbaa !82
  %i.gn = icmp eq i32 %i.gl, %i.gm
  %i.go = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.1, i32 noundef 388, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_, i1 noundef zeroext %i.gn)
          to label %.preheader211 unwind label %.loopexit214 ; 0 uses

.preheader211:                                    ; preds = %._crit_edge
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.065232
  %.not246 = icmp eq i64 %.065232, 5
  br i1 %.not246, label %.lr.ph.i.preheader.i, label %.lr.ph230

.lr.ph230:                                        ; preds = %.preheader211
  %i.gp = trunc nuw nsw i64 %.065232 to i32
  %.pre265 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.gq = add i32 %.pre265, 1
  br label %bb.ao

bb.al:                                            ; preds = %bb.ag
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit102

.loopexit214:                                     ; preds = %bb.ak, %._crit_edge, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEERKS3_.exit
  %lpad.loopexit216 = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i95

.loopexit.split-lp215:                            ; preds = %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i95

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.am
  %i.gs = phi i32 [ %i.gy, %bb.am ], [ %i.gk, %.lr.ph.preheader ]
  %.064228 = phi i64 [ %i.ha, %bb.am ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.064228
  %i.gu = trunc nuw nsw i64 %.064228 to i32
  store i32 %i.gs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.gv = load i32, ptr %i.gt, align 4, !tbaa !82
  %i.gw = icmp eq i32 %i.gv, %i.gu
  %i.gx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 387, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_, i1 noundef zeroext %i.gw)
          to label %bb.am unwind label %bb.an     ; 0 uses

bb.am:                                            ; preds = %.lr.ph
  %i.gy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.gz = add i32 %i.gy, -1
  store i32 %i.gz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ha = add nuw nsw i64 %.064228, 1             ; 2 uses
  %exitcond253.not = icmp eq i64 %i.ha, %.065232
  br i1 %exitcond253.not, label %._crit_edge, label %.lr.ph, !llvm.loop !763

bb.an:                                            ; preds = %.lr.ph
  %i.hb = landingpad { ptr, i32 }
          cleanup
  %i.hc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.hd = add i32 %i.hc, -1
  store i32 %i.hd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i95

.lr.ph.i.preheader.i:                             ; preds = %bb.ap, %.preheader211
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check = icmp ult i64 %i.gg, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.gg, -8                      ; 3 uses
  %i.he = and i64 %i.gg, 7
  %i.hf = shl i64 %n.vec, 2
  %i.hg = getelementptr i8, ptr %7, i64 %i.hf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hh = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %7, i64 %i.hh ; 2 uses
  %i.hi = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.hi, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !764

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gg, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.05.i.i.ph = phi i64 [ %i.gg, %.lr.ph.i.preheader.i ], [ %i.he, %middle.block ]
  %storemerge4.i.i.ph = phi ptr [ %7, %.lr.ph.i.preheader.i ], [ %i.hg, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.hk, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.hl, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.hk = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !82
  %i.hl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i93 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i93, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !765

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.lr.ph.i.i, %middle.block
  %i.hm = trunc nuw nsw i64 %i.gg to i32
  %i.hn = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.hm
  store i32 %i.hn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ho = add nuw nsw i64 %.065232, 1             ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond255.not = icmp eq i64 %i.ho, 6
  br i1 %exitcond255.not, label %.preheader207, label %bb.af, !llvm.loop !766

bb.ao:                                            ; preds = %.lr.ph230, %bb.ap
  %i.hp = phi i32 [ %i.gq, %.lr.ph230 ], [ %i.hw, %bb.ap ]
  %.063229 = phi i64 [ 0, %.lr.ph230 ], [ %i.hy, %bb.ap ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.063229
  %i.hq = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.hr = trunc nuw nsw i64 %.063229 to i32
  %i.hs = add nuw nsw i32 %i.hr, %i.gp
  store i32 %i.hp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ht = load i32, ptr %i.hq, align 4, !tbaa !82
  %i.hu = icmp eq i32 %i.ht, %i.hs
  %i.hv = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.1, i32 noundef 390, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_, i1 noundef zeroext %i.hu)
          to label %bb.ap unwind label %bb.aq     ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.hw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.hx = add i32 %i.hw, -1
  store i32 %i.hx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.hy = add nuw nsw i64 %.063229, 1             ; 2 uses
  %exitcond254.not = icmp eq i64 %i.hy, %umax
  br i1 %exitcond254.not, label %.lr.ph.i.preheader.i, label %bb.ao, !llvm.loop !767

bb.aq:                                            ; preds = %bb.ao
  %i.hz = landingpad { ptr, i32 }
          cleanup
  %i.ia = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ib = add i32 %i.ia, -1
  store i32 %i.ib, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i95

.lr.ph.i.preheader.i95:                           ; preds = %bb.an, %bb.aq, %.loopexit.split-lp215, %.loopexit214
  %i.ic = phi i64 [ %i.gg, %bb.an ], [ %i.gg, %bb.aq ], [ %i.gg, %.loopexit214 ], [ 10, %.loopexit.split-lp215 ] ; 6 uses
  %.pn76 = phi { ptr, i32 } [ %i.hb, %bb.an ], [ %i.hz, %bb.aq ], [ %lpad.loopexit216, %.loopexit214 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp215 ]
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i96 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check328 = icmp ult i64 %i.ic, 8
  br i1 %min.iters.check328, label %.lr.ph.i.i97.preheader, label %vector.ph329

vector.ph329:                                     ; preds = %.lr.ph.i.preheader.i95
  %n.vec330 = and i64 %i.ic, -8                   ; 3 uses
  %i.id = and i64 %i.ic, 7
  %i.ie = shl i64 %n.vec330, 2
  %i.if = getelementptr i8, ptr %7, i64 %i.ie
  br label %vector.body331

vector.body331:                                   ; preds = %vector.body331, %vector.ph329
  %index332 = phi i64 [ 0, %vector.ph329 ], [ %index.next334, %vector.body331 ] ; 2 uses
  %i.ig = shl i64 %index332, 2
  %next.gep333 = getelementptr i8, ptr %7, i64 %i.ig ; 2 uses
  %i.ih = getelementptr i8, ptr %next.gep333, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep333, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.ih, align 8, !tbaa !82
  %index.next334 = add nuw i64 %index332, 8       ; 2 uses
  %i.ii = icmp eq i64 %index.next334, %n.vec330
  br i1 %i.ii, label %middle.block335, label %vector.body331, !llvm.loop !768

middle.block335:                                  ; preds = %vector.body331
  %cmp.n336 = icmp eq i64 %i.ic, %n.vec330
  br i1 %cmp.n336, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i101, label %.lr.ph.i.i97.preheader

.lr.ph.i.i97.preheader:                           ; preds = %.lr.ph.i.preheader.i95, %middle.block335
  %.05.i.i98.ph = phi i64 [ %i.ic, %.lr.ph.i.preheader.i95 ], [ %i.id, %middle.block335 ]
  %storemerge4.i.i99.ph = phi ptr [ %7, %.lr.ph.i.preheader.i95 ], [ %i.if, %middle.block335 ]
  br label %.lr.ph.i.i97

.lr.ph.i.i97:                                     ; preds = %.lr.ph.i.i97.preheader, %.lr.ph.i.i97
  %.05.i.i98 = phi i64 [ %i.ij, %.lr.ph.i.i97 ], [ %.05.i.i98.ph, %.lr.ph.i.i97.preheader ]
  %storemerge4.i.i99 = phi ptr [ %i.ik, %.lr.ph.i.i97 ], [ %storemerge4.i.i99.ph, %.lr.ph.i.i97.preheader ] ; 2 uses
  %i.ij = add i64 %.05.i.i98, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i99, align 4, !tbaa !82
  %i.ik = getelementptr inbounds nuw i8, ptr %storemerge4.i.i99, i64 4
  %.not.i.i100 = icmp eq i64 %i.ij, 0
  br i1 %.not.i.i100, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i101, label %.lr.ph.i.i97, !llvm.loop !769

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i101: ; preds = %.lr.ph.i.i97, %middle.block335
  %i.il = trunc nuw nsw i64 %i.ic to i32
  %i.im = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i96, %i.il
  store i32 %i.im, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit102

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit102: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i101, %bb.al
  %.pn76.pn = phi { ptr, i32 } [ %i.gr, %bb.al ], [ %.pn76, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.bk

bb.ar:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit125
  invoke void @_Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.bf unwind label %bb.bj

bb.as:                                            ; preds = %.preheader207, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit125
  %indvars.iv258 = phi i64 [ 5, %.preheader207 ], [ %indvars.iv.next259, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit125 ] ; 2 uses
  %.062245 = phi i64 [ 0, %.preheader207 ], [ %i.na, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit125 ] ; 10 uses
  %umax260 = call i64 @llvm.umax.i64(i64 %indvars.iv258, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.in = load i64, ptr %i.a, align 8, !tbaa !141 ; 12 uses
  %i.io = icmp ugt i64 %i.in, 10
  br i1 %i.io, label %bb.at, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i103

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc113 unwind label %bb.ax

.noexc113:                                        ; preds = %bb.at
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i103: ; preds = %bb.as
  %.not17.i.i.i104 = icmp eq i64 %i.in, 0
  br i1 %.not17.i.i.i104, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit114.thread, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit114

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit114: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i103
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i106 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ip = shl nuw nsw i64 %i.in, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %8, ptr nonnull align 8 %2, i64 range(i64 0, 41) %i.ip, i1 false), !tbaa !82
  %i.iq = trunc nuw nsw i64 %i.in to i32
  %i.ir = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i106, %i.iq
  store i32 %i.ir, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not.i.i115 = icmp samesign ugt i64 %i.in, 7
  br i1 %.not.i.i115, label %bb.av, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit114.thread, !prof !149

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit114.thread: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i103, %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit114
  %.idx198293 = shl nuw nsw i64 %.062245, 2       ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %8, i64 %.idx198293 ; 9 uses
  %.idx = shl nuw nsw i64 %i.in, 2                ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %8, i64 %.idx ; 13 uses
  %i.iu = icmp samesign eq i64 %i.in, %.062245
  br i1 %i.iu, label %.lr.ph.i.i.i.i.i.i.preheader, label %bb.au

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit114.thread
  %i.iv = load i32, ptr %0, align 4, !tbaa !82, !noalias !800
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !82, !noalias !800
  %i.iw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !800 ; 3 uses
  %i.ix = add i32 %i.iw, 1
  store i32 %i.ix, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !800
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %i.iz = load i32, ptr %0, align 4, !tbaa !82, !noalias !800
  store i32 %i.iz, ptr %i.iy, align 4, !tbaa !82, !noalias !800
  %i.ja = add i32 %i.iw, 2
  store i32 %i.ja, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !800
  %i.jb = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.jc = load i32, ptr %0, align 4, !tbaa !82, !noalias !800
  store i32 %i.jc, ptr %i.jb, align 4, !tbaa !82, !noalias !800
  %i.jd = add i32 %i.iw, 3
  store i32 %i.jd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !800
  br label %.loopexit204

bb.au:                                            ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit114.thread
  %gepdiff = sub nsw i64 %.idx, %.idx198293       ; 2 uses
  %i.je = ashr exact i64 %gepdiff, 2              ; 4 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.je, 3
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted233 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !800 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i43.preheader.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i

.lr.ph.i.i10.i.i.i.i:                             ; preds = %bb.au
  %i.jf = getelementptr inbounds i8, ptr %i.it, i64 -12 ; 5 uses
  %i.jg = getelementptr inbounds i8, ptr %i.it, i64 -8
  %i.jh = load <2 x i32>, ptr %i.jf, align 4, !tbaa !82, !noalias !800
  store i32 0, ptr %i.jf, align 4, !tbaa !82, !noalias !800
  store <2 x i32> %i.jh, ptr %i.it, align 4, !tbaa !82, !noalias !800
  store i32 0, ptr %i.jg, align 4, !tbaa !82, !noalias !800
  %i.ji = getelementptr inbounds i8, ptr %i.it, i64 -4 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.jk = load i32, ptr %i.ji, align 4, !tbaa !82, !noalias !800
  store i32 %i.jk, ptr %i.jj, align 4, !tbaa !82, !noalias !800
  store i32 0, ptr %i.ji, align 4, !tbaa !82, !noalias !800
  %i.jl = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted233, 3
  store i32 %i.jl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !800
  %i.jm = add nsw i64 %.idx, -12
  %.not8.i.i.i.i.i.i = icmp eq i64 %.idx198293, %i.jm
  br i1 %.not8.i.i.i.i.i.i, label %.lr.ph.i39.i.i.i.i.i, label %.lr.ph.i37.i.i.i.i.i.preheader

.lr.ph.i37.i.i.i.i.i.preheader:                   ; preds = %.lr.ph.i.i10.i.i.i.i
  %i.jn = sub nsw i64 %i.in, %.062245
  %i.jo = add i64 %i.jn, 4611686018427387900
  %i.jp = and i64 %i.jo, 4611686018427387903      ; 2 uses
  %i.jq = add nuw nsw i64 %i.jp, 1                ; 2 uses
  %min.iters.check364 = icmp eq i64 %i.jp, 0
  br i1 %min.iters.check364, label %.lr.ph.i37.i.i.i.i.i.preheader437, label %vector.ph365

vector.ph365:                                     ; preds = %.lr.ph.i37.i.i.i.i.i.preheader
  %n.vec366 = and i64 %i.jq, 9223372036854775806  ; 3 uses
  %i.jr = mul i64 %n.vec366, -4                   ; 2 uses
  %i.js = getelementptr i8, ptr %i.it, i64 %i.jr
  %i.jt = getelementptr i8, ptr %i.jf, i64 %i.jr
  br label %vector.body367

vector.body367:                                   ; preds = %vector.body367, %vector.ph365
  %index368 = phi i64 [ 0, %vector.ph365 ], [ %index.next371, %vector.body367 ] ; 2 uses
  %i.ju = mul i64 %index368, -4                   ; 2 uses
  %next.gep369 = getelementptr i8, ptr %i.it, i64 %i.ju
  %next.gep370 = getelementptr i8, ptr %i.jf, i64 %i.ju
  %i.jv = getelementptr inbounds i8, ptr %next.gep370, i64 -8 ; 2 uses
  %wide.load = load <2 x i32>, ptr %i.jv, align 4, !tbaa !82, !noalias !800
  %i.jw = getelementptr inbounds i8, ptr %next.gep369, i64 -8
  store <2 x i32> %wide.load, ptr %i.jw, align 4, !tbaa !82, !noalias !800
  store <2 x i32> zeroinitializer, ptr %i.jv, align 4, !tbaa !82, !noalias !800
  %index.next371 = add nuw i64 %index368, 2       ; 2 uses
  %i.jx = icmp eq i64 %index.next371, %n.vec366
  br i1 %i.jx, label %middle.block372, label %vector.body367, !llvm.loop !774

middle.block372:                                  ; preds = %vector.body367
  %cmp.n373 = icmp eq i64 %i.jq, %n.vec366
  br i1 %cmp.n373, label %.lr.ph.i39.i.i.i.i.i, label %.lr.ph.i37.i.i.i.i.i.preheader437

.lr.ph.i37.i.i.i.i.i.preheader437:                ; preds = %.lr.ph.i37.i.i.i.i.i.preheader, %middle.block372
  %.010.i.i.i.i.i.i.ph = phi ptr [ %i.it, %.lr.ph.i37.i.i.i.i.i.preheader ], [ %i.js, %middle.block372 ]
  %.079.i.i.i.i.i.i.ph = phi ptr [ %i.jf, %.lr.ph.i37.i.i.i.i.i.preheader ], [ %i.jt, %middle.block372 ]
  br label %.lr.ph.i37.i.i.i.i.i

.lr.ph.i37.i.i.i.i.i:                             ; preds = %.lr.ph.i37.i.i.i.i.i.preheader437, %.lr.ph.i37.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.jz, %.lr.ph.i37.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.ph, %.lr.ph.i37.i.i.i.i.i.preheader437 ]
  %.079.i.i.i.i.i.i = phi ptr [ %i.jy, %.lr.ph.i37.i.i.i.i.i ], [ %.079.i.i.i.i.i.i.ph, %.lr.ph.i37.i.i.i.i.i.preheader437 ]
  %i.jy = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -4 ; 4 uses
  %i.jz = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -4 ; 2 uses
  %i.ka = load i32, ptr %i.jy, align 4, !tbaa !82, !noalias !800
  store i32 %i.ka, ptr %i.jz, align 4, !tbaa !82, !noalias !800
  store i32 0, ptr %i.jy, align 4, !tbaa !82, !noalias !800
  %.not.i38.i.i.i.i.i = icmp eq ptr %i.is, %i.jy
  br i1 %.not.i38.i.i.i.i.i, label %.lr.ph.i39.i.i.i.i.i, label %.lr.ph.i37.i.i.i.i.i, !llvm.loop !775

.lr.ph.i39.i.i.i.i.i:                             ; preds = %.lr.ph.i37.i.i.i.i.i, %middle.block372, %.lr.ph.i.i10.i.i.i.i
  %.pre.i.i.i.i.i.i = load i32, ptr %0, align 4, !tbaa !82, !noalias !800 ; 3 uses
  store i32 %.pre.i.i.i.i.i.i, ptr %i.is, align 4, !tbaa !82, !noalias !800
  %i.kb = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  store i32 %.pre.i.i.i.i.i.i, ptr %i.kb, align 4, !tbaa !82, !noalias !800
  %i.kc = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i32 %.pre.i.i.i.i.i.i, ptr %i.kc, align 4, !tbaa !82, !noalias !800
  br label %.loopexit204

.lr.ph.i43.preheader.i.i.i.i.i:                   ; preds = %bb.au
  %i.kd = getelementptr inbounds nuw i8, ptr %i.is, i64 12 ; 2 uses
  %i.ke = sub nsw i64 %i.in, %.062245             ; 2 uses
  %i.kf = add i64 %i.ke, 4611686018427387903
  %i.kg = and i64 %i.kf, 4611686018427387903
  %xtraiter452 = and i64 %i.ke, 3                 ; 2 uses
  %lcmp.mod453.not = icmp eq i64 %xtraiter452, 0
  br i1 %lcmp.mod453.not, label %.lr.ph.i43.i.i.i.i.i.prol.loopexit, label %.lr.ph.i43.i.i.i.i.i.prol

.lr.ph.i43.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i43.preheader.i.i.i.i.i, %.lr.ph.i43.i.i.i.i.i.prol
  %i.kh = phi i32 [ %i.kj, %.lr.ph.i43.i.i.i.i.i.prol ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted233, %.lr.ph.i43.preheader.i.i.i.i.i ]
  %.018.i.i.i.i.i.i.prol = phi ptr [ %i.kk, %.lr.ph.i43.i.i.i.i.i.prol ], [ %i.is, %.lr.ph.i43.preheader.i.i.i.i.i ] ; 3 uses
  %.01517.i.i.i.i.i.i.prol = phi ptr [ %i.kl, %.lr.ph.i43.i.i.i.i.i.prol ], [ %i.kd, %.lr.ph.i43.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter454 = phi i64 [ %prol.iter454.next, %.lr.ph.i43.i.i.i.i.i.prol ], [ 0, %.lr.ph.i43.preheader.i.i.i.i.i ]
  %i.ki = load i32, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !800
  store i32 %i.ki, ptr %.01517.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !800
  store i32 0, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !800
  %i.kj = add i32 %i.kh, 1                        ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter454.next = add i64 %prol.iter454, 1   ; 2 uses
  %prol.iter454.cmp.not = icmp eq i64 %prol.iter454.next, %xtraiter452
  br i1 %prol.iter454.cmp.not, label %.lr.ph.i43.i.i.i.i.i.prol.loopexit, label %.lr.ph.i43.i.i.i.i.i.prol, !llvm.loop !776

.lr.ph.i43.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i43.i.i.i.i.i.prol, %.lr.ph.i43.preheader.i.i.i.i.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i43.preheader.i.i.i.i.i ], [ %i.kj, %.lr.ph.i43.i.i.i.i.i.prol ]
  %.unr = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted233, %.lr.ph.i43.preheader.i.i.i.i.i ], [ %i.kj, %.lr.ph.i43.i.i.i.i.i.prol ]
  %.018.i.i.i.i.i.i.unr = phi ptr [ %i.is, %.lr.ph.i43.preheader.i.i.i.i.i ], [ %i.kk, %.lr.ph.i43.i.i.i.i.i.prol ]
  %.01517.i.i.i.i.i.i.unr = phi ptr [ %i.kd, %.lr.ph.i43.preheader.i.i.i.i.i ], [ %i.kl, %.lr.ph.i43.i.i.i.i.i.prol ]
  %i.km = icmp samesign ult i64 %i.kg, 3
  br i1 %i.km, label %.lr.ph.i46.i.i.i.i.i, label %.lr.ph.i43.i.i.i.i.i

.lr.ph.i43.i.i.i.i.i:                             ; preds = %.lr.ph.i43.i.i.i.i.i.prol.loopexit, %.lr.ph.i43.i.i.i.i.i
  %i.kn = phi i32 [ %i.ky, %.lr.ph.i43.i.i.i.i.i ], [ %.unr, %.lr.ph.i43.i.i.i.i.i.prol.loopexit ]
  %.018.i.i.i.i.i.i = phi ptr [ %i.kz, %.lr.ph.i43.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i43.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01517.i.i.i.i.i.i = phi ptr [ %i.la, %.lr.ph.i43.i.i.i.i.i ], [ %.01517.i.i.i.i.i.i.unr, %.lr.ph.i43.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ko = load i32, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !800
  store i32 %i.ko, ptr %.01517.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !800
  store i32 0, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !800
  %i.kp = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 4
  %i.kr = load i32, ptr %i.kp, align 4, !tbaa !82, !noalias !800
  store i32 %i.kr, ptr %i.kq, align 4, !tbaa !82, !noalias !800
  store i32 0, ptr %i.kp, align 4, !tbaa !82, !noalias !800
  %i.ks = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 8
  %i.ku = load i32, ptr %i.ks, align 4, !tbaa !82, !noalias !800
  store i32 %i.ku, ptr %i.kt, align 4, !tbaa !82, !noalias !800
  store i32 0, ptr %i.ks, align 4, !tbaa !82, !noalias !800
  %i.kv = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 12
  %i.kx = load i32, ptr %i.kv, align 4, !tbaa !82, !noalias !800
  store i32 %i.kx, ptr %i.kw, align 4, !tbaa !82, !noalias !800
  store i32 0, ptr %i.kv, align 4, !tbaa !82, !noalias !800
  %i.ky = add i32 %i.kn, 4                        ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 16
  %.not.i44.i.i.i.i.i.3 = icmp eq ptr %i.kz, %i.it
  br i1 %.not.i44.i.i.i.i.i.3, label %.lr.ph.i46.i.i.i.i.i, label %.lr.ph.i43.i.i.i.i.i, !llvm.loop !16

.lr.ph.i46.i.i.i.i.i:                             ; preds = %.lr.ph.i43.i.i.i.i.i, %.lr.ph.i43.i.i.i.i.i.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph.i43.i.i.i.i.i.prol.loopexit ], [ %i.ky, %.lr.ph.i43.i.i.i.i.i ] ; 2 uses
  store i32 %.lcssa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !800
  %.pre.i47.i.i.i.i.i = load i32, ptr %0, align 4, !tbaa !82, !noalias !800 ; 2 uses
  %min.iters.check352.not = icmp eq i64 %gepdiff, 8
  br i1 %min.iters.check352.not, label %vector.ph353, label %scalar.ph351

vector.ph353:                                     ; preds = %.lr.ph.i46.i.i.i.i.i
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.pre.i47.i.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body355

vector.body355:                                   ; preds = %vector.body355, %vector.ph353
  %index356 = phi i64 [ 0, %vector.ph353 ], [ %index.next358, %vector.body355 ] ; 2 uses
  %i.lb = shl i64 %index356, 2
  %next.gep357 = getelementptr i8, ptr %i.is, i64 %i.lb
  store <2 x i32> %broadcast.splat, ptr %next.gep357, align 4, !tbaa !82, !noalias !800
  %index.next358 = add nuw i64 %index356, 2       ; 2 uses
  %i.lc = icmp eq i64 %index.next358, %i.je
  br i1 %i.lc, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit51.i.i.i.i.i, label %vector.body355, !llvm.loop !777

scalar.ph351:                                     ; preds = %.lr.ph.i46.i.i.i.i.i, %scalar.ph351
  %.07.i48.i.i.i.i.i = phi i64 [ %i.ld, %scalar.ph351 ], [ %i.je, %.lr.ph.i46.i.i.i.i.i ]
  %.046.i49.i.i.i.i.i = phi ptr [ %i.le, %scalar.ph351 ], [ %i.is, %.lr.ph.i46.i.i.i.i.i ] ; 2 uses
  %i.ld = add nsw i64 %.07.i48.i.i.i.i.i, -1      ; 2 uses
end_hunk_3
begin_hunk_4_@_Z18test_capacity_0_ndIiEvv:bb.a

bb.aj:                                            ; preds = %.sink.split185, %bb.ad
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !95, !noalias !860 ; 2 uses
  %.idx153 = shl i64 %i.aw, 2                     ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %.idx153 ; 5 uses
  %i.ay = load i64, ptr %i.b, align 8, !tbaa !853, !noalias !861
  %.fr = freeze i64 %i.ay                         ; 5 uses
  %.idx.i = shl i64 %.fr, 2                       ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %1, i64 %.idx.i ; 3 uses
  %i.ba = icmp ne i64 %i.aw, 0                    ; 2 uses
  %i.bb = icmp ne i64 %.fr, 0
  %or.cond13.i = and i1 %i.ba, %i.bb
  br i1 %or.cond13.i, label %iter.check, label %.critedge.i

iter.check:                                       ; preds = %bb.aj
  %i.bc = add i64 %.idx.i, -4
  %i.bd = lshr exact i64 %i.bc, 2
  %i.be = add i64 %.idx153, -4
  %i.bf = lshr exact i64 %i.be, 2
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bf) ; 4 uses
  %i.bg = shl nuw i64 %umin, 2
  %i.bh = add i64 %i.bg, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.bh, i1 false), !tbaa !41
  %i.bi = add nuw nsw i64 %umin, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin, 3
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check192 = icmp samesign ult i64 %umin, 31
  br i1 %min.iters.check192, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %i.bi, 28
  %n.vec = and i64 %i.bi, 9223372036854775776     ; 4 uses
  %i.bk = shl i64 %n.vec, 2                       ; 2 uses
  %i.bl = getelementptr i8, ptr %0, i64 %i.bk     ; 3 uses
  %i.bm = getelementptr i8, ptr %1, i64 %i.bk     ; 2 uses
  %broadcast.splatinsert = insertelement <16 x ptr> poison, ptr %i.ax, i64 0
  %broadcast.splat = shufflevector <16 x ptr> %broadcast.splatinsert, <16 x ptr> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %0, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 128
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !824

middle.block:                                     ; preds = %vector.body
  %vector.gep = getelementptr i8, ptr %pointer.phi, <16 x i64> <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28, i64 32, i64 36, i64 40, i64 44, i64 48, i64 52, i64 56, i64 60>
  %wide.gep = getelementptr i8, <16 x ptr> %vector.gep, i64 68
  %i.bo = icmp ne <16 x ptr> %wide.gep, %broadcast.splat
  %i.bp = extractelement <16 x i1> %i.bo, i64 15
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %.critedge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !151

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.bl, %vec.epilog.iter.check ], [ %0, %vector.main.loop.iter.check ]
  %n.vec193 = and i64 %i.bi, 9223372036854775804  ; 3 uses
  %i.bq = shl i64 %n.vec193, 2                    ; 2 uses
  %i.br = getelementptr i8, ptr %0, i64 %i.bq     ; 2 uses
  %i.bs = getelementptr i8, ptr %1, i64 %i.bq     ; 2 uses
  %broadcast.splatinsert194 = insertelement <4 x ptr> poison, ptr %i.ax, i64 0
  %broadcast.splat195 = shufflevector <4 x ptr> %broadcast.splatinsert194, <4 x ptr> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index196 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next199, %vec.epilog.vector.body ]
  %pointer.phi197 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind200, %vec.epilog.vector.body ] ; 2 uses
  %index.next199 = add nuw i64 %index196, 4       ; 2 uses
  %ptr.ind200 = getelementptr i8, ptr %pointer.phi197, i64 16
  %i.bt = icmp eq i64 %index.next199, %n.vec193
  br i1 %i.bt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !825

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %vector.gep198 = getelementptr i8, ptr %pointer.phi197, <4 x i64> <i64 0, i64 4, i64 8, i64 12>
  %wide.gep201 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 4
  %i.bu = icmp ne <4 x ptr> %wide.gep201, %broadcast.splat195
  %i.bv = extractelement <4 x i1> %i.bu, i64 3
  %cmp.n202 = icmp eq i64 %i.bi, %n.vec193
  br i1 %cmp.n202, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %0, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ]
  %.sroa.07.014.i.ph = phi ptr [ %1, %iter.check ], [ %i.bm, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.bw = phi ptr [ %i.by, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ]
  %.sroa.07.014.i = phi ptr [ %i.bx, %.lr.ph.i ], [ %.sroa.07.014.i.ph, %.lr.ph.i.preheader ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.07.014.i, i64 4 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 3 uses
  %i.bz = icmp ne ptr %i.by, %i.ax                ; 2 uses
  %i.ca = icmp ne ptr %i.bx, %i.az
  %or.cond.i = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !826

.critedge.i:                                      ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.aj
  %.sroa.07.0.lcssa.i = phi ptr [ %1, %bb.aj ], [ %i.bs, %vec.epilog.middle.block ], [ %i.bm, %middle.block ], [ %i.bx, %.lr.ph.i ]
  %.lcssa12.i = phi ptr [ %0, %bb.aj ], [ %i.br, %vec.epilog.middle.block ], [ %i.bl, %middle.block ], [ %i.by, %.lr.ph.i ] ; 3 uses
  %.lcssa.i = phi i1 [ %i.ba, %bb.aj ], [ %i.bv, %vec.epilog.middle.block ], [ %i.bp, %middle.block ], [ %i.bz, %.lr.ph.i ]
  %i.cb = icmp eq ptr %.lcssa12.i, %i.ax
  br i1 %i.cb, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.critedge.i
  %i.cc = ptrtoint ptr %i.az to i64
  %i.cd = ptrtoint ptr %.sroa.07.0.lcssa.i to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2
  %i.cg = sub i64 %.fr, %i.cf
  br label %bb.ap

bb.al:                                            ; preds = %.critedge.i
  %i.ch = ptrtoint ptr %i.ax to i64
  %i.ci = ptrtoint ptr %.lcssa12.i to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 2 uses
  %i.ck = ashr exact i64 %i.cj, 2                 ; 2 uses
  %i.cl = sub i64 0, %.fr
  %.not.i.i.i94 = icmp ugt i64 %i.ck, %i.cl
  br i1 %.not.i.i.i94, label %bb.ao, label %bb.am, !prof !42

bb.am:                                            ; preds = %bb.al
  br i1 %.lcssa.i, label %bb.an, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i, !prof !152

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.az, ptr nonnull align 1 %.lcssa12.i, i64 %i.cj, i1 false), !noalias !862
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !851, !noalias !863
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i

bb.ao:                                            ; preds = %bb.al
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc95 unwind label %bb.at

.noexc95:                                         ; preds = %bb.ao
  unreachable

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i: ; preds = %bb.an, %bb.am
  %i.cm = phi i64 [ %.fr, %bb.am ], [ %.pre.i, %bb.an ]
  %i.cn = add i64 %i.cm, %i.ck
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i, %bb.ak
  %storemerge.i = phi i64 [ %i.cn, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i ], [ %i.cg, %bb.ak ]
  store i64 %storemerge.i, ptr %i.b, align 8, !tbaa !851
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.av unwind label %bb.at

bb.aq:                                            ; preds = %bb.ah
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %.sink.split185 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ce unwind label %bb.cf

bb.as:                                            ; preds = %bb.ai
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ce unwind label %bb.cf

bb.at:                                            ; preds = %bb.ao, %bb.ap
  %i.cq = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  %i.cs = extractvalue { ptr, i32 } %i.cq, 1
  %i.ct = icmp eq i32 %i.cs, %i.o
  %i.cu = call ptr @__cxa_begin_catch(ptr %i.cr) #25 ; 0 uses
  br i1 %i.ct, label %bb.au, label %bb.az

bb.au:                                            ; preds = %bb.at
  %i.cv = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split186 unwind label %bb.bb ; 0 uses

.sink.split186:                                   ; preds = %bb.au, %bb.az
  call void @__cxa_end_catch()
  br label %bb.av

bb.av:                                            ; preds = %.sink.split186, %bb.ap
  %i.cw = load i64, ptr %i.b, align 8, !tbaa !853, !noalias !864 ; 5 uses
  %.idx.i.i = shl i64 %i.cw, 2                    ; 3 uses
  %i.cx = getelementptr i8, ptr %1, i64 %.idx.i.i
  %.not = icmp eq i64 %i.cw, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.av
  %i.cy = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.cz = lshr exact i64 %i.cy, 2
  %umin168 = call i64 @llvm.umin.i64(i64 %i.cz, i64 4) ; 2 uses
  %i.da = shl nuw nsw i64 %umin168, 2
  %i.db = add nuw nsw i64 %i.da, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 range(i64 0, 21) %i.db, i1 false), !tbaa !41
  %i.dc = sub nuw nsw i64 4, %umin168
  %i.dd = icmp ugt i64 %i.cy, 12
  br i1 %i.dd, label %bb.aw, label %.critedge.i.i.thread

bb.aw:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.db
  %i.de = ashr exact i64 %gepdiff, 2
  %i.df = sub i64 %i.cw, %i.de
  br label %bb.ay

.critedge.i.i.thread:                             ; preds = %bb.av, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i148 = phi i64 [ %i.dc, %.lr.ph.i.i.preheader ], [ 5, %bb.av ] ; 3 uses
  %i.dg = sub i64 0, %i.cw
  %.not.i.i.i.i96 = icmp ugt i64 %.sroa.3.0.lcssa.i.i148, %i.dg
  br i1 %.not.i.i.i.i96, label %bb.ax, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.dh = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i148, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cx, i8 0, i64 %i.dh, i1 false), !tbaa !41, !noalias !865
  %i.di = add i64 %.sroa.3.0.lcssa.i.i148, %i.cw
  br label %bb.ay

bb.ax:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc98 unwind label %bb.bc

.noexc98:                                         ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.aw
  %storemerge.i.i = phi i64 [ %i.di, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.df, %bb.aw ]
  store i64 %storemerge.i.i, ptr %i.b, align 8, !tbaa !851
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.be unwind label %bb.bc

bb.az:                                            ; preds = %bb.at
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %.sink.split186 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ce unwind label %bb.cf

bb.bb:                                            ; preds = %bb.au
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ce unwind label %bb.cf

bb.bc:                                            ; preds = %bb.ax, %bb.ay
  %i.dl = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.10 = extractvalue { ptr, i32 } %i.dl, 1
  %.1041 = extractvalue { ptr, i32 } %i.dl, 0
  %i.dm = icmp eq i32 %.10, %i.o
  %i.dn = call ptr @__cxa_begin_catch(ptr %.1041) #25 ; 0 uses
  br i1 %i.dm, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.do = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split187 unwind label %bb.bk ; 0 uses

.sink.split187:                                   ; preds = %bb.bd, %bb.bi
  call void @__cxa_end_catch()
  br label %bb.be

bb.be:                                            ; preds = %.sink.split187, %bb.ay
  %i.dp = load i64, ptr %i.b, align 8, !tbaa !853, !noalias !866 ; 5 uses
  %.idx.i.i99 = shl i64 %i.dp, 2                  ; 3 uses
  %i.dq = getelementptr i8, ptr %1, i64 %.idx.i.i99
  %.not154 = icmp eq i64 %i.dp, 0
  br i1 %.not154, label %.critedge.i.i100.thread, label %.lr.ph.i.i114.preheader

.lr.ph.i.i114.preheader:                          ; preds = %bb.be
  %i.dr = add i64 %.idx.i.i99, -4                 ; 2 uses
  %i.ds = lshr exact i64 %i.dr, 2
  %umin170 = call i64 @llvm.umin.i64(i64 %i.ds, i64 4) ; 2 uses
  %i.dt = shl nuw nsw i64 %umin170, 2
  %i.du = add nuw nsw i64 %i.dt, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 range(i64 0, 21) %i.du, i1 false), !tbaa !41
  %i.dv = sub nuw nsw i64 4, %umin170
  %i.dw = icmp ugt i64 %i.dr, 12
  br i1 %i.dw, label %bb.bf, label %.critedge.i.i100.thread

bb.bf:                                            ; preds = %.lr.ph.i.i114.preheader
  %gepdiff181 = sub i64 %.idx.i.i99, %i.du
  %i.dx = ashr exact i64 %gepdiff181, 2
  %i.dy = sub i64 %i.dp, %i.dx
  br label %bb.bh

.critedge.i.i100.thread:                          ; preds = %bb.be, %.lr.ph.i.i114.preheader
  %.sroa.3.0.lcssa.i.i101151 = phi i64 [ %i.dv, %.lr.ph.i.i114.preheader ], [ 5, %bb.be ] ; 3 uses
  %i.dz = sub i64 0, %i.dp
  %.not.i.i.i.i103 = icmp ugt i64 %.sroa.3.0.lcssa.i.i101151, %i.dz
  br i1 %.not.i.i.i.i103, label %bb.bg, label %.lr.ph.i.i.i.i.i.i.i.i106.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i106.preheader:              ; preds = %.critedge.i.i100.thread
  %i.ea = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i101151, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dq, i8 0, i64 %i.ea, i1 false), !tbaa !41, !noalias !867
  %i.eb = add i64 %.sroa.3.0.lcssa.i.i101151, %i.dp
  br label %bb.bh

bb.bg:                                            ; preds = %.critedge.i.i100.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc118 unwind label %bb.bl

.noexc118:                                        ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i106.preheader, %bb.bf
  %storemerge.i.i111 = phi i64 [ %i.eb, %.lr.ph.i.i.i.i.i.i.i.i106.preheader ], [ %i.dy, %bb.bf ]
  store i64 %storemerge.i.i111, ptr %i.b, align 8, !tbaa !851
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.bn unwind label %bb.bl

bb.bi:                                            ; preds = %bb.bc
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %.sink.split187 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ce unwind label %bb.cf

bb.bk:                                            ; preds = %bb.bd
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ce unwind label %bb.cf

bb.bl:                                            ; preds = %bb.bg, %bb.bh
  %i.ee = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.12 = extractvalue { ptr, i32 } %i.ee, 1
  %.1243 = extractvalue { ptr, i32 } %i.ee, 0
  %i.ef = icmp eq i32 %.12, %i.o
  %i.eg = call ptr @__cxa_begin_catch(ptr %.1243) #25 ; 0 uses
  br i1 %i.ef, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.eh = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split188 unwind label %bb.br ; 0 uses

.sink.split188:                                   ; preds = %bb.bm, %bb.bp
  call void @__cxa_end_catch()
  br label %bb.bn

bb.bn:                                            ; preds = %.sink.split188, %bb.bh
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !95, !noalias !868
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %_ZN5boost9container13static_vectorIiLm0EvEC2INS0_12vec_iteratorIPiLb0EEEEET_S7_.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc120 unwind label %bb.bs

.noexc120:                                        ; preds = %bb.bo
  unreachable

_ZN5boost9container13static_vectorIiLm0EvEC2INS0_12vec_iteratorIPiLb0EEEEET_S7_.exit: ; preds = %bb.bn
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 433, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.bu unwind label %bb.bs

bb.bp:                                            ; preds = %bb.bl
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %.sink.split188 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ce unwind label %bb.cf

bb.br:                                            ; preds = %bb.bm
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ce unwind label %bb.cf

bb.bs:                                            ; preds = %bb.bo, %_ZN5boost9container13static_vectorIiLm0EvEC2INS0_12vec_iteratorIPiLb0EEEEET_S7_.exit
  %i.em = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.14 = extractvalue { ptr, i32 } %i.em, 1
  %.1445 = extractvalue { ptr, i32 } %i.em, 0
  %i.en = icmp eq i32 %.14, %i.o
  %i.eo = call ptr @__cxa_begin_catch(ptr %.1445) #25 ; 0 uses
  br i1 %i.en, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.ep = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split189 unwind label %bb.bx ; 0 uses

.sink.split189:                                   ; preds = %bb.bt, %bb.bv
  call void @__cxa_end_catch()
  br label %bb.bu

bb.bu:                                            ; preds = %.sink.split189, %_ZN5boost9container13static_vectorIiLm0EvEC2INS0_12vec_iteratorIPiLb0EEEEET_S7_.exit
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc121 unwind label %bb.by

.noexc121:                                        ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bs
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 433, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %.sink.split189 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ce unwind label %bb.cf

bb.bx:                                            ; preds = %bb.bt
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ce unwind label %bb.cf

bb.by:                                            ; preds = %bb.bu
  %i.es = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.16 = extractvalue { ptr, i32 } %i.es, 1
  %.1647 = extractvalue { ptr, i32 } %i.es, 0
  %i.et = icmp eq i32 %.16, %i.o
  %i.eu = call ptr @__cxa_begin_catch(ptr %.1647) #25 ; 0 uses
  br i1 %i.et, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.ev = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ca unwind label %bb.cd     ; 0 uses

bb.ca:                                            ; preds = %bb.bz, %bb.cb
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  ret void

bb.cb:                                            ; preds = %bb.by
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 434, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.ca unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ce unwind label %bb.cf

bb.cd:                                            ; preds = %bb.bz
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %bb.cd, %bb.bx, %bb.br, %bb.bk, %bb.bb, %bb.as, %bb.ag, %bb.w, %bb.o, %bb.g, %bb.cc, %bb.bw, %bb.bq, %bb.bj, %bb.ba, %bb.ar, %bb.af, %bb.v, %bb.n, %bb.f
  %.pn83.pn = phi { ptr, i32 } [ %i.er, %bb.bx ], [ %i.ex, %bb.cd ], [ %i.ew, %bb.cc ], [ %i.el, %bb.br ], [ %i.eq, %bb.bw ], [ %i.ed, %bb.bk ], [ %i.ek, %bb.bq ], [ %i.dk, %bb.bb ], [ %i.ec, %bb.bj ], [ %i.cp, %bb.as ], [ %i.dj, %bb.ba ], [ %i.ar, %bb.ag ], [ %i.co, %bb.ar ], [ %i.af, %bb.w ], [ %i.aq, %bb.af ], [ %i.w, %bb.o ], [ %i.ae, %bb.v ], [ %i.m, %bb.g ], [ %i.v, %bb.n ], [ %i.l, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  resume { ptr, i32 } %.pn83.pn

bb.cf:                                            ; preds = %bb.cd, %bb.cc, %bb.bx, %bb.bw, %bb.br, %bb.bq, %bb.bk, %bb.bj, %bb.bb, %bb.ba, %bb.as, %bb.ar, %bb.ag, %bb.af, %bb.w, %bb.v, %bb.o, %bb.n, %bb.g, %bb.f
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  %i.ez = extractvalue { ptr, i32 } %i.ey, 0
  call void @__clang_call_terminate(ptr %i.ez) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z18test_capacity_0_ndI8value_ndEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::static_vector.43", align 8 ; 10 uses
  %1 = alloca %"class.boost::container::static_vector.202", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i64 5, ptr %i.a, align 8, !tbaa !118
end_hunk_4
begin_hunk_5_@_Z18test_capacity_0_ndI8value_ndEvv:bb.a
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.x:                                             ; preds = %bb.s, %bb.t
  %i.ag = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.5 = extractvalue { ptr, i32 } %i.ag, 1
  %.536 = extractvalue { ptr, i32 } %i.ag, 0
  %i.ah = icmp eq i32 %.5, %i.o
  %i.ai = tail call ptr @__cxa_begin_catch(ptr %.536) #25 ; 0 uses
  br i1 %i.ah, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.aj = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split189 unwind label %bb.ae ; 0 uses

.sink.split189:                                   ; preds = %bb.y, %bb.ac
  tail call void @__cxa_end_catch()
  br label %bb.z

bb.z:                                             ; preds = %.sink.split189, %bb.t
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !913, !noalias !916 ; 3 uses
  %i.al = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !917 ; 4 uses
  %i.am = sub i64 0, %i.ak
  %.not.i.i93 = icmp ugt i64 %i.al, %i.am
  br i1 %.not.i.i93, label %bb.ab, label %bb.aa, !prof !42

bb.aa:                                            ; preds = %bb.z
  %.not13.i.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not13.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.aa
  %i.an = getelementptr [4 x i8], ptr %1, i64 %i.ak
  %i.ao = shl nuw i64 %i.al, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.an, ptr nonnull align 8 %0, i64 %i.ao, i1 false), !tbaa !41, !noalias !918
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc94 unwind label %bb.af

.noexc94:                                         ; preds = %bb.ab
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.aa
  %i.ap = add i64 %i.ak, %i.al
  store i64 %i.ap, ptr %i.b, align 8, !tbaa !911, !noalias !919
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.ah unwind label %bb.af

bb.ac:                                            ; preds = %bb.x
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 428, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %.sink.split189 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.ae:                                            ; preds = %bb.y
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.af:                                            ; preds = %bb.ab, %.loopexit
  %i.as = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.7 = extractvalue { ptr, i32 } %i.as, 1
  %.738 = extractvalue { ptr, i32 } %i.as, 0
  %i.at = icmp eq i32 %.7, %i.o
  %i.au = tail call ptr @__cxa_begin_catch(ptr %.738) #25 ; 0 uses
  br i1 %i.at, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.av = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split190 unwind label %bb.ao ; 0 uses

.sink.split190:                                   ; preds = %bb.ag, %bb.am
  tail call void @__cxa_end_catch()
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split190, %.loopexit
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !920 ; 2 uses
  %.idx = shl i64 %i.aw, 2                        ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %.idx ; 2 uses
  %i.ay = load i64, ptr %i.b, align 8, !tbaa !913, !noalias !921
  %.fr = freeze i64 %i.ay                         ; 5 uses
  %.idx.i = shl i64 %.fr, 2                       ; 2 uses
  %i.az = getelementptr i8, ptr %1, i64 %.idx.i   ; 2 uses
  %i.ba = icmp ne i64 %i.aw, 0
  %i.bb = icmp ne i64 %.fr, 0
  %or.cond12.i = and i1 %i.ba, %i.bb
  br i1 %or.cond12.i, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %bb.ah
  %i.bc = add i64 %.idx.i, -4
  %i.bd = lshr exact i64 %i.bc, 2
  %i.be = add i64 %.idx, -4
  %i.bf = lshr exact i64 %i.be, 2
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bf)
  %i.bg = shl nuw i64 %umin, 2
  %i.bh = add i64 %i.bg, 4                        ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.bh, i1 false), !tbaa !41
  %scevgep = getelementptr i8, ptr %1, i64 %i.bh
  %scevgep173 = getelementptr i8, ptr %0, i64 %i.bh
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i.preheader, %bb.ah
  %.sroa.07.0.lcssa.i = phi ptr [ %1, %bb.ah ], [ %scevgep, %.lr.ph.i.preheader ]
  %.lcssa11.i = phi ptr [ %0, %bb.ah ], [ %scevgep173, %.lr.ph.i.preheader ] ; 3 uses
  %i.bi = icmp eq ptr %.lcssa11.i, %i.ax
  br i1 %i.bi, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.critedge.i
  %i.bj = ptrtoint ptr %i.az to i64
  %i.bk = ptrtoint ptr %.sroa.07.0.lcssa.i to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2
  %i.bn = sub i64 %.fr, %i.bm
  br label %bb.al

bb.aj:                                            ; preds = %.critedge.i
  %i.bo = ptrtoint ptr %i.ax to i64
  %i.bp = ptrtoint ptr %.lcssa11.i to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = ashr exact i64 %i.bq, 2                 ; 2 uses
  %i.bs = sub i64 0, %.fr
  %.not.i.i.i95 = icmp ugt i64 %i.br, %i.bs
  br i1 %.not.i.i.i95, label %bb.ak, label %.lr.ph.i.i.i.i.i.i.i96.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i96.preheader:                 ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.az, ptr align 4 %.lcssa11.i, i64 %i.bq, i1 false), !tbaa !41, !noalias !922
  %i.bt = add i64 %i.br, %.fr
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc100 unwind label %bb.ap

.noexc100:                                        ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i96.preheader, %bb.ai
  %storemerge.i = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i.i.i96.preheader ], [ %i.bn, %bb.ai ]
  store i64 %storemerge.i, ptr %i.b, align 8, !tbaa !911
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.ar unwind label %bb.ap

bb.am:                                            ; preds = %bb.af
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %.sink.split190 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.ao:                                            ; preds = %bb.ag
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.ap:                                            ; preds = %bb.ak, %bb.al
  %i.bw = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  %i.by = extractvalue { ptr, i32 } %i.bw, 1
  %i.bz = icmp eq i32 %i.by, %i.o
  %i.ca = call ptr @__cxa_begin_catch(ptr %i.bx) #25 ; 0 uses
  br i1 %i.bz, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.cb = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split191 unwind label %bb.ax ; 0 uses

.sink.split191:                                   ; preds = %bb.aq, %bb.av
  call void @__cxa_end_catch()
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split191, %bb.al
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !913, !noalias !923 ; 5 uses
  %.idx.i.i = shl i64 %i.cc, 2                    ; 3 uses
  %i.cd = getelementptr i8, ptr %1, i64 %.idx.i.i
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ar
  %i.ce = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 2
  %umin174 = call i64 @llvm.umin.i64(i64 %i.cf, i64 4) ; 2 uses
  %i.cg = shl nuw nsw i64 %umin174, 2
  %i.ch = add nuw nsw i64 %i.cg, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 range(i64 0, 21) %i.ch, i1 false), !tbaa !41
  %i.ci = sub nuw nsw i64 4, %umin174
  %i.cj = icmp ugt i64 %i.ce, 12
  br i1 %i.cj, label %bb.as, label %.critedge.i.i.thread

bb.as:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.ch
  %i.ck = ashr exact i64 %gepdiff, 2
  %i.cl = sub i64 %i.cc, %i.ck
  br label %bb.au

.critedge.i.i.thread:                             ; preds = %bb.ar, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i156 = phi i64 [ %i.ci, %.lr.ph.i.i.preheader ], [ 5, %bb.ar ] ; 3 uses
  %i.cm = sub i64 0, %i.cc
  %.not.i.i.i.i101 = icmp ugt i64 %.sroa.3.0.lcssa.i.i156, %i.cm
  br i1 %.not.i.i.i.i101, label %bb.at, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.cn = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i156, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cd, i8 0, i64 %i.cn, i1 false), !tbaa !41, !noalias !924
  %i.co = add i64 %.sroa.3.0.lcssa.i.i156, %i.cc
  br label %bb.au

bb.at:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc103 unwind label %bb.ay

.noexc103:                                        ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.as
  %storemerge.i.i = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cl, %bb.as ]
  store i64 %storemerge.i.i, ptr %i.b, align 8, !tbaa !911
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.ba unwind label %bb.ay

bb.av:                                            ; preds = %bb.ap
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %.sink.split191 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.ax:                                            ; preds = %bb.aq
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.ay:                                            ; preds = %bb.at, %bb.au
  %i.cr = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.10 = extractvalue { ptr, i32 } %i.cr, 1
  %.1041 = extractvalue { ptr, i32 } %i.cr, 0
  %i.cs = icmp eq i32 %.10, %i.o
  %i.ct = call ptr @__cxa_begin_catch(ptr %.1041) #25 ; 0 uses
  br i1 %i.cs, label %bb.az, label %bb.be

bb.az:                                            ; preds = %bb.ay
  %i.cu = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split192 unwind label %bb.bg ; 0 uses

.sink.split192:                                   ; preds = %bb.az, %bb.be
  call void @__cxa_end_catch()
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split192, %bb.au
  %i.cv = load i64, ptr %i.b, align 8, !tbaa !913, !noalias !925 ; 5 uses
  %.idx.i.i104 = shl i64 %i.cv, 2                 ; 3 uses
  %i.cw = getelementptr i8, ptr %1, i64 %.idx.i.i104
  %.not160 = icmp eq i64 %i.cv, 0
  br i1 %.not160, label %.critedge.i.i105.thread, label %.lr.ph.i.i119.preheader

.lr.ph.i.i119.preheader:                          ; preds = %bb.ba
  %i.cx = add i64 %.idx.i.i104, -4                ; 2 uses
  %i.cy = lshr exact i64 %i.cx, 2
  %umin177 = call i64 @llvm.umin.i64(i64 %i.cy, i64 4) ; 2 uses
  %i.cz = shl nuw nsw i64 %umin177, 2
  %i.da = add nuw nsw i64 %i.cz, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 range(i64 0, 21) %i.da, i1 false), !tbaa !41
  %i.db = sub nuw nsw i64 4, %umin177
  %i.dc = icmp ugt i64 %i.cx, 12
  br i1 %i.dc, label %bb.bb, label %.critedge.i.i105.thread

bb.bb:                                            ; preds = %.lr.ph.i.i119.preheader
  %gepdiff188 = sub i64 %.idx.i.i104, %i.da
  %i.dd = ashr exact i64 %gepdiff188, 2
  %i.de = sub i64 %i.cv, %i.dd
  br label %bb.bd

.critedge.i.i105.thread:                          ; preds = %bb.ba, %.lr.ph.i.i119.preheader
  %.sroa.3.0.lcssa.i.i106159 = phi i64 [ %i.db, %.lr.ph.i.i119.preheader ], [ 5, %bb.ba ] ; 3 uses
  %i.df = sub i64 0, %i.cv
  %.not.i.i.i.i108 = icmp ugt i64 %.sroa.3.0.lcssa.i.i106159, %i.df
  br i1 %.not.i.i.i.i108, label %bb.bc, label %.lr.ph.i.i.i.i.i.i.i.i111.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i111.preheader:              ; preds = %.critedge.i.i105.thread
  %i.dg = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i106159, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cw, i8 0, i64 %i.dg, i1 false), !tbaa !41, !noalias !926
  %i.dh = add i64 %.sroa.3.0.lcssa.i.i106159, %i.cv
  br label %bb.bd

bb.bc:                                            ; preds = %.critedge.i.i105.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc123 unwind label %bb.bh

.noexc123:                                        ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i111.preheader, %bb.bb
  %storemerge.i.i116 = phi i64 [ %i.dh, %.lr.ph.i.i.i.i.i.i.i.i111.preheader ], [ %i.de, %bb.bb ]
  store i64 %storemerge.i.i116, ptr %i.b, align 8, !tbaa !911
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.bj unwind label %bb.bh

bb.be:                                            ; preds = %bb.ay
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %.sink.split192 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.bg:                                            ; preds = %bb.az
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.bh:                                            ; preds = %bb.bc, %bb.bd
  %i.dk = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.12 = extractvalue { ptr, i32 } %i.dk, 1
  %.1243 = extractvalue { ptr, i32 } %i.dk, 0
  %i.dl = icmp eq i32 %.12, %i.o
  %i.dm = call ptr @__cxa_begin_catch(ptr %.1243) #25 ; 0 uses
  br i1 %i.dl, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.dn = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split193 unwind label %bb.bn ; 0 uses

.sink.split193:                                   ; preds = %bb.bi, %bb.bl
  call void @__cxa_end_catch()
  br label %bb.bj

bb.bj:                                            ; preds = %.sink.split193, %bb.bd
  %i.do = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !927
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %_ZN5boost9container13static_vectorI8value_ndLm0EvEC2INS0_12vec_iteratorIPS2_Lb0EEEEET_S8_.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc125 unwind label %bb.bo

.noexc125:                                        ; preds = %bb.bk
  unreachable

_ZN5boost9container13static_vectorI8value_ndLm0EvEC2INS0_12vec_iteratorIPS2_Lb0EEEEET_S8_.exit: ; preds = %bb.bj
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 433, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.bq unwind label %bb.bo

bb.bl:                                            ; preds = %bb.bh
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %.sink.split193 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.bn:                                            ; preds = %bb.bi
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.bo:                                            ; preds = %bb.bk, %_ZN5boost9container13static_vectorI8value_ndLm0EvEC2INS0_12vec_iteratorIPS2_Lb0EEEEET_S8_.exit
  %i.ds = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.14 = extractvalue { ptr, i32 } %i.ds, 1
  %.1445 = extractvalue { ptr, i32 } %i.ds, 0
  %i.dt = icmp eq i32 %.14, %i.o
  %i.du = call ptr @__cxa_begin_catch(ptr %.1445) #25 ; 0 uses
  br i1 %i.dt, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.dv = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split194 unwind label %bb.bt ; 0 uses

.sink.split194:                                   ; preds = %bb.bp, %bb.br
  call void @__cxa_end_catch()
  br label %bb.bq

bb.bq:                                            ; preds = %.sink.split194, %_ZN5boost9container13static_vectorI8value_ndLm0EvEC2INS0_12vec_iteratorIPS2_Lb0EEEEET_S8_.exit
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc126 unwind label %bb.bu

.noexc126:                                        ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bo
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 433, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %.sink.split194 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.bt:                                            ; preds = %bb.bp
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.bu:                                            ; preds = %bb.bq
  %i.dy = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.16 = extractvalue { ptr, i32 } %i.dy, 1
  %.1647 = extractvalue { ptr, i32 } %i.dy, 0
  %i.dz = icmp eq i32 %.16, %i.o
  %i.ea = call ptr @__cxa_begin_catch(ptr %.1647) #25 ; 0 uses
  br i1 %i.dz, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.eb = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bw unwind label %bb.bz     ; 0 uses

bb.bw:                                            ; preds = %bb.bv, %bb.bx
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  ret void

bb.bx:                                            ; preds = %bb.bu
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 434, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.bw unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.bz:                                            ; preds = %bb.bv
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz, %bb.bt, %bb.bn, %bb.bg, %bb.ax, %bb.ao, %bb.ae, %bb.w, %bb.o, %bb.g, %bb.by, %bb.bs, %bb.bm, %bb.bf, %bb.aw, %bb.an, %bb.ad, %bb.v, %bb.n, %bb.f
  %.pn84.pn = phi { ptr, i32 } [ %i.dx, %bb.bt ], [ %i.ed, %bb.bz ], [ %i.ec, %bb.by ], [ %i.dr, %bb.bn ], [ %i.dw, %bb.bs ], [ %i.dj, %bb.bg ], [ %i.dq, %bb.bm ], [ %i.cq, %bb.ax ], [ %i.di, %bb.bf ], [ %i.bv, %bb.ao ], [ %i.cp, %bb.aw ], [ %i.ar, %bb.ae ], [ %i.bu, %bb.an ], [ %i.af, %bb.w ], [ %i.aq, %bb.ad ], [ %i.w, %bb.o ], [ %i.ae, %bb.v ], [ %i.m, %bb.g ], [ %i.v, %bb.n ], [ %i.l, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  resume { ptr, i32 } %.pn84.pn

bb.cb:                                            ; preds = %bb.bz, %bb.by, %bb.bt, %bb.bs, %bb.bn, %bb.bm, %bb.bg, %bb.bf, %bb.ax, %bb.aw, %bb.ao, %bb.an, %bb.ae, %bb.ad, %bb.w, %bb.v, %bb.o, %bb.n, %bb.g, %bb.f
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z18test_capacity_0_ndI14counting_valueEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::static_vector.29", align 8 ; 15 uses
  %1 = alloca %"class.boost::container::static_vector.212", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.a = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
end_hunk_5
begin_hunk_6_@_Z18test_capacity_0_ndI14counting_valueEvv:bb.a
  %i.di = sub i64 %i.dg, %i.dh                    ; 3 uses
  %i.dj = ashr exact i64 %i.di, 3                 ; 9 uses
  %i.dk = sub i64 0, %.fr
  %.not.i.i.i97 = icmp ugt i64 %i.dj, %i.dk
  br i1 %.not.i.i.i97, label %bb.as, label %.lr.ph.i.i.i.i.i.i.i, !prof !42

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ar
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !988
  %min.iters.check282 = icmp ult i64 %i.dj, 20
  br i1 %min.iters.check282, label %scalar.ph281.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dl = add i64 %.idx.i, %i.di                  ; 2 uses
  %i.dm = getelementptr i8, ptr %1, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 -4
  %i.do = getelementptr i8, ptr %.lcssa10.i, i64 %i.di
  %i.dp = getelementptr i8, ptr %i.do, i64 -4
  %i.dq = getelementptr i8, ptr %1, i64 %.idx.i
  %i.dr = getelementptr i8, ptr %i.dq, i64 4
  %i.ds = getelementptr i8, ptr %1, i64 %i.dl
  %i.dt = getelementptr i8, ptr %.lcssa10.i, i64 4
  %bound0 = icmp ult ptr %i.ce, %i.dp
  %bound1 = icmp ult ptr %.lcssa10.i, %i.dn
  %found.conflict = and i1 %bound0, %bound1
  %bound0283 = icmp ult ptr %i.dr, %i.cc
  %bound1284 = icmp ult ptr %i.dt, %i.ds
  %found.conflict285 = and i1 %bound0283, %bound1284
  %conflict.rdx = or i1 %found.conflict, %found.conflict285
  br i1 %conflict.rdx, label %scalar.ph281.preheader, label %vector.ph286

vector.ph286:                                     ; preds = %vector.memcheck
  %n.vec287 = and i64 %i.dj, -4                   ; 3 uses
  %i.du = shl nsw i64 %n.vec287, 3                ; 2 uses
  %i.dv = getelementptr i8, ptr %.lcssa10.i, i64 %i.du
  %i.dw = and i64 %i.dj, 3
  %i.dx = getelementptr i8, ptr %i.ce, i64 %i.du
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph286
  %index289 = phi i64 [ 0, %vector.ph286 ], [ %index.next304, %vector.body288 ] ; 2 uses
  %i.dy = shl i64 %index289, 3                    ; 3 uses
  %i.dz = or disjoint i64 %i.dy, 16               ; 2 uses
  %next.gep290 = getelementptr i8, ptr %.lcssa10.i, i64 %i.dy
  %next.gep291 = getelementptr i8, ptr %.lcssa10.i, i64 %i.dz
  %next.gep292 = getelementptr i8, ptr %i.ce, i64 %i.dy ; 2 uses
  %next.gep294 = getelementptr i8, ptr %i.ce, i64 %i.dz ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep292), "nonnull"(ptr %next.gep294) ]
  %wide.vec296 = load <4 x i32>, ptr %next.gep290, align 4, !tbaa !41, !noalias !988
  %wide.vec299 = load <4 x i32>, ptr %next.gep291, align 4, !tbaa !41, !noalias !988
  store <4 x i32> %wide.vec296, ptr %next.gep292, align 8, !tbaa !41, !noalias !988
  store <4 x i32> %wide.vec299, ptr %next.gep294, align 8, !tbaa !41, !noalias !988
  %index.next304 = add nuw i64 %index289, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next304, %n.vec287
  br i1 %i.ea, label %middle.block305, label %vector.body288, !llvm.loop !958

middle.block305:                                  ; preds = %vector.body288
  %cmp.n306 = icmp eq i64 %i.dj, %n.vec287
  br i1 %cmp.n306, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %scalar.ph281.preheader

scalar.ph281.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i, %middle.block305
  %.ph = phi ptr [ %.lcssa10.i, %vector.memcheck ], [ %.lcssa10.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dv, %middle.block305 ] ; 2 uses
  %.015.i.i.i.i.i.i.i.ph = phi i64 [ %i.dj, %vector.memcheck ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dw, %middle.block305 ] ; 4 uses
  %.01214.i.i.i.i.i.i.i.ph = phi ptr [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dx, %middle.block305 ] ; 2 uses
  %i.eb = add nsw i64 %.015.i.i.i.i.i.i.i.ph, -1
  %xtraiter = and i64 %.015.i.i.i.i.i.i.i.ph, 7   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph281.prol.loopexit, label %scalar.ph281.prol

scalar.ph281.prol:                                ; preds = %scalar.ph281.preheader, %scalar.ph281.prol
  %i.ec = phi ptr [ %i.ee, %scalar.ph281.prol ], [ %.ph, %scalar.ph281.preheader ] ; 2 uses
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.eg, %scalar.ph281.prol ], [ %.015.i.i.i.i.i.i.i.ph, %scalar.ph281.preheader ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.ef, %scalar.ph281.prol ], [ %.01214.i.i.i.i.i.i.i.ph, %scalar.ph281.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph281.prol ], [ 0, %scalar.ph281.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i.prol) ]
  %i.ed = load <2 x i32>, ptr %i.ec, align 4, !tbaa !41, !noalias !988
  store <2 x i32> %i.ed, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !988
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.eg = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph281.prol.loopexit, label %scalar.ph281.prol, !llvm.loop !959

scalar.ph281.prol.loopexit:                       ; preds = %scalar.ph281.prol, %scalar.ph281.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph281.preheader ], [ %i.ee, %scalar.ph281.prol ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %.015.i.i.i.i.i.i.i.ph, %scalar.ph281.preheader ], [ %i.eg, %scalar.ph281.prol ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %.01214.i.i.i.i.i.i.i.ph, %scalar.ph281.preheader ], [ %i.ef, %scalar.ph281.prol ]
  %i.eh = icmp ult i64 %i.eb, 7
  br i1 %i.eh, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %scalar.ph281

scalar.ph281:                                     ; preds = %scalar.ph281.prol.loopexit, %scalar.ph281
  %i.ei = phi ptr [ %i.ff, %scalar.ph281 ], [ %.unr, %scalar.ph281.prol.loopexit ] ; 9 uses
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.fh, %scalar.ph281 ], [ %.015.i.i.i.i.i.i.i.unr, %scalar.ph281.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.fg, %scalar.ph281 ], [ %.01214.i.i.i.i.i.i.i.unr, %scalar.ph281.prol.loopexit ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i) ]
  %i.ej = load <2 x i32>, ptr %i.ei, align 4, !tbaa !41, !noalias !988
  store <2 x i32> %i.ej, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !988
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.em = load <2 x i32>, ptr %i.ek, align 4, !tbaa !41, !noalias !988
  store <2 x i32> %i.em, ptr %i.el, align 4, !tbaa !41, !noalias !988
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.ep = load <2 x i32>, ptr %i.en, align 4, !tbaa !41, !noalias !988
  store <2 x i32> %i.ep, ptr %i.eo, align 4, !tbaa !41, !noalias !988
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 24
  %i.es = load <2 x i32>, ptr %i.eq, align 4, !tbaa !41, !noalias !988
  store <2 x i32> %i.es, ptr %i.er, align 4, !tbaa !41, !noalias !988
  %i.et = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 32
  %i.ev = load <2 x i32>, ptr %i.et, align 4, !tbaa !41, !noalias !988
  store <2 x i32> %i.ev, ptr %i.eu, align 4, !tbaa !41, !noalias !988
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.ex = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 40
  %i.ey = load <2 x i32>, ptr %i.ew, align 4, !tbaa !41, !noalias !988
  store <2 x i32> %i.ey, ptr %i.ex, align 4, !tbaa !41, !noalias !988
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %i.fa = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 48
  %i.fb = load <2 x i32>, ptr %i.ez, align 4, !tbaa !41, !noalias !988
  store <2 x i32> %i.fb, ptr %i.fa, align 4, !tbaa !41, !noalias !988
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  %i.fd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 56
  %i.fe = load <2 x i32>, ptr %i.fc, align 4, !tbaa !41, !noalias !988
  store <2 x i32> %i.fe, ptr %i.fd, align 4, !tbaa !41, !noalias !988
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  %i.fg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 64
  %i.fh = add i64 %.015.i.i.i.i.i.i.i, -8         ; 2 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.fh, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %scalar.ph281, !llvm.loop !960

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc99 unwind label %bb.ax

.noexc99:                                         ; preds = %bb.as
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i: ; preds = %scalar.ph281.prol.loopexit, %scalar.ph281, %middle.block305
  %i.fi = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i, %i.dj
  store i64 %i.fi, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !988
  %i.fj = add i64 %i.dj, %.fr
  br label %bb.at

bb.at:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %storemerge.i = phi i64 [ %i.fj, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i ], [ %i.df, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !tbaa !977
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.az unwind label %bb.ax

bb.au:                                            ; preds = %bb.an
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %.invoke231 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %bb.cm

bb.aw:                                            ; preds = %bb.ao
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %bb.cm

bb.ax:                                            ; preds = %bb.as, %bb.at
  %i.fm = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  %i.fo = extractvalue { ptr, i32 } %i.fm, 1
  %i.fp = icmp eq i32 %i.fo, %i.v
  %i.fq = call ptr @__cxa_begin_catch(ptr %i.fn) #25 ; 0 uses
  br i1 %i.fp, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.fr = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke230 unwind label %bb.bf ; 0 uses

.invoke230:                                       ; preds = %bb.bd, %bb.ay
  invoke void @__cxa_end_catch()
          to label %bb.az unwind label %bb.ck

bb.az:                                            ; preds = %.invoke230, %bb.at
  %i.fs = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ft = add i64 %i.fs, 1                        ; 4 uses
  store i64 %i.ft, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.fu = load i64, ptr %i.d, align 8, !tbaa !979, !noalias !989 ; 5 uses
  %.idx.i.i = shl i64 %i.fu, 3                    ; 4 uses
  %i.fv = getelementptr i8, ptr %1, i64 %.idx.i.i
  %.not = icmp eq i64 %i.fu, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.az
  %i.fw = add i64 %.idx.i.i, -8                   ; 2 uses
  %i.fx = lshr exact i64 %i.fw, 3
  %umin = call i64 @llvm.umin.i64(i64 %i.fx, i64 4) ; 2 uses
  %i.fy = shl nuw nsw i64 %umin, 3
  %i.fz = add nuw nsw i64 %i.fy, 8                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 range(i64 0, 41) %i.fz, i1 false), !tbaa !41
  %i.ga = sub nuw nsw i64 4, %umin
  %i.gb = icmp ugt i64 %i.fw, 24
  br i1 %i.gb, label %bb.ba, label %.critedge.i.i.thread

bb.ba:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.fz
  %i.gc = ashr exact i64 %gepdiff, 3              ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %.idx.i.i, %i.fz
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.ba
  %i.gd = sub i64 %i.ft, %i.gc                    ; 2 uses
  store i64 %i.gd, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.ba
  %i.ge = phi i64 [ %i.gd, %.lr.ph.preheader.i.i.i.i ], [ %i.ft, %bb.ba ]
  %i.gf = sub i64 %i.fu, %i.gc
  br label %bb.bc

.critedge.i.i.thread:                             ; preds = %bb.az, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i194 = phi i64 [ %i.ga, %.lr.ph.i.i.preheader ], [ 5, %bb.az ] ; 4 uses
  %i.gg = sub i64 0, %i.fu
  %.not.i.i.i.i100 = icmp ugt i64 %.sroa.3.0.lcssa.i.i194, %i.gg
  br i1 %.not.i.i.i.i100, label %bb.bb, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.gh = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i194, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fv, i8 0, i64 %i.gh, i1 false), !tbaa !41, !noalias !990
  %i.gi = add i64 %.sroa.3.0.lcssa.i.i194, %i.ft  ; 2 uses
  store i64 %i.gi, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !990
  %i.gj = add i64 %.sroa.3.0.lcssa.i.i194, %i.fu
  br label %bb.bc

bb.bb:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc102 unwind label %bb.bg

.noexc102:                                        ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i
  %i.gk = phi i64 [ %i.gi, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ge, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  %storemerge.i.i = phi i64 [ %i.gj, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gf, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  store i64 %storemerge.i.i, ptr %i.d, align 8, !tbaa !977
  %i.gl = add i64 %i.gk, -1
  store i64 %i.gl, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.bk unwind label %bb.bh

bb.bd:                                            ; preds = %bb.ax
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %.invoke230 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %bb.cm

bb.bf:                                            ; preds = %bb.ay
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %bb.cm

bb.bg:                                            ; preds = %bb.bb
  %i.go = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.gp = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.gq = add i64 %i.gp, -1
  store i64 %i.gq, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bc
  %i.gr = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn70 = phi { ptr, i32 } [ %i.gr, %bb.bh ], [ %i.go, %bb.bg ] ; 2 uses
  %.10 = extractvalue { ptr, i32 } %.pn70, 1
  %.1041 = extractvalue { ptr, i32 } %.pn70, 0
  %i.gs = icmp eq i32 %.10, %i.v
  %i.gt = call ptr @__cxa_begin_catch(ptr %.1041) #25 ; 0 uses
  br i1 %i.gs, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.gu = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke229 unwind label %bb.bq ; 0 uses

.invoke229:                                       ; preds = %bb.bo, %bb.bj
  invoke void @__cxa_end_catch()
          to label %bb.bk unwind label %bb.ck

bb.bk:                                            ; preds = %.invoke229, %bb.bc
  %i.gv = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.gw = add i64 %i.gv, 1                        ; 4 uses
  store i64 %i.gw, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.gx = load i64, ptr %i.d, align 8, !tbaa !979, !noalias !991 ; 5 uses
  %.idx.i.i103 = shl i64 %i.gx, 3                 ; 4 uses
  %i.gy = getelementptr i8, ptr %1, i64 %.idx.i.i103
  %.not198 = icmp eq i64 %i.gx, 0
  br i1 %.not198, label %.critedge.i.i104.thread, label %.lr.ph.i.i121.preheader

.lr.ph.i.i121.preheader:                          ; preds = %bb.bk
  %i.gz = add i64 %.idx.i.i103, -8                ; 2 uses
  %i.ha = lshr exact i64 %i.gz, 3
  %umin211 = call i64 @llvm.umin.i64(i64 %i.ha, i64 4) ; 2 uses
  %i.hb = shl nuw nsw i64 %umin211, 3
  %i.hc = add nuw nsw i64 %i.hb, 8                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 range(i64 0, 41) %i.hc, i1 false), !tbaa !41
  %i.hd = sub nuw nsw i64 4, %umin211
  %i.he = icmp ugt i64 %i.gz, 24
  br i1 %i.he, label %bb.bl, label %.critedge.i.i104.thread

bb.bl:                                            ; preds = %.lr.ph.i.i121.preheader
  %gepdiff226 = sub i64 %.idx.i.i103, %i.hc
  %i.hf = ashr exact i64 %gepdiff226, 3           ; 2 uses
  %.not3.i.i.i.i117 = icmp eq i64 %.idx.i.i103, %i.hc
  br i1 %.not3.i.i.i.i117, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i120, label %.lr.ph.preheader.i.i.i.i118

.lr.ph.preheader.i.i.i.i118:                      ; preds = %bb.bl
  %i.hg = sub i64 %i.gw, %i.hf                    ; 2 uses
  store i64 %i.hg, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i120

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i120: ; preds = %.lr.ph.preheader.i.i.i.i118, %bb.bl
  %i.hh = phi i64 [ %i.hg, %.lr.ph.preheader.i.i.i.i118 ], [ %i.gw, %bb.bl ]
  %i.hi = sub i64 %i.gx, %i.hf
  br label %bb.bn

.critedge.i.i104.thread:                          ; preds = %bb.bk, %.lr.ph.i.i121.preheader
  %.sroa.3.0.lcssa.i.i105197 = phi i64 [ %i.hd, %.lr.ph.i.i121.preheader ], [ 5, %bb.bk ] ; 4 uses
  %i.hj = sub i64 0, %i.gx
  %.not.i.i.i.i107 = icmp ugt i64 %.sroa.3.0.lcssa.i.i105197, %i.hj
  br i1 %.not.i.i.i.i107, label %bb.bm, label %.lr.ph.i.i.i.i.i.i.i.i108.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i108.preheader:              ; preds = %.critedge.i.i104.thread
  %i.hk = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i105197, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gy, i8 0, i64 %i.hk, i1 false), !tbaa !41, !noalias !992
  %i.hl = add i64 %.sroa.3.0.lcssa.i.i105197, %i.gw ; 2 uses
  store i64 %i.hl, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !992
  %i.hm = add i64 %.sroa.3.0.lcssa.i.i105197, %i.gx
  br label %bb.bn

bb.bm:                                            ; preds = %.critedge.i.i104.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc127 unwind label %bb.br

.noexc127:                                        ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i108.preheader, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i120
  %i.hn = phi i64 [ %i.hl, %.lr.ph.i.i.i.i.i.i.i.i108.preheader ], [ %i.hh, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i120 ]
  %storemerge.i.i116 = phi i64 [ %i.hm, %.lr.ph.i.i.i.i.i.i.i.i108.preheader ], [ %i.hi, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i120 ]
  store i64 %storemerge.i.i116, ptr %i.d, align 8, !tbaa !977
  %i.ho = add i64 %i.hn, -1
  store i64 %i.ho, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.bv unwind label %bb.bs

bb.bo:                                            ; preds = %bb.bi
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %.invoke229 unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %bb.cm

bb.bq:                                            ; preds = %bb.bj
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %bb.cm

bb.br:                                            ; preds = %bb.bm
  %i.hr = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.hs = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ht = add i64 %i.hs, -1
  store i64 %i.ht, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bn
  %i.hu = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn74 = phi { ptr, i32 } [ %i.hu, %bb.bs ], [ %i.hr, %bb.br ] ; 2 uses
  %.12 = extractvalue { ptr, i32 } %.pn74, 1
  %.1243 = extractvalue { ptr, i32 } %.pn74, 0
  %i.hv = icmp eq i32 %.12, %i.v
  %i.hw = call ptr @__cxa_begin_catch(ptr %.1243) #25 ; 0 uses
  br i1 %i.hv, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.hx = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke228 unwind label %bb.bz ; 0 uses

.invoke228:                                       ; preds = %bb.bx, %bb.bu
  invoke void @__cxa_end_catch()
          to label %bb.bv unwind label %bb.ck

bb.bv:                                            ; preds = %.invoke228, %bb.bn
  %i.hy = load i64, ptr %i.b, align 8, !tbaa !102, !noalias !993
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %_ZN5boost9container13static_vectorI14counting_valueLm0EvEC2INS0_12vec_iteratorIPS2_Lb0EEEEET_S8_.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc129 unwind label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit133

.noexc129:                                        ; preds = %bb.bw
  unreachable

_ZN5boost9container13static_vectorI14counting_valueLm0EvEC2INS0_12vec_iteratorIPS2_Lb0EEEEET_S8_.exit: ; preds = %bb.bv
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 433, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit unwind label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit133

bb.bx:                                            ; preds = %bb.bt
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %.invoke228 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ia = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %bb.cm

bb.bz:                                            ; preds = %bb.bu
  %i.ib = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %bb.cm

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit133: ; preds = %bb.bw, %_ZN5boost9container13static_vectorI14counting_valueLm0EvEC2INS0_12vec_iteratorIPS2_Lb0EEEEET_S8_.exit
  %i.ic = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.14 = extractvalue { ptr, i32 } %i.ic, 1
  %.1445 = extractvalue { ptr, i32 } %i.ic, 0
  %i.id = icmp eq i32 %.14, %i.v
  %i.ie = call ptr @__cxa_begin_catch(ptr %.1445) #25 ; 0 uses
  br i1 %i.id, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit133
  %i.if = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke unwind label %bb.cd   ; 0 uses

.invoke:                                          ; preds = %bb.cb, %bb.ca
  invoke void @__cxa_end_catch()
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit unwind label %bb.ck

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit: ; preds = %.invoke, %_ZN5boost9container13static_vectorI14counting_valueLm0EvEC2INS0_12vec_iteratorIPS2_Lb0EEEEET_S8_.exit
  %i.ig = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ih = add i64 %i.ig, 1
  store i64 %i.ih, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc134 unwind label %bb.ce

.noexc134:                                        ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit
  unreachable

bb.cb:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit133
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 433, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %.invoke unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %bb.cm

bb.cd:                                            ; preds = %bb.ca
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %bb.cm

bb.ce:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit
  %i.ik = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.il = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.im = add i64 %i.il, -1
  store i64 %i.im, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %.16 = extractvalue { ptr, i32 } %i.ik, 1
  %.1647 = extractvalue { ptr, i32 } %i.ik, 0
  %i.in = icmp eq i32 %.16, %i.v
  %i.io = call ptr @__cxa_begin_catch(ptr %.1647) #25 ; 0 uses
  br i1 %i.in, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.ip = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke236 unwind label %bb.cj ; 0 uses

bb.cg:                                            ; preds = %.invoke236
  %i.iq = load i64, ptr %i.d, align 8, !tbaa !979 ; 2 uses
  %.not3.i.i143 = icmp eq i64 %i.iq, 0
  br i1 %.not3.i.i143, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit146, label %.lr.ph.preheader.i.i144

.lr.ph.preheader.i.i144:                          ; preds = %bb.cg
  %_ZZN14counting_value1cEvE2co.promoted.i.i145 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ir = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i145, %i.iq
  store i64 %i.ir, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit146
end_hunk_6
begin_hunk_7_@_Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv:_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit

.lr.ph.i.preheader:                               ; preds = %bb.ao
  %i.bv = add i64 %.idx.i, -4
  %i.bw = lshr exact i64 %i.bv, 2
  %i.bx = add i64 %.idx, -4
  %i.by = lshr exact i64 %i.bx, 2
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 %i.by)
  %i.bz = shl nuw i64 %umin, 2
  %i.ca = add i64 %i.bz, 4                        ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.ca, i1 false), !tbaa !82
  %scevgep = getelementptr i8, ptr %1, i64 %i.ca
  %scevgep260 = getelementptr i8, ptr %0, i64 %i.ca
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i.preheader, %bb.ao
  %.sroa.07.0.lcssa.i = phi ptr [ %1, %bb.ao ], [ %scevgep, %.lr.ph.i.preheader ] ; 2 uses
  %.lcssa11.i = phi ptr [ %0, %bb.ao ], [ %scevgep260, %.lr.ph.i.preheader ] ; 3 uses
  %i.cb = icmp eq ptr %.lcssa11.i, %i.bq
  br i1 %i.cb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.critedge.i
  %i.cc = ptrtoint ptr %i.bs to i64
  %i.cd = ptrtoint ptr %.sroa.07.0.lcssa.i to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2                 ; 8 uses
  %.not3.i.i.i = icmp eq ptr %i.bs, %.sroa.07.0.lcssa.i
  br i1 %.not3.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.ap
  %i.cg = sub nsw i64 0, %i.cf
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cg ; 3 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted237 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check295 = icmp ult i64 %i.cf, 8
  br i1 %min.iters.check295, label %.lr.ph.i.i.i99.preheader, label %vector.ph296

vector.ph296:                                     ; preds = %.lr.ph.i.preheader.i.i
  %n.vec297 = and i64 %i.cf, -8                   ; 3 uses
  %i.ci = and i64 %i.cf, 7
  %i.cj = shl nsw i64 %n.vec297, 2
  %i.ck = getelementptr i8, ptr %i.ch, i64 %i.cj
  br label %vector.body298

vector.body298:                                   ; preds = %vector.body298, %vector.ph296
  %index299 = phi i64 [ 0, %vector.ph296 ], [ %index.next300, %vector.body298 ] ; 2 uses
  %i.cl = shl i64 %index299, 2
  %next.gep = getelementptr i8, ptr %i.ch, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 4, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.cm, align 4, !tbaa !82
  %index.next300 = add nuw i64 %index299, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next300, %n.vec297
  br i1 %i.cn, label %middle.block301, label %vector.body298, !llvm.loop !1014

middle.block301:                                  ; preds = %vector.body298
  %cmp.n302 = icmp eq i64 %i.cf, %n.vec297
  br i1 %cmp.n302, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, label %.lr.ph.i.i.i99.preheader

.lr.ph.i.i.i99.preheader:                         ; preds = %.lr.ph.i.preheader.i.i, %middle.block301
  %.05.i.i.i.ph = phi i64 [ %i.cf, %.lr.ph.i.preheader.i.i ], [ %i.ci, %middle.block301 ]
  %storemerge4.i.i.i.ph = phi ptr [ %i.ch, %.lr.ph.i.preheader.i.i ], [ %i.ck, %middle.block301 ]
  br label %.lr.ph.i.i.i99

.lr.ph.i.i.i99:                                   ; preds = %.lr.ph.i.i.i99.preheader, %.lr.ph.i.i.i99
  %.05.i.i.i = phi i64 [ %i.co, %.lr.ph.i.i.i99 ], [ %.05.i.i.i.ph, %.lr.ph.i.i.i99.preheader ]
  %storemerge4.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i99 ], [ %storemerge4.i.i.i.ph, %.lr.ph.i.i.i99.preheader ] ; 2 uses
  %i.co = add i64 %.05.i.i.i, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i, align 4, !tbaa !82
  %i.cp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 4
  %.not.i.i.i100 = icmp eq i64 %i.co, 0
  br i1 %.not.i.i.i100, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, label %.lr.ph.i.i.i99, !llvm.loop !1015

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit: ; preds = %.lr.ph.i.i.i99, %middle.block301
  %i.cq = trunc i64 %i.cf to i32
  %i.cr = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted237, %i.cq
  store i32 %i.cr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, %bb.ap
  %i.cs = sub i64 %.fr, %i.cf
  br label %bb.as

bb.aq:                                            ; preds = %.critedge.i
  %i.ct = ptrtoint ptr %i.bq to i64
  %i.cu = ptrtoint ptr %.lcssa11.i to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 2 uses
  %i.cw = ashr exact i64 %i.cv, 2                 ; 7 uses
  %i.cx = sub i64 0, %.fr
  %.not.i.i2.i = icmp ugt i64 %i.cw, %i.cx
  br i1 %.not.i.i2.i, label %bb.ar, label %.lr.ph.i.i.i.i.i.i.i95.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i95.preheader:                 ; preds = %bb.aq
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted236 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1063 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bs, ptr align 4 %.lcssa11.i, i64 %i.cv, i1 false), !tbaa !82, !noalias !1063
  %min.iters.check = icmp ult i64 %i.cw, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i95.preheader377, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i95.preheader
  %n.vec = and i64 %i.cw, -8                      ; 2 uses
  %i.cy = and i64 %i.cw, 7
  %i.cz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted236, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.cz, %vector.ph ], [ %i.da, %vector.body ]
  %vec.phi292 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.db, %vector.body ]
  %i.da = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.db = add <4 x i32> %vec.phi292, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !1022

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.db, %i.da
  %i.dd = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i95.preheader377

.lr.ph.i.i.i.i.i.i.i95.preheader377:              ; preds = %.lr.ph.i.i.i.i.i.i.i95.preheader, %middle.block
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted236, %.lr.ph.i.i.i.i.i.i.i95.preheader ], [ %i.dd, %middle.block ]
  %.015.i.i.i.i.i.i.i96.ph = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.i.i95.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i95

.lr.ph.i.i.i.i.i.i.i95:                           ; preds = %.lr.ph.i.i.i.i.i.i.i95.preheader377, %.lr.ph.i.i.i.i.i.i.i95
  %i.de = phi i32 [ %i.df, %.lr.ph.i.i.i.i.i.i.i95 ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i95.preheader377 ]
  %.015.i.i.i.i.i.i.i96 = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i.i.i95 ], [ %.015.i.i.i.i.i.i.i96.ph, %.lr.ph.i.i.i.i.i.i.i95.preheader377 ]
  %i.df = add i32 %i.de, 1                        ; 2 uses
  %i.dg = add i64 %.015.i.i.i.i.i.i.i96, -1       ; 2 uses
  %.not.i.i.i.i.i.i.i98 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i.i.i.i.i98, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i95, !llvm.loop !1023

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc101 unwind label %bb.aw

.noexc101:                                        ; preds = %bb.ar
  unreachable

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i95, %middle.block
  %.lcssa = phi i32 [ %i.dd, %middle.block ], [ %i.df, %.lr.ph.i.i.i.i.i.i.i95 ]
  store i32 %.lcssa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1063
  %i.dh = add i64 %i.cw, %.fr
  br label %bb.as

bb.as:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %storemerge.i = phi i64 [ %i.dh, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i ], [ %i.cs, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !tbaa !1052
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.ay unwind label %bb.aw

bb.at:                                            ; preds = %bb.am
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %.invoke286 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ck unwind label %bb.cl

bb.av:                                            ; preds = %bb.an
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ck unwind label %bb.cl

bb.aw:                                            ; preds = %bb.ar, %bb.as
  %i.dk = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  %i.dm = extractvalue { ptr, i32 } %i.dk, 1
  %i.dn = icmp eq i32 %i.dm, %i.v
  %i.do = call ptr @__cxa_begin_catch(ptr %i.dl) #25 ; 0 uses
  br i1 %i.dn, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  %i.dp = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke285 unwind label %bb.be ; 0 uses

.invoke285:                                       ; preds = %bb.bc, %bb.ax
  invoke void @__cxa_end_catch()
          to label %bb.ay unwind label %bb.cj

bb.ay:                                            ; preds = %.invoke285, %bb.as
  %i.dq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dr = add i32 %i.dq, 1                        ; 4 uses
  store i32 %i.dr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ds = load i64, ptr %i.d, align 8, !tbaa !1054, !noalias !1064 ; 5 uses
  %.idx.i.i = shl i64 %i.ds, 2                    ; 4 uses
  %i.dt = getelementptr i8, ptr %1, i64 %.idx.i.i ; 2 uses
  %.not = icmp eq i64 %i.ds, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ay
  %i.du = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.dv = lshr exact i64 %i.du, 2
  %umin261 = call i64 @llvm.umin.i64(i64 %i.dv, i64 4) ; 2 uses
  %i.dw = shl nuw nsw i64 %umin261, 2
  %i.dx = add nuw nsw i64 %i.dw, 4                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 range(i64 0, 21) %i.dx, i1 false), !tbaa !82
  %i.dy = sub nuw nsw i64 4, %umin261
  %i.dz = icmp ugt i64 %i.du, 12
  br i1 %i.dz, label %bb.az, label %.critedge.i.i.thread

bb.az:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.dx
  %i.ea = ashr exact i64 %gepdiff, 2              ; 8 uses
  %.not3.i.i.i.i = icmp eq i64 %.idx.i.i, %i.dx
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.az
  %i.eb = sub nsw i64 0, %i.ea
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.eb ; 3 uses
  %min.iters.check306 = icmp ult i64 %i.ea, 8
  br i1 %min.iters.check306, label %.lr.ph.i.i.i.i102.preheader, label %vector.ph307

vector.ph307:                                     ; preds = %.lr.ph.i.preheader.i.i.i
  %n.vec308 = and i64 %i.ea, -8                   ; 3 uses
  %i.ed = and i64 %i.ea, 7
  %i.ee = shl nsw i64 %n.vec308, 2
  %i.ef = getelementptr i8, ptr %i.ec, i64 %i.ee
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph307
  %index310 = phi i64 [ 0, %vector.ph307 ], [ %index.next312, %vector.body309 ] ; 2 uses
  %i.eg = shl i64 %index310, 2
  %next.gep311 = getelementptr i8, ptr %i.ec, i64 %i.eg ; 2 uses
  %i.eh = getelementptr i8, ptr %next.gep311, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep311, align 4, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.eh, align 4, !tbaa !82
  %index.next312 = add nuw i64 %index310, 8       ; 2 uses
  %i.ei = icmp eq i64 %index.next312, %n.vec308
  br i1 %i.ei, label %middle.block313, label %vector.body309, !llvm.loop !1026

middle.block313:                                  ; preds = %vector.body309
  %cmp.n314 = icmp eq i64 %i.ea, %n.vec308
  br i1 %cmp.n314, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, label %.lr.ph.i.i.i.i102.preheader

.lr.ph.i.i.i.i102.preheader:                      ; preds = %.lr.ph.i.preheader.i.i.i, %middle.block313
  %.05.i.i.i.i.ph = phi i64 [ %i.ea, %.lr.ph.i.preheader.i.i.i ], [ %i.ed, %middle.block313 ]
  %storemerge4.i.i.i.i.ph = phi ptr [ %i.ec, %.lr.ph.i.preheader.i.i.i ], [ %i.ef, %middle.block313 ]
  br label %.lr.ph.i.i.i.i102

.lr.ph.i.i.i.i102:                                ; preds = %.lr.ph.i.i.i.i102.preheader, %.lr.ph.i.i.i.i102
  %.05.i.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i.i.i102 ], [ %.05.i.i.i.i.ph, %.lr.ph.i.i.i.i102.preheader ]
  %storemerge4.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i102 ], [ %storemerge4.i.i.i.i.ph, %.lr.ph.i.i.i.i102.preheader ] ; 2 uses
  %i.ej = add i64 %.05.i.i.i.i, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i, align 4, !tbaa !82
  %i.ek = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  %.not.i.i.i.i103 = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i103, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, label %.lr.ph.i.i.i.i102, !llvm.loop !1027

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit: ; preds = %.lr.ph.i.i.i.i102, %middle.block313
  %i.el = trunc i64 %i.ea to i32
  %i.em = sub i32 %i.dr, %i.el                    ; 2 uses
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, %bb.az
  %i.en = phi i32 [ %i.em, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit ], [ %i.dr, %bb.az ]
  %i.eo = sub i64 %i.ds, %i.ea
  br label %bb.bb

.critedge.i.i.thread:                             ; preds = %bb.ay, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i222 = phi i64 [ %i.dy, %.lr.ph.i.i.preheader ], [ 5, %bb.ay ] ; 4 uses
  %i.ep = sub i64 0, %i.ds
  %.not.i.i2.i.i = icmp ugt i64 %.sroa.3.0.lcssa.i.i222, %i.ep
  br i1 %.not.i.i2.i.i, label %bb.ba, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.eq = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i222, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dt, i8 0, i64 %i.eq, i1 false), !tbaa !82, !noalias !1065
  %i.er = trunc nuw nsw i64 %.sroa.3.0.lcssa.i.i222 to i32
  %i.es = add i32 %i.dr, %i.er                    ; 2 uses
  store i32 %i.es, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1065
  %i.et = add i64 %.sroa.3.0.lcssa.i.i222, %i.ds
  br label %bb.bb

bb.ba:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc105 unwind label %bb.bf

.noexc105:                                        ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i
  %i.eu = phi i32 [ %i.es, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.en, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  %storemerge.i.i = phi i64 [ %i.et, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.eo, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  store i64 %storemerge.i.i, ptr %i.d, align 8, !tbaa !1052
  %i.ev = add i32 %i.eu, -1
  store i32 %i.ev, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.bj unwind label %bb.bg

bb.bc:                                            ; preds = %bb.aw
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %.invoke285 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ck unwind label %bb.cl

bb.be:                                            ; preds = %bb.ax
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ck unwind label %bb.cl

bb.bf:                                            ; preds = %bb.ba
  %i.ey = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.ez = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.fa = add i32 %i.ez, -1
  store i32 %i.fa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bb
  %i.fb = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn70 = phi { ptr, i32 } [ %i.fb, %bb.bg ], [ %i.ey, %bb.bf ] ; 2 uses
  %.10 = extractvalue { ptr, i32 } %.pn70, 1
  %.1041 = extractvalue { ptr, i32 } %.pn70, 0
  %i.fc = icmp eq i32 %.10, %i.v
  %i.fd = call ptr @__cxa_begin_catch(ptr %.1041) #25 ; 0 uses
  br i1 %i.fc, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  %i.fe = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke284 unwind label %bb.bp ; 0 uses

.invoke284:                                       ; preds = %bb.bn, %bb.bi
  invoke void @__cxa_end_catch()
          to label %bb.bj unwind label %bb.cj

bb.bj:                                            ; preds = %.invoke284, %bb.bb
  %i.ff = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.fg = add i32 %i.ff, 1                        ; 4 uses
  store i32 %i.fg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.fh = load i64, ptr %i.d, align 8, !tbaa !1054, !noalias !1066 ; 5 uses
  %.idx.i.i106 = shl i64 %i.fh, 2                 ; 4 uses
  %i.fi = getelementptr i8, ptr %1, i64 %.idx.i.i106 ; 2 uses
  %.not226 = icmp eq i64 %i.fh, 0
  br i1 %.not226, label %.critedge.i.i107.thread, label %.lr.ph.i.i126.preheader

.lr.ph.i.i126.preheader:                          ; preds = %bb.bj
  %i.fj = add i64 %.idx.i.i106, -4                ; 2 uses
  %i.fk = lshr exact i64 %i.fj, 2
  %umin264 = call i64 @llvm.umin.i64(i64 %i.fk, i64 4) ; 2 uses
  %i.fl = shl nuw nsw i64 %umin264, 2
  %i.fm = add nuw nsw i64 %i.fl, 4                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 range(i64 0, 21) %i.fm, i1 false), !tbaa !82
  %i.fn = sub nuw nsw i64 4, %umin264
  %i.fo = icmp ugt i64 %i.fj, 12
  br i1 %i.fo, label %bb.bk, label %.critedge.i.i107.thread

bb.bk:                                            ; preds = %.lr.ph.i.i126.preheader
  %gepdiff282 = sub i64 %.idx.i.i106, %i.fm
  %i.fp = ashr exact i64 %gepdiff282, 2           ; 8 uses
  %.not3.i.i.i.i117 = icmp eq i64 %.idx.i.i106, %i.fm
  br i1 %.not3.i.i.i.i117, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123, label %.lr.ph.i.preheader.i.i.i118

.lr.ph.i.preheader.i.i.i118:                      ; preds = %bb.bk
  %i.fq = sub nsw i64 0, %i.fp
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fq ; 3 uses
  %min.iters.check318 = icmp ult i64 %i.fp, 8
  br i1 %min.iters.check318, label %.lr.ph.i.i.i.i119.preheader, label %vector.ph319

vector.ph319:                                     ; preds = %.lr.ph.i.preheader.i.i.i118
  %n.vec320 = and i64 %i.fp, -8                   ; 3 uses
  %i.fs = and i64 %i.fp, 7
  %i.ft = shl nsw i64 %n.vec320, 2
  %i.fu = getelementptr i8, ptr %i.fr, i64 %i.ft
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph319
  %index322 = phi i64 [ 0, %vector.ph319 ], [ %index.next324, %vector.body321 ] ; 2 uses
  %i.fv = shl i64 %index322, 2
  %next.gep323 = getelementptr i8, ptr %i.fr, i64 %i.fv ; 2 uses
  %i.fw = getelementptr i8, ptr %next.gep323, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep323, align 4, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.fw, align 4, !tbaa !82
  %index.next324 = add nuw i64 %index322, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next324, %n.vec320
  br i1 %i.fx, label %middle.block325, label %vector.body321, !llvm.loop !1034

middle.block325:                                  ; preds = %vector.body321
  %cmp.n326 = icmp eq i64 %i.fp, %n.vec320
  br i1 %cmp.n326, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123.loopexit, label %.lr.ph.i.i.i.i119.preheader

.lr.ph.i.i.i.i119.preheader:                      ; preds = %.lr.ph.i.preheader.i.i.i118, %middle.block325
  %.05.i.i.i.i120.ph = phi i64 [ %i.fp, %.lr.ph.i.preheader.i.i.i118 ], [ %i.fs, %middle.block325 ]
  %storemerge4.i.i.i.i121.ph = phi ptr [ %i.fr, %.lr.ph.i.preheader.i.i.i118 ], [ %i.fu, %middle.block325 ]
  br label %.lr.ph.i.i.i.i119

.lr.ph.i.i.i.i119:                                ; preds = %.lr.ph.i.i.i.i119.preheader, %.lr.ph.i.i.i.i119
  %.05.i.i.i.i120 = phi i64 [ %i.fy, %.lr.ph.i.i.i.i119 ], [ %.05.i.i.i.i120.ph, %.lr.ph.i.i.i.i119.preheader ]
  %storemerge4.i.i.i.i121 = phi ptr [ %i.fz, %.lr.ph.i.i.i.i119 ], [ %storemerge4.i.i.i.i121.ph, %.lr.ph.i.i.i.i119.preheader ] ; 2 uses
  %i.fy = add i64 %.05.i.i.i.i120, -1             ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i121, align 4, !tbaa !82
  %i.fz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i121, i64 4
  %.not.i.i.i.i122 = icmp eq i64 %i.fy, 0
  br i1 %.not.i.i.i.i122, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123.loopexit, label %.lr.ph.i.i.i.i119, !llvm.loop !1035

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123.loopexit: ; preds = %.lr.ph.i.i.i.i119, %middle.block325
  %i.ga = trunc i64 %i.fp to i32
  %i.gb = sub i32 %i.fg, %i.ga                    ; 2 uses
  store i32 %i.gb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123.loopexit, %bb.bk
  %i.gc = phi i32 [ %i.gb, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123.loopexit ], [ %i.fg, %bb.bk ]
  %i.gd = sub i64 %i.fh, %i.fp
  br label %bb.bm

.critedge.i.i107.thread:                          ; preds = %bb.bj, %.lr.ph.i.i126.preheader
  %.sroa.3.0.lcssa.i.i108225 = phi i64 [ %i.fn, %.lr.ph.i.i126.preheader ], [ 5, %bb.bj ] ; 4 uses
  %i.ge = sub i64 0, %i.fh
  %.not.i.i2.i.i110 = icmp ugt i64 %.sroa.3.0.lcssa.i.i108225, %i.ge
  br i1 %.not.i.i2.i.i110, label %bb.bl, label %.lr.ph.i.i.i.i.i.i.i.i111.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i111.preheader:              ; preds = %.critedge.i.i107.thread
  %i.gf = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i108225, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fi, i8 0, i64 %i.gf, i1 false), !tbaa !82, !noalias !1067
  %i.gg = trunc nuw nsw i64 %.sroa.3.0.lcssa.i.i108225 to i32
  %i.gh = add i32 %i.fg, %i.gg                    ; 2 uses
  store i32 %i.gh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1067
  %i.gi = add i64 %.sroa.3.0.lcssa.i.i108225, %i.fh
  br label %bb.bm

bb.bl:                                            ; preds = %.critedge.i.i107.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc130 unwind label %bb.bq

.noexc130:                                        ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i111.preheader, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123
  %i.gj = phi i32 [ %i.gh, %.lr.ph.i.i.i.i.i.i.i.i111.preheader ], [ %i.gc, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123 ]
  %storemerge.i.i116 = phi i64 [ %i.gi, %.lr.ph.i.i.i.i.i.i.i.i111.preheader ], [ %i.gd, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i123 ]
  store i64 %storemerge.i.i116, ptr %i.d, align 8, !tbaa !1052
  %i.gk = add i32 %i.gj, -1
  store i32 %i.gk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.bu unwind label %bb.br

bb.bn:                                            ; preds = %bb.bh
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %.invoke284 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ck unwind label %bb.cl

bb.bp:                                            ; preds = %bb.bi
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ck unwind label %bb.cl

bb.bq:                                            ; preds = %bb.bl
  %i.gn = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.go = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.gp = add i32 %i.go, -1
  store i32 %i.gp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.bs

bb.br:                                            ; preds = %bb.bm
  %i.gq = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.pn74 = phi { ptr, i32 } [ %i.gq, %bb.br ], [ %i.gn, %bb.bq ] ; 2 uses
  %.12 = extractvalue { ptr, i32 } %.pn74, 1
  %.1243 = extractvalue { ptr, i32 } %.pn74, 0
  %i.gr = icmp eq i32 %.12, %i.v
  %i.gs = call ptr @__cxa_begin_catch(ptr %.1243) #25 ; 0 uses
  br i1 %i.gr, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.gt = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke283 unwind label %bb.by ; 0 uses

.invoke283:                                       ; preds = %bb.bw, %bb.bt
  invoke void @__cxa_end_catch()
          to label %bb.bu unwind label %bb.cj

bb.bu:                                            ; preds = %.invoke283, %bb.bm
  %i.gu = load i64, ptr %i.b, align 8, !tbaa !141, !noalias !1068
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm0EvEC2INS0_12vec_iteratorIPS3_Lb0EEEEET_S9_.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc132 unwind label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvED2Ev.exit143

.noexc132:                                        ; preds = %bb.bv
  unreachable

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm0EvEC2INS0_12vec_iteratorIPS3_Lb0EEEEET_S9_.exit: ; preds = %bb.bu
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 433, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvED2Ev.exit unwind label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvED2Ev.exit143

bb.bw:                                            ; preds = %bb.bs
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %.invoke283 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ck unwind label %bb.cl

bb.by:                                            ; preds = %bb.bt
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ck unwind label %bb.cl

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvED2Ev.exit143: ; preds = %bb.bv, %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm0EvEC2INS0_12vec_iteratorIPS3_Lb0EEEEET_S9_.exit
  %i.gy = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.14 = extractvalue { ptr, i32 } %i.gy, 1
  %.1445 = extractvalue { ptr, i32 } %i.gy, 0
  %i.gz = icmp eq i32 %.14, %i.v
  %i.ha = call ptr @__cxa_begin_catch(ptr %.1445) #25 ; 0 uses
  br i1 %i.gz, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvED2Ev.exit143
  %i.hb = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke unwind label %bb.cc   ; 0 uses

.invoke:                                          ; preds = %bb.ca, %bb.bz
  invoke void @__cxa_end_catch()
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvED2Ev.exit unwind label %bb.cj

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvED2Ev.exit: ; preds = %.invoke, %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm0EvEC2INS0_12vec_iteratorIPS3_Lb0EEEEET_S9_.exit
  %i.hc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.hd = add i32 %i.hc, 1
  store i32 %i.hd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc144 unwind label %bb.cd

.noexc144:                                        ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvED2Ev.exit
  unreachable
end_hunk_7
begin_hunk_8_@_Z18test_exceptions_ndIiLm10EEvv:_ZN5boost9container13static_vectorIiLm10EvEC2EmRKi.exit

bb.aj:                                            ; preds = %.sink.split174, %bb.ad
  %i.au = load i64, ptr %i.a, align 8, !tbaa !95, !noalias !1124 ; 2 uses
  %.idx147 = shl i64 %i.au, 2                     ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %0, i64 %.idx147 ; 5 uses
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !157, !noalias !1125
  %.fr = freeze i64 %i.aw                         ; 5 uses
  %.idx.i = shl i64 %.fr, 2                       ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %1, i64 %.idx.i ; 3 uses
  %i.ay = icmp ne i64 %i.au, 0                    ; 2 uses
  %i.az = icmp ne i64 %.fr, 0
  %or.cond13.i = and i1 %i.ay, %i.az
  br i1 %or.cond13.i, label %iter.check, label %.critedge.i

iter.check:                                       ; preds = %bb.aj
  %i.ba = add i64 %.idx.i, -4
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = add i64 %.idx147, -4
  %i.bd = lshr exact i64 %i.bc, 2
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 %i.bd) ; 4 uses
  %i.be = shl nuw i64 %umin, 2
  %i.bf = add i64 %i.be, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.bf, i1 false), !tbaa !41
  %i.bg = add nuw nsw i64 %umin, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin, 3
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check179 = icmp samesign ult i64 %umin, 31
  br i1 %min.iters.check179, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bh = and i64 %i.bg, 28
  %n.vec = and i64 %i.bg, 9223372036854775776     ; 4 uses
  %i.bi = shl i64 %n.vec, 2                       ; 2 uses
  %i.bj = getelementptr i8, ptr %0, i64 %i.bi     ; 3 uses
  %i.bk = getelementptr i8, ptr %1, i64 %i.bi     ; 2 uses
  %broadcast.splatinsert = insertelement <16 x ptr> poison, ptr %i.av, i64 0
  %broadcast.splat = shufflevector <16 x ptr> %broadcast.splatinsert, <16 x ptr> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %0, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 128
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !1097

middle.block:                                     ; preds = %vector.body
  %vector.gep = getelementptr i8, ptr %pointer.phi, <16 x i64> <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28, i64 32, i64 36, i64 40, i64 44, i64 48, i64 52, i64 56, i64 60>
  %wide.gep = getelementptr i8, <16 x ptr> %vector.gep, i64 68
  %i.bm = icmp ne <16 x ptr> %wide.gep, %broadcast.splat
  %i.bn = extractelement <16 x i1> %i.bm, i64 15
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %.critedge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !151

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.bj, %vec.epilog.iter.check ], [ %0, %vector.main.loop.iter.check ]
  %n.vec180 = and i64 %i.bg, 9223372036854775804  ; 3 uses
  %i.bo = shl i64 %n.vec180, 2                    ; 2 uses
  %i.bp = getelementptr i8, ptr %0, i64 %i.bo     ; 2 uses
  %i.bq = getelementptr i8, ptr %1, i64 %i.bo     ; 2 uses
  %broadcast.splatinsert181 = insertelement <4 x ptr> poison, ptr %i.av, i64 0
  %broadcast.splat182 = shufflevector <4 x ptr> %broadcast.splatinsert181, <4 x ptr> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index183 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next186, %vec.epilog.vector.body ]
  %pointer.phi184 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind187, %vec.epilog.vector.body ] ; 2 uses
  %index.next186 = add nuw i64 %index183, 4       ; 2 uses
  %ptr.ind187 = getelementptr i8, ptr %pointer.phi184, i64 16
  %i.br = icmp eq i64 %index.next186, %n.vec180
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1098

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %vector.gep185 = getelementptr i8, ptr %pointer.phi184, <4 x i64> <i64 0, i64 4, i64 8, i64 12>
  %wide.gep188 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep185, i64 4
  %i.bs = icmp ne <4 x ptr> %wide.gep188, %broadcast.splat182
  %i.bt = extractelement <4 x i1> %i.bs, i64 3
  %cmp.n189 = icmp eq i64 %i.bg, %n.vec180
  br i1 %cmp.n189, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %0, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  %.sroa.07.014.i.ph = phi ptr [ %1, %iter.check ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.bu = phi ptr [ %i.bw, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ]
  %.sroa.07.014.i = phi ptr [ %i.bv, %.lr.ph.i ], [ %.sroa.07.014.i.ph, %.lr.ph.i.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.07.014.i, i64 4 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 3 uses
  %i.bx = icmp ne ptr %i.bw, %i.av                ; 2 uses
  %i.by = icmp ne ptr %i.bv, %i.ax
  %or.cond.i = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !1099

.critedge.i:                                      ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.aj
  %.sroa.07.0.lcssa.i = phi ptr [ %1, %bb.aj ], [ %i.bq, %vec.epilog.middle.block ], [ %i.bk, %middle.block ], [ %i.bv, %.lr.ph.i ]
  %.lcssa12.i = phi ptr [ %0, %bb.aj ], [ %i.bp, %vec.epilog.middle.block ], [ %i.bj, %middle.block ], [ %i.bw, %.lr.ph.i ] ; 3 uses
  %.lcssa.i = phi i1 [ %i.ay, %bb.aj ], [ %i.bt, %vec.epilog.middle.block ], [ %i.bn, %middle.block ], [ %i.bx, %.lr.ph.i ]
  %i.bz = icmp eq ptr %.lcssa12.i, %i.av
  br i1 %i.bz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.critedge.i
  %i.ca = ptrtoint ptr %i.ax to i64
  %i.cb = ptrtoint ptr %.sroa.07.0.lcssa.i to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 2
  %i.ce = sub i64 %.fr, %i.cd
  br label %bb.ap

bb.al:                                            ; preds = %.critedge.i
  %i.cf = ptrtoint ptr %i.av to i64
  %i.cg = ptrtoint ptr %.lcssa12.i to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = ashr exact i64 %i.ch, 2                 ; 2 uses
  %i.cj = sub i64 5, %.fr
  %.not.i.i.i97 = icmp ugt i64 %i.ci, %i.cj
  br i1 %.not.i.i.i97, label %bb.ao, label %bb.am, !prof !42

bb.am:                                            ; preds = %bb.al
  br i1 %.lcssa.i, label %bb.an, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i, !prof !152

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ax, ptr nonnull align 1 %.lcssa12.i, i64 %i.ch, i1 false), !noalias !1126
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !155, !noalias !1127
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i

bb.ao:                                            ; preds = %bb.al
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc98 unwind label %bb.at

.noexc98:                                         ; preds = %bb.ao
  unreachable

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i: ; preds = %bb.an, %bb.am
  %i.ck = phi i64 [ %.fr, %bb.am ], [ %.pre.i, %bb.an ]
  %i.cl = add i64 %i.ck, %i.ci
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i, %bb.ak
  %storemerge.i = phi i64 [ %i.cl, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i ], [ %i.ce, %bb.ak ]
  store i64 %storemerge.i, ptr %i.b, align 8, !tbaa !155
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %bb.av unwind label %bb.at

bb.aq:                                            ; preds = %bb.ah
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %.sink.split174 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bv unwind label %bb.bw

bb.as:                                            ; preds = %bb.ai
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bv unwind label %bb.bw

bb.at:                                            ; preds = %bb.ao, %bb.ap
  %i.co = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  %i.cq = extractvalue { ptr, i32 } %i.co, 1
  %i.cr = icmp eq i32 %i.cq, %i.d
  %i.cs = call ptr @__cxa_begin_catch(ptr %i.cp) #25 ; 0 uses
  br i1 %i.cr, label %bb.au, label %bb.az

bb.au:                                            ; preds = %bb.at
  %i.ct = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split175 unwind label %bb.bb ; 0 uses

.sink.split175:                                   ; preds = %bb.au, %bb.az
  call void @__cxa_end_catch()
  br label %bb.av

bb.av:                                            ; preds = %.sink.split175, %bb.ap
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !157, !noalias !1128 ; 5 uses
  %.idx.i.i = shl i64 %i.cu, 2                    ; 3 uses
  %i.cv = getelementptr i8, ptr %1, i64 %.idx.i.i
  %.not = icmp eq i64 %i.cu, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.av
  %i.cw = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.cx = lshr exact i64 %i.cw, 2
  %umin157 = call i64 @llvm.umin.i64(i64 %i.cx, i64 9) ; 2 uses
  %i.cy = shl nuw nsw i64 %umin157, 2
  %i.cz = add nuw nsw i64 %i.cy, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 range(i64 0, 41) %i.cz, i1 false), !tbaa !41
  %i.da = sub nuw nsw i64 9, %umin157
  %i.db = icmp ugt i64 %i.cw, 32
  br i1 %i.db, label %bb.aw, label %.critedge.i.i.thread

bb.aw:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.cz
  %i.dc = ashr exact i64 %gepdiff, 2
  %i.dd = sub i64 %i.cu, %i.dc
  br label %bb.ay

.critedge.i.i.thread:                             ; preds = %bb.av, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i145 = phi i64 [ %i.da, %.lr.ph.i.i.preheader ], [ 10, %bb.av ] ; 3 uses
  %i.de = sub i64 5, %i.cu
  %.not.i.i.i.i99 = icmp ugt i64 %.sroa.3.0.lcssa.i.i145, %i.de
  br i1 %.not.i.i.i.i99, label %bb.ax, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.df = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i145, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cv, i8 0, i64 %i.df, i1 false), !tbaa !41, !noalias !1129
  %i.dg = add i64 %.sroa.3.0.lcssa.i.i145, %i.cu
  br label %bb.ay

bb.ax:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc101 unwind label %bb.bc

.noexc101:                                        ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.aw
  %storemerge.i.i = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.dd, %bb.aw ]
  store i64 %storemerge.i.i, ptr %i.b, align 8, !tbaa !155
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %bb.be unwind label %bb.bc

bb.az:                                            ; preds = %bb.at
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %.sink.split175 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bv unwind label %bb.bw

bb.bb:                                            ; preds = %bb.au
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bv unwind label %bb.bw

bb.bc:                                            ; preds = %bb.ax, %bb.ay
  %i.dj = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.11 = extractvalue { ptr, i32 } %i.dj, 1
  %.1139 = extractvalue { ptr, i32 } %i.dj, 0
  %i.dk = icmp eq i32 %.11, %i.d
  %i.dl = call ptr @__cxa_begin_catch(ptr %.1139) #25 ; 0 uses
  br i1 %i.dk, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.dm = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split176 unwind label %bb.bi ; 0 uses

.sink.split176:                                   ; preds = %bb.bd, %bb.bg
  call void @__cxa_end_catch()
  br label %bb.be

bb.be:                                            ; preds = %.sink.split176, %bb.ay
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !95, !noalias !1130
  %i.do = icmp ult i64 %i.dn, 6
  br i1 %i.do, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i.i.i, label %bb.bf, !prof !158

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc105 unwind label %bb.bj

.noexc105:                                        ; preds = %bb.bf
  unreachable

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i.i.i: ; preds = %bb.be
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %bb.bl unwind label %bb.bj

bb.bg:                                            ; preds = %bb.bc
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %.sink.split176 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bv unwind label %bb.bw

bb.bi:                                            ; preds = %bb.bd
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bv unwind label %bb.bw

bb.bj:                                            ; preds = %bb.bf, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i.i.i
  %i.dr = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.13 = extractvalue { ptr, i32 } %i.dr, 1
  %.1341 = extractvalue { ptr, i32 } %i.dr, 0
  %i.ds = icmp eq i32 %.13, %i.d
  %i.dt = call ptr @__cxa_begin_catch(ptr %.1341) #25 ; 0 uses
  br i1 %i.ds, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.du = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split193 unwind label %bb.bo ; 0 uses

.sink.split193:                                   ; preds = %bb.bk, %bb.bm
  call void @__cxa_end_catch()
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split193, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i.i.i
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc106 unwind label %bb.bp

.noexc106:                                        ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bj
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %.sink.split193 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bv unwind label %bb.bw

bb.bo:                                            ; preds = %bb.bk
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bv unwind label %bb.bw

bb.bp:                                            ; preds = %bb.bl
  %i.dx = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.15 = extractvalue { ptr, i32 } %i.dx, 1
  %.1543 = extractvalue { ptr, i32 } %i.dx, 0
  %i.dy = icmp eq i32 %.15, %i.d
  %i.dz = call ptr @__cxa_begin_catch(ptr %.1543) #25 ; 0 uses
  br i1 %i.dy, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.ea = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.br unwind label %bb.bu     ; 0 uses

bb.br:                                            ; preds = %bb.bq, %bb.bs
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  ret void

bb.bs:                                            ; preds = %bb.bp
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 452, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %bb.br unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bv unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bq
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.g, %bb.o, %bb.v, %bb.af, %bb.ar, %bb.ba, %bb.bh, %bb.bn, %bb.bt, %bb.h, %bb.p, %bb.w, %bb.ag, %bb.as, %bb.bb, %bb.bi, %bb.bo, %bb.bu
  %.pn78.pn.pn = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.dw, %bb.bo ], [ %i.ec, %bb.bu ], [ %i.eb, %bb.bt ], [ %i.dq, %bb.bi ], [ %i.dv, %bb.bn ], [ %i.di, %bb.bb ], [ %i.dp, %bb.bh ], [ %i.cn, %bb.as ], [ %i.dh, %bb.ba ], [ %i.ap, %bb.ag ], [ %i.cm, %bb.ar ], [ %i.ad, %bb.w ], [ %i.ao, %bb.af ], [ %i.u, %bb.p ], [ %i.ac, %bb.v ], [ %i.l, %bb.h ], [ %i.t, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  resume { ptr, i32 } %.pn78.pn.pn

bb.bw:                                            ; preds = %bb.bu, %bb.bt, %bb.bo, %bb.bn, %bb.bi, %bb.bh, %bb.bb, %bb.ba, %bb.as, %bb.ar, %bb.ag, %bb.af, %bb.w, %bb.v, %bb.p, %bb.o, %bb.h, %bb.g
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z18test_exceptions_ndI8value_ndLm10EEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5boost9container13static_vectorI8value_ndLm10EvEC2EmRKS2_.exit:
  %0 = alloca %"class.boost::container::static_vector.43", align 8 ; 10 uses
  %1 = alloca %"class.boost::container::static_vector.245", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i64 10, ptr %i.a, align 8, !tbaa !118
end_hunk_8
begin_hunk_9_@_Z18test_exceptions_ndI8value_ndLm10EEvv:_ZN5boost9container13static_vectorI8value_ndLm10EvEC2EmRKS2_.exit
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bs

bb.x:                                             ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.6 = extractvalue { ptr, i32 } %i.ae, 1
  %.634 = extractvalue { ptr, i32 } %i.ae, 0
  %i.af = icmp eq i32 %.6, %i.d
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %.634) #25 ; 0 uses
  br i1 %i.af, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.ah = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split187 unwind label %bb.ae ; 0 uses

.sink.split187:                                   ; preds = %bb.y, %bb.ac
  tail call void @__cxa_end_catch()
  br label %bb.z

bb.z:                                             ; preds = %.sink.split187, %.lr.ph.i.i.i.i.i.i
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !163, !noalias !1175 ; 3 uses
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !1176 ; 4 uses
  %i.ak = sub i64 5, %i.ai
  %.not.i.i96 = icmp ugt i64 %i.aj, %i.ak
  br i1 %.not.i.i96, label %bb.ab, label %bb.aa, !prof !42

bb.aa:                                            ; preds = %bb.z
  %.not13.i.i.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not13.i.i.i.i.i.i, label %.loopexit162, label %.lr.ph.i.i.i.i.i.i111.preheader

.lr.ph.i.i.i.i.i.i111.preheader:                  ; preds = %bb.aa
  %i.al = getelementptr [4 x i8], ptr %1, i64 %i.ai
  %i.am = shl nuw i64 %i.aj, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.al, ptr nonnull align 8 %0, i64 %i.am, i1 false), !tbaa !41, !noalias !1177
  br label %.loopexit162

bb.ab:                                            ; preds = %bb.z
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc113 unwind label %bb.af

.noexc113:                                        ; preds = %bb.ab
  unreachable

.loopexit162:                                     ; preds = %.lr.ph.i.i.i.i.i.i111.preheader, %bb.aa
  %i.an = add i64 %i.ai, %i.aj
  store i64 %i.an, ptr %i.b, align 8, !tbaa !161, !noalias !1178
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.ah unwind label %bb.af

bb.ac:                                            ; preds = %bb.x
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 447, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %.sink.split187 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bs

bb.ae:                                            ; preds = %bb.y
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bs

bb.af:                                            ; preds = %bb.ab, %.loopexit162
  %i.aq = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.8 = extractvalue { ptr, i32 } %i.aq, 1
  %.836 = extractvalue { ptr, i32 } %i.aq, 0
  %i.ar = icmp eq i32 %.8, %i.d
  %i.as = tail call ptr @__cxa_begin_catch(ptr %.836) #25 ; 0 uses
  br i1 %i.ar, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.at = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split188 unwind label %bb.ao ; 0 uses

.sink.split188:                                   ; preds = %bb.ag, %bb.am
  tail call void @__cxa_end_catch()
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split188, %.loopexit162
  %i.au = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !1179 ; 2 uses
  %.idx = shl i64 %i.au, 2                        ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %0, i64 %.idx ; 2 uses
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !163, !noalias !1180
  %.fr = freeze i64 %i.aw                         ; 5 uses
  %.idx.i = shl i64 %.fr, 2                       ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 %.idx.i   ; 2 uses
  %i.ay = icmp ne i64 %i.au, 0
  %i.az = icmp ne i64 %.fr, 0
  %or.cond12.i = and i1 %i.ay, %i.az
  br i1 %or.cond12.i, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %bb.ah
  %i.ba = add i64 %.idx.i, -4
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = add i64 %.idx, -4
  %i.bd = lshr exact i64 %i.bc, 2
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 %i.bd)
  %i.be = shl nuw i64 %umin, 2
  %i.bf = add i64 %i.be, 4                        ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.bf, i1 false), !tbaa !41
  %scevgep = getelementptr i8, ptr %1, i64 %i.bf
  %scevgep170 = getelementptr i8, ptr %0, i64 %i.bf
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i.preheader, %bb.ah
  %.sroa.07.0.lcssa.i = phi ptr [ %1, %bb.ah ], [ %scevgep, %.lr.ph.i.preheader ]
  %.lcssa11.i = phi ptr [ %0, %bb.ah ], [ %scevgep170, %.lr.ph.i.preheader ] ; 3 uses
  %i.bg = icmp eq ptr %.lcssa11.i, %i.av
  br i1 %i.bg, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.critedge.i
  %i.bh = ptrtoint ptr %i.ax to i64
  %i.bi = ptrtoint ptr %.sroa.07.0.lcssa.i to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2
  %i.bl = sub i64 %.fr, %i.bk
  br label %bb.al

bb.aj:                                            ; preds = %.critedge.i
  %i.bm = ptrtoint ptr %i.av to i64
  %i.bn = ptrtoint ptr %.lcssa11.i to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = ashr exact i64 %i.bo, 2                 ; 2 uses
  %i.bq = sub i64 5, %.fr
  %.not.i.i.i114 = icmp ugt i64 %i.bp, %i.bq
  br i1 %.not.i.i.i114, label %bb.ak, label %.lr.ph.i.i.i.i.i.i.i115.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i115.preheader:                ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ax, ptr align 4 %.lcssa11.i, i64 %i.bo, i1 false), !tbaa !41, !noalias !1181
  %i.br = add i64 %i.bp, %.fr
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc119 unwind label %bb.ap

.noexc119:                                        ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i115.preheader, %bb.ai
  %storemerge.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i.i.i115.preheader ], [ %i.bl, %bb.ai ]
  store i64 %storemerge.i, ptr %i.b, align 8, !tbaa !161
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.ar unwind label %bb.ap

bb.am:                                            ; preds = %bb.af
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %.sink.split188 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bs

bb.ao:                                            ; preds = %bb.ag
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bs

bb.ap:                                            ; preds = %bb.ak, %bb.al
  %i.bu = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  %i.bw = extractvalue { ptr, i32 } %i.bu, 1
  %i.bx = icmp eq i32 %i.bw, %i.d
  %i.by = call ptr @__cxa_begin_catch(ptr %i.bv) #25 ; 0 uses
  br i1 %i.bx, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.bz = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split189 unwind label %bb.ax ; 0 uses

.sink.split189:                                   ; preds = %bb.aq, %bb.av
  call void @__cxa_end_catch()
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split189, %bb.al
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !163, !noalias !1182 ; 5 uses
  %.idx.i.i = shl i64 %i.ca, 2                    ; 3 uses
  %i.cb = getelementptr i8, ptr %1, i64 %.idx.i.i
  %.not = icmp eq i64 %i.ca, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ar
  %i.cc = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.cd = lshr exact i64 %i.cc, 2
  %umin171 = call i64 @llvm.umin.i64(i64 %i.cd, i64 9) ; 2 uses
  %i.ce = shl nuw nsw i64 %umin171, 2
  %i.cf = add nuw nsw i64 %i.ce, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 range(i64 0, 41) %i.cf, i1 false), !tbaa !41
  %i.cg = sub nuw nsw i64 9, %umin171
  %i.ch = icmp ugt i64 %i.cc, 32
  br i1 %i.ch, label %bb.as, label %.critedge.i.i.thread

bb.as:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.cf
  %i.ci = ashr exact i64 %gepdiff, 2
  %i.cj = sub i64 %i.ca, %i.ci
  br label %bb.au

.critedge.i.i.thread:                             ; preds = %bb.ar, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i160 = phi i64 [ %i.cg, %.lr.ph.i.i.preheader ], [ 10, %bb.ar ] ; 3 uses
  %i.ck = sub i64 5, %i.ca
  %.not.i.i.i.i120 = icmp ugt i64 %.sroa.3.0.lcssa.i.i160, %i.ck
  br i1 %.not.i.i.i.i120, label %bb.at, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.cl = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i160, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cb, i8 0, i64 %i.cl, i1 false), !tbaa !41, !noalias !1183
  %i.cm = add i64 %.sroa.3.0.lcssa.i.i160, %i.ca
  br label %bb.au

bb.at:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc122 unwind label %bb.ay

.noexc122:                                        ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.as
  %storemerge.i.i = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cj, %bb.as ]
  store i64 %storemerge.i.i, ptr %i.b, align 8, !tbaa !161
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.ba unwind label %bb.ay

bb.av:                                            ; preds = %bb.ap
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %.sink.split189 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bs

bb.ax:                                            ; preds = %bb.aq
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bs

bb.ay:                                            ; preds = %bb.at, %bb.au
  %i.cp = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.11 = extractvalue { ptr, i32 } %i.cp, 1
  %.1139 = extractvalue { ptr, i32 } %i.cp, 0
  %i.cq = icmp eq i32 %.11, %i.d
  %i.cr = call ptr @__cxa_begin_catch(ptr %.1139) #25 ; 0 uses
  br i1 %i.cq, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.cs = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split190 unwind label %bb.be ; 0 uses

.sink.split190:                                   ; preds = %bb.az, %bb.bc
  call void @__cxa_end_catch()
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split190, %bb.au
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !1184
  %i.cu = icmp ult i64 %i.ct, 6
  br i1 %i.cu, label %.loopexit, label %bb.bb, !prof !158

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc124 unwind label %bb.bf

.noexc124:                                        ; preds = %bb.bb
  unreachable

.loopexit:                                        ; preds = %bb.ba
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.bh unwind label %bb.bf

bb.bc:                                            ; preds = %bb.ay
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %.sink.split190 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bs

bb.be:                                            ; preds = %bb.az
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bs

bb.bf:                                            ; preds = %bb.bb, %.loopexit
  %i.cx = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.13 = extractvalue { ptr, i32 } %i.cx, 1
  %.1341 = extractvalue { ptr, i32 } %i.cx, 0
  %i.cy = icmp eq i32 %.13, %i.d
  %i.cz = call ptr @__cxa_begin_catch(ptr %.1341) #25 ; 0 uses
  br i1 %i.cy, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.da = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split191 unwind label %bb.bk ; 0 uses

.sink.split191:                                   ; preds = %bb.bg, %bb.bi
  call void @__cxa_end_catch()
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split191, %.loopexit
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc125 unwind label %bb.bl

.noexc125:                                        ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bf
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %.sink.split191 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bs

bb.bk:                                            ; preds = %bb.bg
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bs

bb.bl:                                            ; preds = %bb.bh
  %i.dd = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.15 = extractvalue { ptr, i32 } %i.dd, 1
  %.1543 = extractvalue { ptr, i32 } %i.dd, 0
  %i.de = icmp eq i32 %.15, %i.d
  %i.df = call ptr @__cxa_begin_catch(ptr %.1543) #25 ; 0 uses
  br i1 %i.de, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.dg = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bn unwind label %bb.bq     ; 0 uses

bb.bn:                                            ; preds = %bb.bm, %bb.bo
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  ret void

bb.bo:                                            ; preds = %bb.bl
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 452, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.bn unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bs

bb.bq:                                            ; preds = %bb.bm
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.g, %bb.o, %bb.v, %bb.ad, %bb.an, %bb.aw, %bb.bd, %bb.bj, %bb.bp, %bb.h, %bb.p, %bb.w, %bb.ae, %bb.ao, %bb.ax, %bb.be, %bb.bk, %bb.bq
  %.pn79.pn.pn = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.dc, %bb.bk ], [ %i.di, %bb.bq ], [ %i.dh, %bb.bp ], [ %i.cw, %bb.be ], [ %i.db, %bb.bj ], [ %i.co, %bb.ax ], [ %i.cv, %bb.bd ], [ %i.bt, %bb.ao ], [ %i.cn, %bb.aw ], [ %i.ap, %bb.ae ], [ %i.bs, %bb.an ], [ %i.ad, %bb.w ], [ %i.ao, %bb.ad ], [ %i.u, %bb.p ], [ %i.ac, %bb.v ], [ %i.l, %bb.h ], [ %i.t, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  resume { ptr, i32 } %.pn79.pn.pn

bb.bs:                                            ; preds = %bb.bq, %bb.bp, %bb.bk, %bb.bj, %bb.be, %bb.bd, %bb.ax, %bb.aw, %bb.ao, %bb.an, %bb.ae, %bb.ad, %bb.w, %bb.v, %bb.p, %bb.o, %bb.h, %bb.g
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z18test_exceptions_ndI14counting_valueLm10EEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::static_vector.29", align 8 ; 15 uses
  %1 = alloca %"class.boost::container::static_vector.255", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.a = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
end_hunk_9
begin_hunk_10_@_Z18test_exceptions_ndI14counting_valueLm10EEvv:bb.a
  %i.dj = sub i64 %i.dh, %i.di                    ; 3 uses
  %i.dk = ashr exact i64 %i.dj, 3                 ; 9 uses
  %i.dl = sub i64 5, %.fr
  %.not.i.i.i105 = icmp ugt i64 %i.dk, %i.dl
  br i1 %.not.i.i.i105, label %bb.as, label %.lr.ph.i.i.i.i.i.i.i, !prof !42

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ar
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1253
  %min.iters.check270 = icmp ult i64 %i.dk, 20
  br i1 %min.iters.check270, label %scalar.ph269.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dm = add i64 %.idx.i, %i.dj                  ; 2 uses
  %i.dn = getelementptr i8, ptr %1, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -4
  %i.dp = getelementptr i8, ptr %.lcssa10.i, i64 %i.dj
  %i.dq = getelementptr i8, ptr %i.dp, i64 -4
  %i.dr = getelementptr i8, ptr %1, i64 %.idx.i
  %i.ds = getelementptr i8, ptr %i.dr, i64 4
  %i.dt = getelementptr i8, ptr %1, i64 %i.dm
  %i.du = getelementptr i8, ptr %.lcssa10.i, i64 4
  %bound0 = icmp ult ptr %i.cf, %i.dq
  %bound1 = icmp ult ptr %.lcssa10.i, %i.do
  %found.conflict = and i1 %bound0, %bound1
  %bound0271 = icmp ult ptr %i.ds, %i.cd
  %bound1272 = icmp ult ptr %i.du, %i.dt
  %found.conflict273 = and i1 %bound0271, %bound1272
  %conflict.rdx = or i1 %found.conflict, %found.conflict273
  br i1 %conflict.rdx, label %scalar.ph269.preheader, label %vector.ph274

vector.ph274:                                     ; preds = %vector.memcheck
  %n.vec275 = and i64 %i.dk, -4                   ; 3 uses
  %i.dv = shl nsw i64 %n.vec275, 3                ; 2 uses
  %i.dw = getelementptr i8, ptr %.lcssa10.i, i64 %i.dv
  %i.dx = and i64 %i.dk, 3
  %i.dy = getelementptr i8, ptr %i.cf, i64 %i.dv
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph274
  %index277 = phi i64 [ 0, %vector.ph274 ], [ %index.next292, %vector.body276 ] ; 2 uses
  %i.dz = shl i64 %index277, 3                    ; 3 uses
  %i.ea = or disjoint i64 %i.dz, 16               ; 2 uses
  %next.gep278 = getelementptr i8, ptr %.lcssa10.i, i64 %i.dz
  %next.gep279 = getelementptr i8, ptr %.lcssa10.i, i64 %i.ea
  %next.gep280 = getelementptr i8, ptr %i.cf, i64 %i.dz ; 2 uses
  %next.gep282 = getelementptr i8, ptr %i.cf, i64 %i.ea ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep280), "nonnull"(ptr %next.gep282) ]
  %wide.vec284 = load <4 x i32>, ptr %next.gep278, align 4, !tbaa !41, !noalias !1253
  %wide.vec287 = load <4 x i32>, ptr %next.gep279, align 4, !tbaa !41, !noalias !1253
  store <4 x i32> %wide.vec284, ptr %next.gep280, align 8, !tbaa !41, !noalias !1253
  store <4 x i32> %wide.vec287, ptr %next.gep282, align 8, !tbaa !41, !noalias !1253
  %index.next292 = add nuw i64 %index277, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next292, %n.vec275
  br i1 %i.eb, label %middle.block293, label %vector.body276, !llvm.loop !1221

middle.block293:                                  ; preds = %vector.body276
  %cmp.n294 = icmp eq i64 %i.dk, %n.vec275
  br i1 %cmp.n294, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %scalar.ph269.preheader

scalar.ph269.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i, %middle.block293
  %.ph = phi ptr [ %.lcssa10.i, %vector.memcheck ], [ %.lcssa10.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dw, %middle.block293 ] ; 2 uses
  %.015.i.i.i.i.i.i.i.ph = phi i64 [ %i.dk, %vector.memcheck ], [ %i.dk, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dx, %middle.block293 ] ; 4 uses
  %.01214.i.i.i.i.i.i.i.ph = phi ptr [ %i.cf, %vector.memcheck ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dy, %middle.block293 ] ; 2 uses
  %i.ec = add nsw i64 %.015.i.i.i.i.i.i.i.ph, -1
  %xtraiter = and i64 %.015.i.i.i.i.i.i.i.ph, 7   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph269.prol.loopexit, label %scalar.ph269.prol

scalar.ph269.prol:                                ; preds = %scalar.ph269.preheader, %scalar.ph269.prol
  %i.ed = phi ptr [ %i.ef, %scalar.ph269.prol ], [ %.ph, %scalar.ph269.preheader ] ; 2 uses
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.eh, %scalar.ph269.prol ], [ %.015.i.i.i.i.i.i.i.ph, %scalar.ph269.preheader ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.eg, %scalar.ph269.prol ], [ %.01214.i.i.i.i.i.i.i.ph, %scalar.ph269.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph269.prol ], [ 0, %scalar.ph269.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i.prol) ]
  %i.ee = load <2 x i32>, ptr %i.ed, align 4, !tbaa !41, !noalias !1253
  store <2 x i32> %i.ee, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1253
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.eh = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph269.prol.loopexit, label %scalar.ph269.prol, !llvm.loop !1222

scalar.ph269.prol.loopexit:                       ; preds = %scalar.ph269.prol, %scalar.ph269.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph269.preheader ], [ %i.ef, %scalar.ph269.prol ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %.015.i.i.i.i.i.i.i.ph, %scalar.ph269.preheader ], [ %i.eh, %scalar.ph269.prol ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %.01214.i.i.i.i.i.i.i.ph, %scalar.ph269.preheader ], [ %i.eg, %scalar.ph269.prol ]
  %i.ei = icmp ult i64 %i.ec, 7
  br i1 %i.ei, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %scalar.ph269

scalar.ph269:                                     ; preds = %scalar.ph269.prol.loopexit, %scalar.ph269
  %i.ej = phi ptr [ %i.fg, %scalar.ph269 ], [ %.unr, %scalar.ph269.prol.loopexit ] ; 9 uses
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.fi, %scalar.ph269 ], [ %.015.i.i.i.i.i.i.i.unr, %scalar.ph269.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.fh, %scalar.ph269 ], [ %.01214.i.i.i.i.i.i.i.unr, %scalar.ph269.prol.loopexit ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i) ]
  %i.ek = load <2 x i32>, ptr %i.ej, align 4, !tbaa !41, !noalias !1253
  store <2 x i32> %i.ek, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1253
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.en = load <2 x i32>, ptr %i.el, align 4, !tbaa !41, !noalias !1253
  store <2 x i32> %i.en, ptr %i.em, align 4, !tbaa !41, !noalias !1253
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.eq = load <2 x i32>, ptr %i.eo, align 4, !tbaa !41, !noalias !1253
  store <2 x i32> %i.eq, ptr %i.ep, align 4, !tbaa !41, !noalias !1253
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 24
  %i.et = load <2 x i32>, ptr %i.er, align 4, !tbaa !41, !noalias !1253
  store <2 x i32> %i.et, ptr %i.es, align 4, !tbaa !41, !noalias !1253
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 32
  %i.ew = load <2 x i32>, ptr %i.eu, align 4, !tbaa !41, !noalias !1253
  store <2 x i32> %i.ew, ptr %i.ev, align 4, !tbaa !41, !noalias !1253
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.ey = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 40
  %i.ez = load <2 x i32>, ptr %i.ex, align 4, !tbaa !41, !noalias !1253
  store <2 x i32> %i.ez, ptr %i.ey, align 4, !tbaa !41, !noalias !1253
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %i.fb = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 48
  %i.fc = load <2 x i32>, ptr %i.fa, align 4, !tbaa !41, !noalias !1253
  store <2 x i32> %i.fc, ptr %i.fb, align 4, !tbaa !41, !noalias !1253
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.fe = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 56
  %i.ff = load <2 x i32>, ptr %i.fd, align 4, !tbaa !41, !noalias !1253
  store <2 x i32> %i.ff, ptr %i.fe, align 4, !tbaa !41, !noalias !1253
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %i.fh = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 64
  %i.fi = add i64 %.015.i.i.i.i.i.i.i, -8         ; 2 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %scalar.ph269, !llvm.loop !1223

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc107 unwind label %bb.ax

.noexc107:                                        ; preds = %bb.as
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i: ; preds = %scalar.ph269.prol.loopexit, %scalar.ph269, %middle.block293
  %i.fj = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i, %i.dk
  store i64 %i.fj, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1253
  %i.fk = add i64 %i.dk, %.fr
  br label %bb.at

bb.at:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %storemerge.i = phi i64 [ %i.fk, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i ], [ %i.dg, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i ]
  store i64 %storemerge.i, ptr %i.c, align 8, !tbaa !1240
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.az unwind label %bb.ax

bb.au:                                            ; preds = %bb.an
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %.invoke219 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.aw:                                            ; preds = %bb.ao
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.ax:                                            ; preds = %bb.as, %bb.at
  %i.fn = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  %i.fp = extractvalue { ptr, i32 } %i.fn, 1
  %i.fq = icmp eq i32 %i.fp, %i.h
  %i.fr = call ptr @__cxa_begin_catch(ptr %i.fo) #25 ; 0 uses
  br i1 %i.fq, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.fs = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke218 unwind label %bb.bf ; 0 uses

.invoke218:                                       ; preds = %bb.bd, %bb.ay
  invoke void @__cxa_end_catch()
          to label %bb.az unwind label %bb.ce

bb.az:                                            ; preds = %.invoke218, %bb.at
  %i.ft = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.fu = add i64 %i.ft, 1                        ; 4 uses
  store i64 %i.fu, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.fv = load i64, ptr %i.c, align 8, !tbaa !1242, !noalias !1254 ; 5 uses
  %.idx.i.i = shl i64 %i.fv, 3                    ; 4 uses
  %i.fw = getelementptr i8, ptr %1, i64 %.idx.i.i
  %.not = icmp eq i64 %i.fv, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.az
  %i.fx = add i64 %.idx.i.i, -8                   ; 2 uses
  %i.fy = lshr exact i64 %i.fx, 3
  %umin = call i64 @llvm.umin.i64(i64 %i.fy, i64 9) ; 2 uses
  %i.fz = shl nuw nsw i64 %umin, 3
  %i.ga = add nuw nsw i64 %i.fz, 8                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 range(i64 0, 81) %i.ga, i1 false), !tbaa !41
  %i.gb = sub nuw nsw i64 9, %umin
  %i.gc = icmp ugt i64 %i.fx, 64
  br i1 %i.gc, label %bb.ba, label %.critedge.i.i.thread

bb.ba:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.ga
  %i.gd = ashr exact i64 %gepdiff, 3              ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %.idx.i.i, %i.ga
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.ba
  %i.ge = sub i64 %i.fu, %i.gd                    ; 2 uses
  store i64 %i.ge, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.ba
  %i.gf = phi i64 [ %i.ge, %.lr.ph.preheader.i.i.i.i ], [ %i.fu, %bb.ba ]
  %i.gg = sub i64 %i.fv, %i.gd
  br label %bb.bc

.critedge.i.i.thread:                             ; preds = %bb.az, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i194 = phi i64 [ %i.gb, %.lr.ph.i.i.preheader ], [ 10, %bb.az ] ; 4 uses
  %i.gh = sub i64 5, %i.fv
  %.not.i.i.i.i108 = icmp ugt i64 %.sroa.3.0.lcssa.i.i194, %i.gh
  br i1 %.not.i.i.i.i108, label %bb.bb, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.gi = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i194, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fw, i8 0, i64 %i.gi, i1 false), !tbaa !41, !noalias !1255
  %i.gj = add i64 %.sroa.3.0.lcssa.i.i194, %i.fu  ; 2 uses
  store i64 %i.gj, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1255
  %i.gk = add i64 %.sroa.3.0.lcssa.i.i194, %i.fv
  br label %bb.bc

bb.bb:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc110 unwind label %bb.bg

.noexc110:                                        ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i
  %i.gl = phi i64 [ %i.gj, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gf, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  %storemerge.i.i = phi i64 [ %i.gk, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gg, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  store i64 %storemerge.i.i, ptr %i.c, align 8, !tbaa !1240
  %i.gm = add i64 %i.gl, -1
  store i64 %i.gm, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.bk unwind label %bb.bh

bb.bd:                                            ; preds = %bb.ax
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %.invoke218 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.bf:                                            ; preds = %bb.ay
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.bg:                                            ; preds = %bb.bb
  %i.gp = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.gq = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.gr = add i64 %i.gq, -1
  store i64 %i.gr, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bc
  %i.gs = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn69 = phi { ptr, i32 } [ %i.gs, %bb.bh ], [ %i.gp, %bb.bg ] ; 2 uses
  %.11 = extractvalue { ptr, i32 } %.pn69, 1
  %.1139 = extractvalue { ptr, i32 } %.pn69, 0
  %i.gt = icmp eq i32 %.11, %i.h
  %i.gu = call ptr @__cxa_begin_catch(ptr %.1139) #25 ; 0 uses
  br i1 %i.gt, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  %i.gv = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke217 unwind label %bb.br ; 0 uses

.invoke217:                                       ; preds = %bb.bp, %bb.bj
  invoke void @__cxa_end_catch()
          to label %bb.bk unwind label %bb.ce

bb.bk:                                            ; preds = %.invoke217, %bb.bc
  %i.gw = load i64, ptr %i.b, align 8, !tbaa !102, !noalias !1256 ; 7 uses
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not.i.i.i.i.i = icmp ugt i64 %i.gw, 5
  br i1 %.not.i.i.i.i.i, label %bb.bm, label %.lr.ph.i.i.i.i.i.i.i.i.i, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bl
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1257
  %i.gy = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i.i.i, %i.gw
  store i64 %i.gy, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1257
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc111 unwind label %bb.bs

.noexc111:                                        ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.bk
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.bo unwind label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  %.not3.i.i = icmp eq i64 %i.gw, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bo
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.gz = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.gw
  store i64 %i.gz, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit

bb.bp:                                            ; preds = %bb.bi
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %.invoke217 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.br:                                            ; preds = %bb.bj
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.bs:                                            ; preds = %bb.bm
  %i.hc = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit115

bb.bt:                                            ; preds = %bb.bn
  %i.hd = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.not3.i.i112 = icmp eq i64 %i.gw, 0
  br i1 %.not3.i.i112, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit115, label %.lr.ph.preheader.i.i113

.lr.ph.preheader.i.i113:                          ; preds = %bb.bt
  %_ZZN14counting_value1cEvE2co.promoted.i.i114 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.he = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i114, %i.gw
  store i64 %i.he, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit115

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit115: ; preds = %.lr.ph.preheader.i.i113, %bb.bt, %bb.bs
  %.pn73 = phi { ptr, i32 } [ %i.hc, %bb.bs ], [ %i.hd, %bb.bt ], [ %i.hd, %.lr.ph.preheader.i.i113 ] ; 2 uses
  %.13 = extractvalue { ptr, i32 } %.pn73, 1
  %.1341 = extractvalue { ptr, i32 } %.pn73, 0
  %i.hf = icmp eq i32 %.13, %i.h
  %i.hg = call ptr @__cxa_begin_catch(ptr %.1341) #25 ; 0 uses
  br i1 %i.hf, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit115
  %i.hh = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke unwind label %bb.bx   ; 0 uses

.invoke:                                          ; preds = %bb.bv, %bb.bu
  invoke void @__cxa_end_catch()
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit unwind label %bb.ce

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit: ; preds = %.lr.ph.preheader.i.i, %bb.bo, %.invoke
  %i.hi = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.hj = add i64 %i.hi, 1
  store i64 %i.hj, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc116 unwind label %bb.by

.noexc116:                                        ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit
  unreachable

bb.bv:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit115
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %.invoke unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hk = landingpad { ptr, i32 }
end_hunk_10
begin_hunk_11_@_Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv:_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit

.lr.ph.i.preheader:                               ; preds = %bb.ao
  %i.bv = add i64 %.idx.i, -4
  %i.bw = lshr exact i64 %i.bv, 2
  %i.bx = add i64 %.idx, -4
  %i.by = lshr exact i64 %i.bx, 2
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 %i.by)
  %i.bz = shl nuw i64 %umin, 2
  %i.ca = add i64 %i.bz, 4                        ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.ca, i1 false), !tbaa !82
  %scevgep = getelementptr i8, ptr %1, i64 %i.ca
  %scevgep254 = getelementptr i8, ptr %0, i64 %i.ca
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i.preheader, %bb.ao
  %.sroa.07.0.lcssa.i = phi ptr [ %1, %bb.ao ], [ %scevgep, %.lr.ph.i.preheader ] ; 2 uses
  %.lcssa11.i = phi ptr [ %0, %bb.ao ], [ %scevgep254, %.lr.ph.i.preheader ] ; 3 uses
  %i.cb = icmp eq ptr %.lcssa11.i, %i.bq
  br i1 %i.cb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.critedge.i
  %i.cc = ptrtoint ptr %i.bs to i64
  %i.cd = ptrtoint ptr %.sroa.07.0.lcssa.i to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2                 ; 8 uses
  %.not3.i.i.i = icmp eq ptr %i.bs, %.sroa.07.0.lcssa.i
  br i1 %.not3.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.ap
  %i.cg = sub nsw i64 0, %i.cf
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cg ; 3 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted235 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check284 = icmp ult i64 %i.cf, 8
  br i1 %min.iters.check284, label %.lr.ph.i.i.i116.preheader, label %vector.ph285

vector.ph285:                                     ; preds = %.lr.ph.i.preheader.i.i
  %n.vec286 = and i64 %i.cf, -8                   ; 3 uses
  %i.ci = and i64 %i.cf, 7
  %i.cj = shl nsw i64 %n.vec286, 2
  %i.ck = getelementptr i8, ptr %i.ch, i64 %i.cj
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph285
  %index288 = phi i64 [ 0, %vector.ph285 ], [ %index.next289, %vector.body287 ] ; 2 uses
  %i.cl = shl i64 %index288, 2
  %next.gep = getelementptr i8, ptr %i.ch, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 4, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.cm, align 4, !tbaa !82
  %index.next289 = add nuw i64 %index288, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next289, %n.vec286
  br i1 %i.cn, label %middle.block290, label %vector.body287, !llvm.loop !1284

middle.block290:                                  ; preds = %vector.body287
  %cmp.n291 = icmp eq i64 %i.cf, %n.vec286
  br i1 %cmp.n291, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, label %.lr.ph.i.i.i116.preheader

.lr.ph.i.i.i116.preheader:                        ; preds = %.lr.ph.i.preheader.i.i, %middle.block290
  %.05.i.i.i.ph = phi i64 [ %i.cf, %.lr.ph.i.preheader.i.i ], [ %i.ci, %middle.block290 ]
  %storemerge4.i.i.i.ph = phi ptr [ %i.ch, %.lr.ph.i.preheader.i.i ], [ %i.ck, %middle.block290 ]
  br label %.lr.ph.i.i.i116

.lr.ph.i.i.i116:                                  ; preds = %.lr.ph.i.i.i116.preheader, %.lr.ph.i.i.i116
  %.05.i.i.i = phi i64 [ %i.co, %.lr.ph.i.i.i116 ], [ %.05.i.i.i.ph, %.lr.ph.i.i.i116.preheader ]
  %storemerge4.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i116 ], [ %storemerge4.i.i.i.ph, %.lr.ph.i.i.i116.preheader ] ; 2 uses
  %i.co = add i64 %.05.i.i.i, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i, align 4, !tbaa !82
  %i.cp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 4
  %.not.i.i.i117 = icmp eq i64 %i.co, 0
  br i1 %.not.i.i.i117, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, label %.lr.ph.i.i.i116, !llvm.loop !1285

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit: ; preds = %.lr.ph.i.i.i116, %middle.block290
  %i.cq = trunc i64 %i.cf to i32
  %i.cr = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted235, %i.cq
  store i32 %i.cr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, %bb.ap
  %i.cs = sub i64 %.fr, %i.cf
  br label %bb.as

bb.aq:                                            ; preds = %.critedge.i
  %i.ct = ptrtoint ptr %i.bq to i64
  %i.cu = ptrtoint ptr %.lcssa11.i to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 2 uses
  %i.cw = ashr exact i64 %i.cv, 2                 ; 7 uses
  %i.cx = sub i64 5, %.fr
  %.not.i.i2.i = icmp ugt i64 %i.cw, %i.cx
  br i1 %.not.i.i2.i, label %bb.ar, label %.lr.ph.i.i.i.i.i.i.i112.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i112.preheader:                ; preds = %bb.aq
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted234 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1337 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bs, ptr align 4 %.lcssa11.i, i64 %i.cv, i1 false), !tbaa !82, !noalias !1337
  %min.iters.check = icmp ult i64 %i.cw, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader378, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader
  %n.vec = and i64 %i.cw, -8                      ; 2 uses
  %i.cy = and i64 %i.cw, 7
  %i.cz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted234, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.cz, %vector.ph ], [ %i.da, %vector.body ]
  %vec.phi281 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.db, %vector.body ]
  %i.da = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.db = add <4 x i32> %vec.phi281, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !1292

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.db, %i.da
  %i.dd = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i112.preheader378

.lr.ph.i.i.i.i.i.i.i112.preheader378:             ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader, %middle.block
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted234, %.lr.ph.i.i.i.i.i.i.i112.preheader ], [ %i.dd, %middle.block ]
  %.015.i.i.i.i.i.i.i113.ph = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.i.i112.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i.i112:                          ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader378, %.lr.ph.i.i.i.i.i.i.i112
  %i.de = phi i32 [ %i.df, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader378 ]
  %.015.i.i.i.i.i.i.i113 = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.015.i.i.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader378 ]
  %i.df = add i32 %i.de, 1                        ; 2 uses
  %i.dg = add i64 %.015.i.i.i.i.i.i.i113, -1      ; 2 uses
  %.not.i.i.i.i.i.i.i115 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i.i.i.i.i115, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i112, !llvm.loop !1293

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc118 unwind label %bb.aw

.noexc118:                                        ; preds = %bb.ar
  unreachable

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i112, %middle.block
  %.lcssa = phi i32 [ %i.dd, %middle.block ], [ %i.df, %.lr.ph.i.i.i.i.i.i.i112 ]
  store i32 %.lcssa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1337
  %i.dh = add i64 %i.cw, %.fr
  br label %bb.as

bb.as:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %storemerge.i = phi i64 [ %i.dh, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS3_Lb0EEEEESB_NS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS4_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE.exit.i ], [ %i.cs, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i ]
  store i64 %storemerge.i, ptr %i.c, align 8, !tbaa !1324
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.ay unwind label %bb.aw

bb.at:                                            ; preds = %bb.am
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %.invoke275 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.av:                                            ; preds = %bb.an
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.aw:                                            ; preds = %bb.ar, %bb.as
  %i.dk = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  %i.dm = extractvalue { ptr, i32 } %i.dk, 1
  %i.dn = icmp eq i32 %i.dm, %i.h
  %i.do = call ptr @__cxa_begin_catch(ptr %i.dl) #25 ; 0 uses
  br i1 %i.dn, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  %i.dp = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke274 unwind label %bb.be ; 0 uses

.invoke274:                                       ; preds = %bb.bc, %bb.ax
  invoke void @__cxa_end_catch()
          to label %bb.ay unwind label %bb.ce

bb.ay:                                            ; preds = %.invoke274, %bb.as
  %i.dq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dr = add i32 %i.dq, 1                        ; 4 uses
  store i32 %i.dr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ds = load i64, ptr %i.c, align 8, !tbaa !1326, !noalias !1338 ; 5 uses
  %.idx.i.i = shl i64 %i.ds, 2                    ; 4 uses
  %i.dt = getelementptr i8, ptr %1, i64 %.idx.i.i ; 2 uses
  %.not = icmp eq i64 %i.ds, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ay
  %i.du = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.dv = lshr exact i64 %i.du, 2
  %umin255 = call i64 @llvm.umin.i64(i64 %i.dv, i64 9) ; 2 uses
  %i.dw = shl nuw nsw i64 %umin255, 2
  %i.dx = add nuw nsw i64 %i.dw, 4                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 range(i64 0, 41) %i.dx, i1 false), !tbaa !82
  %i.dy = sub nuw nsw i64 9, %umin255
  %i.dz = icmp ugt i64 %i.du, 32
  br i1 %i.dz, label %bb.az, label %.critedge.i.i.thread

bb.az:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.dx
  %i.ea = ashr exact i64 %gepdiff, 2              ; 8 uses
  %.not3.i.i.i.i = icmp eq i64 %.idx.i.i, %i.dx
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.az
  %i.eb = sub nsw i64 0, %i.ea
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.eb ; 3 uses
  %min.iters.check295 = icmp ult i64 %i.ea, 8
  br i1 %min.iters.check295, label %.lr.ph.i.i.i.i119.preheader, label %vector.ph296

vector.ph296:                                     ; preds = %.lr.ph.i.preheader.i.i.i
  %n.vec297 = and i64 %i.ea, -8                   ; 3 uses
  %i.ed = and i64 %i.ea, 7
  %i.ee = shl nsw i64 %n.vec297, 2
  %i.ef = getelementptr i8, ptr %i.ec, i64 %i.ee
  br label %vector.body298

vector.body298:                                   ; preds = %vector.body298, %vector.ph296
  %index299 = phi i64 [ 0, %vector.ph296 ], [ %index.next301, %vector.body298 ] ; 2 uses
  %i.eg = shl i64 %index299, 2
  %next.gep300 = getelementptr i8, ptr %i.ec, i64 %i.eg ; 2 uses
  %i.eh = getelementptr i8, ptr %next.gep300, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep300, align 4, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.eh, align 4, !tbaa !82
  %index.next301 = add nuw i64 %index299, 8       ; 2 uses
  %i.ei = icmp eq i64 %index.next301, %n.vec297
  br i1 %i.ei, label %middle.block302, label %vector.body298, !llvm.loop !1296

middle.block302:                                  ; preds = %vector.body298
  %cmp.n303 = icmp eq i64 %i.ea, %n.vec297
  br i1 %cmp.n303, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, label %.lr.ph.i.i.i.i119.preheader

.lr.ph.i.i.i.i119.preheader:                      ; preds = %.lr.ph.i.preheader.i.i.i, %middle.block302
  %.05.i.i.i.i.ph = phi i64 [ %i.ea, %.lr.ph.i.preheader.i.i.i ], [ %i.ed, %middle.block302 ]
  %storemerge4.i.i.i.i.ph = phi ptr [ %i.ec, %.lr.ph.i.preheader.i.i.i ], [ %i.ef, %middle.block302 ]
  br label %.lr.ph.i.i.i.i119

.lr.ph.i.i.i.i119:                                ; preds = %.lr.ph.i.i.i.i119.preheader, %.lr.ph.i.i.i.i119
  %.05.i.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i.i.i119 ], [ %.05.i.i.i.i.ph, %.lr.ph.i.i.i.i119.preheader ]
  %storemerge4.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i119 ], [ %storemerge4.i.i.i.i.ph, %.lr.ph.i.i.i.i119.preheader ] ; 2 uses
  %i.ej = add i64 %.05.i.i.i.i, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i, align 4, !tbaa !82
  %i.ek = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  %.not.i.i.i.i120 = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i120, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, label %.lr.ph.i.i.i.i119, !llvm.loop !1297

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit: ; preds = %.lr.ph.i.i.i.i119, %middle.block302
  %i.el = trunc i64 %i.ea to i32
  %i.em = sub i32 %i.dr, %i.el                    ; 2 uses
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit, %bb.az
  %i.en = phi i32 [ %i.em, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i.loopexit ], [ %i.dr, %bb.az ]
  %i.eo = sub i64 %i.ds, %i.ea
  br label %bb.bb

.critedge.i.i.thread:                             ; preds = %bb.ay, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i220 = phi i64 [ %i.dy, %.lr.ph.i.i.preheader ], [ 10, %bb.ay ] ; 4 uses
  %i.ep = sub i64 5, %i.ds
  %.not.i.i2.i.i = icmp ugt i64 %.sroa.3.0.lcssa.i.i220, %i.ep
  br i1 %.not.i.i2.i.i, label %bb.ba, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.eq = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i220, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dt, i8 0, i64 %i.eq, i1 false), !tbaa !82, !noalias !1339
  %i.er = trunc nuw nsw i64 %.sroa.3.0.lcssa.i.i220 to i32
  %i.es = add i32 %i.dr, %i.er                    ; 2 uses
  store i32 %i.es, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1339
  %i.et = add i64 %.sroa.3.0.lcssa.i.i220, %i.ds
  br label %bb.bb

bb.ba:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc122 unwind label %bb.bf

.noexc122:                                        ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i
  %i.eu = phi i32 [ %i.es, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.en, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  %storemerge.i.i = phi i64 [ %i.et, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.eo, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  store i64 %storemerge.i.i, ptr %i.c, align 8, !tbaa !1324
  %i.ev = add i32 %i.eu, -1
  store i32 %i.ev, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.bj unwind label %bb.bg

bb.bc:                                            ; preds = %bb.aw
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %.invoke274 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.be:                                            ; preds = %bb.ax
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.bf:                                            ; preds = %bb.ba
  %i.ey = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.ez = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.fa = add i32 %i.ez, -1
  store i32 %i.fa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bb
  %i.fb = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn69 = phi { ptr, i32 } [ %i.fb, %bb.bg ], [ %i.ey, %bb.bf ] ; 2 uses
  %.11 = extractvalue { ptr, i32 } %.pn69, 1
  %.1139 = extractvalue { ptr, i32 } %.pn69, 0
  %i.fc = icmp eq i32 %.11, %i.h
  %i.fd = call ptr @__cxa_begin_catch(ptr %.1139) #25 ; 0 uses
  br i1 %i.fc, label %bb.bi, label %bb.bo

bb.bi:                                            ; preds = %bb.bh
  %i.fe = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke273 unwind label %bb.bq ; 0 uses

.invoke273:                                       ; preds = %bb.bo, %bb.bi
  invoke void @__cxa_end_catch()
          to label %bb.bj unwind label %bb.ce

bb.bj:                                            ; preds = %.invoke273, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ff = load i64, ptr %i.b, align 8, !tbaa !141, !noalias !1340 ; 17 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.not.i.i2.i.i.i = icmp ugt i64 %i.ff, 5
  br i1 %.not.i.i2.i.i.i, label %bb.bl, label %.lr.ph.i.i.i.i.i.i.i.preheader.i.i, !prof !42

.lr.ph.i.i.i.i.i.i.i.preheader.i.i:               ; preds = %bb.bk
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1341
  %i.fh = trunc nuw nsw i64 %i.ff to i32
  %i.fi = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.fh
  store i32 %i.fi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1341
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc123 unwind label %bb.br

.noexc123:                                        ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.i.i, %bb.bj
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.bn unwind label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  %.not3.i.i = icmp eq i64 %i.ff, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm5ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.bn
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check319 = icmp ult i64 %i.ff, 8
  br i1 %min.iters.check319, label %.lr.ph.i.i124.preheader, label %vector.ph320

vector.ph320:                                     ; preds = %.lr.ph.i.preheader.i
  %n.vec321 = and i64 %i.ff, -8                   ; 3 uses
  %i.fj = and i64 %i.ff, 7
  %i.fk = shl i64 %n.vec321, 2
  %i.fl = getelementptr i8, ptr %2, i64 %i.fk
  br label %vector.body322

vector.body322:                                   ; preds = %vector.body322, %vector.ph320
  %index323 = phi i64 [ 0, %vector.ph320 ], [ %index.next325, %vector.body322 ] ; 2 uses
  %i.fm = shl i64 %index323, 2
  %next.gep324 = getelementptr i8, ptr %2, i64 %i.fm ; 2 uses
  %i.fn = getelementptr i8, ptr %next.gep324, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep324, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.fn, align 8, !tbaa !82
  %index.next325 = add nuw i64 %index323, 8       ; 2 uses
  %i.fo = icmp eq i64 %index.next325, %n.vec321
  br i1 %i.fo, label %middle.block326, label %vector.body322, !llvm.loop !1310

middle.block326:                                  ; preds = %vector.body322
  %cmp.n327 = icmp eq i64 %i.ff, %n.vec321
  br i1 %cmp.n327, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm5ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i124.preheader

end_hunk_11
begin_hunk_12_@_Z21test_swap_and_move_ndIiLm10EEvv:_ZN5boost9container13static_vectorIiLm10EvEC2EOS2_.exit
  %i.bt = icmp eq i32 %i.bs, 0
  %i.bu = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.bt) ; 0 uses
  %i.bv = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.bw = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.bx = load i32, ptr %3, align 16, !tbaa !41
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.by) ; 0 uses
  %i.ca = load i32, ptr %i.q, align 4, !tbaa !41
  %i.cb = icmp eq i32 %i.ca, 1
  %i.cc = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.cb) ; 0 uses
  %i.cd = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.ce = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.cf = load i32, ptr %i.r, align 4, !tbaa !41
  %i.cg = icmp eq i32 %i.cf, 1
  %i.ch = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.cg) ; 0 uses
  %i.ci = load i32, ptr %i.s, align 8, !tbaa !41
  %i.cj = icmp eq i32 %i.ci, 2
  %i.ck = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.cj) ; 0 uses
  %i.cl = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.cm = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.cn = load i32, ptr %i.t, align 8, !tbaa !41
  %i.co = icmp eq i32 %i.cn, 2
  %i.cp = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.co) ; 0 uses
  %i.cq = load i32, ptr %i.u, align 4, !tbaa !41
  %i.cr = icmp eq i32 %i.cq, 3
  %i.cs = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.cr) ; 0 uses
  %i.ct = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.cu = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.cv = load i32, ptr %i.v, align 4, !tbaa !41
  %i.cw = icmp eq i32 %i.cv, 3
  %i.cx = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.cw) ; 0 uses
  %i.cy = load i32, ptr %i.w, align 16, !tbaa !41
  %i.cz = icmp eq i32 %i.cy, 4
  %i.da = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.cz) ; 0 uses
  %i.db = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.dc = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.dd = load i32, ptr %i.x, align 16, !tbaa !41
  %i.de = icmp eq i32 %i.dd, 4
  %i.df = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.de) ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !41
  %i.di = icmp eq i32 %i.dh, 5
  %i.dj = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.di) ; 0 uses
  %i.dk = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.dl = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !41
  %i.do = icmp eq i32 %i.dn, 5
  %i.dp = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.do) ; 0 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !41
  %i.ds = icmp eq i32 %i.dr, 6
  %i.dt = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.ds) ; 0 uses
  %i.du = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.dv = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !41
  %i.dy = icmp eq i32 %i.dx, 6
  %i.dz = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.dy) ; 0 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !41
  %i.ec = icmp eq i32 %i.eb, 7
  %i.ed = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.ec) ; 0 uses
  %i.ee = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.ef = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !41
  %i.ei = icmp eq i32 %i.eh, 7
  %i.ej = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.ei) ; 0 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.el = load i32, ptr %i.ek, align 16, !tbaa !41
  %i.em = icmp eq i32 %i.el, 8
  %i.en = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.em) ; 0 uses
  %i.eo = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.ep = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.er = load i32, ptr %i.eq, align 16, !tbaa !41
  %i.es = icmp eq i32 %i.er, 8
  %i.et = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.es) ; 0 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !41
  %i.ew = icmp eq i32 %i.ev, 9
  %i.ex = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.ew) ; 0 uses
  %i.ey = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.ez = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !41
  %i.fc = icmp eq i32 %i.fb, 9
  %i.fd = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.fc) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %4, align 16, !tbaa !41
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 4, ptr %i.fi, align 16, !tbaa !41
  store i64 5, ptr %i.fe, align 8, !tbaa !95
  store i32 100, ptr %5, align 8, !tbaa !41
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 101, ptr %i.fj, align 4, !tbaa !41
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 102, ptr %i.fk, align 8, !tbaa !41
  store i64 3, ptr %i.ff, align 8, !tbaa !157
  call void @_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEE14priv_deep_swapINS3_IiLm10ELm0ELb1EEEmS7_EEvRNS1_IT_T0_T1_EE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %4)
  %i.fl = load i64, ptr %i.fe, align 8, !tbaa !95
  %i.fm = icmp eq i64 %i.fl, 3
  %i.fn = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.1, i32 noundef 524, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.fm) ; 0 uses
  %i.fo = load i64, ptr %i.ff, align 8, !tbaa !157
  %i.fp = icmp eq i64 %i.fo, 5
  %i.fq = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.1, i32 noundef 525, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.fp) ; 0 uses
  %i.fr = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.1, i32 noundef 528, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.fs = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.1, i32 noundef 529, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.ft = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.1, i32 noundef 532, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.fu = load i32, ptr %4, align 16, !tbaa !41
  %i.fv = icmp eq i32 %i.fu, 100
  %i.fw = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.1, i32 noundef 534, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.fv) ; 0 uses
  %i.fx = load i32, ptr %i.fg, align 4, !tbaa !41
  %i.fy = icmp eq i32 %i.fx, 101
  %i.fz = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.1, i32 noundef 534, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.fy) ; 0 uses
  %i.ga = load i32, ptr %i.fh, align 8, !tbaa !41
  %i.gb = icmp eq i32 %i.ga, 102
  %i.gc = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.1, i32 noundef 534, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.gb) ; 0 uses
  %i.gd = load i32, ptr %5, align 8, !tbaa !41
  %i.ge = icmp eq i32 %i.gd, 0
  %i.gf = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.ge) ; 0 uses
  %i.gg = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.gh = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.gi = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.gj = load i32, ptr %i.fj, align 4, !tbaa !41
  %i.gk = icmp eq i32 %i.gj, 1
  %i.gl = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.gk) ; 0 uses
  %i.gm = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.gn = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.go = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.gp = load i32, ptr %i.fk, align 8, !tbaa !41
  %i.gq = icmp eq i32 %i.gp, 2
  %i.gr = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.gq) ; 0 uses
  %i.gs = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.gt = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.gu = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !41
  %i.gx = icmp eq i32 %i.gw, 3
  %i.gy = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.gx) ; 0 uses
  %i.gz = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.ha = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.hb = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !41
  %i.he = icmp eq i32 %i.hd, 4
  %i.hf = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext %i.he) ; 0 uses
  %i.hg = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.hh = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.hi = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store i64 10, ptr %i.hj, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false), !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.hk = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store i64 5, ptr %i.hk, align 8, !tbaa !155
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc192 unwind label %bb.a

.noexc192:                                        ; preds = %_ZN5boost9container13static_vectorIiLm10EvEC2EOS2_.exit
  unreachable

bb.a:                                             ; preds = %_ZN5boost9container13static_vectorIiLm10EvEC2EOS2_.exit
  %i.hl = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  %i.hn = extractvalue { ptr, i32 } %i.hl, 1
  %i.ho = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25
  %i.hp = icmp eq i32 %i.hn, %i.ho
  %i.hq = call ptr @__cxa_begin_catch(ptr %i.hm) #25 ; 0 uses
  br i1 %i.hp, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.hr = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke374 unwind label %bb.e ; 0 uses

.invoke374:                                       ; preds = %bb.c, %bb.b
  call void @__cxa_end_catch()
  %i.hs = load i64, ptr %i.hj, align 8, !tbaa !95 ; 3 uses
  %or.cond = icmp ugt i64 %i.hs, 9
  br i1 %or.cond, label %.loopexit240, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.invoke374
  %i.ht = getelementptr [4 x i8], ptr %6, i64 %i.hs
  %i.hu = shl nuw nsw i64 %i.hs, 2
  %i.hv = sub nuw nsw i64 40, %i.hu
  call void @llvm.memset.p0.i64(ptr align 4 %i.ht, i8 0, i64 range(i64 0, 41) %i.hv, i1 false), !tbaa !41
  br label %.loopexit240

.loopexit240:                                     ; preds = %.lr.ph.preheader.i.i.i.i, %.invoke374
  store i64 10, ptr %i.hj, align 8, !tbaa !93
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc200 unwind label %bb.f

.noexc200:                                        ; preds = %.loopexit240
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 547, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv)
          to label %.invoke374 unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.e:                                             ; preds = %bb.b
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.f:                                             ; preds = %.loopexit240
  %i.hy = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.hz = extractvalue { ptr, i32 } %i.hy, 0
  %i.ia = extractvalue { ptr, i32 } %i.hy, 1
  %i.ib = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25 ; 3 uses
  %i.ic = icmp eq i32 %i.ia, %i.ib
  %i.id = call ptr @__cxa_begin_catch(ptr %i.hz) #25 ; 0 uses
  br i1 %i.ic, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ie = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke373 unwind label %bb.m ; 0 uses

.invoke373:                                       ; preds = %bb.k, %bb.g
  call void @__cxa_end_catch()
  %i.if = load i64, ptr %i.hj, align 8, !tbaa !95 ; 3 uses
  %i.ig = icmp ugt i64 %i.if, 5
  br i1 %i.ig, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.invoke373
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc207 unwind label %bb.n

.noexc207:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.invoke373
  %i.ih = load i64, ptr %i.hk, align 8, !tbaa !157 ; 4 uses
  %i.ii = icmp ult i64 %i.ih, %i.if
  br i1 %i.ii, label %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i.i.i.i204, label %bb.j

_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i.i.i.i204: ; preds = %bb.i
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ih
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.ih
  %i.il = sub nuw nsw i64 %i.if, %i.ih
  %i.im = shl nuw nsw i64 %i.il, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ik, ptr nonnull align 4 %i.ij, i64 %i.im, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i.i.i.i204
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 550, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv)
          to label %.loopexit unwind label %bb.n

bb.k:                                             ; preds = %bb.f
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 549, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv)
          to label %.invoke373 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.m:                                             ; preds = %bb.g
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.n:                                             ; preds = %bb.h, %bb.j
  %i.ip = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.iq = extractvalue { ptr, i32 } %i.ip, 0
  %i.ir = extractvalue { ptr, i32 } %i.ip, 1
  %i.is = icmp eq i32 %i.ir, %i.ib
  %i.it = call ptr @__cxa_begin_catch(ptr %i.iq) #25 ; 0 uses
  br i1 %i.is, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.iu = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke unwind label %bb.r    ; 0 uses

.invoke:                                          ; preds = %bb.p, %bb.o
  call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %.invoke, %bb.j
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc219 unwind label %bb.s

.noexc219:                                        ; preds = %.loopexit
  unreachable

bb.p:                                             ; preds = %bb.n
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 550, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv)
          to label %.invoke unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.iv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.r:                                             ; preds = %bb.o
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.s:                                             ; preds = %.loopexit
  %i.ix = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.12 = extractvalue { ptr, i32 } %i.ix, 1
  %.1282 = extractvalue { ptr, i32 } %i.ix, 0
  %i.iy = icmp eq i32 %.12, %i.ib
  %i.iz = call ptr @__cxa_begin_catch(ptr %.1282) #25 ; 0 uses
  br i1 %i.iy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ja = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke375 unwind label %bb.w ; 0 uses

bb.u:                                             ; preds = %bb.s
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 552, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIiLm10EEvv)
          to label %.invoke375 unwind label %bb.v

.invoke375:                                       ; preds = %bb.u, %bb.t
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.v:                                             ; preds = %bb.u
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.d, %bb.l, %bb.q, %bb.v, %bb.e, %bb.m, %bb.r, %bb.w
  %.pn95.pn.pn = phi { ptr, i32 } [ %i.in, %bb.l ], [ %i.iw, %bb.r ], [ %i.jc, %bb.w ], [ %i.jb, %bb.v ], [ %i.hw, %bb.d ], [ %i.io, %bb.m ], [ %i.iv, %bb.q ], [ %i.hx, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn95.pn.pn

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.r, %bb.q, %bb.m, %bb.l, %bb.e, %bb.d
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  %i.je = extractvalue { ptr, i32 } %i.jd, 0
  call void @__clang_call_terminate(ptr %i.je) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z21test_swap_and_move_ndI8value_ndLm10EEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5boost9container13static_vectorI8value_ndLm10EvEC2EOS3_.exit:
  %0 = alloca %"class.boost::container::static_vector.43", align 16 ; 12 uses
  %1 = alloca %"class.boost::container::static_vector.43", align 16 ; 12 uses
  %2 = alloca %"class.boost::container::static_vector.43", align 16 ; 15 uses
  %3 = alloca %"class.boost::container::static_vector.43", align 16 ; 15 uses
  %4 = alloca %"class.boost::container::static_vector.43", align 16 ; 9 uses
  %5 = alloca %"class.boost::container::static_vector.245", align 8 ; 10 uses
  %6 = alloca %"class.boost::container::static_vector.43", align 8 ; 7 uses
  %7 = alloca %"class.boost::container::static_vector.245", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_12
begin_hunk_13_@_Z21test_swap_and_move_ndI8value_ndLm10EEvv:_ZN5boost9container13static_vectorI8value_ndLm10EvEC2EOS3_.exit
  %i.bt = icmp eq i32 %i.bs, 0
  %i.bu = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.bt) ; 0 uses
  %i.bv = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.bw = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.bx = load i32, ptr %3, align 16, !tbaa !77
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.by) ; 0 uses
  %i.ca = load i32, ptr %i.q, align 4, !tbaa !77
  %i.cb = icmp eq i32 %i.ca, 1
  %i.cc = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.cb) ; 0 uses
  %i.cd = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.ce = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.cf = load i32, ptr %i.r, align 4, !tbaa !77
  %i.cg = icmp eq i32 %i.cf, 1
  %i.ch = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.cg) ; 0 uses
  %i.ci = load i32, ptr %i.s, align 8, !tbaa !77
  %i.cj = icmp eq i32 %i.ci, 2
  %i.ck = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.cj) ; 0 uses
  %i.cl = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.cm = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.cn = load i32, ptr %i.t, align 8, !tbaa !77
  %i.co = icmp eq i32 %i.cn, 2
  %i.cp = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.co) ; 0 uses
  %i.cq = load i32, ptr %i.u, align 4, !tbaa !77
  %i.cr = icmp eq i32 %i.cq, 3
  %i.cs = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.cr) ; 0 uses
  %i.ct = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.cu = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.cv = load i32, ptr %i.v, align 4, !tbaa !77
  %i.cw = icmp eq i32 %i.cv, 3
  %i.cx = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.cw) ; 0 uses
  %i.cy = load i32, ptr %i.w, align 16, !tbaa !77
  %i.cz = icmp eq i32 %i.cy, 4
  %i.da = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.cz) ; 0 uses
  %i.db = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.dc = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.dd = load i32, ptr %i.x, align 16, !tbaa !77
  %i.de = icmp eq i32 %i.dd, 4
  %i.df = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.de) ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !77
  %i.di = icmp eq i32 %i.dh, 5
  %i.dj = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.di) ; 0 uses
  %i.dk = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.dl = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !77
  %i.do = icmp eq i32 %i.dn, 5
  %i.dp = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.do) ; 0 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !77
  %i.ds = icmp eq i32 %i.dr, 6
  %i.dt = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.ds) ; 0 uses
  %i.du = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.dv = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !77
  %i.dy = icmp eq i32 %i.dx, 6
  %i.dz = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.dy) ; 0 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !77
  %i.ec = icmp eq i32 %i.eb, 7
  %i.ed = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.ec) ; 0 uses
  %i.ee = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.ef = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !77
  %i.ei = icmp eq i32 %i.eh, 7
  %i.ej = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.ei) ; 0 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.el = load i32, ptr %i.ek, align 16, !tbaa !77
  %i.em = icmp eq i32 %i.el, 8
  %i.en = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.em) ; 0 uses
  %i.eo = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.ep = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.er = load i32, ptr %i.eq, align 16, !tbaa !77
  %i.es = icmp eq i32 %i.er, 8
  %i.et = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.es) ; 0 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !77
  %i.ew = icmp eq i32 %i.ev, 9
  %i.ex = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.ew) ; 0 uses
  %i.ey = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.ez = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !77
  %i.fc = icmp eq i32 %i.fb, 9
  %i.fd = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.fc) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %4, align 16, !tbaa !41
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 4, ptr %i.fi, align 16, !tbaa !41
  store i64 5, ptr %i.fe, align 8, !tbaa !120
  store i32 100, ptr %5, align 8, !tbaa !41
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 101, ptr %i.fj, align 4, !tbaa !41
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 102, ptr %i.fk, align 8, !tbaa !41
  store i64 3, ptr %i.ff, align 8, !tbaa !163
  call void @_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEE14priv_deep_swapINS3_IS4_Lm10ELm0ELb1EEEmS8_EEvRNS1_IT_T0_T1_EE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %4)
  %i.fl = load i64, ptr %i.fe, align 8, !tbaa !120
  %i.fm = icmp eq i64 %i.fl, 3
  %i.fn = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.1, i32 noundef 524, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.fm) ; 0 uses
  %i.fo = load i64, ptr %i.ff, align 8, !tbaa !163
  %i.fp = icmp eq i64 %i.fo, 5
  %i.fq = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.1, i32 noundef 525, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.fp) ; 0 uses
  %i.fr = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.1, i32 noundef 528, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.fs = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.1, i32 noundef 529, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.ft = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.1, i32 noundef 532, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.fu = load i32, ptr %4, align 16, !tbaa !77
  %i.fv = icmp eq i32 %i.fu, 100
  %i.fw = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.1, i32 noundef 534, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.fv) ; 0 uses
  %i.fx = load i32, ptr %i.fg, align 4, !tbaa !77
  %i.fy = icmp eq i32 %i.fx, 101
  %i.fz = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.1, i32 noundef 534, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.fy) ; 0 uses
  %i.ga = load i32, ptr %i.fh, align 8, !tbaa !77
  %i.gb = icmp eq i32 %i.ga, 102
  %i.gc = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.1, i32 noundef 534, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.gb) ; 0 uses
  %i.gd = load i32, ptr %5, align 8, !tbaa !77
  %i.ge = icmp eq i32 %i.gd, 0
  %i.gf = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.ge) ; 0 uses
  %i.gg = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.gh = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.gi = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.gj = load i32, ptr %i.fj, align 4, !tbaa !77
  %i.gk = icmp eq i32 %i.gj, 1
  %i.gl = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.gk) ; 0 uses
  %i.gm = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.gn = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.go = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.gp = load i32, ptr %i.fk, align 8, !tbaa !77
  %i.gq = icmp eq i32 %i.gp, 2
  %i.gr = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.gq) ; 0 uses
  %i.gs = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.gt = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.gu = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !77
  %i.gx = icmp eq i32 %i.gw, 3
  %i.gy = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.gx) ; 0 uses
  %i.gz = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.ha = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.hb = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !77
  %i.he = icmp eq i32 %i.hd, 4
  %i.hf = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.he) ; 0 uses
  %i.hg = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.hh = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.hi = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store i64 10, ptr %i.hj, align 8, !tbaa !118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false), !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.hk = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store i64 5, ptr %i.hk, align 8, !tbaa !161
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc217 unwind label %bb.a

.noexc217:                                        ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2EOS3_.exit
  unreachable

bb.a:                                             ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2EOS3_.exit
  %i.hl = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  %i.hn = extractvalue { ptr, i32 } %i.hl, 1
  %i.ho = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25
  %i.hp = icmp eq i32 %i.hn, %i.ho
  %i.hq = call ptr @__cxa_begin_catch(ptr %i.hm) #25 ; 0 uses
  br i1 %i.hp, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.hr = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke424 unwind label %bb.e ; 0 uses

.invoke424:                                       ; preds = %bb.c, %bb.b
  call void @__cxa_end_catch()
  %i.hs = load i64, ptr %i.hj, align 8, !tbaa !120 ; 3 uses
  %or.cond = icmp ugt i64 %i.hs, 9
  br i1 %or.cond, label %.loopexit293, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.invoke424
  %i.ht = getelementptr [4 x i8], ptr %6, i64 %i.hs
  %i.hu = shl nuw nsw i64 %i.hs, 2
  %i.hv = sub nuw nsw i64 40, %i.hu
  call void @llvm.memset.p0.i64(ptr align 4 %i.ht, i8 0, i64 range(i64 0, 41) %i.hv, i1 false), !tbaa !41
  br label %.loopexit293

.loopexit293:                                     ; preds = %.lr.ph.preheader.i.i.i.i, %.invoke424
  store i64 10, ptr %i.hj, align 8, !tbaa !118
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc232 unwind label %bb.f

.noexc232:                                        ; preds = %.loopexit293
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 547, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv)
          to label %.invoke424 unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.e:                                             ; preds = %bb.b
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.f:                                             ; preds = %.loopexit293
  %i.hy = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.hz = extractvalue { ptr, i32 } %i.hy, 0
  %i.ia = extractvalue { ptr, i32 } %i.hy, 1
  %i.ib = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25 ; 3 uses
  %i.ic = icmp eq i32 %i.ia, %i.ib
  %i.id = call ptr @__cxa_begin_catch(ptr %i.hz) #25 ; 0 uses
  br i1 %i.ic, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ie = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke423 unwind label %bb.l ; 0 uses

.invoke423:                                       ; preds = %bb.j, %bb.g
  call void @__cxa_end_catch()
  %i.if = load i64, ptr %i.hj, align 8, !tbaa !120 ; 3 uses
  %i.ig = icmp ugt i64 %i.if, 5
  br i1 %i.ig, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.invoke423
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc244 unwind label %bb.m

.noexc244:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.invoke423
  %i.ih = load i64, ptr %i.hk, align 8, !tbaa !163 ; 4 uses
  %i.ii = icmp ult i64 %i.ih, %i.if
  br i1 %i.ii, label %_ZN5boost9container18copy_n_source_destIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i236, label %.loopexit292

_ZN5boost9container18copy_n_source_destIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i236: ; preds = %bb.i
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ih
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.ih
  %i.il = sub nuw i64 %i.if, %i.ih
  %i.im = shl nuw nsw i64 %i.il, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ik, ptr nonnull align 4 %i.ij, i64 %i.im, i1 false), !tbaa !41
  br label %.loopexit292

.loopexit292:                                     ; preds = %bb.i, %_ZN5boost9container18copy_n_source_destIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i236
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 550, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv)
          to label %.loopexit unwind label %bb.m

bb.j:                                             ; preds = %bb.f
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 549, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv)
          to label %.invoke423 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.l:                                             ; preds = %bb.g
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.m:                                             ; preds = %bb.h, %.loopexit292
  %i.ip = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.iq = extractvalue { ptr, i32 } %i.ip, 0
  %i.ir = extractvalue { ptr, i32 } %i.ip, 1
  %i.is = icmp eq i32 %i.ir, %i.ib
  %i.it = call ptr @__cxa_begin_catch(ptr %i.iq) #25 ; 0 uses
  br i1 %i.is, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.iu = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke unwind label %bb.q    ; 0 uses

.invoke:                                          ; preds = %bb.o, %bb.n
  call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %.invoke, %.loopexit292
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc261 unwind label %bb.r

.noexc261:                                        ; preds = %.loopexit
  unreachable

bb.o:                                             ; preds = %bb.m
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 550, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv)
          to label %.invoke unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.iv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.q:                                             ; preds = %bb.n
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.r:                                             ; preds = %.loopexit
  %i.ix = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.15 = extractvalue { ptr, i32 } %i.ix, 1
  %.1585 = extractvalue { ptr, i32 } %i.ix, 0
  %i.iy = icmp eq i32 %.15, %i.ib
  %i.iz = call ptr @__cxa_begin_catch(ptr %.1585) #25 ; 0 uses
  br i1 %i.iy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ja = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke425 unwind label %bb.v ; 0 uses

bb.t:                                             ; preds = %bb.r
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 552, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndI8value_ndLm10EEvv)
          to label %.invoke425 unwind label %bb.u

.invoke425:                                       ; preds = %bb.t, %bb.s
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.u:                                             ; preds = %bb.t
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.d, %bb.k, %bb.p, %bb.u, %bb.e, %bb.l, %bb.q, %bb.v
  %.pn99.pn.pn = phi { ptr, i32 } [ %i.in, %bb.k ], [ %i.iw, %bb.q ], [ %i.jc, %bb.v ], [ %i.jb, %bb.u ], [ %i.hw, %bb.d ], [ %i.io, %bb.l ], [ %i.iv, %bb.p ], [ %i.hx, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn99.pn.pn

bb.x:                                             ; preds = %bb.v, %bb.u, %bb.q, %bb.p, %bb.l, %bb.k, %bb.e, %bb.d
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  %i.je = extractvalue { ptr, i32 } %i.jd, 0
  call void @__clang_call_terminate(ptr %i.je) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z21test_swap_and_move_ndI14counting_valueLm10EEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.lr.ph.i.i.preheader:
  %0 = alloca %"class.boost::container::static_vector.29", align 8 ; 50 uses
  %1 = alloca %"class.boost::container::static_vector.29", align 8 ; 50 uses
  %2 = alloca %"class.boost::container::static_vector.29", align 16 ; 20 uses
  %3 = alloca %"class.boost::container::static_vector.29", align 16 ; 19 uses
  %4 = alloca %"class.boost::container::static_vector.29", align 16 ; 20 uses
  %5 = alloca %"class.boost::container::static_vector.29", align 8 ; 15 uses
  %.sroa.121169 = alloca [24 x i8], align 16      ; 12 uses
  %.sroa.121151 = alloca [24 x i8], align 16      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %_ZZN14counting_value1cEvE2co.promoted = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
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
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1531 ; 3 uses
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
  br i1 %.not.i27, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS7_8bhtraitsINS1_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEvT_SM_T0_SN_.exit31, label %.lr.ph.i25, !llvm.loop !1502

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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !1560 ; 6 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp ugt i64 %i.b, 10
  br i1 %.not.i.i.i.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.b
  %i.d = shl nuw nsw i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 range(i64 0, 41) %i.d, i1 false), !tbaa !41, !noalias !1561
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24, !noalias !1562
  unreachable

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit: ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.e = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_, i1 noundef zeroext true) ; 0 uses
  %.idx = shl nuw nsw i64 %i.b, 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.g = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !1563 ; 2 uses
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
  %i.r = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !1564 ; 2 uses
  %.idx51 = shl i64 %i.r, 2                       ; 3 uses
  %i.s = icmp eq i64 %.idx51, 0
  br i1 %i.s, label %.noexc23, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.t = ashr exact i64 %.idx51, 2                ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.t, 10
  br i1 %.not.i.i.i, label %.noexc15, label %.lr.ph.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %0, i64 %.idx51, i1 false), !tbaa !41, !noalias !1565
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
  %i.x = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !1566 ; 2 uses
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !126, !noalias !1605
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !124, !noalias !1606 ; 6 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp ugt i64 %i.c, 10
  br i1 %.not.i.i.i.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.b
  %i.e = shl nuw nsw i64 %i.c, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr align 4 %i.a, i64 range(i64 0, 41) %i.e, i1 false), !tbaa !41, !noalias !1607
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24, !noalias !1608
  unreachable

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit: ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.f = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI8value_ndLm10EN5boost9container6vectorIS0_vvEEEvRKT1_, i1 noundef zeroext true) ; 0 uses
  %.idx = shl nuw nsw i64 %i.c, 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.h = load ptr, ptr %0, align 8, !tbaa !126, !noalias !1609 ; 2 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !124, !noalias !1610 ; 2 uses
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
  %i.t = load i64, ptr %i.b, align 8, !tbaa !124, !noalias !1611 ; 9 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.noexc23, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %.not.i.i.i = icmp ugt i64 %i.t, 10
  br i1 %.not.i.i.i, label %.noexc15, label %.lr.ph.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d
  %i.v = load ptr, ptr %0, align 8, !tbaa !126, !noalias !1612 ; 2 uses
  %xtraiter = and i64 %i.t, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %i.w = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.x = load i32, ptr %i.w, align 4, !tbaa !41, !noalias !1613
  store i32 %i.x, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1613
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.aa = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !1597

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
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !41, !noalias !1613
  store i32 %i.ad, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1613
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 4
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !41, !noalias !1613
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !41, !noalias !1613
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !41, !noalias !1613
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !41, !noalias !1613
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 12
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !41, !noalias !1613
  store i32 %i.am, ptr %i.al, align 4, !tbaa !41, !noalias !1613
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !41, !noalias !1613
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !41, !noalias !1613
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ar = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 20
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !41, !noalias !1613
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !41, !noalias !1613
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 24
  %i.av = load i32, ptr %i.at, align 4, !tbaa !41, !noalias !1613
  store i32 %i.av, ptr %i.au, align 4, !tbaa !41, !noalias !1613
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ax = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 28
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !41, !noalias !1613
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !41, !noalias !1613
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 32
  %i.bb = add i64 %.015.i.i.i.i.i.i.i, -8         ; 2 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %.noexc23, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1598

.noexc15:                                         ; preds = %bb.d
  call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

.noexc23:                                         ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %.critedge.i
  %i.bc = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI8value_ndLm10EN5boost9container6vectorIS0_vvEEEvRKT1_, i1 noundef zeroext true) ; 0 uses
  %.idx54 = shl nuw nsw i64 %i.t, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %.idx54
  %i.be = load ptr, ptr %0, align 8, !tbaa !126, !noalias !1614 ; 2 uses
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !124, !noalias !1615 ; 2 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1655 ; 3 uses
  %i.c = icmp eq ptr %i.b, %i.a
  br i1 %i.c, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %i.d = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.b, %bb.a ]
  %.03.i.i.i.i.i.i = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.e = add nuw i64 %.03.i.i.i.i.i.i, 1          ; 5 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !105, !noalias !1656 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, %i.a
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !21

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.not.i.i.i.i = icmp samesign ult i64 %.03.i.i.i.i.i.i, 10
  br i1 %.not.i.not.i.i.i.i, label %bb.b, label %bb.c, !prof !185

bb.b:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  store ptr %i.b, ptr %.sroa.0.i.i.i.i.i.i, align 8, !tbaa !192, !noalias !1657
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.in.i.i.i.i.i.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.0.i.i.i.i.i.i, %bb.b ]
  %.015.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.e, %bb.b ]
  %.01214.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %1, %bb.b ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.b ]
  %i.g = load ptr, ptr %.in.i.i.i.i.i.i.i.prol, align 8, !tbaa !188, !noalias !1657 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !41, !noalias !1658
  store i32 %i.i, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1658
  %i.j = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.k = add nsw i64 %.015.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1628

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %bb.b
  %.in.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.i.i.i.i.i.i, %bb.b ], [ %i.g, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.015.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.e, %bb.b ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
end_hunk_14
begin_hunk_15_@_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_NS2_18insert_range_proxyIS5_NS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS4_NS2_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SW_mSR_:bb.a
  br label %vector.body113

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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep118), "nonnull"(ptr %next.gep120) ]
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
  br i1 %i.bv, label %middle.block131, label %vector.body113, !llvm.loop !1848

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
  br i1 %.not.i52, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %scalar.ph106, !llvm.loop !1849

_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit: ; preds = %scalar.ph106, %middle.block131
  %.lcssa92 = phi i64 [ %i.bw, %middle.block131 ], [ %i.ca, %scalar.ph106 ]
  store i64 %.lcssa92, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.cd = load ptr, ptr %4, align 8, !tbaa !1858  ; 2 uses
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
  %i.ch = load <2 x i32>, ptr %i.cg, align 4, !tbaa !41, !noalias !1859
  store <2 x i32> %i.ch, ptr %.06.i.i56.prol, align 4, !tbaa !41, !noalias !1859
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !105, !noalias !1859 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.06.i.i56.prol, i64 8 ; 2 uses
  %prol.iter140.next = add i64 %prol.iter140, 1   ; 2 uses
  %prol.iter140.cmp.not = icmp eq i64 %prol.iter140.next, %xtraiter138
  br i1 %prol.iter140.cmp.not, label %.lr.ph.i.i55.prol.loopexit, label %.lr.ph.i.i55.prol, !llvm.loop !1852

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
  %i.cn = load <2 x i32>, ptr %i.cm, align 4, !tbaa !41, !noalias !1859
  store <2 x i32> %i.cn, ptr %.06.i.i56, align 4, !tbaa !41, !noalias !1859
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !105, !noalias !1859 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cr = load <2 x i32>, ptr %i.cq, align 4, !tbaa !41, !noalias !1859
  store <2 x i32> %i.cr, ptr %i.cp, align 4, !tbaa !41, !noalias !1859
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !105, !noalias !1859 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = load <2 x i32>, ptr %i.cu, align 4, !tbaa !41, !noalias !1859
  store <2 x i32> %i.cv, ptr %i.ct, align 4, !tbaa !41, !noalias !1859
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !105, !noalias !1859 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 24
  %i.cy = add i64 %.035.i.i57, -4                 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.da = load <2 x i32>, ptr %i.cz, align 4, !tbaa !41, !noalias !1859
  store <2 x i32> %i.da, ptr %i.cx, align 4, !tbaa !41, !noalias !1859
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !105, !noalias !1859 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 32
  %.not.i.i58.3 = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i58.3, label %.loopexit, label %.lr.ph.i.i55, !llvm.loop !1847

.loopexit:                                        ; preds = %.lr.ph.i.i55.prol.loopexit, %.lr.ph.i.i55, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.thread
  %i.dd = phi ptr [ %i.at, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.thread ], [ %.lcssa.unr, %.lr.ph.i.i55.prol.loopexit ], [ %i.db, %.lr.ph.i.i55 ] ; 2 uses
  %i.de = sub i64 %3, %i.d                        ; 4 uses
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1860
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
  %i.dh = load <2 x i32>, ptr %i.dg, align 4, !tbaa !41, !noalias !1860
  store <2 x i32> %i.dh, ptr %.01214.i.i.prol, align 4, !tbaa !41, !noalias !1860
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !105, !noalias !1860 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.01214.i.i.prol, i64 8 ; 2 uses
  %i.dk = add i64 %.015.i.i.prol, -1              ; 2 uses
  %prol.iter143.next = add i64 %prol.iter143, 1   ; 2 uses
  %prol.iter143.cmp.not = icmp eq i64 %prol.iter143.next, %xtraiter141
  br i1 %prol.iter143.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1855

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
  %i.dp = load <2 x i32>, ptr %i.do, align 4, !tbaa !41, !noalias !1860
  store <2 x i32> %i.dp, ptr %.01214.i.i, align 4, !tbaa !41, !noalias !1860
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !105, !noalias !1860 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dt = load <2 x i32>, ptr %i.ds, align 4, !tbaa !41, !noalias !1860
  store <2 x i32> %i.dt, ptr %i.dr, align 4, !tbaa !41, !noalias !1860
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !105, !noalias !1860 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = load <2 x i32>, ptr %i.dw, align 4, !tbaa !41, !noalias !1860
  store <2 x i32> %i.dx, ptr %i.dv, align 4, !tbaa !41, !noalias !1860
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !105, !noalias !1860 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eb = load <2 x i32>, ptr %i.ea, align 4, !tbaa !41, !noalias !1860
  store <2 x i32> %i.eb, ptr %i.dz, align 4, !tbaa !41, !noalias !1860
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !105, !noalias !1860
  %i.ed = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 32
  %i.ee = add i64 %.015.i.i, -4                   ; 2 uses
  %.not.i.i61.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i61.3, label %._crit_edge.i.i, label %.loopexit.new, !llvm.loop !26

._crit_edge.i.i:                                  ; preds = %.loopexit.new, %.prol.loopexit
  %i.ef = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.de
  store i64 %i.ef, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1860
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !141, !noalias !1901 ; 20 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2INS0_12vec_iteratorIPS3_Lb1EEEEET_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i2.i.i.i = icmp ugt i64 %i.b, 10
  br i1 %.not.i.i2.i.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.i.preheader.i.i, !prof !42

.lr.ph.i.i.i.i.i.i.i.preheader.i.i:               ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1902
  %i.d = shl nuw nsw i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 range(i64 0, 41) %i.d, i1 false), !tbaa !82, !noalias !1902
  %i.e = trunc nuw nsw i64 %i.b to i32
  %i.f = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.e
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1902
  br label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2INS0_12vec_iteratorIPS3_Lb1EEEEET_S9_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24, !noalias !1903
  unreachable

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2INS0_12vec_iteratorIPS3_Lb1EEEEET_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.i.i, %bb.a
  %i.g = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEEEvRKT1_, i1 noundef zeroext true)
          to label %bb.d unwind label %.loopexit.split-lp83.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.d:                                             ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2INS0_12vec_iteratorIPS3_Lb1EEEEET_S9_.exit
  %.idx = shl nuw nsw i64 %i.b, 2
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.i = load i64, ptr %i.a, align 8, !tbaa !141, !noalias !1904 ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %0, i64 %i.i
  %i.k = icmp eq i64 %i.b, %i.i
  %i.l = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEENS2_IS5_Lb1EEEEvT_S8_T0_S9_, i1 noundef zeroext %i.k)
          to label %.noexc unwind label %.loopexit.split-lp83.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

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
          to label %.noexc13 unwind label %.loopexit.split-lp83.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc13:                                         ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.072.0, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.067.0, i64 4
  %.not.i = icmp eq ptr %i.q, %i.h
  br i1 %.not.i, label %.lr.ph.i.preheader.i, label %.lr.ph.i, !llvm.loop !28

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %.noexc13
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check113 = icmp ult i64 %i.b, 8
  br i1 %min.iters.check113, label %.lr.ph.i.i.preheader, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.preheader.i
  %n.vec115 = and i64 %i.b, -8                    ; 3 uses
  %i.s = and i64 %i.b, 7
  %i.t = shl i64 %n.vec115, 2
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next119, %vector.body116 ] ; 2 uses
  %i.v = shl i64 %index117, 2
  %next.gep118 = getelementptr i8, ptr %1, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep118, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep118, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.w, align 8, !tbaa !82
  %index.next119 = add nuw i64 %index117, 8       ; 2 uses
  %i.x = icmp eq i64 %index.next119, %n.vec115
  br i1 %i.x, label %middle.block120, label %vector.body116, !llvm.loop !1875

middle.block120:                                  ; preds = %vector.body116
  %cmp.n121 = icmp eq i64 %i.b, %n.vec115
  br i1 %cmp.n121, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block120
  %.05.i.i.ph = phi i64 [ %i.b, %.lr.ph.i.preheader.i ], [ %i.s, %middle.block120 ]
  %storemerge4.i.i.ph = phi ptr [ %1, %.lr.ph.i.preheader.i ], [ %i.u, %middle.block120 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.y = add i64 %.05.i.i, -1                     ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !82
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1876

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block120
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
          to label %.critedge.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.critedge.i:                                      ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !141, !noalias !1905 ; 3 uses
  %.idx78 = shl i64 %i.ae, 2                      ; 3 uses
  %i.af = icmp eq i64 %.idx78, 0
  br i1 %i.af, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %bb.f

bb.f:                                             ; preds = %.critedge.i
  %i.ag = ashr exact i64 %.idx78, 2               ; 5 uses
  %.not.i.i2.i = icmp ugt i64 %i.ag, 10
  br i1 %.not.i.i2.i, label %bb.g, label %.lr.ph.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.f
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1906 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %0, i64 %.idx78, i1 false), !tbaa !82, !noalias !1906
  %min.iters.check125 = icmp ult i64 %i.ag, 4
  br i1 %min.iters.check125, label %.lr.ph.i.i.i.i.i.i.i.preheader158, label %vector.ph126

vector.ph126:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ah = and i64 %i.ae, 3                        ; 3 uses
  %n.vec127 = sub nuw nsw i64 %i.ag, %i.ah
  %i.ai = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next130, %vector.body128 ]
  %vec.phi = phi <4 x i32> [ %i.ai, %vector.ph126 ], [ %i.aj, %vector.body128 ]
  %i.aj = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %index.next130 = add nuw i64 %index129, 4       ; 2 uses
  %i.ak = icmp eq i64 %index.next130, %n.vec127
  br i1 %i.ak, label %middle.block131, label %vector.body128, !llvm.loop !1887

middle.block131:                                  ; preds = %vector.body128
  %i.al = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aj) ; 2 uses
  %cmp.n132 = icmp eq i64 %i.ah, 0
  br i1 %cmp.n132, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, label %.lr.ph.i.i.i.i.i.i.i.preheader158

.lr.ph.i.i.i.i.i.i.i.preheader158:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block131
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block131 ]
  %.015.i.i.i.i.i.i.i.ph = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block131 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader158, %.lr.ph.i.i.i.i.i.i.i
  %i.am = phi i32 [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader158 ]
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader158 ]
  %i.an = add i32 %i.am, 1                        ; 2 uses
  %i.ao = add i64 %.015.i.i.i.i.i.i.i, -1         ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1888

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %bb.g
  unreachable

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block131
  %.lcssa = phi i32 [ %i.al, %middle.block131 ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i ]
  store i32 %.lcssa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1906
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit, %.critedge.i
  %storemerge.i = phi i64 [ 0, %.critedge.i ], [ %i.ag, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.loopexit ] ; 2 uses
  store i64 %storemerge.i, ptr %i.ac, align 8, !tbaa !139
  %i.ap = icmp eq i64 %storemerge.i, %i.ae
  %i.aq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEEEvRKT1_, i1 noundef zeroext %i.ap)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %i.ar = load i64, ptr %i.ac, align 8, !tbaa !141, !noalias !1907 ; 3 uses
  %.idx81 = shl nsw i64 %i.ar, 2
  %i.as = getelementptr inbounds i8, ptr %2, i64 %.idx81
  %i.at = load i64, ptr %i.a, align 8, !tbaa !141, !noalias !1908 ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %0, i64 %i.at
  %i.av = icmp eq i64 %i.ar, %i.at
  %i.aw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEENS2_IS5_Lb1EEEEvT_S8_T0_S9_, i1 noundef zeroext %i.av)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc23:                                         ; preds = %bb.h
  %.not5.i16 = icmp eq i64 %i.ar, 0
  br i1 %.not5.i16, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEENS2_IS5_Lb1EEEEvT_S8_T0_S9_.exit25, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.noexc23, %.noexc24
  %.sroa.059.0 = phi ptr [ %i.bb, %.noexc24 ], [ %2, %.noexc23 ] ; 2 uses
  %.sroa.054.0 = phi ptr [ %i.bc, %.noexc24 ], [ %0, %.noexc23 ] ; 3 uses
  %.not4.i20 = icmp eq ptr %.sroa.054.0, %i.au
  br i1 %.not4.i20, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEENS2_IS5_Lb1EEEEvT_S8_T0_S9_.exit25, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i19
  %i.ax = load i32, ptr %.sroa.059.0, align 4, !tbaa !82
  %i.ay = load i32, ptr %.sroa.054.0, align 4, !tbaa !82
  %i.az = icmp eq i32 %i.ax, %i.ay
  %i.ba = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEENS2_IS5_Lb1EEEEvT_S8_T0_S9_, i1 noundef zeroext %i.az)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc24:                                         ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.059.0, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.054.0, i64 4
  %.not.i21 = icmp eq ptr %i.bb, %i.as
  br i1 %.not.i21, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEENS2_IS5_Lb1EEEEvT_S8_T0_S9_.exit25, label %.lr.ph.i19, !llvm.loop !28
end_hunk_15
begin_hunk_16_@_Z11test_insertIiLm10EN5boost9container13static_vectorIiLm10EvEENS1_4listIivEEEvRKT1_RKT2_:bb.a
  %prol.iter94.cmp.not = icmp eq i64 %prol.iter94.next, %xtraiter92
  br i1 %prol.iter94.cmp.not, label %.lr.ph.i.i39.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i39.i.i.i.i.i.prol, !llvm.loop !2150

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
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !41, !noalias !2162
  store i32 %i.cg, ptr %.06.i.i40.i.i.i.i.i, align 4, !tbaa !41, !noalias !2162
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !105, !noalias !2162 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.06.i.i40.i.i.i.i.i, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !41, !noalias !2162
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !41, !noalias !2162
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !105, !noalias !2162 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i40.i.i.i.i.i, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !41, !noalias !2162
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !41, !noalias !2162
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !105, !noalias !2162 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i40.i.i.i.i.i, i64 12
  %i.cr = add i64 %.035.i.i41.i.i.i.i.i, -4       ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !41, !noalias !2162
  store i32 %i.ct, ptr %i.cq, align 4, !tbaa !41, !noalias !2162
  %i.cu = load ptr, ptr %i.cp, align 8, !tbaa !105, !noalias !2162 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.06.i.i40.i.i.i.i.i, i64 16
  %.not.i.i42.i.i.i.i.i.3 = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i42.i.i.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorIiLm10ELm0ELb1EEENS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i.i.i, label %.lr.ph.i.i39.i.i.i.i.i, !llvm.loop !2147

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
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !41, !noalias !2163
  store i32 %i.cz, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !2163
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !105, !noalias !2163 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.dc = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter97.next = add i64 %prol.iter97, 1     ; 2 uses
  %prol.iter97.cmp.not = icmp eq i64 %prol.iter97.next, %xtraiter95
  br i1 %prol.iter97.cmp.not, label %.lr.ph.i.i44.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.i.i.i.prol, !llvm.loop !2153

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
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !41, !noalias !2163
  store i32 %i.dh, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !2163
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !105, !noalias !2163 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !41, !noalias !2163
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !41, !noalias !2163
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !105, !noalias !2163 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !41, !noalias !2163
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !41, !noalias !2163
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !105, !noalias !2163 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 12
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !41, !noalias !2163
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !41, !noalias !2163
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !105, !noalias !2163
  %i.dv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.dw = add i64 %.015.i.i.i.i.i.i.i, -4         ; 2 uses
  %.not.i.i45.i.i.i.i.i.3 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i45.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i44.i.i.i.i.i, !llvm.loop !19

.noexc:                                           ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorIiLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i44.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.dx = load i64, ptr %i.b, align 8, !tbaa !93, !noalias !2159
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
  br i1 %exitcond.not, label %.preheader53, label %.lr.ph, !llvm.loop !2154

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
  br i1 %exitcond71.not, label %._crit_edge, label %bb.j, !llvm.loop !2155
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
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %0, i64 range(i64 0, 41) %i.f, i1 false), !tbaa !41
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !tbaa !41, !noalias !2183
  br label %.loopexit

bb.c:                                             ; preds = %.loopexit58.thread
  %gepdiff = sub nsw i64 %.idx, %.idx5476         ; 5 uses
  %.not.i.i.i.i.i = icmp ult i64 %gepdiff, 9
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i38.preheader.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i

.lr.ph.i.i10.i.i.i.i:                             ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.k = load <2 x i32>, ptr %i.j, align 4, !tbaa !41, !noalias !2184
  store <2 x i32> %i.k, ptr %i.h, align 4, !tbaa !41, !noalias !2184
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i32, ptr %i.l, align 4, !tbaa !41, !noalias !2184
  store i32 %i.n, ptr %i.m, align 4, !tbaa !41, !noalias !2184
  %i.o = add nsw i64 %.idx, -12
  %.not.i37.i.i.i.i.i = icmp eq i64 %i.o, %.idx5476
  br i1 %.not.i37.i.i.i.i.i, label %_ZN5boost9container13move_backwardIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i.i.i.i.i, label %bb.d, !prof !42

bb.d:                                             ; preds = %.lr.ph.i.i10.i.i.i.i
  %gepdiff55 = add i64 %gepdiff, -12              ; 2 uses
  %i.p = ashr exact i64 %gepdiff55, 2
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.q
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 4 %i.g, i64 %gepdiff55, i1 false), !noalias !2184
  br label %_ZN5boost9container13move_backwardIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i.i.i.i.i

_ZN5boost9container13move_backwardIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i10.i.i.i.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !noalias !2185
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
  %i.w = load i32, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !2184
  store i32 %i.w, ptr %.01517.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !2184
  %i.x = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i38.i.i.i.i.i.prol.loopexit, label %.lr.ph.i38.i.i.i.i.i.prol, !llvm.loop !2174

.lr.ph.i38.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i38.i.i.i.i.i.prol, %.lr.ph.i38.preheader.i.i.i.i.i
  %.018.i.i.i.i.i.i.unr = phi ptr [ %i.g, %.lr.ph.i38.preheader.i.i.i.i.i ], [ %i.x, %.lr.ph.i38.i.i.i.i.i.prol ]
  %.01517.i.i.i.i.i.i.unr = phi ptr [ %i.s, %.lr.ph.i38.preheader.i.i.i.i.i ], [ %i.y, %.lr.ph.i38.i.i.i.i.i.prol ]
  %i.z = icmp samesign ult i64 %i.v, 7
  br i1 %i.z, label %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEENS0_12vec_iteratorIPS4_Lb1EEEE17copy_n_and_updateIS7_EEvRS5_T_m.exit42.i.i.i.i.i, label %.lr.ph.i38.i.i.i.i.i

.lr.ph.i38.i.i.i.i.i:                             ; preds = %.lr.ph.i38.i.i.i.i.i.prol.loopexit, %.lr.ph.i38.i.i.i.i.i
  %.018.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i38.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i38.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01517.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i38.i.i.i.i.i ], [ %.01517.i.i.i.i.i.i.unr, %.lr.ph.i38.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.aa = load i32, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !2184
  store i32 %i.aa, ptr %.01517.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !2184
  %i.ab = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 4
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !41, !noalias !2184
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !41, !noalias !2184
  %i.ae = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 8
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !41, !noalias !2184
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !41, !noalias !2184
  %i.ah = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !41, !noalias !2184
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !41, !noalias !2184
  %i.ak = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 16
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !41, !noalias !2184
  store i32 %i.am, ptr %i.al, align 4, !tbaa !41, !noalias !2184
  %i.an = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 20
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !41, !noalias !2184
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !41, !noalias !2184
  %i.aq = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 24
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !41, !noalias !2184
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !41, !noalias !2184
  %i.at = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 28
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 28
  %i.av = load i32, ptr %i.at, align 4, !tbaa !41, !noalias !2184
  store i32 %i.av, ptr %i.au, align 4, !tbaa !41, !noalias !2184
  %i.aw = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 32
  %.not.i39.i.i.i.i.i.7 = icmp eq ptr %i.aw, %i.h
  br i1 %.not.i39.i.i.i.i.i.7, label %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEENS0_12vec_iteratorIPS4_Lb1EEEE17copy_n_and_updateIS7_EEvRS5_T_m.exit42.i.i.i.i.i, label %.lr.ph.i38.i.i.i.i.i, !llvm.loop !14

_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEENS0_12vec_iteratorIPS4_Lb1EEEE17copy_n_and_updateIS7_EEvRS5_T_m.exit42.i.i.i.i.i: ; preds = %.lr.ph.i38.i.i.i.i.i, %.lr.ph.i38.i.i.i.i.i.prol.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.g, ptr nonnull align 8 %1, i64 %gepdiff, i1 false), !noalias !2186
  %i.ay = getelementptr i8, ptr %1, i64 %gepdiff
  %i.az = sub nuw nsw i64 12, %gepdiff
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %i.ay, i64 range(i64 0, 13) %i.az, i1 false), !tbaa !41, !noalias !2187
  br label %.loopexit

.noexc:                                           ; preds = %.loopexit58
  call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

.loopexit:                                        ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEENS0_12vec_iteratorIPS4_Lb1EEEE17copy_n_and_updateIS7_EEvRS5_T_m.exit42.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader, %_ZN5boost9container13move_backwardIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i.i.i.i.i
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !118, !noalias !2184
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
  br i1 %exitcond.not, label %.preheader56, label %.lr.ph, !llvm.loop !2181

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
  br i1 %exitcond69.not, label %._crit_edge, label %bb.e, !llvm.loop !2182
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
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %0, i64 range(i64 0, 41) %i.f, i1 false), !tbaa !41
  %.not.i.i = icmp samesign ugt i64 %i.e, 7
  br i1 %.not.i.i, label %.noexc, label %.loopexit59.thread, !prof !149

.loopexit59.thread:                               ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i, %.loopexit59
  %i.g = load ptr, ptr %1, align 8, !tbaa !126, !noalias !2209 ; 6 uses
  %.idx5479 = shl nuw nsw i64 %.0386683, 2        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.idx5479 ; 6 uses
  %.idx = shl nuw nsw i64 %i.e, 2                 ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 %.idx      ; 9 uses
  %i.j = icmp samesign eq i64 %i.e, %.0386683
  br i1 %i.j, label %.lr.ph.i.i.i.i.i.i.preheader, label %bb.c

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.loopexit59.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false), !tbaa !41, !noalias !2210
  br label %.loopexit

bb.c:                                             ; preds = %.loopexit59.thread
  %gepdiff = sub nsw i64 %.idx, %.idx5479         ; 5 uses
  %.not.i.i.i.i.i = icmp ult i64 %gepdiff, 9
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i38.preheader.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i

.lr.ph.i.i10.i.i.i.i:                             ; preds = %bb.c
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.l = load <2 x i32>, ptr %i.k, align 4, !tbaa !41, !noalias !2211
  store <2 x i32> %i.l, ptr %i.i, align 4, !tbaa !41, !noalias !2211
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load i32, ptr %i.m, align 4, !tbaa !41, !noalias !2211
  store i32 %i.o, ptr %i.n, align 4, !tbaa !41, !noalias !2211
  %i.p = add nsw i64 %.idx, -12
  %.not.i37.i.i.i.i.i = icmp eq i64 %i.p, %.idx5479
  br i1 %.not.i37.i.i.i.i.i, label %_ZN5boost9container13move_backwardIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i.i.i.i.i, label %bb.d, !prof !42

bb.d:                                             ; preds = %.lr.ph.i.i10.i.i.i.i
  %gepdiff55 = add i64 %gepdiff, -12              ; 2 uses
  %i.q = ashr exact i64 %gepdiff55, 2
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.r
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 4 %i.h, i64 %gepdiff55, i1 false), !noalias !2211
  br label %_ZN5boost9container13move_backwardIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i.i.i.i.i

_ZN5boost9container13move_backwardIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i10.i.i.i.i
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13move_backwardIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 1 dereferenceable(12) %i.g, i64 12, i1 false), !noalias !2212
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
  %i.x = load i32, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !2211
  store i32 %i.x, ptr %.01517.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !2211
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i38.i.i.i.i.i.prol.loopexit, label %.lr.ph.i38.i.i.i.i.i.prol, !llvm.loop !2200

.lr.ph.i38.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i38.i.i.i.i.i.prol, %.lr.ph.i38.preheader.i.i.i.i.i
  %.018.i.i.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i38.preheader.i.i.i.i.i ], [ %i.y, %.lr.ph.i38.i.i.i.i.i.prol ]
  %.01517.i.i.i.i.i.i.unr = phi ptr [ %i.t, %.lr.ph.i38.preheader.i.i.i.i.i ], [ %i.z, %.lr.ph.i38.i.i.i.i.i.prol ]
  %i.aa = icmp samesign ult i64 %i.w, 7
  br i1 %i.aa, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i.i.i.i, label %.lr.ph.i38.i.i.i.i.i

.lr.ph.i38.i.i.i.i.i:                             ; preds = %.lr.ph.i38.i.i.i.i.i.prol.loopexit, %.lr.ph.i38.i.i.i.i.i
  %.018.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i38.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i38.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01517.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i38.i.i.i.i.i ], [ %.01517.i.i.i.i.i.i.unr, %.lr.ph.i38.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ab = load i32, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !2211
  store i32 %i.ab, ptr %.01517.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !2211
  %i.ac = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 4
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !41, !noalias !2211
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !41, !noalias !2211
  %i.af = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 8
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !41, !noalias !2211
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !41, !noalias !2211
  %i.ai = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 12
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !41, !noalias !2211
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !41, !noalias !2211
  %i.al = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 16
  %i.an = load i32, ptr %i.al, align 4, !tbaa !41, !noalias !2211
  store i32 %i.an, ptr %i.am, align 4, !tbaa !41, !noalias !2211
  %i.ao = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 20
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !41, !noalias !2211
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !41, !noalias !2211
  %i.ar = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 24
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !41, !noalias !2211
  store i32 %i.at, ptr %i.as, align 4, !tbaa !41, !noalias !2211
  %i.au = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 28
  %i.av = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 28
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !41, !noalias !2211
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !41, !noalias !2211
  %i.ax = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 32
  %.not.i39.i.i.i.i.i.7 = icmp eq ptr %i.ax, %i.i
  br i1 %.not.i39.i.i.i.i.i.7, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i.i.i.i, label %.lr.ph.i38.i.i.i.i.i, !llvm.loop !14

_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i.i.i.i: ; preds = %.lr.ph.i38.i.i.i.i.i, %.lr.ph.i38.i.i.i.i.i.prol.loopexit
  %.not56 = icmp eq ptr %i.g, null
  br i1 %.not56, label %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEENS0_12vec_iteratorIPS4_Lb1EEEE17copy_n_and_updateIS7_EEvRS5_T_m.exit42.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull align 1 %i.g, i64 %gepdiff, i1 false), !noalias !2213
  br label %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEENS0_12vec_iteratorIPS4_Lb1EEEE17copy_n_and_updateIS7_EEvRS5_T_m.exit42.i.i.i.i.i

_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEENS0_12vec_iteratorIPS4_Lb1EEEE17copy_n_and_updateIS7_EEvRS5_T_m.exit42.i.i.i.i.i: ; preds = %bb.f, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i.i.i.i
  %i.az = getelementptr i8, ptr %i.g, i64 %gepdiff
  %i.ba = sub nuw nsw i64 12, %gepdiff
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.az, i64 %i.ba, i1 false), !tbaa !41, !noalias !2214
  br label %.loopexit

.noexc:                                           ; preds = %.loopexit59
  call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

.loopexit:                                        ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEENS0_12vec_iteratorIPS4_Lb1EEEE17copy_n_and_updateIS7_EEvRS5_T_m.exit42.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader, %bb.e, %_ZN5boost9container13move_backwardIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i.i.i.i.i
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !118, !noalias !2211
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
  br i1 %exitcond.not, label %.preheader57, label %.lr.ph, !llvm.loop !2207

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
  br i1 %exitcond71.not, label %._crit_edge, label %bb.g, !llvm.loop !2208
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
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %0, i64 range(i64 0, 41) %i.g, i1 false), !tbaa !41
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.preheader, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !105, !noalias !2244 ; 7 uses
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
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !105, !noalias !2245 ; 2 uses
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
  store ptr %i.h, ptr %.sroa.0.i.i.i, align 8, !tbaa !192, !noalias !2246
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
  %i.t = load ptr, ptr %.in.i.i.i.i.prol, align 8, !tbaa !188, !noalias !2246 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.prol) ]
  %i.v = load i32, ptr %i.u, align 4, !tbaa !41, !noalias !2247
  store i32 %i.v, ptr %.01214.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !2247
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.x = add i64 %.015.i.i.i.i.i.i.prol, -1       ; 2 uses
  %prol.iter134.next = add i64 %prol.iter134, 1   ; 2 uses
  %prol.iter134.cmp.not = icmp eq i64 %prol.iter134.next, %xtraiter132
  br i1 %prol.iter134.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2227

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
  %i.z = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !188, !noalias !2246 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i) ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !41, !noalias !2247
  store i32 %i.ab, ptr %.01214.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !2247
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 4
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !188, !noalias !2246 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !41, !noalias !2247
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !41, !noalias !2247
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 8
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !188, !noalias !2246 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41, !noalias !2247
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !41, !noalias !2247
  %i.ak = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 12
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !188, !noalias !2246 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 4, !tbaa !41, !noalias !2247
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !41, !noalias !2247
  %i.ao = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 16
  %i.ap = add i64 %.015.i.i.i.i.i.i, -4           ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !22

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.thread.i
  br i1 %.not13.i.i.i.i.i.i, label %.loopexit, label %bb.e, !prof !42

bb.e:                                             ; preds = %bb.d
  store ptr %i.h, ptr %.sroa.0.i.i.i.i, align 8, !tbaa !192, !noalias !2246
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
  %wide.load115 = load <4 x i32>, ptr %next.gep106, align 4, !tbaa !41, !noalias !2246
  %wide.load116 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !41, !noalias !2246
  %i.ay = getelementptr i8, ptr %next.gep107, i64 16
  store <4 x i32> %wide.load115, ptr %next.gep107, align 4, !tbaa !41, !noalias !2246
  store <4 x i32> %wide.load116, ptr %i.ay, align 4, !tbaa !41, !noalias !2246
  %index.next117 = add nuw i64 %index105, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next117, %n.vec103
  br i1 %i.az, label %middle.block118, label %vector.body104, !llvm.loop !2228

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
  %i.bb = load i32, ptr %.0819.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !2246
  store i32 %i.bb, ptr %.01618.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !2246
  %i.bc = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i.i, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.i, i64 4
  %.not.i.i11.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i11.i.i.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i, !llvm.loop !2229

_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i10.i.i.i.i, %middle.block118
  %i.be = add nsw i64 %.neg, %.idx
  %.not.i40.i.i.i.i.i = icmp eq i64 %i.be, %.idx54
  br i1 %.not.i40.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %bb.g, !prof !42

bb.g:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i.i
  %gepdiff56 = add i64 %gepdiff, %.neg            ; 2 uses
  %i.bf = ashr exact i64 %gepdiff56, 2
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bg
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr nonnull align 4 %i.l, i64 %gepdiff56, i1 false), !noalias !2246
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
  %i.bj = load ptr, ptr %.in.i.i.i.i.i.prol, align 8, !tbaa !188, !noalias !2246 ; 3 uses
  %i.bk = add i64 %.035.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !41, !noalias !2248
  store i32 %i.bm, ptr %.06.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !2248
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !2232

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.in.i.i.i.i.i.unr = phi ptr [ %.sroa.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.i.i.unr = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.i.i.unr = phi i64 [ %.0.lcssa.i.i8.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bo = icmp ult i64 %i.bi, 3
  br i1 %i.bo, label %_ZN5boost9container31expand_forward_and_insert_allocINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_NS2_18insert_range_proxyIS5_NS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS4_NS2_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEEEvRT_T0_SR_mT1_.exit.loopexit6.i.i.i, label %.lr.ph.i.i.i.i.i.i.i
end_hunk_16
begin_hunk_17_@_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_NS2_21insert_n_copies_proxyIS5_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_:bb.a
  %i.aw = getelementptr i8, ptr %1, i64 %i.al
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep124), "nonnull"(ptr %next.gep126) ]
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
  br i1 %i.bg, label %middle.block137, label %vector.body119, !llvm.loop !2303

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
  br i1 %.not.i46, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %scalar.ph112, !llvm.loop !2304

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
  br i1 %i.bu, label %middle.block156, label %vector.body149, !llvm.loop !2305

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
  br i1 %.not.i54, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit56, label %scalar.ph141, !llvm.loop !2306

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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep170), "nonnull"(ptr %next.gep172) ]
  store <4 x i32> %interleaved.vec174, ptr %next.gep170, align 4, !tbaa !41
  store <4 x i32> %interleaved.vec174, ptr %next.gep172, align 4, !tbaa !41
  %index.next176 = add nuw i64 %index169, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next176, %n.vec163
  br i1 %i.ce, label %middle.block177, label %vector.body168, !llvm.loop !2307

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
  br i1 %.not.i.i, label %._crit_edge.i.i, label %scalar.ph160, !llvm.loop !2308

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
  %.03888 = phi i64 [ 0, %bb.a ], [ %i.dc, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 10 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %0, i64 range(i64 0, 41) %i.d, i1 false), !tbaa !82
  %i.e = trunc nuw nsw i64 %i.b to i32
  %i.f = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.e
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not.i.i = icmp samesign ugt i64 %i.b, 7
  br i1 %.not.i.i, label %bb.g, label %.thread, !prof !149

.thread:                                          ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i, %bb.e
  %.idx63106 = shl nuw nsw i64 %.03888, 2         ; 3 uses
  %i.g = getelementptr i8, ptr %2, i64 %.idx63106 ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 2                 ; 3 uses
  %i.h = getelementptr i8, ptr %2, i64 %.idx      ; 12 uses
  %i.i = icmp samesign eq i64 %i.b, %.03888
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.i.preheader, label %bb.f

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.thread
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted80 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2331
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !tbaa !82, !noalias !2331
  %i.j = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted80, 3
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2331
  br label %.loopexit67

bb.f:                                             ; preds = %.thread
  %gepdiff = sub nsw i64 %.idx, %.idx63106        ; 4 uses
  %i.k = ashr exact i64 %gepdiff, 2               ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.k, 3
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2332 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i48.preheader.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i

.lr.ph.i.i10.i.i.i.i:                             ; preds = %bb.f
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -12 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.n = load <2 x i32>, ptr %i.l, align 4, !tbaa !82, !noalias !2332
  store i32 0, ptr %i.l, align 4, !tbaa !82, !noalias !2332
  store <2 x i32> %i.n, ptr %i.h, align 4, !tbaa !82, !noalias !2332
  store i32 0, ptr %i.m, align 4, !tbaa !82, !noalias !2332
  %i.o = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = load i32, ptr %i.o, align 4, !tbaa !82, !noalias !2332
  store i32 %i.q, ptr %i.p, align 4, !tbaa !82, !noalias !2332
  store i32 0, ptr %i.o, align 4, !tbaa !82, !noalias !2332
  %i.r = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76, 3
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2332
  %i.s = add nsw i64 %.idx, -12
  %.not8.i.i.i.i.i.i = icmp eq i64 %.idx63106, %i.s
  br i1 %.not8.i.i.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i.preheader

.lr.ph.i40.i.i.i.i.i.preheader:                   ; preds = %.lr.ph.i.i10.i.i.i.i
  %i.t = sub nsw i64 %i.b, %.03888
  %i.u = add i64 %i.t, 4611686018427387900
  %i.v = and i64 %i.u, 4611686018427387903        ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check137 = icmp eq i64 %i.v, 0
  br i1 %min.iters.check137, label %.lr.ph.i40.i.i.i.i.i.preheader161, label %vector.ph138

vector.ph138:                                     ; preds = %.lr.ph.i40.i.i.i.i.i.preheader
  %n.vec139 = and i64 %i.w, 9223372036854775806   ; 3 uses
  %i.x = mul i64 %n.vec139, -4                    ; 2 uses
  %i.y = getelementptr i8, ptr %i.h, i64 %i.x
  %i.z = getelementptr i8, ptr %i.l, i64 %i.x
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next144, %vector.body140 ] ; 2 uses
  %i.aa = mul i64 %index141, -4                   ; 2 uses
  %next.gep142 = getelementptr i8, ptr %i.h, i64 %i.aa
  %next.gep143 = getelementptr i8, ptr %i.l, i64 %i.aa
  %i.ab = getelementptr inbounds i8, ptr %next.gep143, i64 -8 ; 2 uses
  %wide.load = load <2 x i32>, ptr %i.ab, align 4, !tbaa !82, !noalias !2332
  %i.ac = getelementptr inbounds i8, ptr %next.gep142, i64 -8
  store <2 x i32> %wide.load, ptr %i.ac, align 4, !tbaa !82, !noalias !2332
  store <2 x i32> zeroinitializer, ptr %i.ab, align 4, !tbaa !82, !noalias !2332
  %index.next144 = add nuw i64 %index141, 2       ; 2 uses
  %i.ad = icmp eq i64 %index.next144, %n.vec139
  br i1 %i.ad, label %middle.block145, label %vector.body140, !llvm.loop !2315

middle.block145:                                  ; preds = %vector.body140
  %cmp.n146 = icmp eq i64 %i.w, %n.vec139
  br i1 %cmp.n146, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i.preheader161

.lr.ph.i40.i.i.i.i.i.preheader161:                ; preds = %.lr.ph.i40.i.i.i.i.i.preheader, %middle.block145
  %.010.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i40.i.i.i.i.i.preheader ], [ %i.y, %middle.block145 ]
  %.079.i.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i40.i.i.i.i.i.preheader ], [ %i.z, %middle.block145 ]
  br label %.lr.ph.i40.i.i.i.i.i

.lr.ph.i40.i.i.i.i.i:                             ; preds = %.lr.ph.i40.i.i.i.i.i.preheader161, %.lr.ph.i40.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i40.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.ph, %.lr.ph.i40.i.i.i.i.i.preheader161 ]
  %.079.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i40.i.i.i.i.i ], [ %.079.i.i.i.i.i.i.ph, %.lr.ph.i40.i.i.i.i.i.preheader161 ]
  %i.ae = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -4 ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -4 ; 2 uses
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !82, !noalias !2332
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !82, !noalias !2332
  store i32 0, ptr %i.ae, align 4, !tbaa !82, !noalias !2332
  %.not.i41.i.i.i.i.i = icmp eq ptr %i.g, %i.ae
  br i1 %.not.i41.i.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i, !llvm.loop !2316

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i: ; preds = %.lr.ph.i40.i.i.i.i.i, %middle.block145, %.lr.ph.i.i10.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !tbaa !82, !noalias !2333
  br label %.loopexit67

.lr.ph.i48.preheader.i.i.i.i.i:                   ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.ai = sub nsw i64 %i.b, %.03888               ; 2 uses
  %i.aj = add i64 %i.ai, 4611686018427387903
  %i.ak = and i64 %i.aj, 4611686018427387903
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i48.i.i.i.i.i.prol.loopexit, label %.lr.ph.i48.i.i.i.i.i.prol

.lr.ph.i48.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i48.preheader.i.i.i.i.i, %.lr.ph.i48.i.i.i.i.i.prol
  %i.al = phi i32 [ %i.an, %.lr.ph.i48.i.i.i.i.i.prol ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76, %.lr.ph.i48.preheader.i.i.i.i.i ] ; 2 uses
  %.018.i.i.i.i.i.i.prol = phi ptr [ %i.ao, %.lr.ph.i48.i.i.i.i.i.prol ], [ %i.g, %.lr.ph.i48.preheader.i.i.i.i.i ] ; 3 uses
  %.01517.i.i.i.i.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i48.i.i.i.i.i.prol ], [ %i.ah, %.lr.ph.i48.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i48.i.i.i.i.i.prol ], [ 0, %.lr.ph.i48.preheader.i.i.i.i.i ]
  %i.am = load i32, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !2332
  store i32 %i.am, ptr %.01517.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !2332
  store i32 0, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !2332
  %i.an = add i32 %i.al, 1                        ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i48.i.i.i.i.i.prol.loopexit, label %.lr.ph.i48.i.i.i.i.i.prol, !llvm.loop !2319

.lr.ph.i48.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i48.i.i.i.i.i.prol, %.lr.ph.i48.preheader.i.i.i.i.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i48.preheader.i.i.i.i.i ], [ %i.al, %.lr.ph.i48.i.i.i.i.i.prol ]
  %.unr = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76, %.lr.ph.i48.preheader.i.i.i.i.i ], [ %i.an, %.lr.ph.i48.i.i.i.i.i.prol ]
  %.018.i.i.i.i.i.i.unr = phi ptr [ %i.g, %.lr.ph.i48.preheader.i.i.i.i.i ], [ %i.ao, %.lr.ph.i48.i.i.i.i.i.prol ]
  %.01517.i.i.i.i.i.i.unr = phi ptr [ %i.ah, %.lr.ph.i48.preheader.i.i.i.i.i ], [ %i.ap, %.lr.ph.i48.i.i.i.i.i.prol ]
  %i.aq = icmp samesign ult i64 %i.ak, 3
  br i1 %i.aq, label %.lr.ph.i.i51.i.i.i.i.i.preheader, label %.lr.ph.i48.i.i.i.i.i

.lr.ph.i48.i.i.i.i.i:                             ; preds = %.lr.ph.i48.i.i.i.i.i.prol.loopexit, %.lr.ph.i48.i.i.i.i.i
  %i.ar = phi i32 [ %i.bc, %.lr.ph.i48.i.i.i.i.i ], [ %.unr, %.lr.ph.i48.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.018.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i48.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i48.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01517.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i48.i.i.i.i.i ], [ %.01517.i.i.i.i.i.i.unr, %.lr.ph.i48.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.as = load i32, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !2332
  store i32 %i.as, ptr %.01517.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !2332
  store i32 0, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !2332
  %i.at = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 4
  %i.av = load i32, ptr %i.at, align 4, !tbaa !82, !noalias !2332
  store i32 %i.av, ptr %i.au, align 4, !tbaa !82, !noalias !2332
  store i32 0, ptr %i.at, align 4, !tbaa !82, !noalias !2332
  %i.aw = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 8
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !82, !noalias !2332
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !82, !noalias !2332
  store i32 0, ptr %i.aw, align 4, !tbaa !82, !noalias !2332
  %i.az = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 12
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !82, !noalias !2332
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !82, !noalias !2332
  store i32 0, ptr %i.az, align 4, !tbaa !82, !noalias !2332
  %i.bc = add i32 %i.ar, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 16
  %.not.i49.i.i.i.i.i.3 = icmp eq ptr %i.bd, %i.h
  br i1 %.not.i49.i.i.i.i.i.3, label %.lr.ph.i.i51.i.i.i.i.i.preheader.unr-lcssa, label %.lr.ph.i48.i.i.i.i.i, !llvm.loop !16

.lr.ph.i.i51.i.i.i.i.i.preheader.unr-lcssa:       ; preds = %.lr.ph.i48.i.i.i.i.i
  %i.bf = add i32 %i.ar, 3
  br label %.lr.ph.i.i51.i.i.i.i.i.preheader

.lr.ph.i.i51.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i48.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i.i.i.preheader.unr-lcssa
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph.i48.i.i.i.i.i.prol.loopexit ], [ %i.bf, %.lr.ph.i.i51.i.i.i.i.i.preheader.unr-lcssa ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.g, ptr nonnull align 8 %1, i64 %gepdiff, i1 false), !tbaa !82, !noalias !2334
  %scevgep = getelementptr i8, ptr %1, i64 %gepdiff
  %i.bg = sub i64 12, %gepdiff
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %scevgep, i64 range(i64 0, 13) %i.bg, i1 false), !tbaa !82, !noalias !2335
  %i.bh = add i32 %.lcssa, 4
  %i.bi = trunc nuw nsw i64 %i.k to i32
  %i.bj = sub i32 %i.bh, %i.bi
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2335
  br label %.loopexit67

bb.g:                                             ; preds = %bb.e
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

.loopexit67:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, %.lr.ph.i.i51.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.preheader
  %i.bk = add nuw nsw i64 %i.b, 3                 ; 10 uses
  %i.bl = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1, i32 noundef 347, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext true)
          to label %bb.h unwind label %.loopexit68 ; 0 uses

bb.h:                                             ; preds = %.loopexit67
  %i.bm = icmp eq i64 %i.bk, 8
  %i.bn = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 348, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext %i.bm)
          to label %.preheader65 unwind label %.loopexit68 ; 0 uses

.preheader65:                                     ; preds = %bb.h
  %.not = icmp eq i64 %.03888, 0
  %.pre97 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  br i1 %.not, label %.preheader64, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader65
  %i.bo = add i32 %.pre97, 1
  br label %.lr.ph

.preheader64:                                     ; preds = %bb.i, %.preheader65
  %i.bp = phi i32 [ %.pre97, %.preheader65 ], [ %i.cb, %bb.i ]
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03888 ; 4 uses
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.br = load i32, ptr %invariant.gep, align 4, !tbaa !82
  %i.bs = icmp eq i32 %i.br, 100
  %i.bt = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext %i.bs)
          to label %bb.k unwind label %bb.m       ; 0 uses

.loopexit68:                                      ; preds = %bb.h, %.loopexit67
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i43

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i43

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.bu = phi i32 [ %i.ca, %bb.i ], [ %i.bo, %.lr.ph.preheader ]
  %.03482 = phi i64 [ %i.cc, %bb.i ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03482
  %i.bw = trunc nuw nsw i64 %.03482 to i32
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !82
  %i.by = icmp eq i32 %i.bx, %i.bw
  %i.bz = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 350, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext %i.by)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %.lr.ph
  %i.ca = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.cb = add i32 %i.ca, -1                       ; 2 uses
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cc = add nuw nsw i64 %.03482, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %.03888
  br i1 %exitcond.not, label %.preheader64, label %.lr.ph, !llvm.loop !2324

bb.j:                                             ; preds = %.lr.ph
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i43

.lr.ph87:                                         ; preds = %.preheader
  %i.cg = trunc nuw nsw i64 %.03888 to i32
  br label %bb.n

bb.k:                                             ; preds = %.preheader64
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.ch = load i32, ptr %gep.1, align 4, !tbaa !82
  %i.ci = icmp eq i32 %i.ch, 101
  %i.cj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext %i.ci)
          to label %bb.l unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %i.ck = load i32, ptr %gep.2, align 4, !tbaa !82
  %i.cl = icmp eq i32 %i.ck, 102
  %i.cm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext %i.cl)
          to label %.preheader unwind label %bb.m ; 0 uses

.preheader:                                       ; preds = %bb.l
  %i.cn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.co = add i32 %i.cn, -1                       ; 2 uses
  store i32 %i.co, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not89 = icmp eq i64 %.03888, 5
  br i1 %.not89, label %.lr.ph.i.preheader.i, label %.lr.ph87

bb.m:                                             ; preds = %bb.l, %bb.k, %.preheader64
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %i.cq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cr = add i32 %i.cq, -1
  store i32 %i.cr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i43

.lr.ph.i.preheader.i:                             ; preds = %bb.o, %.preheader
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = phi i32 [ %i.co, %.preheader ], [ %i.dl, %bb.o ]
  %min.iters.check = icmp ult i64 %i.b, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.bk, 24                      ; 3 uses
  %i.cs = and i64 %i.bk, 7
  %i.ct = shl nuw nsw i64 %n.vec, 2
  %i.cu = getelementptr i8, ptr %2, i64 %i.ct
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.cv ; 2 uses
  %i.cw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.cw, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !2325

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.05.i.i.ph = phi i64 [ %i.bk, %.lr.ph.i.preheader.i ], [ %i.cs, %middle.block ]
  %storemerge4.i.i.ph = phi ptr [ %2, %.lr.ph.i.preheader.i ], [ %i.cu, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.cy, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cy = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !82
  %i.cz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i41 = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i41, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !2326

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.lr.ph.i.i, %middle.block
  %i.da = trunc nuw nsw i64 %i.bk to i32
  %i.db = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.da
  store i32 %i.db, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.dc = add nuw nsw i64 %.03888, 1              ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond96.not = icmp eq i64 %i.dc, 6
  br i1 %exitcond96.not, label %bb.b, label %bb.c, !llvm.loop !2327

bb.n:                                             ; preds = %.lr.ph87, %bb.o
  %i.dd = phi i32 [ %i.cn, %.lr.ph87 ], [ %i.dk, %bb.o ]
  %.086 = phi i64 [ 0, %.lr.ph87 ], [ %i.dm, %bb.o ] ; 3 uses
  %gep85 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.086
  %i.de = getelementptr inbounds nuw i8, ptr %gep85, i64 12
  %i.df = trunc nuw nsw i64 %.086 to i32
  %i.dg = add nuw nsw i32 %i.df, %i.cg
  store i32 %i.dd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dh = load i32, ptr %i.de, align 4, !tbaa !82
  %i.di = icmp eq i32 %i.dh, %i.dg
  %i.dj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 354, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext %i.di)
          to label %bb.o unwind label %bb.p       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.dk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.dl = add i32 %i.dk, -1                       ; 2 uses
  store i32 %i.dl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dm = add nuw nsw i64 %.086, 1                ; 2 uses
  %exitcond95.not = icmp eq i64 %i.dm, %umax
  br i1 %exitcond95.not, label %.lr.ph.i.preheader.i, label %bb.n, !llvm.loop !2328

bb.p:                                             ; preds = %bb.n
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dp = add i32 %i.do, -1
  store i32 %i.dp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i43

.lr.ph.i.preheader.i43:                           ; preds = %bb.p, %bb.m, %bb.j, %.loopexit.split-lp, %.loopexit68
  %i.dq = phi i64 [ %i.bk, %bb.p ], [ %i.bk, %bb.j ], [ %i.bk, %bb.m ], [ %i.bk, %.loopexit68 ], [ %i.b, %.loopexit.split-lp ] ; 6 uses
  %.pn.pn = phi { ptr, i32 } [ %i.dn, %bb.p ], [ %i.cd, %bb.j ], [ %i.cp, %bb.m ], [ %lpad.loopexit, %.loopexit68 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i44 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check150 = icmp ult i64 %i.dq, 8
  br i1 %min.iters.check150, label %.lr.ph.i.i45.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %.lr.ph.i.preheader.i43
  %n.vec152 = and i64 %i.dq, -8                   ; 3 uses
  %i.dr = and i64 %i.dq, 7
  %i.ds = shl i64 %n.vec152, 2
  %i.dt = getelementptr i8, ptr %2, i64 %i.ds
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next156, %vector.body153 ] ; 2 uses
  %i.du = shl i64 %index154, 2
  %next.gep155 = getelementptr i8, ptr %2, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep155, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep155, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.dv, align 8, !tbaa !82
  %index.next156 = add nuw i64 %index154, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next156, %n.vec152
  br i1 %i.dw, label %middle.block157, label %vector.body153, !llvm.loop !2329

middle.block157:                                  ; preds = %vector.body153
  %cmp.n158 = icmp eq i64 %i.dq, %n.vec152
  br i1 %cmp.n158, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit50, label %.lr.ph.i.i45.preheader

.lr.ph.i.i45.preheader:                           ; preds = %.lr.ph.i.preheader.i43, %middle.block157
  %.05.i.i46.ph = phi i64 [ %i.dq, %.lr.ph.i.preheader.i43 ], [ %i.dr, %middle.block157 ]
  %storemerge4.i.i47.ph = phi ptr [ %2, %.lr.ph.i.preheader.i43 ], [ %i.dt, %middle.block157 ]
  br label %.lr.ph.i.i45

.lr.ph.i.i45:                                     ; preds = %.lr.ph.i.i45.preheader, %.lr.ph.i.i45
  %.05.i.i46 = phi i64 [ %i.dx, %.lr.ph.i.i45 ], [ %.05.i.i46.ph, %.lr.ph.i.i45.preheader ]
  %storemerge4.i.i47 = phi ptr [ %i.dy, %.lr.ph.i.i45 ], [ %storemerge4.i.i47.ph, %.lr.ph.i.i45.preheader ] ; 2 uses
  %i.dx = add i64 %.05.i.i46, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i47, align 4, !tbaa !82
  %i.dy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i47, i64 4
  %.not.i.i48 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i48, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit50, label %.lr.ph.i.i45, !llvm.loop !2330

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit50: ; preds = %.lr.ph.i.i45, %middle.block157
  %i.dz = trunc nuw nsw i64 %i.dq to i32
  %i.ea = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i44, %i.dz
  store i32 %i.ea, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
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
  %.03886 = phi i64 [ 0, %bb.a ], [ %i.df, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 10 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %0, i64 range(i64 0, 41) %i.d, i1 false), !tbaa !82
  %i.e = trunc nuw nsw i64 %i.b to i32
  %i.f = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.e
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not.i.i = icmp samesign ugt i64 %i.b, 7
  br i1 %.not.i.i, label %bb.g, label %.thread, !prof !149

.thread:                                          ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i, %bb.e
  %i.g = load ptr, ptr %1, align 8, !tbaa !147, !noalias !2361 ; 4 uses
  %.idx63104 = shl nuw nsw i64 %.03886, 2         ; 3 uses
  %i.h = getelementptr i8, ptr %2, i64 %.idx63104 ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 2                 ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 %.idx      ; 12 uses
  %i.j = icmp samesign eq i64 %i.b, %.03886
  br i1 %i.j, label %.lr.ph.i.i.i.i.i.i.preheader, label %bb.f

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.thread
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted79 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false), !tbaa !82, !noalias !2362
  %i.k = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted79, 3
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2362
  br label %.loopexit

bb.f:                                             ; preds = %.thread
  %gepdiff = sub nsw i64 %.idx, %.idx63104        ; 3 uses
  %i.l = ashr exact i64 %gepdiff, 2               ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.l, 3
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2363 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i48.preheader.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i

.lr.ph.i.i10.i.i.i.i:                             ; preds = %bb.f
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -12 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.o = load <2 x i32>, ptr %i.m, align 4, !tbaa !82, !noalias !2363
  store i32 0, ptr %i.m, align 4, !tbaa !82, !noalias !2363
  store <2 x i32> %i.o, ptr %i.i, align 4, !tbaa !82, !noalias !2363
  store i32 0, ptr %i.n, align 4, !tbaa !82, !noalias !2363
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 -4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.r = load i32, ptr %i.p, align 4, !tbaa !82, !noalias !2363
  store i32 %i.r, ptr %i.q, align 4, !tbaa !82, !noalias !2363
  store i32 0, ptr %i.p, align 4, !tbaa !82, !noalias !2363
  %i.s = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76, 3
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2363
  %i.t = add nsw i64 %.idx, -12
  %.not8.i.i.i.i.i.i = icmp eq i64 %.idx63104, %i.t
  br i1 %.not8.i.i.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i.preheader

.lr.ph.i40.i.i.i.i.i.preheader:                   ; preds = %.lr.ph.i.i10.i.i.i.i
  %i.u = sub nsw i64 %i.b, %.03886
  %i.v = add i64 %i.u, 4611686018427387900
  %i.w = and i64 %i.v, 4611686018427387903        ; 2 uses
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check135 = icmp eq i64 %i.w, 0
  br i1 %min.iters.check135, label %.lr.ph.i40.i.i.i.i.i.preheader159, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph.i40.i.i.i.i.i.preheader
  %n.vec137 = and i64 %i.x, 9223372036854775806   ; 3 uses
  %i.y = mul i64 %n.vec137, -4                    ; 2 uses
  %i.z = getelementptr i8, ptr %i.i, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.m, i64 %i.y
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph136
  %index139 = phi i64 [ 0, %vector.ph136 ], [ %index.next142, %vector.body138 ] ; 2 uses
  %i.ab = mul i64 %index139, -4                   ; 2 uses
  %next.gep140 = getelementptr i8, ptr %i.i, i64 %i.ab
  %next.gep141 = getelementptr i8, ptr %i.m, i64 %i.ab
  %i.ac = getelementptr inbounds i8, ptr %next.gep141, i64 -8 ; 2 uses
  %wide.load = load <2 x i32>, ptr %i.ac, align 4, !tbaa !82, !noalias !2363
  %i.ad = getelementptr inbounds i8, ptr %next.gep140, i64 -8
  store <2 x i32> %wide.load, ptr %i.ad, align 4, !tbaa !82, !noalias !2363
  store <2 x i32> zeroinitializer, ptr %i.ac, align 4, !tbaa !82, !noalias !2363
  %index.next142 = add nuw i64 %index139, 2       ; 2 uses
  %i.ae = icmp eq i64 %index.next142, %n.vec137
  br i1 %i.ae, label %middle.block143, label %vector.body138, !llvm.loop !2344

middle.block143:                                  ; preds = %vector.body138
  %cmp.n144 = icmp eq i64 %i.x, %n.vec137
  br i1 %cmp.n144, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i.preheader159

.lr.ph.i40.i.i.i.i.i.preheader159:                ; preds = %.lr.ph.i40.i.i.i.i.i.preheader, %middle.block143
  %.010.i.i.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i40.i.i.i.i.i.preheader ], [ %i.z, %middle.block143 ]
  %.079.i.i.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i40.i.i.i.i.i.preheader ], [ %i.aa, %middle.block143 ]
  br label %.lr.ph.i40.i.i.i.i.i

.lr.ph.i40.i.i.i.i.i:                             ; preds = %.lr.ph.i40.i.i.i.i.i.preheader159, %.lr.ph.i40.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i40.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.ph, %.lr.ph.i40.i.i.i.i.i.preheader159 ]
  %.079.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i40.i.i.i.i.i ], [ %.079.i.i.i.i.i.i.ph, %.lr.ph.i40.i.i.i.i.i.preheader159 ]
  %i.af = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -4 ; 4 uses
  %i.ag = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -4 ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !82, !noalias !2363
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !82, !noalias !2363
  store i32 0, ptr %i.af, align 4, !tbaa !82, !noalias !2363
  %.not.i41.i.i.i.i.i = icmp eq ptr %i.h, %i.af
  br i1 %.not.i41.i.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i, !llvm.loop !2345

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i: ; preds = %.lr.ph.i40.i.i.i.i.i, %middle.block143, %.lr.ph.i.i10.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false), !tbaa !82, !noalias !2364
  br label %.loopexit

.lr.ph.i48.preheader.i.i.i.i.i:                   ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.aj = sub nsw i64 %i.b, %.03886               ; 2 uses
  %i.ak = add i64 %i.aj, 4611686018427387903
  %i.al = and i64 %i.ak, 4611686018427387903
  %xtraiter = and i64 %i.aj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i48.i.i.i.i.i.prol.loopexit, label %.lr.ph.i48.i.i.i.i.i.prol

.lr.ph.i48.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i48.preheader.i.i.i.i.i, %.lr.ph.i48.i.i.i.i.i.prol
  %i.am = phi i32 [ %i.ao, %.lr.ph.i48.i.i.i.i.i.prol ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76, %.lr.ph.i48.preheader.i.i.i.i.i ]
  %.018.i.i.i.i.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i48.i.i.i.i.i.prol ], [ %i.h, %.lr.ph.i48.preheader.i.i.i.i.i ] ; 3 uses
  %.01517.i.i.i.i.i.i.prol = phi ptr [ %i.aq, %.lr.ph.i48.i.i.i.i.i.prol ], [ %i.ai, %.lr.ph.i48.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i48.i.i.i.i.i.prol ], [ 0, %.lr.ph.i48.preheader.i.i.i.i.i ]
  %i.an = load i32, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !2363
  store i32 %i.an, ptr %.01517.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !2363
  store i32 0, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !2363
  %i.ao = add i32 %i.am, 1                        ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i48.i.i.i.i.i.prol.loopexit, label %.lr.ph.i48.i.i.i.i.i.prol, !llvm.loop !2348

.lr.ph.i48.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i48.i.i.i.i.i.prol, %.lr.ph.i48.preheader.i.i.i.i.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i48.preheader.i.i.i.i.i ], [ %i.ao, %.lr.ph.i48.i.i.i.i.i.prol ]
  %.unr = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76, %.lr.ph.i48.preheader.i.i.i.i.i ], [ %i.ao, %.lr.ph.i48.i.i.i.i.i.prol ]
  %.018.i.i.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i48.preheader.i.i.i.i.i ], [ %i.ap, %.lr.ph.i48.i.i.i.i.i.prol ]
  %.01517.i.i.i.i.i.i.unr = phi ptr [ %i.ai, %.lr.ph.i48.preheader.i.i.i.i.i ], [ %i.aq, %.lr.ph.i48.i.i.i.i.i.prol ]
  %i.ar = icmp samesign ult i64 %i.al, 3
  br i1 %i.ar, label %.lr.ph.i.i51.i.i.i.i.i.preheader, label %.lr.ph.i48.i.i.i.i.i

.lr.ph.i48.i.i.i.i.i:                             ; preds = %.lr.ph.i48.i.i.i.i.i.prol.loopexit, %.lr.ph.i48.i.i.i.i.i
  %i.as = phi i32 [ %i.bd, %.lr.ph.i48.i.i.i.i.i ], [ %.unr, %.lr.ph.i48.i.i.i.i.i.prol.loopexit ]
  %.018.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i48.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i48.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01517.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i48.i.i.i.i.i ], [ %.01517.i.i.i.i.i.i.unr, %.lr.ph.i48.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.at = load i32, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !2363
  store i32 %i.at, ptr %.01517.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !2363
  store i32 0, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !2363
  %i.au = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 4
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !82, !noalias !2363
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !82, !noalias !2363
  store i32 0, ptr %i.au, align 4, !tbaa !82, !noalias !2363
  %i.ax = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 8
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !82, !noalias !2363
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !82, !noalias !2363
  store i32 0, ptr %i.ax, align 4, !tbaa !82, !noalias !2363
  %i.ba = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 12
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !82, !noalias !2363
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !82, !noalias !2363
  store i32 0, ptr %i.ba, align 4, !tbaa !82, !noalias !2363
  %i.bd = add i32 %i.as, 4                        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 16
  %.not.i49.i.i.i.i.i.3 = icmp eq ptr %i.be, %i.i
  br i1 %.not.i49.i.i.i.i.i.3, label %.lr.ph.i.i51.i.i.i.i.i.preheader, label %.lr.ph.i48.i.i.i.i.i, !llvm.loop !16

.lr.ph.i.i51.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i48.i.i.i.i.i, %.lr.ph.i48.i.i.i.i.i.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph.i48.i.i.i.i.i.prol.loopexit ], [ %i.bd, %.lr.ph.i48.i.i.i.i.i ] ; 2 uses
  store i32 %.lcssa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2363
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %i.g, i64 %gepdiff, i1 false), !tbaa !82, !noalias !2365
  %i.bg = sub nuw nsw i64 3, %i.l
  %scevgep = getelementptr i8, ptr %i.g, i64 %gepdiff
  br label %.lr.ph.i.i56.i.i.i.i.i.prol

.lr.ph.i.i56.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i56.i.i.i.i.i.prol, %.lr.ph.i.i51.i.i.i.i.i.preheader
  %i.bh = phi i32 [ %i.bk, %.lr.ph.i.i56.i.i.i.i.i.prol ], [ %.lcssa, %.lr.ph.i.i51.i.i.i.i.i.preheader ]
  %i.bi = phi ptr [ %i.bl, %.lr.ph.i.i56.i.i.i.i.i.prol ], [ %scevgep, %.lr.ph.i.i51.i.i.i.i.i.preheader ] ; 2 uses
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.bm, %.lr.ph.i.i56.i.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i51.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter176 = phi i64 [ %prol.iter176.next, %.lr.ph.i.i56.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i51.i.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i.prol) ]
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !82, !noalias !2366
  store i32 %i.bj, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !2366
  %i.bk = add i32 %i.bh, 1                        ; 2 uses
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2366
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 4
  %prol.iter176.next = add i64 %prol.iter176, 1   ; 2 uses
  %prol.iter176.cmp.not = icmp eq i64 %prol.iter176.next, %i.bg
  br i1 %prol.iter176.cmp.not, label %.loopexit, label %.lr.ph.i.i56.i.i.i.i.i.prol, !llvm.loop !2353

bb.g:                                             ; preds = %bb.e
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i.i56.i.i.i.i.i.prol, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader
  %i.bn = add nuw nsw i64 %i.b, 3                 ; 10 uses
  %i.bo = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1, i32 noundef 347, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_6vectorIS3_vvEEEvRKT1_RKT2_, i1 noundef zeroext true)
          to label %bb.h unwind label %.loopexit68 ; 0 uses

bb.h:                                             ; preds = %.loopexit
  %i.bp = icmp eq i64 %i.bn, 8
  %i.bq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 348, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_6vectorIS3_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.bp)
end_hunk_17
begin_hunk_18_@_Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_6vectorIS3_vvEEEvRKT1_RKT2_:bb.a
.lr.ph85:                                         ; preds = %.preheader
  %i.cj = trunc nuw nsw i64 %.03886 to i32
  br label %bb.n

bb.k:                                             ; preds = %.preheader64
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.ck = load i32, ptr %gep.1, align 4, !tbaa !82
  %i.cl = icmp eq i32 %i.ck, 101
  %i.cm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_6vectorIS3_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.cl)
          to label %bb.l unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %i.cn = load i32, ptr %gep.2, align 4, !tbaa !82
  %i.co = icmp eq i32 %i.cn, 102
  %i.cp = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_6vectorIS3_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.co)
          to label %.preheader unwind label %bb.m ; 0 uses

.preheader:                                       ; preds = %bb.l
  %i.cq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.cr = add i32 %i.cq, -1                       ; 2 uses
  store i32 %i.cr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not87 = icmp eq i64 %.03886, 5
  br i1 %.not87, label %.lr.ph.i.preheader.i, label %.lr.ph85

bb.m:                                             ; preds = %bb.l, %bb.k, %.preheader64
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cu = add i32 %i.ct, -1
  store i32 %i.cu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i43

.lr.ph.i.preheader.i:                             ; preds = %bb.o, %.preheader
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = phi i32 [ %i.cr, %.preheader ], [ %i.do, %bb.o ]
  %min.iters.check = icmp ult i64 %i.b, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.bn, 24                      ; 3 uses
  %i.cv = and i64 %i.bn, 7
  %i.cw = shl nuw nsw i64 %n.vec, 2
  %i.cx = getelementptr i8, ptr %2, i64 %i.cw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.cy ; 2 uses
  %i.cz = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.cz, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !2355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.05.i.i.ph = phi i64 [ %i.bn, %.lr.ph.i.preheader.i ], [ %i.cv, %middle.block ]
  %storemerge4.i.i.ph = phi ptr [ %2, %.lr.ph.i.preheader.i ], [ %i.cx, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.db, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.db = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !82
  %i.dc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i41 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i41, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !2356

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.lr.ph.i.i, %middle.block
  %i.dd = trunc nuw nsw i64 %i.bn to i32
  %i.de = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.dd
  store i32 %i.de, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.df = add nuw nsw i64 %.03886, 1              ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond94.not = icmp eq i64 %i.df, 6
  br i1 %exitcond94.not, label %bb.b, label %bb.c, !llvm.loop !2357

bb.n:                                             ; preds = %.lr.ph85, %bb.o
  %i.dg = phi i32 [ %i.cq, %.lr.ph85 ], [ %i.dn, %bb.o ]
  %.084 = phi i64 [ 0, %.lr.ph85 ], [ %i.dp, %bb.o ] ; 3 uses
  %gep83 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.084
  %i.dh = getelementptr inbounds nuw i8, ptr %gep83, i64 12
  %i.di = trunc nuw nsw i64 %.084 to i32
  %i.dj = add nuw nsw i32 %i.di, %i.cj
  store i32 %i.dg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dk = load i32, ptr %i.dh, align 4, !tbaa !82
  %i.dl = icmp eq i32 %i.dk, %i.dj
  %i.dm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 354, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_6vectorIS3_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.dl)
          to label %bb.o unwind label %bb.p       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.dn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.do = add i32 %i.dn, -1                       ; 2 uses
  store i32 %i.do, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dp = add nuw nsw i64 %.084, 1                ; 2 uses
  %exitcond93.not = icmp eq i64 %i.dp, %umax
  br i1 %exitcond93.not, label %.lr.ph.i.preheader.i, label %bb.n, !llvm.loop !2358

bb.p:                                             ; preds = %bb.n
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ds = add i32 %i.dr, -1
  store i32 %i.ds, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i43

.lr.ph.i.preheader.i43:                           ; preds = %bb.p, %bb.m, %bb.j, %.loopexit.split-lp, %.loopexit68
  %i.dt = phi i64 [ %i.bn, %bb.p ], [ %i.bn, %bb.j ], [ %i.bn, %bb.m ], [ %i.bn, %.loopexit68 ], [ %i.b, %.loopexit.split-lp ] ; 6 uses
  %.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.p ], [ %i.cg, %bb.j ], [ %i.cs, %bb.m ], [ %lpad.loopexit, %.loopexit68 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i44 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check148 = icmp ult i64 %i.dt, 8
  br i1 %min.iters.check148, label %.lr.ph.i.i45.preheader, label %vector.ph149

vector.ph149:                                     ; preds = %.lr.ph.i.preheader.i43
  %n.vec150 = and i64 %i.dt, -8                   ; 3 uses
  %i.du = and i64 %i.dt, 7
  %i.dv = shl i64 %n.vec150, 2
  %i.dw = getelementptr i8, ptr %2, i64 %i.dv
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph149
  %index152 = phi i64 [ 0, %vector.ph149 ], [ %index.next154, %vector.body151 ] ; 2 uses
  %i.dx = shl i64 %index152, 2
  %next.gep153 = getelementptr i8, ptr %2, i64 %i.dx ; 2 uses
  %i.dy = getelementptr i8, ptr %next.gep153, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep153, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.dy, align 8, !tbaa !82
  %index.next154 = add nuw i64 %index152, 8       ; 2 uses
  %i.dz = icmp eq i64 %index.next154, %n.vec150
  br i1 %i.dz, label %middle.block155, label %vector.body151, !llvm.loop !2359

middle.block155:                                  ; preds = %vector.body151
  %cmp.n156 = icmp eq i64 %i.dt, %n.vec150
  br i1 %cmp.n156, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit50, label %.lr.ph.i.i45.preheader

.lr.ph.i.i45.preheader:                           ; preds = %.lr.ph.i.preheader.i43, %middle.block155
  %.05.i.i46.ph = phi i64 [ %i.dt, %.lr.ph.i.preheader.i43 ], [ %i.du, %middle.block155 ]
  %storemerge4.i.i47.ph = phi ptr [ %2, %.lr.ph.i.preheader.i43 ], [ %i.dw, %middle.block155 ]
  br label %.lr.ph.i.i45

.lr.ph.i.i45:                                     ; preds = %.lr.ph.i.i45.preheader, %.lr.ph.i.i45
  %.05.i.i46 = phi i64 [ %i.ea, %.lr.ph.i.i45 ], [ %.05.i.i46.ph, %.lr.ph.i.i45.preheader ]
  %storemerge4.i.i47 = phi ptr [ %i.eb, %.lr.ph.i.i45 ], [ %storemerge4.i.i47.ph, %.lr.ph.i.i45.preheader ] ; 2 uses
  %i.ea = add i64 %.05.i.i46, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i47, align 4, !tbaa !82
  %i.eb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i47, i64 4
  %.not.i.i48 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i48, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit50, label %.lr.ph.i.i45, !llvm.loop !2360

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit50: ; preds = %.lr.ph.i.i45, %middle.block155
  %i.ec = trunc nuw nsw i64 %i.dt to i32
  %i.ed = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i44, %i.ec
  store i32 %i.ed, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
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
  %.03877 = phi i64 [ 0, %bb.a ], [ %i.bm, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 6 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %3, ptr nonnull align 8 %0, i64 range(i64 0, 41) %i.f, i1 false), !tbaa !82
  %i.g = trunc nuw nsw i64 %i.d to i32
  %i.h = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.g
  store i32 %i.h, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i, %.lr.ph.i.preheader.i.i
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !105, !noalias !2382 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03877 ; 6 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.not2.i.i.i = icmp eq ptr %i.i, %i.l
  br i1 %.not2.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESN_SN_.exit.i, label %.lr.ph.i.i.i41

.lr.ph.i.i.i41:                                   ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit, %.lr.ph.i.i.i41
  %i.n = phi ptr [ %i.p, %.lr.ph.i.i.i41 ], [ %i.i, %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit ]
  %.03.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i41 ], [ 0, %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit ]
  %i.o = add nuw nsw i64 %.03.i.i.i, 1            ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !105, !noalias !2383 ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.p, %i.l
  br i1 %.not.i.i.i42, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESN_SN_.exit.i, label %.lr.ph.i.i.i41, !llvm.loop !29

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESN_SN_.exit.i: ; preds = %.lr.ph.i.i.i41, %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit
  %.0.lcssa.i.i.i = phi i64 [ 0, %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit ], [ %i.o, %.lr.ph.i.i.i41 ]
  store ptr %i.i, ptr %2, align 8, !tbaa !203, !noalias !2383
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS4_18insert_range_proxyIS6_NS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS4_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb1EEEEEEENS0_12vec_iteratorIPS3_Lb0EEERKSS_mT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.59") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %.0.lcssa.i.i.i, ptr noundef nonnull align 8 dead_on_return %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESN_SN_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.q = load ptr, ptr %4, align 8, !tbaa !205
  %i.r = icmp eq ptr %i.m, %i.q
  %i.s = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1, i32 noundef 347, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_4listIS3_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.r)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.b, align 8, !tbaa !141
  %i.u = icmp eq i64 %i.t, 8
  %i.v = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 348, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_4listIS3_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.u)
          to label %.preheader64 unwind label %bb.g ; 0 uses

.preheader64:                                     ; preds = %bb.f
  %.not = icmp eq i64 %.03877, 0
  %.pre83 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  br i1 %.not, label %.preheader63, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader64
  %i.w = add i32 %.pre83, 1
  br label %.lr.ph

.preheader63:                                     ; preds = %bb.h, %.preheader64
  %i.x = phi i32 [ %.pre83, %.preheader64 ], [ %i.ak, %bb.h ]
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.z = load i32, ptr %i.m, align 4, !tbaa !82
  %i.aa = icmp eq i32 %i.z, 100
  %i.ab = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_4listIS3_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.aa)
          to label %bb.j unwind label %bb.l       ; 0 uses

bb.g:                                             ; preds = %bb.e, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeINS2_4test24movable_and_copyable_intENS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISB_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESN_SN_.exit.i, %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %i.ad = phi i32 [ %i.aj, %bb.h ], [ %i.w, %.lr.ph.preheader ]
  %.03471 = phi i64 [ %i.al, %bb.h ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03471
  %i.af = trunc nuw nsw i64 %.03471 to i32
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !82
  %i.ah = icmp eq i32 %i.ag, %i.af
  %i.ai = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 350, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_4listIS3_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.ah)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %.lr.ph
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.ak = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.al = add nuw nsw i64 %.03471, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %.03877
  br i1 %exitcond.not, label %.preheader63, label %.lr.ph, !llvm.loop !2375

bb.i:                                             ; preds = %.lr.ph
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.p

.lr.ph76:                                         ; preds = %.preheader
  %i.ap = trunc nuw nsw i64 %.03877 to i32
  br label %bb.m

bb.j:                                             ; preds = %.preheader63
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.aq = load i32, ptr %gep.1, align 4, !tbaa !82
  %i.ar = icmp eq i32 %i.aq, 101
  %i.as = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_4listIS3_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.ar)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.at = load i32, ptr %gep.2, align 4, !tbaa !82
  %i.au = icmp eq i32 %i.at, 102
  %i.av = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_4listIS3_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.au)
          to label %.preheader unwind label %bb.l ; 0 uses

.preheader:                                       ; preds = %bb.k
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not78 = icmp eq i64 %.03877, 5
  br i1 %.not78, label %._crit_edge, label %.lr.ph76

bb.l:                                             ; preds = %bb.k, %bb.j, %.preheader63
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.p

._crit_edge:                                      ; preds = %bb.n, %.preheader
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = phi i32 [ %i.ax, %.preheader ], [ %i.bv, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !141 ; 7 uses
  %.not3.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i43.preheader

.lr.ph.i.i43.preheader:                           ; preds = %._crit_edge
  %min.iters.check = icmp ult i64 %i.bb, 8
  br i1 %min.iters.check, label %.lr.ph.i.i43.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i43.preheader
  %n.vec = and i64 %i.bb, -8                      ; 3 uses
  %i.bc = and i64 %i.bb, 7
  %i.bd = shl i64 %n.vec, 2
  %i.be = getelementptr i8, ptr %3, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %3, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.bg, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !2376

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i43.preheader109

.lr.ph.i.i43.preheader109:                        ; preds = %.lr.ph.i.i43.preheader, %middle.block
  %.05.i.i44.ph = phi i64 [ %i.bb, %.lr.ph.i.i43.preheader ], [ %i.bc, %middle.block ]
  %storemerge4.i.i.ph = phi ptr [ %3, %.lr.ph.i.i43.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i43

.lr.ph.i.i43:                                     ; preds = %.lr.ph.i.i43.preheader109, %.lr.ph.i.i43
  %.05.i.i44 = phi i64 [ %i.bi, %.lr.ph.i.i43 ], [ %.05.i.i44.ph, %.lr.ph.i.i43.preheader109 ]
  %storemerge4.i.i = phi ptr [ %i.bj, %.lr.ph.i.i43 ], [ %storemerge4.i.i.ph, %.lr.ph.i.i43.preheader109 ] ; 2 uses
  %i.bi = add i64 %.05.i.i44, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !82
  %i.bj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i43, !llvm.loop !2377

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i: ; preds = %.lr.ph.i.i43, %middle.block
  %i.bk = trunc i64 %i.bb to i32
  %i.bl = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.bk
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %._crit_edge, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bm = add nuw nsw i64 %.03877, 1              ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond82.not = icmp eq i64 %i.bm, 6
  br i1 %exitcond82.not, label %bb.b, label %bb.c, !llvm.loop !2378

bb.m:                                             ; preds = %.lr.ph76, %bb.n
  %i.bn = phi i32 [ %i.aw, %.lr.ph76 ], [ %i.bu, %bb.n ]
  %.075 = phi i64 [ 0, %.lr.ph76 ], [ %i.bw, %bb.n ] ; 3 uses
  %gep74 = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.075
  %i.bo = getelementptr inbounds nuw i8, ptr %gep74, i64 12
  %i.bp = trunc nuw nsw i64 %.075 to i32
  %i.bq = add nuw nsw i32 %i.bp, %i.ap
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.br = load i32, ptr %i.bo, align 4, !tbaa !82
  %i.bs = icmp eq i32 %i.br, %i.bq
  %i.bt = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 354, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_4listIS3_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.bs)
          to label %bb.n unwind label %bb.o       ; 0 uses

end_hunk_18
