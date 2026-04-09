inline.NumInlined: 925
inline.NumDeleted: 379
begin_hunk_0_@_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header7writeToERNS_7OStreamEb:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 4)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
end_hunk_0
begin_hunk_1_@_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header7writeToERNS_7OStreamEb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ce = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.026.038) #30 ; 2 uses
  %.not = icmp eq ptr %i.ce, %i.f
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.j ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bp, %bb.k ]
end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_56Header8readFromERNS_7IStreamERi:bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %.07.i, i32 noundef 1), !inline_history !94 ; 0 uses
  %i.l = load i8, ptr %.07.i, align 1, !tbaa !45
  %i.m = icmp ne i8 %i.l, 0
  %i.n = add nsw i32 %.056.i, -1
  %i.o = getelementptr inbounds nuw i8, ptr %.07.i, i64 1
  %i.p = icmp ne i32 %.056.i, 0
  %or.cond.i = select i1 %i.m, i1 %i.p, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_iPc.exit, !llvm.loop !95

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_iPc.exit: ; preds = %.lr.ph.i
  %i.q = load i8, ptr %i.b, align 16, !tbaa !45
end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_56Header8readFromERNS_7IStreamERi:bb.a
  %i.u = load ptr, ptr %1, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %.07.i32, i32 noundef 1), !inline_history !94 ; 0 uses
  %i.y = load i8, ptr %.07.i32, align 1, !tbaa !45
  %i.z = icmp ne i8 %i.y, 0
  %i.aa = add nsw i32 %.056.i33, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %.07.i32, i64 1
  %i.ac = icmp ne i32 %.056.i33, 0
  %or.cond.i34 = select i1 %i.z, i1 %i.ac, i1 false
  br i1 %or.cond.i34, label %.lr.ph.i31, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_iPc.exit35, !llvm.loop !95

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_iPc.exit35: ; preds = %.lr.ph.i31
  %i.ad = add nuw nsw i32 %.022, 1
end_hunk_3
begin_hunk_4_@_ZN27OpenImageIO_v3_1_Imf__3_3_56Header8readFromERNS_7IStreamERi:bb.a
  %i.ae = load ptr, ptr %1, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 4), !inline_history !96 ; 0 uses
  %i.ai = load i32, ptr %i.a, align 4             ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.aj = icmp slt i32 %i.ai, 0
end_hunk_4
begin_hunk_5_@_ZN27OpenImageIO_v3_1_Imf__3_3_56Header8readFromERNS_7IStreamERi:bb.a
.critedge.i:                                      ; preds = %bb.v, %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i, %bb.u
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.v ], [ %.19.i.i.i.i, %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i ], [ %i.f, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %7, ptr %3, align 8, !tbaa !48, !alias.scope !97
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.cg = invoke ptr @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.y
end_hunk_5
begin_hunk_6_@_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E:bb.a
.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  tail call void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 296) #31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !102

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
end_hunk_6
begin_hunk_7_@_ZNSt3mapIPKvN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117CompressionRecordESt4lessIS1_ESaISt4pairIKS1_S4_EEEixEOS1_:bb.a

bb.b:                                             ; preds = %_ZNSt3mapIPKvN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117CompressionRecordESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.i = icmp ult ptr %.val, %i.h
  br i1 %i.i, label %.critedge, label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117CompressionRecordEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit

end_hunk_7
begin_hunk_8_@_ZNSt3mapIPKvN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117CompressionRecordESt4lessIS1_ESaISt4pairIKS1_S4_EEEixEOS1_:bb.a
  %.08.lcssa.i.i.i18 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIPKvN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117CompressionRecordESt4lessIS1_ESaISt4pairIKS1_S4_EEE11lower_boundERS8_.exit ], [ %i.b, %bb.a ] ; 10 uses
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store ptr %.val, ptr %i.l, align 8, !tbaa !103
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  invoke void @exr_get_default_zip_compression_level(ptr noundef nonnull align 4 dereferenceable(8) %i.m)
          to label %.noexc.i.i.i.i unwind label %bb.c
end_hunk_8
begin_hunk_9_@_ZNSt3mapIPKvN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117CompressionRecordESt4lessIS1_ESaISt4pairIKS1_S4_EEEixEOS1_:bb.a
  %.in.i.i.i = getelementptr i8, ptr %.01115.i.i.i, i64 %.in.v.i.i.i
  %.011.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %.011.i.i.i, null
  br i1 %.not.i.i.i11, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i10, !llvm.loop !106

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i10
  br i1 %i.ac, label %._crit_edge.thread.i.i.i, label %bb.l
end_hunk_9
begin_hunk_10_@_ZNSt3mapIPKvN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117CompressionRecordESt4lessIS1_ESaISt4pairIKS1_S4_EEEixEOS1_:bb.a

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr i8, ptr %i.ao, i64 24
  %.val10.i.i = load ptr, ptr %i.as, align 8, !tbaa !100
  %i.at = icmp eq ptr %.val10.i.i, null           ; 2 uses
  %spec.select.i.i = select i1 %i.at, ptr null, ptr %.08.lcssa.i.i.i18
  %spec.select22.i.i = select i1 %i.at, ptr %i.ao, ptr %.08.lcssa.i.i.i18
