Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tf_importer?download=true
inline.NumInlined: 8193
inline.NumDeleted: 1946
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter14parseBlockLSTMERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE:bb.a

.noexc.i.i202:                                    ; preds = %bb.y, %.noexc.i.i202
  %.0.i.i.i.i.i.i203 = phi ptr [ %i.eo, %.noexc.i.i202 ], [ %i.em, %bb.y ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i203, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !221 ; 2 uses
  %.not.i.i.i.i.i.i204 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i.i204, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i205, label %.noexc.i.i202, !llvm.loop !5

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i205: ; preds = %.noexc.i.i202
  store ptr %.0.i.i.i.i.i.i203, ptr %i.ei, align 8, !tbaa !109
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i205
  %.0.i.i7.i.i.i.i206 = phi ptr [ %i.em, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i205 ], [ %i.eq, %bb.z ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i206, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !222 ; 2 uses
  %.not.i.i8.i.i.i.i207 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i8.i.i.i.i207, label %bb.aa, label %bb.z, !llvm.loop !6

bb.aa:                                            ; preds = %bb.z
  store ptr %.0.i.i7.i.i.i.i206, ptr %i.ej, align 8, !tbaa !109
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.es = load i64, ptr %i.er, align 8, !tbaa !142
  store i64 %i.es, ptr %i.ek, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  store ptr %i.em, ptr %i.eh, align 8, !tbaa !109
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit209

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit209: ; preds = %bb.aa, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit
  %i.et = invoke fastcc noundef nonnull align 8 dereferenceable(224) ptr @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter12getConstBlobERKN17opencv_tensorflow7NodeDefESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISE_ESaISt4pairIKSE_iEEEiPi(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef align 8 %27, i32 noundef 8, ptr noundef null)
          to label %bb.ab unwind label %bb.ar

bb.ab:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit209
  invoke fastcc void @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_114blobFromTensorERKN17opencv_tensorflow11TensorProtoERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(224) %i.et, ptr noundef nonnull align 8 dereferenceable(208) %23)
          to label %bb.ac unwind label %bb.ar

bb.ac:                                            ; preds = %bb.ab
  %i.eu = load ptr, ptr %i.eh, align 8, !tbaa !139
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef %i.eu)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit210 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit210: ; preds = %bb.ac
  %i.ex = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 4 uses
  store i32 0, ptr %i.ex, align 8, !tbaa !138
  %i.ey = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 3 uses
  store ptr null, ptr %i.ey, align 8, !tbaa !139
  %i.ez = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !140
  %i.fa = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 2 uses
  store ptr %i.ex, ptr %i.fa, align 8, !tbaa !141
  %i.fb = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 2 uses
  store i64 0, ptr %i.fb, align 8, !tbaa !142
  %i.fc = load ptr, ptr %i.dt, align 8, !tbaa !139 ; 2 uses
  %.not.i.i211 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i211, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit219, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit210
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %28, ptr %10, align 8, !tbaa !275
  %i.fd = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull %i.fc, ptr noundef nonnull %i.ex, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc.i.i212 unwind label %bb.by ; 3 uses

