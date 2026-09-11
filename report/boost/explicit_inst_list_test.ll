Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_list_test?download=true
inline.NumInlined: 875
inline.NumDeleted: 252
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5boost9container4listI5emptyvE16priv_move_assignEOS3_NS_11move_detail5bool_ILb0EEE:bb.a
  store <2 x ptr> %i.s, ptr %i.a, align 8, !tbaa !32
  store <2 x ptr> %i.t, ptr %i.e, align 8, !tbaa !32
  br i1 %.not.i24.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZN5boost9container4listI5emptyvE5clearEv.exit.i
  %i.u = load i64, ptr %1, align 8, !tbaa !26
  store i64 %i.u, ptr %0, align 8, !tbaa !26
  store i64 0, ptr %1, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN5boost9container4listI5emptyvE14priv_is_linkedENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEE(ptr noundef align 8 dead_on_return %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.i = icmp eq ptr %i.h, %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container4listI5emptyvE17insertion_functorC2ERNS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIS2_NS0_3dtl9list_hookIPvEELb0EEENS5_16list_node_traitsISB_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEENS5_13list_iteratorISI_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2) unnamed_addr #1 comdat($_ZN5boost9container4listI5emptyvE17insertion_functorC5ERNS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIS2_NS0_3dtl9list_hookIPvEELb0EEENS5_16list_node_traitsISB_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEENS5_13list_iteratorISI_Lb1EEE) align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !365
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %2, align 8, !tbaa !36
  store ptr %i.b, ptr %i.a, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container4listI5emptyvE17insertion_functorclERNS0_9base_nodeIS2_NS0_3dtl9list_hookIPvEELb0EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !369, !nonnull !370, !align !371 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22, !noalias !372 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !22, !noalias !372
  store ptr %i.c, ptr %1, align 8, !tbaa !21, !noalias !372
  store ptr %1, ptr %i.d, align 8, !tbaa !22, !noalias !372
  store ptr %1, ptr %i.e, align 8, !tbaa !21, !noalias !372
  %i.g = load i64, ptr %i.a, align 8, !tbaa !26, !noalias !372
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.a, align 8, !tbaa !26, !noalias !372
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden noundef i32 @main() local_unnamed_addr #6 {
bb.a:
  %0 = alloca %"class.boost::container::list", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  call void @_ZN5boost9container4listI5emptyvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  call void @_ZN5boost9container4listI5emptyvED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !21, !noalias !375 ; 5 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !21   ; 7 uses
  %.not.i.i40 = icmp eq ptr %i.d, null
  %i.e = icmp eq ptr %i.d, %i.b
  %i.f = or i1 %.not.i.i40, %i.e
  br i1 %i.f, label %.loopexit, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %bb.a
  %i.g = icmp eq ptr %i.c, %i.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.g, label %.split.us, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.critedge.lr.ph
  %.not24.i.i14 = icmp eq ptr %i.c, %i.b
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit
  %.pre42 = phi ptr [ %.pre43, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit ], [ %i.d, %.critedge.preheader ] ; 2 uses
  %i.i = phi ptr [ %i.ad, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit ], [ %i.d, %.critedge.preheader ] ; 6 uses
  br label %bb.c

.split.us:                                        ; preds = %.critedge.lr.ph
  %.not23.i.i = icmp eq ptr %i.a, %i.d
  %.not24.i.i = icmp eq ptr %0, %1
  %or.cond25.i.i = or i1 %.not24.i.i, %.not23.i.i
  br i1 %or.cond25.i.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.thread, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22   ; 2 uses
  store ptr %i.a, ptr %i.o, align 8, !tbaa !21
  store ptr %i.o, ptr %i.j, align 8, !tbaa !22
  store ptr %i.b, ptr %i.m, align 8, !tbaa !21
  store ptr %i.m, ptr %i.n, align 8, !tbaa !22
  store ptr %i.d, ptr %i.k, align 8, !tbaa !21
  store ptr %i.k, ptr %i.l, align 8, !tbaa !22
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.thread

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.thread: ; preds = %bb.b, %.split.us
  %i.p = load i64, ptr %1, align 8, !tbaa !26
  %i.q = load i64, ptr %0, align 8, !tbaa !26
  %i.r = add i64 %i.q, %i.p
  store i64 %i.r, ptr %0, align 8, !tbaa !26
  store i64 0, ptr %1, align 8, !tbaa !26
  br label %.loopexit

bb.c:                                             ; preds = %.critedge, %bb.c
  %.sroa.021.0 = phi ptr [ %i.s, %bb.c ], [ %i.i, %.critedge ]
  %.0 = phi i64 [ %i.t, %bb.c ], [ 0, %.critedge ]
  %i.s = load ptr, ptr %.sroa.021.0, align 8, !tbaa !21 ; 4 uses
  %i.t = add i64 %.0, 1                           ; 4 uses
  %.not = icmp eq ptr %i.s, %i.b
  br i1 %.not, label %.critedge2, label %bb.c, !llvm.loop !8

.critedge2:                                       ; preds = %bb.c
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit, label %bb.d

bb.d:                                             ; preds = %.critedge2
  %.not.i.i12 = icmp eq ptr %i.i, %i.b
  %.not23.i.i13 = icmp eq ptr %i.c, %i.i
  %or.cond.i.i = or i1 %.not23.i.i13, %.not.i.i12
  %or.cond25.i.i15 = or i1 %.not24.i.i14, %or.cond.i.i
  br i1 %or.cond25.i.i15, label %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22   ; 2 uses
  store ptr %i.c, ptr %i.y, align 8, !tbaa !21
  store ptr %i.y, ptr %i.h, align 8, !tbaa !22
  store ptr %i.s, ptr %i.w, align 8, !tbaa !21
  store ptr %i.w, ptr %i.x, align 8, !tbaa !22
  store ptr %i.i, ptr %i.u, align 8, !tbaa !21
  store ptr %i.u, ptr %i.v, align 8, !tbaa !22
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !21
  br label %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16

