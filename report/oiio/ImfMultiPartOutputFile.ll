begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_519MultiPartOutputFile4Data18writeHeadersToFileERKSt6vectorINS_6HeaderESaIS3_EE:bb.a
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !76
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull @.str.24, i32 noundef 1), !inline_history !112
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread, %._crit_edge
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_519MultiPartOutputFile4Data22writeChunkTableOffsetsERSt6vectorIPNS_14OutputPartDataESaIS4_EE:bb.a
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.023
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i64 %i.ai, ptr %i.am, align 8, !tbaa !113
  %i.an = icmp sgt i32 %i.l, 0
  br i1 %i.an, label %.lr.ph, label %._crit_edge

end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_519MultiPartOutputFile4Data22writeChunkTableOffsetsERSt6vectorIPNS_14OutputPartDataESaIS4_EE:bb.a
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3
  %i.av = icmp ult i64 %i.ap, %i.au
  br i1 %i.av, label %bb.b, label %._crit_edge26, !llvm.loop !114

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.01422 = phi i32 [ %i.ba, %.lr.ph ], [ 0, %bb.e ]
end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_519MultiPartOutputFile4Data22writeChunkTableOffsetsERSt6vectorIPNS_14OutputPartDataESaIS4_EE:bb.a
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !76
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull %i.a, i32 noundef 8), !inline_history !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ba = add nuw nsw i32 %.01422, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, %i.l
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !116
}

; Function Attrs: nounwind memory(none)
end_hunk_3
begin_hunk_4_@_ZN27OpenImageIO_v3_1_Imf__3_3_519MultiPartOutputFile4DataD2Ev
define linkonce_odr hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_519MultiPartOutputFile4DataD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !78, !range !117, !noundef !118
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

end_hunk_4
begin_hunk_5_@_ZN27OpenImageIO_v3_1_Imf__3_3_519MultiPartOutputFile4DataD2Ev:bb.a
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %.05.i.i.i) #27
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !119

_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.n, align 8, !tbaa !24
end_hunk_5
begin_hunk_6_@_ZN27OpenImageIO_v3_1_Imf__3_3_519MultiPartOutputFile4DataD2Ev:bb.a

bb.e:                                             ; preds = %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderES1_EvT_S3_RSaIT0_E.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !120
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
end_hunk_6
begin_hunk_7_@_ZN27OpenImageIO_v3_1_Imf__3_3_519MultiPartOutputFile4DataD2Ev:bb.a
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3
  %i.av = icmp ult i64 %i.aq, %i.au
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !121
}

declare void @__cxa_rethrow() local_unnamed_addr
end_hunk_7
begin_hunk_8_@_ZN27OpenImageIO_v3_1_Imf__3_3_519MultiPartOutputFileC2ERNS_7OStreamEPKNS_6HeaderEibi:bb.a
bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !122

bb.f:                                             ; preds = %.lr.ph
  %i.ab = landingpad { ptr, i32 }
end_hunk_8
begin_hunk_9_@_ZN27OpenImageIO_v3_1_Imf__3_3_519MultiPartOutputFileC2ERNS_7OStreamEPKNS_6HeaderEibi:bb.a
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = sdiv exact i64 %i.bq, 56                ; 2 uses
  %i.bs = icmp ult i64 %i.bi, %i.br
  br i1 %i.bs, label %bb.h, label %._crit_edge66.loopexit, !llvm.loop !123