.noexc.i.i212:                                    ; preds = %bb.ae, %.noexc.i.i212
  %.0.i.i.i.i.i.i213 = phi ptr [ %i.ff, %.noexc.i.i212 ], [ %i.fd, %bb.ae ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i213, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !221 ; 2 uses
  %.not.i.i.i.i.i.i214 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i.i.i214, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i215, label %.noexc.i.i212, !llvm.loop !5

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i215: ; preds = %.noexc.i.i212
  store ptr %.0.i.i.i.i.i.i213, ptr %i.ez, align 8, !tbaa !109
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i215
  %.0.i.i7.i.i.i.i216 = phi ptr [ %i.fd, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i215 ], [ %i.fh, %bb.af ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i216, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !222 ; 2 uses
  %.not.i.i8.i.i.i.i217 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i8.i.i.i.i217, label %bb.ag, label %bb.af, !llvm.loop !6

bb.ag:                                            ; preds = %bb.af
  store ptr %.0.i.i7.i.i.i.i216, ptr %i.fa, align 8, !tbaa !109
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !142
  store i64 %i.fj, ptr %i.fb, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  store ptr %i.fd, ptr %i.ey, align 8, !tbaa !109
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit219

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit219: ; preds = %bb.ag, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit210
  %i.fk = invoke fastcc noundef nonnull align 8 dereferenceable(224) ptr @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter12getConstBlobERKN17opencv_tensorflow7NodeDefESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISE_ESaISt4pairIKSE_iEEEiPi(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef align 8 %28, i32 noundef 2, ptr noundef null)
          to label %bb.ah unwind label %bb.as

bb.ah:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit219
  invoke fastcc void @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_114blobFromTensorERKN17opencv_tensorflow11TensorProtoERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(224) %i.fk, ptr noundef nonnull align 8 dereferenceable(208) %24)
          to label %bb.ai unwind label %bb.as

bb.ai:                                            ; preds = %bb.ah
  %i.fl = load ptr, ptr %i.ey, align 8, !tbaa !139
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef %i.fl)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit220 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit220: ; preds = %bb.ai
  %i.fo = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 4 uses
  store i32 0, ptr %i.fo, align 8, !tbaa !138
  %i.fp = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 3 uses
  store ptr null, ptr %i.fp, align 8, !tbaa !139
  %i.fq = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 2 uses
  store ptr %i.fo, ptr %i.fq, align 8, !tbaa !140
  %i.fr = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 2 uses
  store ptr %i.fo, ptr %i.fr, align 8, !tbaa !141
  %i.fs = getelementptr inbounds nuw i8, ptr %29, i64 40 ; 2 uses
  store i64 0, ptr %i.fs, align 8, !tbaa !142
  %i.ft = load ptr, ptr %i.dt, align 8, !tbaa !139 ; 2 uses
  %.not.i.i221 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i221, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit229, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit220
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr %29, ptr %9, align 8, !tbaa !275
  %i.fu = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull %i.ft, ptr noundef nonnull %i.fo, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc.i.i222 unwind label %bb.by ; 3 uses

.noexc.i.i222:                                    ; preds = %bb.ak, %.noexc.i.i222
  %.0.i.i.i.i.i.i223 = phi ptr [ %i.fw, %.noexc.i.i222 ], [ %i.fu, %bb.ak ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i223, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !221 ; 2 uses
  %.not.i.i.i.i.i.i224 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i.i.i224, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i225, label %.noexc.i.i222, !llvm.loop !5

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i225: ; preds = %.noexc.i.i222
  store ptr %.0.i.i.i.i.i.i223, ptr %i.fq, align 8, !tbaa !109
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i225
  %.0.i.i7.i.i.i.i226 = phi ptr [ %i.fu, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i225 ], [ %i.fy, %bb.al ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i226, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !222 ; 2 uses
  %.not.i.i8.i.i.i.i227 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i8.i.i.i.i227, label %bb.am, label %bb.al, !llvm.loop !6

bb.am:                                            ; preds = %bb.al
  store ptr %.0.i.i7.i.i.i.i226, ptr %i.fr, align 8, !tbaa !109
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !142
  store i64 %i.ga, ptr %i.fs, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  store ptr %i.fu, ptr %i.fp, align 8, !tbaa !109
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit229

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit229: ; preds = %bb.am, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit220
  %i.gb = invoke fastcc noundef nonnull align 8 dereferenceable(224) ptr @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter12getConstBlobERKN17opencv_tensorflow7NodeDefESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISE_ESaISt4pairIKSE_iEEEiPi(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef align 8 %29, i32 noundef 3, ptr noundef null)
          to label %bb.an unwind label %bb.at

bb.an:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit229
  invoke fastcc void @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_114blobFromTensorERKN17opencv_tensorflow11TensorProtoERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(224) %i.gb, ptr noundef nonnull align 8 dereferenceable(208) %25)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %bb.an
  %i.gc = load ptr, ptr %i.fp, align 8, !tbaa !139
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef %i.gc)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit230 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit230: ; preds = %bb.ao
  %i.gf = getelementptr inbounds nuw i8, ptr %20, i64 12
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !300 ; 4 uses
  %i.gh = sdiv i32 %i.gg, 4                       ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !767 ; 3 uses
  %i.gk = icmp sgt i32 %i.gj, 0
  %i.gl = icmp sgt i32 %i.gg, 3
  %or.cond = select i1 %i.gk, i1 %i.gl, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge325.split

