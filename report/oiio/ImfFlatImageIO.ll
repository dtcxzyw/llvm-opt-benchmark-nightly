begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadFlatTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9FlatImageE:bb.a
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !23
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #14, !inline_history !70
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !23
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #14, !inline_history !70
  br label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ar:                                            ; preds = %bb.ap
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadFlatTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9FlatImageE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i = phi i32 [ %i.br, %bb.as ], [ %i.cb, %bb.at ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cc, label %bb.au, label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !71

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #14
end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadFlatTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9FlatImageE:bb.a
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !23
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #14, !inline_history !72
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !23
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #14, !inline_history !72
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFileD2Ev.exit

bb.ax:                                            ; preds = %bb.av
end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadFlatTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9FlatImageE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i = phi i32 [ %i.ci, %bb.ay ], [ %i.cs, %bb.az ]
  %i.ct = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ct, label %bb.ba, label %_ZN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFileD2Ev.exit, !prof !71

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #14
end_hunk_3
begin_hunk_4_@_ZN27OpenImageIO_v3_1_Imf__3_3_518loadFlatTiledImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9FlatImageE:bb.a

bb.bd:                                            ; preds = %bb.bc
  %i.cy = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.043.0) #15
  br label %.preheader, !llvm.loop !73

bb.be:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bb, %bb.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %bb.af, %bb.ai, %bb.ab, %bb.h
  %.pn36.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.af ], [ %i.l, %bb.i ], [ %i.k, %bb.h ], [ %i.ay, %bb.ab ], [ %i.bg, %bb.ai ], [ %.pn36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.m, %bb.j ], [ %i.cu, %bb.bb ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
end_hunk_4
begin_hunk_5_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadFlatScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9FlatImageE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.ac = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.046.0) #15
  br label %bb.e, !llvm.loop !74

bb.p:                                             ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
end_hunk_5
begin_hunk_6_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadFlatScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9FlatImageE:bb.a
bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.bh = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.040.0) #15
  br label %.preheader53, !llvm.loop !75

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.bi = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadFlatScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9FlatImageE:bb.a
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !23
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #14, !inline_history !76
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !23
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #14, !inline_history !76
  br label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_59InputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.an:                                            ; preds = %bb.al
end_hunk_7
begin_hunk_8_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadFlatScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9FlatImageE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i = phi i32 [ %i.bz, %bb.ao ], [ %i.cj, %bb.ap ]
  %i.ck = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ck, label %bb.aq, label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_59InputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !71

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #14
end_hunk_8
begin_hunk_9_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadFlatScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9FlatImageE:bb.a
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !23
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #14, !inline_history !77
  %i.cv = load ptr, ptr %i.cm, align 8, !tbaa !23
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #14, !inline_history !77
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFileD2Ev.exit

bb.at:                                            ; preds = %bb.ar
end_hunk_9
begin_hunk_10_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadFlatScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9FlatImageE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i.i = phi i32 [ %i.cq, %bb.au ], [ %i.da, %bb.av ]
  %i.db = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.db, label %bb.aw, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFileD2Ev.exit, !prof !71

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #14
end_hunk_10
begin_hunk_11_@_ZN27OpenImageIO_v3_1_Imf__3_3_521loadFlatScanLineImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6HeaderERNS_9FlatImageE:bb.a

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.di = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.032.0) #15
  br label %.preheader, !llvm.loop !78

bb.bc:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ay, %bb.y, %bb.z, %bb.ad, %bb.ax
  %.pn21.pn = phi { ptr, i32 } [ %i.dc, %bb.ax ], [ %i.az, %bb.y ], [ %i.bi, %bb.ad ], [ %i.ba, %bb.z ], [ %i.dd, %bb.ay ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
end_hunk_11
begin_hunk_12_@_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFileD2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !79
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !79
  br label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_59InputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_12
begin_hunk_13_@_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFileD2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_59InputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14
end_hunk_13
begin_hunk_14_@_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFileD2Ev:bb.a
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #14, !inline_history !80
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #14, !inline_history !80
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit

bb.j:                                             ; preds = %bb.h
end_hunk_14
begin_hunk_15_@_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFileD2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit, !prof !71

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #14
end_hunk_15
begin_hunk_16_@_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19saveLevelERNS_15TiledOutputFileERKNS_9FlatImageEii:bb.a
bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.t = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.018.0) #15
  br label %.preheader, !llvm.loop !81

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.u = landingpad { ptr, i32 }
end_hunk_16
begin_hunk_17_@_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19loadLevelERNS_14TiledInputFileERNS_9FlatImageEii:bb.a
bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.t = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.020.0) #15
  br label %.preheader, !llvm.loop !82

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.u = landingpad { ptr, i32 }
end_hunk_17
begin_hunk_18_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFileD2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !83
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !83
  br label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_18
begin_hunk_19_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFileD2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14
end_hunk_19
begin_hunk_20_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFileD2Ev:bb.a
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #14, !inline_history !80
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #14, !inline_history !80
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit

bb.j:                                             ; preds = %bb.h
end_hunk_20
begin_hunk_21_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFileD2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit, !prof !71

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #14
end_hunk_21
begin_hunk_22_@_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E:bb.a
.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84
  tail call void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 344) #18
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !86

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
end_hunk_22
begin_hunk_23_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !87
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_23
begin_hunk_24_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !87
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_24
begin_hunk_25_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
!67 = !{!68, !4, i64 8}
!68 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!69 = !{!68, !4, i64 12}
!70 = distinct !{ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFileD2Ev, null, null, null}
!71 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!72 = distinct !{ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFileD2Ev, null, null, null, null}
!73 = distinct !{!73, !15}
!74 = distinct !{!74, !15}
!75 = distinct !{!75, !15}
!76 = distinct !{ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFileD2Ev, null, null, null}
!77 = distinct !{ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputFileD2Ev, null, null, null, null}
!78 = distinct !{!78, !15}
!79 = distinct !{null, null, null}
!80 = distinct !{null, null, null, null}
!81 = distinct !{!81, !15}
!82 = distinct !{!82, !15}
!83 = distinct !{null, null, null}
!84 = !{!40, !42, i64 24}
!85 = !{!40, !42, i64 16}
!86 = distinct !{!86, !15}
!87 = distinct !{null}
end_hunk_25