_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16: ; preds = %bb.e, %bb.d
  %.pre = phi ptr [ %.pre.pre, %bb.e ], [ %.pre42, %bb.d ] ; 2 uses
  %i.z = load i64, ptr %0, align 8, !tbaa !26
  %i.aa = add i64 %i.z, %i.t
  store i64 %i.aa, ptr %0, align 8, !tbaa !26
  %i.ab = load i64, ptr %1, align 8, !tbaa !26
  %i.ac = sub i64 %i.ab, %i.t
  store i64 %i.ac, ptr %1, align 8, !tbaa !26
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit: ; preds = %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16, %.critedge2
  %.pre43 = phi ptr [ %.pre, %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16 ], [ %.pre42, %.critedge2 ]
  %i.ad = phi ptr [ %.pre, %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16 ], [ %i.i, %.critedge2 ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  %i.ae = icmp eq ptr %i.ad, %i.b
  %i.af = or i1 %.not.i.i, %i.ae
  br i1 %i.af, label %.loopexit, label %.critedge

.loopexit:                                        ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit, %bb.a, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4sortINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvT_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::intrusive::list_impl", align 8 ; 14 uses
  %2 = alloca %"class.boost::intrusive::detail::array_initializer", align 16 ; 198 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 26 uses
  store i64 0, ptr %1, align 8
  store ptr %i.e, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %2, align 16
  store ptr %i.g, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.g, ptr %i.h, align 16, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store i64 0, ptr %i.i, align 8
  store ptr %i.j, ptr %i.j, align 16, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.j, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  store i64 0, ptr %i.l, align 16
  store ptr %i.m, ptr %i.m, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.m, ptr %i.n, align 16, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  store i64 0, ptr %i.o, align 8
  store ptr %i.p, ptr %i.p, align 16, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.p, ptr %i.q, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  store i64 0, ptr %i.r, align 16
  store ptr %i.s, ptr %i.s, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 112
  store ptr %i.s, ptr %i.t, align 16, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  store i64 0, ptr %i.u, align 8
  store ptr %i.v, ptr %i.v, align 16, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 136
  store ptr %i.v, ptr %i.w, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 3 uses
  store i64 0, ptr %i.x, align 16
  store ptr %i.y, ptr %i.y, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 160
  store ptr %i.y, ptr %i.z, align 16, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 3 uses
  store i64 0, ptr %i.aa, align 8
  store ptr %i.ab, ptr %i.ab, align 16, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 184
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 3 uses
  store i64 0, ptr %i.ad, align 16
  store ptr %i.ae, ptr %i.ae, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 208
  store ptr %i.ae, ptr %i.af, align 16, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 3 uses
  store i64 0, ptr %i.ag, align 8
  store ptr %i.ah, ptr %i.ah, align 16, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 232
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 248 ; 3 uses
  store i64 0, ptr %i.aj, align 16
  store ptr %i.ak, ptr %i.ak, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 256
  store ptr %i.ak, ptr %i.al, align 16, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 3 uses
  store i64 0, ptr %i.am, align 8
  store ptr %i.an, ptr %i.an, align 16, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 280
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 3 uses
  store i64 0, ptr %i.ap, align 16
  store ptr %i.aq, ptr %i.aq, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 304
  store ptr %i.aq, ptr %i.ar, align 16, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 3 uses
  store i64 0, ptr %i.as, align 8
  store ptr %i.at, ptr %i.at, align 16, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 328
  store ptr %i.at, ptr %i.au, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 344 ; 3 uses
  store i64 0, ptr %i.av, align 16
  store ptr %i.aw, ptr %i.aw, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 352
  store ptr %i.aw, ptr %i.ax, align 16, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 3 uses
  store i64 0, ptr %i.ay, align 8
  store ptr %i.az, ptr %i.az, align 16, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 376
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !22
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 392 ; 3 uses
  store i64 0, ptr %i.bb, align 16
  store ptr %i.bc, ptr %i.bc, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 400
  store ptr %i.bc, ptr %i.bd, align 16, !tbaa !22
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 416 ; 3 uses
  store i64 0, ptr %i.be, align 8
  store ptr %i.bf, ptr %i.bf, align 16, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 424
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 432
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 440 ; 3 uses
  store i64 0, ptr %i.bh, align 16
  store ptr %i.bi, ptr %i.bi, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 448
  store ptr %i.bi, ptr %i.bj, align 16, !tbaa !22
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 456
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 464 ; 3 uses
  store i64 0, ptr %i.bk, align 8
  store ptr %i.bl, ptr %i.bl, align 16, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 472
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !22
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 480
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 488 ; 3 uses
  store i64 0, ptr %i.bn, align 16
  store ptr %i.bo, ptr %i.bo, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 496
  store ptr %i.bo, ptr %i.bp, align 16, !tbaa !22
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 504
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 512 ; 3 uses
  store i64 0, ptr %i.bq, align 8
  store ptr %i.br, ptr %i.br, align 16, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 520
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 528
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 536 ; 3 uses
  store i64 0, ptr %i.bt, align 16
  store ptr %i.bu, ptr %i.bu, align 8, !tbaa !21
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 544
  store ptr %i.bu, ptr %i.bv, align 16, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 552
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  store i64 0, ptr %i.bw, align 8
  store ptr %i.bx, ptr %i.bx, align 16, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 568
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !22
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 584 ; 3 uses
  store i64 0, ptr %i.bz, align 16
  store ptr %i.ca, ptr %i.ca, align 8, !tbaa !21
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 592
  store ptr %i.ca, ptr %i.cb, align 16, !tbaa !22
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 600
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 608 ; 3 uses
  store i64 0, ptr %i.cc, align 8
  store ptr %i.cd, ptr %i.cd, align 16, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 616
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !22
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 624
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 632 ; 3 uses
  store i64 0, ptr %i.cf, align 16
  store ptr %i.cg, ptr %i.cg, align 8, !tbaa !21
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 640
  store ptr %i.cg, ptr %i.ch, align 16, !tbaa !22
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 656 ; 3 uses
  store i64 0, ptr %i.ci, align 8
  store ptr %i.cj, ptr %i.cj, align 16, !tbaa !21
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 664
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !22
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 680 ; 3 uses
  store i64 0, ptr %i.cl, align 16
  store ptr %i.cm, ptr %i.cm, align 8, !tbaa !21
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 688
  store ptr %i.cm, ptr %i.cn, align 16, !tbaa !22
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 696
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 704 ; 3 uses
  store i64 0, ptr %i.co, align 8
  store ptr %i.cp, ptr %i.cp, align 16, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 712
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !22
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 720
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 728 ; 3 uses
  store i64 0, ptr %i.cr, align 16
  store ptr %i.cs, ptr %i.cs, align 8, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 736
end_hunk_0
begin_hunk_1_@_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4sortINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvT_:bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 776 ; 3 uses
  store i64 0, ptr %i.cx, align 16
  store ptr %i.cy, ptr %i.cy, align 8, !tbaa !21
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 784
  store ptr %i.cy, ptr %i.cz, align 16, !tbaa !22
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 792
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 800 ; 3 uses
  store i64 0, ptr %i.da, align 8
  store ptr %i.db, ptr %i.db, align 16, !tbaa !21
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 808
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !22
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 816
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 824 ; 3 uses
  store i64 0, ptr %i.dd, align 16
  store ptr %i.de, ptr %i.de, align 8, !tbaa !21
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 832
  store ptr %i.de, ptr %i.df, align 16, !tbaa !22
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 840
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 848 ; 3 uses
  store i64 0, ptr %i.dg, align 8
  store ptr %i.dh, ptr %i.dh, align 16, !tbaa !21
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 856
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !22
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 864
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 872 ; 3 uses
  store i64 0, ptr %i.dj, align 16
  store ptr %i.dk, ptr %i.dk, align 8, !tbaa !21
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 880
  store ptr %i.dk, ptr %i.dl, align 16, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 888
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 896 ; 3 uses
  store i64 0, ptr %i.dm, align 8
  store ptr %i.dn, ptr %i.dn, align 16, !tbaa !21
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 904
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !22
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 920 ; 3 uses
  store i64 0, ptr %i.dp, align 16
  store ptr %i.dq, ptr %i.dq, align 8, !tbaa !21
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 928
  store ptr %i.dq, ptr %i.dr, align 16, !tbaa !22
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 936
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 944 ; 3 uses
  store i64 0, ptr %i.ds, align 8
  store ptr %i.dt, ptr %i.dt, align 16, !tbaa !21
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 952
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !22
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 960
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 968 ; 3 uses
  store i64 0, ptr %i.dv, align 16
  store ptr %i.dw, ptr %i.dw, align 8, !tbaa !21
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 976
  store ptr %i.dw, ptr %i.dx, align 16, !tbaa !22
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 984
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 992 ; 3 uses
  store i64 0, ptr %i.dy, align 8
  store ptr %i.dz, ptr %i.dz, align 16, !tbaa !21
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 1000
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !22
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 1008
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 1016 ; 3 uses
  store i64 0, ptr %i.eb, align 16
  store ptr %i.ec, ptr %i.ec, align 8, !tbaa !21
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 1024
  store ptr %i.ec, ptr %i.ed, align 16, !tbaa !22
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 1040 ; 3 uses
  store i64 0, ptr %i.ee, align 8
  store ptr %i.ef, ptr %i.ef, align 16, !tbaa !21
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 1048
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !22
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 1056
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 1064 ; 3 uses
  store i64 0, ptr %i.eh, align 16
  store ptr %i.ei, ptr %i.ei, align 8, !tbaa !21
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 1072
  store ptr %i.ei, ptr %i.ej, align 16, !tbaa !22
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 1080
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 1088 ; 3 uses
  store i64 0, ptr %i.ek, align 8
  store ptr %i.el, ptr %i.el, align 16, !tbaa !21
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 1096
  store ptr %i.el, ptr %i.em, align 8, !tbaa !22
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 1104
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 1112 ; 3 uses
  store i64 0, ptr %i.en, align 16
  store ptr %i.eo, ptr %i.eo, align 8, !tbaa !21
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 1120
  store ptr %i.eo, ptr %i.ep, align 16, !tbaa !22
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 1128
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 1136 ; 3 uses
  store i64 0, ptr %i.eq, align 8
  store ptr %i.er, ptr %i.er, align 16, !tbaa !21
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 1144
  store ptr %i.er, ptr %i.es, align 8, !tbaa !22
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 1152
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 1160 ; 3 uses
  store i64 0, ptr %i.et, align 16
  store ptr %i.eu, ptr %i.eu, align 8, !tbaa !21
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 1168
  store ptr %i.eu, ptr %i.ev, align 16, !tbaa !22
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 1176
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 1184 ; 3 uses
  store i64 0, ptr %i.ew, align 8
  store ptr %i.ex, ptr %i.ex, align 16, !tbaa !21
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 1192
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !22
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 1200
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 1208 ; 3 uses
  store i64 0, ptr %i.ez, align 16
  store ptr %i.fa, ptr %i.fa, align 8, !tbaa !21
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 1216
  store ptr %i.fa, ptr %i.fb, align 16, !tbaa !22
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 1224
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 1232 ; 3 uses
  store i64 0, ptr %i.fc, align 8
  store ptr %i.fd, ptr %i.fd, align 16, !tbaa !21
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 1240
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !22
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 1248
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 1256 ; 3 uses
  store i64 0, ptr %i.ff, align 16
  store ptr %i.fg, ptr %i.fg, align 8, !tbaa !21
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 1264
  store ptr %i.fg, ptr %i.fh, align 16, !tbaa !22
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 1272
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 1280 ; 3 uses
  store i64 0, ptr %i.fi, align 8
  store ptr %i.fj, ptr %i.fj, align 16, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 1288
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !22
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 1296
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 1304 ; 3 uses
  store i64 0, ptr %i.fl, align 16
  store ptr %i.fm, ptr %i.fm, align 8, !tbaa !21
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 1312
  store ptr %i.fm, ptr %i.fn, align 16, !tbaa !22
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 1320
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 1328 ; 3 uses
  store i64 0, ptr %i.fo, align 8
  store ptr %i.fp, ptr %i.fp, align 16, !tbaa !21
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 1336
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !22
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 1344
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 1352 ; 3 uses
  store i64 0, ptr %i.fr, align 16
  store ptr %i.fs, ptr %i.fs, align 8, !tbaa !21
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 1360
  store ptr %i.fs, ptr %i.ft, align 16, !tbaa !22
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 1368
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 1376 ; 3 uses
  store i64 0, ptr %i.fu, align 8
  store ptr %i.fv, ptr %i.fv, align 16, !tbaa !21
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 1384
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !22
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 1392
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 1400 ; 3 uses
  store i64 0, ptr %i.fx, align 16
  store ptr %i.fy, ptr %i.fy, align 8, !tbaa !21
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 1408
  store ptr %i.fy, ptr %i.fz, align 16, !tbaa !22
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 1416
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 1424 ; 3 uses
  store i64 0, ptr %i.ga, align 8
  store ptr %i.gb, ptr %i.gb, align 16, !tbaa !21
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 1432
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !22
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 1440
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 1448 ; 3 uses
  store i64 0, ptr %i.gd, align 16
  store ptr %i.ge, ptr %i.ge, align 8, !tbaa !21
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 1456
  store ptr %i.ge, ptr %i.gf, align 16, !tbaa !22
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 1464
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 1472 ; 3 uses
  store i64 0, ptr %i.gg, align 8
  store ptr %i.gh, ptr %i.gh, align 16, !tbaa !21
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 1480
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !22
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 1488
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 1496 ; 3 uses
  store i64 0, ptr %i.gj, align 16
  store ptr %i.gk, ptr %i.gk, align 8, !tbaa !21
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 1504
  store ptr %i.gk, ptr %i.gl, align 16, !tbaa !22
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 1512
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 1520 ; 3 uses
  store i64 0, ptr %i.gm, align 8
  store ptr %i.gn, ptr %i.gn, align 16, !tbaa !21
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 1528
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !22
  %i.gp = load ptr, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  %.not.i.i54 = icmp eq ptr %i.gp, null
  %i.gq = icmp eq ptr %i.gp, %i.a
  %i.gr = or i1 %.not.i.i54, %i.gq
  br i1 %i.gr, label %.preheader.._crit_edge_crit_edge, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.b
  %.promoted58 = load i64, ptr %0, align 8, !tbaa !26
  %i.gs = insertelement <2 x ptr> poison, ptr %i.e, i64 0
  %i.gt = shufflevector <2 x ptr> %i.gs, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.c

.preheader:                                       ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit38
  store i64 %i.he, ptr %0, align 8, !tbaa !26
  %i.gu = icmp samesign ugt i32 %spec.select, 1
  br i1 %i.gu, label %.lr.ph61.preheader, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %bb.b, %.preheader
  %.018.lcssa94 = phi i32 [ %spec.select, %.preheader ], [ 0, %bb.b ]
  %.pre = zext nneg i32 %.018.lcssa94 to i64
  br label %._crit_edge

.lr.ph61.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %spec.select to i64 ; 2 uses
  br label %.lr.ph61

bb.c:                                             ; preds = %.lr.ph56, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit38
  %i.gv = phi i64 [ %.promoted58, %.lr.ph56 ], [ %i.he, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit38 ]
  %i.gw = phi ptr [ %i.gp, %.lr.ph56 ], [ %i.jw, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit38 ] ; 6 uses
  %.01855 = phi i32 [ 0, %.lr.ph56 ], [ %spec.select, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit38 ] ; 5 uses
  %i.gx = load ptr, ptr %i.e, align 8, !tbaa !21, !noalias !381 ; 4 uses
  %i.gy = load ptr, ptr %i.gw, align 8, !tbaa !21 ; 3 uses
  %.not.i.i25 = icmp eq ptr %i.gy, %i.gx
  %.not21.i.i = icmp eq ptr %i.gw, %i.gx
  %or.cond.i.i = or i1 %.not21.i.i, %.not.i.i25
  br i1 %or.cond.i.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !22 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !22 ; 2 uses
  store ptr %i.gw, ptr %i.ha, align 8, !tbaa !21
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !22
  store ptr %i.gx, ptr %i.gw, align 8, !tbaa !21
  store ptr %i.gw, ptr %i.gz, align 8, !tbaa !22
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !22
  store ptr %i.gy, ptr %i.hc, align 8, !tbaa !21
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_.exit

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_.exit: ; preds = %bb.c, %bb.d
  %i.he = add i64 %i.gv, -1                       ; 2 uses
  %3 = load i64, ptr %1, align 8, !tbaa !26
  %i.hf = add i64 %3, 1                           ; 2 uses
  store i64 %i.hf, ptr %1, align 8, !tbaa !26
  %.not62 = icmp eq i32 %.01855, 0
  br i1 %.not62, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_.exit
  %i.hg = zext nneg i32 %.01855 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit
  %.promoted = phi i64 [ %i.hf, %.lr.ph.preheader ], [ %i.iz, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv ; 8 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 13 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !21
  %.fr = freeze ptr %i.hj                         ; 6 uses
  %.not.i.i26 = icmp eq ptr %.fr, null
  %i.hk = icmp eq ptr %.fr, %i.hi
  %i.hl = or i1 %.not.i.i26, %i.hk
  br i1 %i.hl, label %.critedge.loopexit.split.loop.exit103, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.hm = load ptr, ptr %i.e, align 8, !tbaa !21  ; 6 uses
  %.not.i.i40.i = icmp eq ptr %i.hm, null
  %i.hn = icmp eq ptr %i.hm, %i.e
  %i.ho = or i1 %.not.i.i40.i, %i.hn
  br i1 %i.ho, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_.exit, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %bb.e
  %i.hp = getelementptr inbounds nuw i8, ptr %.fr, i64 8 ; 2 uses
  %.not24.i.i14.i = icmp eq ptr %.fr, %i.e
  br i1 %.not24.i.i14.i, label %.critedge.i.us.preheader, label %.critedge.i

.critedge.i.us.preheader:                         ; preds = %.critedge.preheader.i
  %.lcssa134.promoted = load i64, ptr %i.hh, align 8, !tbaa !26
  br label %.critedge.i.us.outer

.critedge.i.us.outer:                             ; preds = %.critedge.i.us.preheader, %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i.us
  %i.hq = phi i64 [ %.lcssa134.promoted, %.critedge.i.us.preheader ], [ %i.ht, %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i.us ]
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.outer, %.critedge2.i.us
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.critedge.i.us
  %.sroa.021.0.i.us = phi ptr [ %i.hr, %bb.f ], [ %i.hm, %.critedge.i.us ]
  %.0.i.us = phi i64 [ %i.hs, %bb.f ], [ 0, %.critedge.i.us ]
  %i.hr = load ptr, ptr %.sroa.021.0.i.us, align 8, !tbaa !21 ; 2 uses
  %i.hs = add i64 %.0.i.us, 1                     ; 3 uses
  %.not.i.us = icmp eq ptr %i.hr, %i.e
  br i1 %.not.i.us, label %.critedge2.i.us, label %bb.f, !llvm.loop !8

.critedge2.i.us:                                  ; preds = %bb.f
  %.not.i.i27.us = icmp eq i64 %i.hs, 0
  br i1 %.not.i.i27.us, label %.critedge.i.us, label %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i.us

_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i.us: ; preds = %.critedge2.i.us
  %i.ht = add i64 %i.hq, %i.hs
  br label %.critedge.i.us.outer

.critedge.i:                                      ; preds = %.critedge.preheader.i, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i
  %i.hu = phi i64 [ %i.ig, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i ], [ %.promoted, %.critedge.preheader.i ] ; 2 uses
  %.pre42.i = phi ptr [ %.pre43.i, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i ], [ %i.hm, %.critedge.preheader.i ] ; 2 uses
  %i.hv = phi ptr [ %i.ih, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i ], [ %i.hm, %.critedge.preheader.i ] ; 6 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.critedge.i
  %.sroa.021.0.i = phi ptr [ %i.hw, %bb.g ], [ %i.hv, %.critedge.i ]
  %.0.i = phi i64 [ %i.hx, %bb.g ], [ 0, %.critedge.i ]
  %i.hw = load ptr, ptr %.sroa.021.0.i, align 8, !tbaa !21 ; 4 uses
  %i.hx = add i64 %.0.i, 1                        ; 4 uses
  %.not.i = icmp eq ptr %i.hw, %i.e
  br i1 %.not.i, label %.critedge2.i, label %bb.g, !llvm.loop !8

.critedge2.i:                                     ; preds = %bb.g
  %.not.i.i27 = icmp eq i64 %i.hx, 0
  br i1 %.not.i.i27, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i, label %bb.h

bb.h:                                             ; preds = %.critedge2.i
  %.not.i.i12.i = icmp eq ptr %i.hv, %i.e
  %.not23.i.i13.i = icmp eq ptr %.fr, %i.hv
  %or.cond.i.i.i = or i1 %.not23.i.i13.i, %.not.i.i12.i
  br i1 %or.cond.i.i.i, label %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.hy = load ptr, ptr %i.hp, align 8, !tbaa !22 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !22 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !22 ; 2 uses
  store ptr %.fr, ptr %i.ic, align 8, !tbaa !21
  store ptr %i.ic, ptr %i.hp, align 8, !tbaa !22
  store ptr %i.hw, ptr %i.ia, align 8, !tbaa !21
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !22
  store ptr %i.hv, ptr %i.hy, align 8, !tbaa !21
  store ptr %i.hy, ptr %i.hz, align 8, !tbaa !22
  %.pre.pre.i = load ptr, ptr %i.e, align 8, !tbaa !21
  br label %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i

_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i: ; preds = %bb.i, %bb.h
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.i ], [ %.pre42.i, %bb.h ] ; 2 uses
  %i.id = load i64, ptr %i.hh, align 8, !tbaa !26
  %i.ie = add i64 %i.id, %i.hx
  store i64 %i.ie, ptr %i.hh, align 8, !tbaa !26
  %i.if = sub i64 %i.hu, %i.hx                    ; 2 uses
  store i64 %i.if, ptr %1, align 8, !tbaa !26
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i: ; preds = %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i, %.critedge2.i
  %i.ig = phi i64 [ %i.if, %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i ], [ %i.hu, %.critedge2.i ]
  %.pre43.i = phi ptr [ %.pre.i, %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i ], [ %.pre42.i, %.critedge2.i ] ; 2 uses
  %i.ih = phi ptr [ %.pre.i, %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE8transferEPNS0_9list_nodeIS3_EES8_S8_.exit.i16.i ], [ %i.hv, %.critedge2.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ih, null
  %i.ii = icmp eq ptr %i.ih, %i.e
  %i.ij = or i1 %.not.i.i.i, %i.ii
  br i1 %i.ij, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_.exit, label %.critedge.i

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_.exit: ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i, %bb.e
  %i.ik = phi ptr [ %i.hm, %bb.e ], [ %.pre43.i, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_m.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.il = icmp eq ptr %i.hh, %1
  br i1 %i.il, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_.exit
  %.not.i.i.i28 = icmp eq ptr %i.ik, null         ; 2 uses
  %i.im = load ptr, ptr %i.hi, align 8, !tbaa !21 ; 3 uses
  %.not.i24.i.i = icmp eq ptr %i.im, null         ; 2 uses
  br i1 %.not.i.i.i28, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store <2 x ptr> %i.gt, ptr %i.e, align 8, !tbaa !32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre.i.i = phi ptr [ %i.e, %bb.k ], [ %i.ik, %bb.j ]
  %i.in = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  br i1 %.not.i24.i.i, label %bb.m, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.l
  %.pre26.i.i = load ptr, ptr %i.in, align 8, !tbaa !22 ; 2 uses
  %.phi.trans.insert27.i.i = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %.pre28.i.i = load ptr, ptr %.phi.trans.insert27.i.i, align 8, !tbaa !22
  %.pre29.i.i = load ptr, ptr %.pre26.i.i, align 8, !tbaa !21
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.hi, ptr %i.hi, align 8, !tbaa !21
  store ptr %i.hi, ptr %i.in, align 8, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %i.io = phi ptr [ %i.hi, %bb.m ], [ %.pre29.i.i, %._crit_edge.i.i ]
  %i.ip = phi ptr [ %i.hi, %bb.m ], [ %.pre28.i.i, %._crit_edge.i.i ]
  %i.iq = phi ptr [ %i.hi, %bb.m ], [ %.pre26.i.i, %._crit_edge.i.i ]
  %i.ir = phi ptr [ %i.hi, %bb.m ], [ %i.im, %._crit_edge.i.i ]
  %i.is = load ptr, ptr %i.f, align 8, !tbaa !22  ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !22
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store ptr %i.ip, ptr %i.it, align 8, !tbaa !22
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !22
  %i.iw = load ptr, ptr %i.is, align 8, !tbaa !21
  store ptr %i.io, ptr %i.is, align 8, !tbaa !21
  store ptr %i.iw, ptr %i.iq, align 8, !tbaa !21
  %i.ix = load <2 x ptr>, ptr %i.hi, align 8, !tbaa !32
  %i.iy = load <2 x ptr>, ptr %i.e, align 8, !tbaa !32
  store <2 x ptr> %i.ix, ptr %i.e, align 8, !tbaa !32
  store <2 x ptr> %i.iy, ptr %i.hi, align 8, !tbaa !32
  br i1 %.not.i.i.i28, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i8 0, i64 16, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %.not.i24.i.i, label %bb.q, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit

bb.q:                                             ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit: ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_.exit, %bb.p, %bb.q
  %4 = load i64, ptr %1, align 8, !tbaa !26
  %i.iz = load i64, ptr %i.hh, align 8, !tbaa !26 ; 2 uses
  store i64 %i.iz, ptr %1, align 8, !tbaa !26
  store i64 %4, ptr %i.hh, align 8, !tbaa !26
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.hg
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !378

.critedge.loopexit.split.loop.exit103:            ; preds = %.lr.ph
  %i.ja = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit, %.critedge.loopexit.split.loop.exit103, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_.exit
  %.017.lcssa = phi i32 [ 0, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_.exit ], [ %i.ja, %.critedge.loopexit.split.loop.exit103 ], [ %.01855, %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit ] ; 2 uses
  %i.jb = zext nneg i32 %.017.lcssa to i64
  %i.jc = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.jb ; 5 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 11 uses
  %i.je = icmp eq ptr %i.jc, %1
  br i1 %i.je, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit38, label %bb.r

bb.r:                                             ; preds = %.critedge
  %i.jf = load ptr, ptr %i.e, align 8, !tbaa !21  ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.jf, null         ; 2 uses
  %i.jg = load ptr, ptr %i.jd, align 8, !tbaa !21 ; 3 uses
  %.not.i24.i.i30 = icmp eq ptr %i.jg, null       ; 2 uses
  br i1 %.not.i.i.i29, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %i.e, ptr %i.e, align 8, !tbaa !21
  store ptr %i.e, ptr %i.f, align 8, !tbaa !22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pre.i.i37 = phi ptr [ %i.e, %bb.s ], [ %i.jf, %bb.r ]
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 2 uses
  br i1 %.not.i24.i.i30, label %bb.u, label %._crit_edge.i.i31

._crit_edge.i.i31:                                ; preds = %bb.t
  %.pre26.i.i33 = load ptr, ptr %i.jh, align 8, !tbaa !22 ; 2 uses
  %.phi.trans.insert27.i.i34 = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %.pre28.i.i35 = load ptr, ptr %.phi.trans.insert27.i.i34, align 8, !tbaa !22
  %.pre29.i.i36 = load ptr, ptr %.pre26.i.i33, align 8, !tbaa !21
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.jd, ptr %i.jd, align 8, !tbaa !21
  store ptr %i.jd, ptr %i.jh, align 8, !tbaa !22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i31
  %i.ji = phi ptr [ %i.jd, %bb.u ], [ %.pre29.i.i36, %._crit_edge.i.i31 ]
  %i.jj = phi ptr [ %i.jd, %bb.u ], [ %.pre28.i.i35, %._crit_edge.i.i31 ]
  %i.jk = phi ptr [ %i.jd, %bb.u ], [ %.pre26.i.i33, %._crit_edge.i.i31 ]
  %i.jl = phi ptr [ %i.jd, %bb.u ], [ %i.jg, %._crit_edge.i.i31 ]
  %i.jm = load ptr, ptr %i.f, align 8, !tbaa !22  ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.pre.i.i37, i64 8 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !22
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store ptr %i.jj, ptr %i.jn, align 8, !tbaa !22
  store ptr %i.jo, ptr %i.jp, align 8, !tbaa !22
  %i.jq = load ptr, ptr %i.jm, align 8, !tbaa !21
  store ptr %i.ji, ptr %i.jm, align 8, !tbaa !21
  store ptr %i.jq, ptr %i.jk, align 8, !tbaa !21
  %i.jr = load <2 x ptr>, ptr %i.jd, align 8, !tbaa !32
  %i.js = load <2 x ptr>, ptr %i.e, align 8, !tbaa !32
  store <2 x ptr> %i.jr, ptr %i.e, align 8, !tbaa !32
  store <2 x ptr> %i.js, ptr %i.jd, align 8, !tbaa !32
  br i1 %.not.i.i.i29, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jd, i8 0, i64 16, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %.not.i24.i.i30, label %bb.y, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit38

bb.y:                                             ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit38

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit38: ; preds = %.critedge, %bb.x, %bb.y
  %5 = load i64, ptr %1, align 8, !tbaa !26
  %i.jt = load i64, ptr %i.jc, align 8, !tbaa !26
  store i64 %i.jt, ptr %1, align 8, !tbaa !26
  store i64 %5, ptr %i.jc, align 8, !tbaa !26
  %i.ju = icmp eq i32 %.017.lcssa, %.01855
  %i.jv = zext i1 %i.ju to i32
  %spec.select = add nuw nsw i32 %.01855, %i.jv   ; 4 uses
  %i.jw = load ptr, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  %.not.i.i = icmp eq ptr %i.jw, null
  %i.jx = icmp eq ptr %i.jw, %i.a
  %i.jy = or i1 %.not.i.i, %i.jx
  br i1 %i.jy, label %.preheader, label %bb.c, !llvm.loop !379

._crit_edge:                                      ; preds = %.lr.ph61, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %wide.trip.count, %.lr.ph61 ]
  %i.jz = getelementptr [24 x i8], ptr %2, i64 %.pre-phi ; 3 uses
  %i.ka = getelementptr i8, ptr %i.jz, i64 -24    ; 2 uses
  %i.kb = getelementptr i8, ptr %i.jz, i64 -16    ; 9 uses
  %i.kc = icmp eq ptr %i.ka, %0
  br i1 %i.kc, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit48, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  %i.kd = load ptr, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.kd, null
  %i.ke = load ptr, ptr %i.kb, align 8, !tbaa !21 ; 3 uses
  %.not.i24.i.i40 = icmp eq ptr %i.ke, null       ; 2 uses
  br i1 %.not.i.i.i39, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr %i.a, ptr %i.a, align 8, !tbaa !21
  store ptr %i.a, ptr %i.c, align 8, !tbaa !22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pre.i.i47 = phi ptr [ %i.a, %bb.aa ], [ %i.kd, %bb.z ]
  %i.kf = getelementptr i8, ptr %i.jz, i64 -8     ; 2 uses
  br i1 %.not.i24.i.i40, label %bb.ac, label %._crit_edge.i.i41

._crit_edge.i.i41:                                ; preds = %bb.ab
  %.pre26.i.i43 = load ptr, ptr %i.kf, align 8, !tbaa !22 ; 2 uses
  %.phi.trans.insert27.i.i44 = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %.pre28.i.i45 = load ptr, ptr %.phi.trans.insert27.i.i44, align 8, !tbaa !22
  %.pre29.i.i46 = load ptr, ptr %.pre26.i.i43, align 8, !tbaa !21
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.kb, ptr %i.kb, align 8, !tbaa !21
  store ptr %i.kb, ptr %i.kf, align 8, !tbaa !22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge.i.i41
  %i.kg = phi ptr [ %i.kb, %bb.ac ], [ %.pre29.i.i46, %._crit_edge.i.i41 ]
  %i.kh = phi ptr [ %i.kb, %bb.ac ], [ %.pre28.i.i45, %._crit_edge.i.i41 ]
  %i.ki = phi ptr [ %i.kb, %bb.ac ], [ %.pre26.i.i43, %._crit_edge.i.i41 ]
  %i.kj = phi ptr [ %i.kb, %bb.ac ], [ %i.ke, %._crit_edge.i.i41 ]
  %i.kk = load ptr, ptr %i.c, align 8, !tbaa !22  ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.pre.i.i47, i64 8 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !22
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store ptr %i.kh, ptr %i.kl, align 8, !tbaa !22
  store ptr %i.km, ptr %i.kn, align 8, !tbaa !22
  %i.ko = load ptr, ptr %i.kk, align 8, !tbaa !21
  store ptr %i.kg, ptr %i.kk, align 8, !tbaa !21
  store ptr %i.ko, ptr %i.ki, align 8, !tbaa !21
  %i.kp = load <2 x ptr>, ptr %i.kb, align 8, !tbaa !32
  store <2 x ptr> %i.kp, ptr %i.a, align 8, !tbaa !32
  br i1 %.not.i24.i.i40, label %bb.ae, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit48

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit48

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit48: ; preds = %._crit_edge, %bb.ad, %bb.ae
  %i.kq = load i64, ptr %i.ka, align 8, !tbaa !26
  store i64 %i.kq, ptr %0, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.af

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %.lr.ph61
  %indvars.iv68 = phi i64 [ 1, %.lr.ph61.preheader ], [ %indvars.iv.next69, %.lr.ph61 ] ; 2 uses
  %i.kr = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv68 ; 2 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 -24
  call void @_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5mergeINS3_21value_to_node_compareISA_NS0_10value_lessIS5_EEbEEEEvRSG_T_(ptr noundef nonnull align 8 dereferenceable(24) %i.kr, ptr noundef nonnull align 8 dereferenceable(24) %i.ks)
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next69, %wide.trip.count
  br i1 %exitcond71.not, label %._crit_edge, label %.lr.ph61, !llvm.loop !380

bb.af:                                            ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE4swapERSG_.exit48, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { allocsize(0) }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !23}
!1 = distinct !{!1, !23}
!2 = distinct !{!2, !23}
!3 = distinct !{!3, !23}
!4 = distinct !{!4, !23}
!5 = distinct !{!5, !23}
!6 = distinct !{!6, !23}
!7 = distinct !{!7, !23}
!8 = distinct !{!8, !23}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 _ZTSN5boost9intrusive9list_nodeIPvEE", !18, i64 0}
!20 = !{!"_ZTSN5boost9intrusive9list_nodeIPvEE", !19, i64 0, !19, i64 8}
!21 = !{!20, !19, i64 0}
!22 = !{!20, !19, i64 8}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"long", !14, i64 0}
!25 = !{!"_ZTSN5boost9intrusive6detail11size_holderILb1EmvEE", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{!"_ZTSN5boost9intrusive17iiterator_membersIPNS0_9list_nodeIPvEEPKNS0_8bhtraitsINS_9container9base_nodeI5emptyNS7_3dtl9list_hookIS3_EELb0EEENS0_16list_node_traitsIS3_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEE", !19, i64 0}
!29 = !{!"_ZTSN5boost9intrusive13list_iteratorINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEE", !28, i64 0}
!30 = !{!29, !19, i64 0}
!31 = !{!28, !19, i64 0}
!32 = !{!19, !19, i64 0}
!33 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!34 = !{!"p1 _ZTSN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvEE", !18, i64 0}
!35 = !{!"_ZTSN5boost9intrusive13list_iteratorINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb1EEE", !28, i64 0}
!36 = !{!35, !19, i64 0}
!37 = distinct !{!37, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv"}
!38 = distinct !{!38, !37, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv: argument 0"}
!39 = !{!38}
!40 = distinct !{!40, !27}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !"_ZN5boost9container4listI5emptyvE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEESK_"}
!43 = distinct !{!43, !42, !"_ZN5boost9container4listI5emptyvE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEESK_: argument 0"}
!44 = distinct !{!44, !"_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI5emptyEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEE11erase_rangeERKNS6_13list_iteratorISI_Lb0EEESO_NS_11move_detail17integral_constantIjLj1EEE"}
!45 = distinct !{!45, !44, !"_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI5emptyEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEE11erase_rangeERKNS6_13list_iteratorISI_Lb0EEESO_NS_11move_detail17integral_constantIjLj1EEE: argument 0"}
!46 = distinct !{!46, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE17erase_and_disposeINS6_24allocator_node_destroyerINS3_13new_allocatorISA_EEEEEENS0_13list_iteratorISF_Lb0EEENSM_ISF_Lb1EEESO_T_"}
!47 = distinct !{!47, !46, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE17erase_and_disposeINS6_24allocator_node_destroyerINS3_13new_allocatorISA_EEEEEENS0_13list_iteratorISF_Lb0EEENSM_ISF_Lb1EEESO_T_: argument 0"}
!48 = distinct !{!48, !"_ZN5boost9container4listI5emptyvE6insertINS0_29value_init_construct_iteratorIS2_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS8_ISM_Lb1EEET_SP_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISP_mEE5valueoosr3dtl17is_input_iteratorISP_EE5valueL_ZNSQ_7is_sameINSQ_17integral_constantIjLj1EEESU_E5valueEEENSQ_13enable_if_natEE4typeE"}
!49 = distinct !{!49, !48, !"_ZN5boost9container4listI5emptyvE6insertINS0_29value_init_construct_iteratorIS2_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS8_ISM_Lb1EEET_SP_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISP_mEE5valueoosr3dtl17is_input_iteratorISP_EE5valueL_ZNSQ_7is_sameINSQ_17integral_constantIjLj1EEESU_E5valueEEENSQ_13enable_if_natEE4typeE: argument 0"}
!50 = distinct !{!50, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6insertENS0_13list_iteratorISF_Lb1EEERSA_"}
!51 = distinct !{!51, !50, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6insertENS0_13list_iteratorISF_Lb1EEERSA_: argument 0"}
!52 = distinct !{!52, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6insertENS0_13list_iteratorISF_Lb1EEERSA_"}
!53 = distinct !{!53, !52, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6insertENS0_13list_iteratorISF_Lb1EEERSA_: argument 0"}
!54 = distinct !{!54, !23}
!55 = !{!47, !45, !43}
!56 = !{!49}
!57 = !{!51, !49}
!58 = !{!53, !49}
!59 = distinct !{!59, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv"}
!60 = distinct !{!60, !59, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv: argument 0"}
!61 = !{!60}
!62 = distinct !{!62, !"_ZN5boost9container4listI5emptyvE6insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEmRKS2_"}
!63 = distinct !{!63, !62, !"_ZN5boost9container4listI5emptyvE6insertENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIS2_NS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEmRKS2_: argument 0"}
!64 = distinct !{!64, !"_ZN5boost9container4listI5emptyvE6insertINS0_17constant_iteratorIS2_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS8_ISM_Lb1EEET_SP_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISP_mEE5valueoosr3dtl17is_input_iteratorISP_EE5valueL_ZNSQ_7is_sameINSQ_17integral_constantIjLj1EEESU_E5valueEEENSQ_13enable_if_natEE4typeE"}
!65 = distinct !{!65, !64, !"_ZN5boost9container4listI5emptyvE6insertINS0_17constant_iteratorIS2_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS8_ISM_Lb1EEET_SP_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISP_mEE5valueoosr3dtl17is_input_iteratorISP_EE5valueL_ZNSQ_7is_sameINSQ_17integral_constantIjLj1EEESU_E5valueEEENSQ_13enable_if_natEE4typeE: argument 0"}
!66 = distinct !{!66, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6insertENS0_13list_iteratorISF_Lb1EEERSA_"}
!67 = distinct !{!67, !66, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6insertENS0_13list_iteratorISF_Lb1EEERSA_: argument 0"}
!68 = distinct !{!68, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6insertENS0_13list_iteratorISF_Lb1EEERSA_"}
!69 = distinct !{!69, !68, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6insertENS0_13list_iteratorISF_Lb1EEERSA_: argument 0"}
!70 = distinct !{!70, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv"}
!71 = distinct !{!71, !70, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv: argument 0"}
!72 = !{!67, !65, !63}
!73 = !{!69, !65, !63}
!74 = !{!71}
!75 = distinct !{!75, !"_ZN5boost9container4listI5emptyvE6insertINS0_17constant_iteratorIS2_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS8_ISM_Lb1EEET_SP_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISP_mEE5valueoosr3dtl17is_input_iteratorISP_EE5valueL_ZNSQ_7is_sameINSQ_17integral_constantIjLj1EEESU_E5valueEEENSQ_13enable_if_natEE4typeE"}
!76 = distinct !{!76, !75, !"_ZN5boost9container4listI5emptyvE6insertINS0_17constant_iteratorIS2_EEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS8_ISM_Lb1EEET_SP_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISP_mEE5valueoosr3dtl17is_input_iteratorISP_EE5valueL_ZNSQ_7is_sameINSQ_17integral_constantIjLj1EEESU_E5valueEEENSQ_13enable_if_natEE4typeE: argument 0"}
!77 = distinct !{!77, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6insertENS0_13list_iteratorISF_Lb1EEERSA_"}
!78 = distinct !{!78, !77, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6insertENS0_13list_iteratorISF_Lb1EEERSA_: argument 0"}
!79 = distinct !{!79, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6insertENS0_13list_iteratorISF_Lb1EEERSA_"}
!80 = distinct !{!80, !79, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6insertENS0_13list_iteratorISF_Lb1EEERSA_: argument 0"}
!81 = !{!76}
!82 = !{!78, !76}
!83 = !{!80, !76}
!84 = distinct !{!84, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv"}
!85 = distinct !{!85, !84, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeI5emptyNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS8_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv: argument 0"}
!86 = !{!85}
!87 = distinct !{!87, !"_ZNK5boost9container4listI5emptyvE5beginEv"}
!88 = distinct !{!88, !87, !"_ZNK5boost9container4listI5emptyvE5beginEv: argument 0"}
!89 = distinct !{!89, !"_ZNK5boost9container4listI5emptyvE6cbeginEv"}
end_hunk_1