.preheader.preheader:                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit230
  %i.gm = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !291 ; 6 uses
  %i.go = mul nuw nsw i32 %i.gh, 3
  %i.gp = shl nuw nsw i32 %i.gh, 1
  %i.gq = zext nneg i32 %i.gg to i64
  %i.gr = zext nneg i32 %i.gh to i64              ; 9 uses
  %i.gs = zext nneg i32 %i.gp to i64              ; 2 uses
  %i.gt = zext nneg i32 %i.go to i64              ; 2 uses
  %wide.trip.count331 = zext nneg i32 %i.gj to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gr ; 3 uses
  %invariant.gep408 = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gs ; 3 uses
  %invariant.gep410 = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gt ; 3 uses
  %i.gu = add nuw nsw i64 %i.gr, %i.gt
  %i.gv = shl nuw nsw i64 %i.gu, 2
  %scevgep = getelementptr i8, ptr %i.gn, i64 %i.gv ; 2 uses
  %i.gw = add nuw nsw i64 %i.gr, %i.gs
  %i.gx = shl nuw nsw i64 %i.gw, 2
  %scevgep421 = getelementptr i8, ptr %i.gn, i64 %i.gx ; 2 uses
  %i.gy = shl nuw nsw i64 %i.gr, 3
  %scevgep422 = getelementptr i8, ptr %i.gn, i64 %i.gy ; 2 uses
  %min.iters.check = icmp ult i32 %i.gg, 32
  %bound0 = icmp ult ptr %invariant.gep, %scevgep421
  %bound1 = icmp ult ptr %invariant.gep408, %scevgep422
  %found.conflict = and i1 %bound0, %bound1
  %bound0423 = icmp ult ptr %invariant.gep, %scevgep
  %bound1424 = icmp ult ptr %invariant.gep410, %scevgep422
  %found.conflict425 = and i1 %bound0423, %bound1424
  %conflict.rdx = or i1 %found.conflict, %found.conflict425
  %bound0426 = icmp ult ptr %invariant.gep408, %scevgep
  %bound1427 = icmp ult ptr %invariant.gep410, %scevgep421
  %found.conflict428 = and i1 %bound0426, %bound1427
  %conflict.rdx429 = or i1 %conflict.rdx, %found.conflict428
  %n.vec = and i64 %i.gr, 536870904               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.gr
  %xtraiter = and i64 %i.gr, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.gz = add nsw i64 %i.gr, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv328 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next329, %._crit_edge ] ; 2 uses
  %i.ha = mul nuw nsw i64 %indvars.iv328, %i.gq   ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.ha ; 4 uses
  %gep409 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep408, i64 %i.ha ; 4 uses
  %gep411 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep410, i64 %i.ha ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx429
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %index ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %gep409, i64 %index ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.hb, align 4, !tbaa !298, !alias.scope !768, !noalias !769 ; 2 uses
  %wide.load430 = load <4 x float>, ptr %i.hd, align 4, !tbaa !298, !alias.scope !768, !noalias !769 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 3 uses
  %wide.load431 = load <4 x float>, ptr %i.hc, align 4, !tbaa !298, !alias.scope !770, !noalias !771
  %wide.load432 = load <4 x float>, ptr %i.he, align 4, !tbaa !298, !alias.scope !770, !noalias !771
  store <4 x float> %wide.load431, ptr %i.hb, align 4, !tbaa !298, !alias.scope !768, !noalias !769
  store <4 x float> %wide.load432, ptr %i.hd, align 4, !tbaa !298, !alias.scope !768, !noalias !769
  store <4 x float> %wide.load, ptr %i.hc, align 4, !tbaa !298, !alias.scope !770, !noalias !771
  store <4 x float> %wide.load430, ptr %i.he, align 4, !tbaa !298, !alias.scope !770, !noalias !771
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %gep411, i64 %index ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 2 uses
  %wide.load433 = load <4 x float>, ptr %i.hf, align 4, !tbaa !298, !alias.scope !771
  %wide.load434 = load <4 x float>, ptr %i.hg, align 4, !tbaa !298, !alias.scope !771
  store <4 x float> %wide.load433, ptr %i.hc, align 4, !tbaa !298, !alias.scope !770, !noalias !771
  store <4 x float> %wide.load434, ptr %i.he, align 4, !tbaa !298, !alias.scope !770, !noalias !771
  store <4 x float> %wide.load, ptr %i.hf, align 4, !tbaa !298, !alias.scope !771
  store <4 x float> %wide.load430, ptr %i.hg, align 4, !tbaa !298, !alias.scope !771
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !760

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv.ph ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %gep409, i64 %indvars.iv.ph ; 3 uses
  %i.hk = load float, ptr %i.hi, align 4, !tbaa !298 ; 2 uses
  %i.hl = load float, ptr %i.hj, align 4, !tbaa !298
  store float %i.hl, ptr %i.hi, align 4, !tbaa !298
  store float %i.hk, ptr %i.hj, align 4, !tbaa !298
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %gep411, i64 %indvars.iv.ph ; 2 uses
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !298
  store float %i.hn, ptr %i.hj, align 4, !tbaa !298
  store float %i.hk, ptr %i.hm, align 4, !tbaa !298
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ho = icmp eq i64 %indvars.iv.ph, %i.gz
  br i1 %i.ho, label %._crit_edge, label %scalar.ph