end_hunk_10
begin_hunk_11_@_ZNSt3mapIPKvN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117CompressionRecordESt4lessIS1_ESaISt4pairIKS1_S4_EEEixEOS1_:bb.a
  %.in.i21.i.i = getelementptr i8, ptr %.01115.i19.i.i, i64 %.in.v.i20.i.i
  %.011.i22.i.i = load ptr, ptr %.in.i21.i.i, align 8, !tbaa !46 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %.011.i22.i.i, null
  br i1 %.not.i23.i.i, label %._crit_edge.i24.i.i, label %.lr.ph.i18.i.i, !llvm.loop !106

._crit_edge.i24.i.i:                              ; preds = %.lr.ph.i18.i.i
  br i1 %i.aw, label %._crit_edge.thread.i33.i.i, label %bb.s
end_hunk_11
begin_hunk_12_@_ZNSt3mapIPKvN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117CompressionRecordESt4lessIS1_ESaISt4pairIKS1_S4_EEEixEOS1_:bb.a

bb.w:                                             ; preds = %bb.v
  %i.bj = getelementptr i8, ptr %.08.lcssa.i.i.i18, i64 24
  %.val.i11.i = load ptr, ptr %i.bj, align 8, !tbaa !100
  %i.bk = icmp eq ptr %.val.i11.i, null           ; 2 uses
  %spec.select23.i.i = select i1 %i.bk, ptr null, ptr %i.bf
  %spec.select24.i.i = select i1 %i.bk, ptr %.08.lcssa.i.i.i18, ptr %i.bf
end_hunk_12
begin_hunk_13_@_ZNSt3mapIPKvN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117CompressionRecordESt4lessIS1_ESaISt4pairIKS1_S4_EEEixEOS1_:bb.a
  %.in.i42.i.i = getelementptr i8, ptr %.01115.i40.i.i, i64 %.in.v.i41.i.i
  %.011.i43.i.i = load ptr, ptr %.in.i42.i.i, align 8, !tbaa !46 ; 2 uses
  %.not.i44.i.i = icmp eq ptr %.011.i43.i.i, null
  br i1 %.not.i44.i.i, label %._crit_edge.i45.i.i, label %.lr.ph.i39.i.i, !llvm.loop !106

._crit_edge.i45.i.i:                              ; preds = %.lr.ph.i39.i.i
  br i1 %i.bn, label %._crit_edge.thread.i54.i.i, label %bb.z
end_hunk_13
begin_hunk_14_@_ZNSt8_Rb_treeIPKvSt4pairIKS1_N27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117CompressionRecordEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E:bb.a
.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02 = phi ptr [ %.0.val6, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr i8, ptr %.02, i64 24
  %.0.val = load ptr, ptr %i.a, align 8, !tbaa !100
  tail call fastcc void @_ZNSt8_Rb_treeIPKvSt4pairIKS1_N27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117CompressionRecordEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef %.0.val)
  %i.b = getelementptr i8, ptr %.02, i64 16
  %.0.val6 = load ptr, ptr %i.b, align 8, !tbaa !101 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.02, i64 noundef 48) #31
  %.not = icmp eq ptr %.0.val6, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !107

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
end_hunk_14
begin_hunk_15_@_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !48
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.b, ptr noundef nonnull align 1 dereferenceable(256) %i.d, i64 256, i1 false), !tbaa.struct !108
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr null, ptr %i.e, align 8, !tbaa !39
  %i.f = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(256) %i.b)
end_hunk_15
begin_hunk_16_@_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_:bb.a
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !46 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !109

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.m, label %._crit_edge.thread.i, label %bb.f
end_hunk_16
begin_hunk_17_@_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_:bb.a

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !100
  %i.ag = icmp eq ptr %i.af, null                 ; 2 uses
  %spec.select = select i1 %i.ag, ptr null, ptr %1
  %spec.select71 = select i1 %i.ag, ptr %i.aa, ptr %1
end_hunk_17
begin_hunk_18_@_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_:bb.a
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !46 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !109

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.ak, label %._crit_edge.thread.i27, label %bb.m
end_hunk_18
begin_hunk_19_@_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_:bb.a

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !100
  %i.bb = icmp eq ptr %i.ba, null                 ; 2 uses
  %spec.select72 = select i1 %i.bb, ptr null, ptr %i.av
  %spec.select73 = select i1 %i.bb, ptr %1, ptr %i.av
end_hunk_19
begin_hunk_20_@_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_:bb.a
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !46 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !109

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bf, label %._crit_edge.thread.i47, label %bb.t
end_hunk_20
begin_hunk_21_@llvm.assume
!90 = distinct !{!90, !44}
!91 = distinct !{null, null}
!92 = distinct !{!92, !44}
!93 = distinct !{!93, !44}
!94 = distinct !{null, null}
!95 = distinct !{!95, !44}
!96 = distinct !{null, null, null}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZSt16forward_as_tupleIJN27OpenImageIO_v3_1_Imf__3_3_54NameEEESt5tupleIJDpOT_EES5_: argument 0"}
!99 = distinct !{!99, !"_ZSt16forward_as_tupleIJN27OpenImageIO_v3_1_Imf__3_3_54NameEEESt5tupleIJDpOT_EES5_"}
!100 = !{!9, !11, i64 24}
!101 = !{!9, !11, i64 16}
!102 = distinct !{!102, !44}
!103 = !{!104, !12, i64 0}
!104 = !{!"_ZTSSt4pairIKPKvN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117CompressionRecordEE", !12, i64 0, !105, i64 8}
!105 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117CompressionRecordE", !4, i64 0, !28, i64 4}
!106 = distinct !{!106, !44}
!107 = distinct !{!107, !44}
!108 = !{i64 0, i64 256, !45}
!109 = distinct !{!109, !44}
end_hunk_21