.loopexit:                                        ; preds = %bb.h, %_ZNKSt6vectorIPN27OpenImageIO_v3_1_Imf__3_3_514OutputPartDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_9
begin_hunk_10_@_ZN27OpenImageIO_v3_1_Imf__3_3_519MultiPartOutputFileD2Ev:bb.a
  %i.m = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.02.05) #30 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pr, i64 96
  %.not = icmp eq ptr %i.m, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !124

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.lcssa11 = phi ptr [ %.pr, %._crit_edge ], [ %i.b, %bb.a ] ; 2 uses
end_hunk_10
begin_hunk_11_@_ZNSt8_Rb_treeIiSt4pairIKiPN27OpenImageIO_v3_1_Imf__3_3_517GenericOutputFileEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E:bb.a
.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiPN27OpenImageIO_v3_1_Imf__3_3_517GenericOutputFileEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !126  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !127

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
end_hunk_11
begin_hunk_12_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E:bb.a
.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !126  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
end_hunk_12
begin_hunk_13_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E:bb.a
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !128

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
end_hunk_13
begin_hunk_14_@_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_56HeaderESaIS1_EE17_M_default_appendEm:bb.a
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !120
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 56                  ; 2 uses
end_hunk_14
begin_hunk_15_@_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_56HeaderESaIS1_EE17_M_default_appendEm:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 56
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i41, label %.lr.ph.i.i.i.i.i, !llvm.loop !129

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
end_hunk_15
begin_hunk_16_@_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_56HeaderESaIS1_EE17_M_default_appendEm:bb.a
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %.05.i.i.i.i.i.i.i) #27
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !119

_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  invoke void @__cxa_rethrow() #26
end_hunk_16
begin_hunk_17_@_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_56HeaderESaIS1_EE17_M_default_appendEm:bb.a
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %.05.i.i) #27
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, %i.al
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i, !llvm.loop !119

bb.j:                                             ; preds = %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderES1_EvT_S3_RSaIT0_E.exit
  %i.an = landingpad { ptr, i32 }
end_hunk_17
begin_hunk_18_@_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_56HeaderESaIS1_EE17_M_default_appendEm:bb.a
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %.05.i.i42) #27
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i42, i64 56 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i43, label %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEEvT_S3_.exit44, label %.lr.ph.i.i41, !llvm.loop !119

_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEEvT_S3_.exit44: ; preds = %.lr.ph.i.i41, %_ZSt27__uninitialized_default_n_aIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEmS1_ET_S3_T0_RSaIT1_E.exit
  %.not.i45 = icmp eq ptr %i.c, null
  br i1 %.not.i45, label %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_56HeaderESaIS1_EE13_M_deallocateEPS1_m.exit46, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEEvT_S3_.exit44
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !120
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ar) #29
end_hunk_18
begin_hunk_19_@_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_56HeaderESaIS1_EE17_M_default_appendEm:bb.a
  %i.as = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %1
  store ptr %i.as, ptr %i.a, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %i.s
  store ptr %i.at, ptr %i.h, align 8, !tbaa !120
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_56HeaderESaIS1_EE13_M_deallocateEPS1_m.exit46, %bb.a
end_hunk_19
begin_hunk_20_@_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEmEET_S5_T0_:bb.a
  %i.a = add i64 %.01013, -1                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 56 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !130

bb.c:                                             ; preds = %.lr.ph
  %i.c = landingpad { ptr, i32 }
end_hunk_20
begin_hunk_21_@_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEmEET_S5_T0_:bb.a
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %.05.i.i) #27
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %.014
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !119

_ZSt8_DestroyIPN27OpenImageIO_v3_1_Imf__3_3_56HeaderEEvT_S3_.exit: ; preds = %.lr.ph.i.i, %bb.c
  invoke void @__cxa_rethrow() #26