._crit_edge325.split:                             ; preds = %._crit_edge, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit230
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  %i.hp = sub nsw i32 %i.gj, %i.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !772
  store i32 0, ptr %7, align 4, !tbaa !329, !noalias !772
  %i.hq = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !330, !noalias !772
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !772
  store i64 9223372034707292160, ptr %8, align 8, !noalias !772
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %31, ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8)
          to label %bb.au unwind label %bb.bl

bb.aq:                                            ; preds = %bb.v, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %26) #26
  br label %bb.dz

bb.ar:                                            ; preds = %bb.ab, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit209
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %27) #26
  br label %bb.dz

bb.as:                                            ; preds = %bb.ah, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit219
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %28) #26
  br label %bb.dz

bb.at:                                            ; preds = %bb.an, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit229
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %29) #26
  br label %bb.dz

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1 ; 2 uses
  %exitcond332.not = icmp eq i64 %indvars.iv.next329, %wide.trip.count331
  br i1 %exitcond332.not, label %._crit_edge325.split, label %.preheader, !llvm.loop !763

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %gep409, i64 %indvars.iv ; 3 uses
  %i.hx = load float, ptr %i.hv, align 4, !tbaa !298 ; 2 uses
  %i.hy = load float, ptr %i.hw, align 4, !tbaa !298
  store float %i.hy, ptr %i.hv, align 4, !tbaa !298
  store float %i.hx, ptr %i.hw, align 4, !tbaa !298
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %gep411, i64 %indvars.iv ; 2 uses
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !298
  store float %i.ia, ptr %i.hw, align 4, !tbaa !298
  store float %i.hx, ptr %i.hz, align 4, !tbaa !298
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv.next ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %gep409, i64 %indvars.iv.next ; 3 uses
  %i.id = load float, ptr %i.ib, align 4, !tbaa !298 ; 2 uses
  %i.ie = load float, ptr %i.ic, align 4, !tbaa !298
  store float %i.ie, ptr %i.ib, align 4, !tbaa !298
  store float %i.id, ptr %i.ic, align 4, !tbaa !298
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %gep411, i64 %indvars.iv.next ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !298
  store float %i.ig, ptr %i.ic, align 4, !tbaa !298
  store float %i.id, ptr %i.if, align 4, !tbaa !298
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.gr
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !764

bb.au:                                            ; preds = %._crit_edge325.split
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !772
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %30, ptr noundef nonnull align 8 dereferenceable(208) %31)
          to label %bb.av unwind label %bb.bm

bb.av:                                            ; preds = %bb.au
  %i.ih = load ptr, ptr %30, align 8, !tbaa !327  ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !54
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8
  invoke void %i.ik(ptr noundef nonnull align 8 dereferenceable(8) %i.ih, ptr noundef nonnull align 8 dereferenceable(688) %30, ptr noundef nonnull align 8 dereferenceable(208) %22, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.bn, !inline_history !16

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.av
  %i.il = getelementptr inbounds nuw i8, ptr %30, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.il) #26
  %i.im = getelementptr inbounds nuw i8, ptr %30, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.im) #26
  %i.in = getelementptr inbounds nuw i8, ptr %30, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.in) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  %i.io = load i32, ptr %i.gi, align 8, !tbaa !767 ; 2 uses
  %i.ip = sub nsw i32 %i.io, %i.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !773
  store i32 %i.ip, ptr %5, align 4, !tbaa !329, !noalias !773
  %i.iq = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.io, ptr %i.iq, align 4, !tbaa !330, !noalias !773
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !773
  store i64 9223372034707292160, ptr %6, align 8, !noalias !773
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %33, ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.aw unwind label %bb.bq

bb.aw:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !773
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !773
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %32, ptr noundef nonnull align 8 dereferenceable(208) %33)
          to label %bb.ax unwind label %bb.br

bb.ax:                                            ; preds = %bb.aw
  %i.ir = load ptr, ptr %32, align 8, !tbaa !327  ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !54
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iu = load ptr, ptr %i.it, align 8
  invoke void %i.iu(ptr noundef nonnull align 8 dereferenceable(8) %i.ir, ptr noundef nonnull align 8 dereferenceable(688) %32, ptr noundef nonnull align 8 dereferenceable(208) %21, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit236 unwind label %bb.bs, !inline_history !16

end_hunk_0
