Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/Rw2Decoder?download=true
inline.NumInlined: 1060
inline.NumDeleted: 577
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8rawspeed10Rw2Decoder22decodeMetaDataInternalEPKNS_14CameraMetaDataE:bb.a
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !128
  %i.ee = icmp ult i16 %i.ed, 37                  ; 2 uses
  %.19.i.i.i.i126 = select i1 %i.ee, ptr %.0811.i.i.i.i125, ptr %.012.i.i.i.i124 ; 3 uses
  %.1.in.v.i.i.i.i127 = select i1 %i.ee, i64 24, i64 16
  %.1.in.i.i.i.i128 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i124, i64 %.1.in.v.i.i.i.i127
  %.1.i.i.i.i129 = load ptr, ptr %.1.in.i.i.i.i128, align 8, !tbaa !121 ; 2 uses
  %.not.i.i.i.i130 = icmp eq ptr %.1.i.i.i.i129, null
  br i1 %.not.i.i.i.i130, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i131, label %.lr.ph.i.i.i.i123, !llvm.loop !129

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i131: ; preds = %.lr.ph.i.i.i.i123
  %i.ef = icmp eq ptr %.19.i.i.i.i126, %i.aj
  br i1 %i.ef, label %.lr.ph.i.i.i.i147.preheader, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit133

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit133: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i131
  %i.eg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i126, i64 32
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !128
  %i.ei = icmp ult i16 %i.eh, 38
  br i1 %i.ei, label %.lr.ph.i.i.i.i135, label %.lr.ph.i.i.i.i147.preheader