end_hunk_21
begin_hunk_22_@_ZNSt8_Rb_treeIiSt4pairIKiPN27OpenImageIO_v3_1_Imf__3_3_517GenericOutputFileEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_:bb.a
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !30 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !131

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g
end_hunk_22
begin_hunk_23_@_ZNSt8_Rb_treeIiSt4pairIKiPN27OpenImageIO_v3_1_Imf__3_3_517GenericOutputFileEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_:bb.a

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !125
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
end_hunk_23
begin_hunk_24_@_ZNSt8_Rb_treeIiSt4pairIKiPN27OpenImageIO_v3_1_Imf__3_3_517GenericOutputFileEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_:bb.a
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !30 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !131

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n
end_hunk_24
begin_hunk_25_@_ZNSt8_Rb_treeIiSt4pairIKiPN27OpenImageIO_v3_1_Imf__3_3_517GenericOutputFileEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_:bb.a

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !125
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
end_hunk_25
begin_hunk_26_@_ZNSt8_Rb_treeIiSt4pairIKiPN27OpenImageIO_v3_1_Imf__3_3_517GenericOutputFileEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_:bb.a
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !30 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !131

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u
end_hunk_26
begin_hunk_27_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !7, !alias.scope !132, !noalias !135
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !13, !alias.scope !135, !noalias !132 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !16, !alias.scope !135, !noalias !132 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !137
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !13, !alias.scope !132, !noalias !135
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !15, !alias.scope !135, !noalias !132
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !15, !alias.scope !132, !noalias !135
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !16, !alias.scope !135, !noalias !132
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.e
  %i.an = phi i64 [ %i.aj, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !16, !alias.scope !132, !noalias !135
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !13, !alias.scope !135, !noalias !132
  store i64 0, ptr %i.ao, align 8, !tbaa !16, !alias.scope !135, !noalias !132
  store i8 0, ptr %i.ag, align 8, !tbaa !15, !alias.scope !135, !noalias !132
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !138

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
end_hunk_27
begin_hunk_28_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !7, !alias.scope !139, !noalias !142
  %i.au = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !13, !alias.scope !142, !noalias !139 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.f:                                             ; preds = %.lr.ph.i.i.i17
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !16, !alias.scope !142, !noalias !139 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !144
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.au, ptr %.012.i.i.i18, align 8, !tbaa !13, !alias.scope !139, !noalias !142
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !15, !alias.scope !142, !noalias !139
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !15, !alias.scope !139, !noalias !142
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !16, !alias.scope !142, !noalias !139
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.f
  %i.bc = phi i64 [ %i.ay, %bb.f ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !16, !alias.scope !139, !noalias !142
  store ptr %i.av, ptr %.0911.i.i.i19, align 8, !tbaa !13, !alias.scope !142, !noalias !139
  store i64 0, ptr %i.bd, align 8, !tbaa !16, !alias.scope !142, !noalias !139
  store i8 0, ptr %i.av, align 8, !tbaa !15, !alias.scope !142, !noalias !139
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !138

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
end_hunk_28
begin_hunk_29_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_:bb.a
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !30  ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !145

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d
end_hunk_29
begin_hunk_30_@bcmp
!109 = !{!"_ZTSSt4lessIN27OpenImageIO_v3_1_Imf__3_3_54NameEE"}
!110 = !{!"p1 _ZTSN27OpenImageIO_v3_1_Imf__3_3_517OutputStreamMutexE", !10, i64 0}
!111 = distinct !{!111, !32}
!112 = distinct !{null, null}
!113 = !{!103, !12, i64 56}
!114 = distinct !{!114, !32}
!115 = distinct !{null, null, null}
!116 = distinct !{!116, !32}
!117 = !{i8 0, i8 2}
!118 = !{}
!119 = distinct !{!119, !32}
!120 = !{!22, !23, i64 16}
!121 = distinct !{!121, !32}
!122 = distinct !{!122, !32}
!123 = distinct !{!123, !32}
!124 = distinct !{!124, !32}
!125 = !{!27, !29, i64 24}
!126 = !{!27, !29, i64 16}
!127 = distinct !{!127, !32}
!128 = distinct !{!128, !32}
!129 = distinct !{!129, !32}
!130 = distinct !{!130, !32}
!131 = distinct !{!131, !32}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!134 = distinct !{!134, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!135 = !{!136}
!136 = distinct !{!136, !134, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!137 = !{!133, !136}
!138 = distinct !{!138, !32}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!141 = distinct !{!141, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!142 = !{!143}
!143 = distinct !{!143, !141, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!144 = !{!140, !143}
!145 = distinct !{!145, !32}
end_hunk_30