.lr.ph.i.i.i.i135:                                ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit133, %.lr.ph.i.i.i.i135
  %.012.i.i.i.i136 = phi ptr [ %.1.i.i.i.i141, %.lr.ph.i.i.i.i135 ], [ %.pr276, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit133 ] ; 3 uses
  %.0811.i.i.i.i137 = phi ptr [ %.19.i.i.i.i138, %.lr.ph.i.i.i.i135 ], [ %i.aj, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit133 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i136, i64 32
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !128
  %i.el = icmp ult i16 %i.ek, 38                  ; 2 uses
  %.19.i.i.i.i138 = select i1 %i.el, ptr %.0811.i.i.i.i137, ptr %.012.i.i.i.i136 ; 3 uses
  %.1.in.v.i.i.i.i139 = select i1 %i.el, i64 24, i64 16
  %.1.in.i.i.i.i140 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i136, i64 %.1.in.v.i.i.i.i139
  %.1.i.i.i.i141 = load ptr, ptr %.1.in.i.i.i.i140, align 8, !tbaa !121 ; 2 uses
  %.not.i.i.i.i142 = icmp eq ptr %.1.i.i.i.i141, null
  br i1 %.not.i.i.i.i142, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i143, label %.lr.ph.i.i.i.i135, !llvm.loop !129

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i143: ; preds = %.lr.ph.i.i.i.i135
  %i.em = icmp eq ptr %.19.i.i.i.i138, %i.aj
  br i1 %i.em, label %.lr.ph.i.i.i.i147.preheader, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit145

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit145: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i143
  %i.en = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i138, i64 32
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !128
  %i.ep = icmp ult i16 %i.eo, 39
  br i1 %i.ep, label %bb.ak, label %.lr.ph.i.i.i.i147.preheader

bb.ak:                                            ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit145
  %i.eq = invoke noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.ag, i16 noundef zeroext 36)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.er = invoke noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.eq, i32 noundef 0)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.es = invoke noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.ag, i16 noundef zeroext 37)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.et = invoke noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.es, i32 noundef 0)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.eu = invoke noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.ag, i16 noundef zeroext 38)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ev = uitofp i16 %i.et to float
  %i.ew = invoke noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.eu, i32 noundef 0)
          to label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit157.thread.sink.split unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.lr.ph.i.i.i.i147:                                ; preds = %.lr.ph.i.i.i.i147.preheader, %.lr.ph.i.i.i.i147
  %.012.i.i.i.i148 = phi ptr [ %.1.i.i.i.i153, %.lr.ph.i.i.i.i147 ], [ %.pr276, %.lr.ph.i.i.i.i147.preheader ] ; 3 uses
  %.0811.i.i.i.i149 = phi ptr [ %.19.i.i.i.i150, %.lr.ph.i.i.i.i147 ], [ %i.aj, %.lr.ph.i.i.i.i147.preheader ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i148, i64 32
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !128
  %i.fa = icmp ult i16 %i.ez, 17                  ; 2 uses
  %.19.i.i.i.i150 = select i1 %i.fa, ptr %.0811.i.i.i.i149, ptr %.012.i.i.i.i148 ; 3 uses
  %.1.in.v.i.i.i.i151 = select i1 %i.fa, i64 24, i64 16
  %.1.in.i.i.i.i152 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i148, i64 %.1.in.v.i.i.i.i151
  %.1.i.i.i.i153 = load ptr, ptr %.1.in.i.i.i.i152, align 8, !tbaa !121 ; 2 uses
  %.not.i.i.i.i154 = icmp eq ptr %.1.i.i.i.i153, null
  br i1 %.not.i.i.i.i154, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i155, label %.lr.ph.i.i.i.i147, !llvm.loop !129

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i155: ; preds = %.lr.ph.i.i.i.i147
  %i.fb = icmp eq ptr %.19.i.i.i.i150, %i.aj
  br i1 %i.fb, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit157.thread, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit157

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit157: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i155
  %i.fc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i150, i64 32
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !128
  %i.fe = icmp ult i16 %i.fd, 18
  br i1 %i.fe, label %.lr.ph.i.i.i.i159, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit157.thread

.lr.ph.i.i.i.i159:                                ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit157, %.lr.ph.i.i.i.i159
  %.012.i.i.i.i160 = phi ptr [ %.1.i.i.i.i165, %.lr.ph.i.i.i.i159 ], [ %.pr276, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit157 ] ; 3 uses
  %.0811.i.i.i.i161 = phi ptr [ %.19.i.i.i.i162, %.lr.ph.i.i.i.i159 ], [ %i.aj, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit157 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i160, i64 32
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !128
  %i.fh = icmp ult i16 %i.fg, 18                  ; 2 uses
  %.19.i.i.i.i162 = select i1 %i.fh, ptr %.0811.i.i.i.i161, ptr %.012.i.i.i.i160 ; 3 uses
  %.1.in.v.i.i.i.i163 = select i1 %i.fh, i64 24, i64 16
  %.1.in.i.i.i.i164 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i160, i64 %.1.in.v.i.i.i.i163
  %.1.i.i.i.i165 = load ptr, ptr %.1.in.i.i.i.i164, align 8, !tbaa !121 ; 2 uses
  %.not.i.i.i.i166 = icmp eq ptr %.1.i.i.i.i165, null
  br i1 %.not.i.i.i.i166, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i167, label %.lr.ph.i.i.i.i159, !llvm.loop !129

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i167: ; preds = %.lr.ph.i.i.i.i159
  %i.fi = icmp eq ptr %.19.i.i.i.i162, %i.aj
  br i1 %i.fi, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit157.thread, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit169

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit169: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i167
  %i.fj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i162, i64 32
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !128
  %i.fl = icmp ult i16 %i.fk, 19
  br i1 %i.fl, label %bb.ar, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit157.thread

bb.ar:                                            ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit169
  %i.fm = invoke noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.ag, i16 noundef zeroext 17)
          to label %bb.as unwind label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.fn = invoke noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.fm, i32 noundef 0)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.fo = invoke noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.ag, i16 noundef zeroext 18)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fp = invoke noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.fo, i32 noundef 0)
          to label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit157.thread.sink.split unwind label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit157.thread.sink.split: ; preds = %bb.au, %bb.ap
  %.sink293 = phi i16 [ %i.ew, %bb.ap ], [ %i.fp, %bb.au ]
  %.sink289.in = phi i16 [ %i.er, %bb.ap ], [ %i.fn, %bb.au ]
  %.sink287 = phi float [ %i.ev, %bb.ap ], [ 2.560000e+02, %bb.au ]
  %.sink289 = uitofp i16 %.sink289.in to float
  %i.fr = uitofp i16 %.sink293 to float
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !19 ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 256
  store float %.sink289, ptr %i.fu, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 260
  store float %.sink287, ptr %.sroa.0.sroa.4.0..sroa_idx, align 4
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 264
  store float %i.fr, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 268
  store float 0.000000e+00, ptr %.sroa.0.sroa.6.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 272
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit157.thread

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit157.thread: ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit157.thread.sink.split, %_ZNK8rawspeed10Rw2Decoder6getRawEv.exit, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i167, %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i155, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit157, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit169
  %i.fv = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit157.thread
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !18
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit157.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.ga = load ptr, ptr %i.h, align 8, !tbaa !17  ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !18
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.gf = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZN8rawspeed6TiffIDD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !18
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #28
  br label %_ZN8rawspeed6TiffIDD2Ev.exit

_ZN8rawspeed6TiffIDD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.aw:                                            ; preds = %bb.m, %bb.aq, %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %bb.r, %bb.o, %bb.p, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %bb.e
  %.pn37.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %i.g, %bb.e ], [ %i.cw, %bb.m ], [ %i.ex, %bb.aq ], [ %i.fq, %bb.av ], [ %i.cx, %bb.n ], [ %i.cy, %bb.o ], [ %i.cz, %bb.p ], [ %i.da, %bb.r ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ] ; 2 uses
  %i.gk = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %bb.aw
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !18
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173, %bb.d
  %.pn37.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.f, %bb.d ], [ %.pn37.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ], [ %.pn37.pn.pn.pn.pn.pn.pn.pn, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZN8rawspeed6TiffIDD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn37.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN8rawspeed16ColorFilterArray13colorToStringB5cxx11ENS_8CFAColorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define hidden { i64, i64 } @_ZN8rawspeed10Rw2Decoder14getDefaultCropEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.c = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i16 noundef zeroext 280) #31
  %.not.i = icmp eq ptr %i.c, null
  %..i = select i1 %.not.i, i16 273, i16 280
  %i.d = tail call noundef ptr @_ZNK8rawspeed7TiffIFD13getIFDWithTagENS_7TiffTagEj(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i16 noundef zeroext %..i, i32 noundef 0) ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !116  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 8 uses
  %.not10.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i.i, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.g, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.i = load i16, ptr %i.h, align 2, !tbaa !128
  %i.j = icmp ult i16 %i.i, 5                     ; 2 uses
  %.19.i.i.i.i = select i1 %i.j, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.j, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !121 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !129

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.k = icmp eq ptr %.19.i.i.i.i, %i.g
  br i1 %i.k, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.m = load i16, ptr %i.l, align 2, !tbaa !128
  %i.n = icmp ult i16 %i.m, 6
  br i1 %i.n, label %.lr.ph.i.i.i.i18, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread

.lr.ph.i.i.i.i18:                                 ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit, %.lr.ph.i.i.i.i18
  %.012.i.i.i.i19 = phi ptr [ %.1.i.i.i.i24, %.lr.ph.i.i.i.i18 ], [ %i.f, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit ] ; 3 uses
  %.0811.i.i.i.i20 = phi ptr [ %.19.i.i.i.i21, %.lr.ph.i.i.i.i18 ], [ %i.g, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i19, i64 32
  %i.p = load i16, ptr %i.o, align 2, !tbaa !128
  %i.q = icmp ult i16 %i.p, 4                     ; 2 uses
  %.19.i.i.i.i21 = select i1 %i.q, ptr %.0811.i.i.i.i20, ptr %.012.i.i.i.i19 ; 3 uses
  %.1.in.v.i.i.i.i22 = select i1 %i.q, i64 24, i64 16
  %.1.in.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i19, i64 %.1.in.v.i.i.i.i22
  %.1.i.i.i.i24 = load ptr, ptr %.1.in.i.i.i.i23, align 8, !tbaa !121 ; 2 uses
  %.not.i.i.i.i25 = icmp eq ptr %.1.i.i.i.i24, null
  br i1 %.not.i.i.i.i25, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i26, label %.lr.ph.i.i.i.i18, !llvm.loop !129

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i26: ; preds = %.lr.ph.i.i.i.i18
  %i.r = icmp eq ptr %.19.i.i.i.i21, %i.g
  br i1 %i.r, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit28

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit28: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i26
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i21, i64 32
  %i.t = load i16, ptr %i.s, align 2, !tbaa !128
  %i.u = icmp ult i16 %i.t, 5
  br i1 %i.u, label %.lr.ph.i.i.i.i30, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread

.lr.ph.i.i.i.i30:                                 ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit28, %.lr.ph.i.i.i.i30
  %.012.i.i.i.i31 = phi ptr [ %.1.i.i.i.i36, %.lr.ph.i.i.i.i30 ], [ %i.f, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit28 ] ; 3 uses
  %.0811.i.i.i.i32 = phi ptr [ %.19.i.i.i.i33, %.lr.ph.i.i.i.i30 ], [ %i.g, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit28 ]
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i31, i64 32
  %i.w = load i16, ptr %i.v, align 2, !tbaa !128
  %i.x = icmp ult i16 %i.w, 7                     ; 2 uses
  %.19.i.i.i.i33 = select i1 %i.x, ptr %.0811.i.i.i.i32, ptr %.012.i.i.i.i31 ; 3 uses
  %.1.in.v.i.i.i.i34 = select i1 %i.x, i64 24, i64 16
  %.1.in.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i31, i64 %.1.in.v.i.i.i.i34
  %.1.i.i.i.i36 = load ptr, ptr %.1.in.i.i.i.i35, align 8, !tbaa !121 ; 2 uses
  %.not.i.i.i.i37 = icmp eq ptr %.1.i.i.i.i36, null
  br i1 %.not.i.i.i.i37, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i38, label %.lr.ph.i.i.i.i30, !llvm.loop !129

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i38: ; preds = %.lr.ph.i.i.i.i30
  %i.y = icmp eq ptr %.19.i.i.i.i33, %i.g
  br i1 %i.y, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit40

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit40: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i38
  %i.z = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 32
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !128
  %i.ab = icmp ult i16 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.i.i.i42, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread

.lr.ph.i.i.i.i42:                                 ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit40, %.lr.ph.i.i.i.i42
  %.012.i.i.i.i43 = phi ptr [ %.1.i.i.i.i48, %.lr.ph.i.i.i.i42 ], [ %i.f, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit40 ] ; 3 uses
  %.0811.i.i.i.i44 = phi ptr [ %.19.i.i.i.i45, %.lr.ph.i.i.i.i42 ], [ %i.g, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit40 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i43, i64 32
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !128
  %i.ae = icmp ult i16 %i.ad, 6                   ; 2 uses
  %.19.i.i.i.i45 = select i1 %i.ae, ptr %.0811.i.i.i.i44, ptr %.012.i.i.i.i43 ; 3 uses
  %.1.in.v.i.i.i.i46 = select i1 %i.ae, i64 24, i64 16
  %.1.in.i.i.i.i47 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i43, i64 %.1.in.v.i.i.i.i46
  %.1.i.i.i.i48 = load ptr, ptr %.1.in.i.i.i.i47, align 8, !tbaa !121 ; 2 uses
  %.not.i.i.i.i49 = icmp eq ptr %.1.i.i.i.i48, null
  br i1 %.not.i.i.i.i49, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i50, label %.lr.ph.i.i.i.i42, !llvm.loop !129

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i50: ; preds = %.lr.ph.i.i.i.i42
  %i.af = icmp eq ptr %.19.i.i.i.i45, %i.g
  br i1 %i.af, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit52

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit52: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i50
  %i.ag = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i45, i64 32
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !128
  %i.ai = icmp ult i16 %i.ah, 7
  br i1 %i.ai, label %bb.b, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i50, %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i38, %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i26, %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %bb.a, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit52, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit40, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit28, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10Rw2Decoder14getDefaultCropEv, i32 noundef 5, i32 noundef 4, i32 noundef 7, i32 noundef 6) #20
  unreachable

bb.b:                                             ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit52
  %i.aj = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i16 noundef zeroext 5)
  %i.ak = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i32 noundef 0) ; 2 uses
  %i.al = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i16 noundef zeroext 4)
  %i.am = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.al, i32 noundef 0) ; 2 uses
  %i.an = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i16 noundef zeroext 7)
  %i.ao = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.an, i32 noundef 0)
  %i.ap = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i16 noundef zeroext 6)
  %i.aq = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, i32 noundef 0)
  %i.ar = sub i16 %i.ao, %i.ak
  %i.as = sub i16 %i.aq, %i.am
  %.sroa.2.0.insert.ext = zext i16 %i.am to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i16 %i.ak to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.insert.insert, 0
  %.sroa.5.8.insert.ext = zext i16 %i.as to i64
  %.sroa.5.8.insert.shift = shl nuw nsw i64 %.sroa.5.8.insert.ext, 32
  %.sroa.3.8.insert.ext = zext i16 %i.ar to i64
  %.sroa.3.8.insert.insert = or disjoint i64 %.sroa.5.8.insert.shift, %.sroa.3.8.insert.ext
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed19AbstractTiffDecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN8rawspeed19AbstractTiffDecoderE, i64 16), ptr %0, align 8, !tbaa !79
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed7TiffIFDE, i64 16), ptr %i.b, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116
  invoke void @_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
          to label %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #32
  unreachable

_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !143  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !146  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.i, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i ] ; 2 uses
  %i.l = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !147 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
end_hunk_0
