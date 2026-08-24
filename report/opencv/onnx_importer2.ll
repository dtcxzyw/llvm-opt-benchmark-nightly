Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/onnx_importer2?download=true
inline.NumInlined: 6221
inline.NumDeleted: 1408
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060513ONNXImporter218parseConvTransposeERNS1_11LayerParamsERKN11opencv_onnx9NodeProtoE:bb.a

bb.g:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !12 ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.af, i64 12)
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !94
  %i.aj = call i32 @memcmp(ptr noundef nonnull %i.p, ptr noundef %i.ai, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.g
  %i.ak = sub i64 12, %i.af
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ak, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.thread: ; preds = %._crit_edge.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %._crit_edge.i.i392

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.aj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.al = icmp sgt i32 %.0.i.i.i.i.i.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br i1 %i.al, label %._crit_edge.i.i135, label %._crit_edge.i.i392

._crit_edge.i.i135:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.am, ptr %10, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.am, ptr noundef nonnull align 1 dereferenceable(12) @.str.208, i64 12, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 12, ptr %i.an, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i8 0, ptr %i.ao, align 4, !tbaa !15
  %i.ap = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK2cv3dnn14dnn5_v202606054Dict3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %._crit_edge.i.i135
  %i.aq = load ptr, ptr %10, align 8, !tbaa !94   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.am
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.h
  %i.as = load i64, ptr %i.am, align 8, !tbaa !15
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.au, ptr %12, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.au, ptr noundef nonnull align 1 dereferenceable(6) @.str.11, i64 6, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 6, ptr %i.av, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 22
  store i8 0, ptr %i.aw, align 2, !tbaa !15
  %i.ax = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK2cv3dnn14dnn5_v202606054Dict3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  invoke void @_ZN2cv3dnn14dnn5_v202606059DictValueC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %12, align 8, !tbaa !94   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.au
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.j
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !15
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.bc, ptr %13, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bc, ptr noundef nonnull align 1 dereferenceable(11) @.str.9, i64 11, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 11, ptr %i.bd, align 8, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 27
  store i8 0, ptr %i.be, align 1, !tbaa !15
  %i.bf = load ptr, ptr %i.s, align 8, !tbaa !21  ; 2 uses
  %.not10.i.i.i.i153 = icmp eq ptr %i.bf, null
  br i1 %.not10.i.i.i.i153, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185.thread, label %.lr.ph.i.i.i.i154

.lr.ph.i.i.i.i154:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i160
  %.012.i.i.i.i155 = phi ptr [ %.1.i.i.i.i165, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i160 ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ] ; 4 uses
  %.0811.i.i.i.i156 = phi ptr [ %.19.i.i.i.i162, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i160 ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i155, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !12 ; 3 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i178, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i158

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i158: ; preds = %.lr.ph.i.i.i.i154
  %.sroa.speculated.i.i.i.i.i.i.i157 = call i64 @llvm.umin.i64(i64 %i.bh, i64 11)
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i155, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !94
  %i.bl = call i32 @memcmp(ptr noundef %i.bk, ptr noundef nonnull %i.bc, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i157) #24 ; 2 uses
  %.not.i.i.i.i.i.i.i159 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i.i159, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i178, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i160

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i178: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i158, %.lr.ph.i.i.i.i154
  %i.bm = add i64 %i.bh, -11
  %spec.select7.i.i.i.i.i.i.i.i179 = call i64 @llvm.smax.i64(i64 %i.bm, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i180 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i179, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i181 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i180 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i160

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i160: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i178, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i158
  %.0.i.i.i.i.i.i.i161 = phi i32 [ %i.bl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i158 ], [ %.0.i6.i.i.i.i.i.i.i181, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i178 ]
  %i.bn = icmp slt i32 %.0.i.i.i.i.i.i.i161, 0    ; 2 uses
  %.19.i.i.i.i162 = select i1 %i.bn, ptr %.0811.i.i.i.i156, ptr %.012.i.i.i.i155 ; 4 uses
  %.1.in.v.i.i.i.i163 = select i1 %i.bn, i64 24, i64 16
  %.1.in.i.i.i.i164 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i155, i64 %.1.in.v.i.i.i.i163
  %.1.i.i.i.i165 = load ptr, ptr %.1.in.i.i.i.i164, align 8, !tbaa !317 ; 2 uses
  %.not.i.i.i.i166 = icmp eq ptr %.1.i.i.i.i165, null
  br i1 %.not.i.i.i.i166, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i167, label %.lr.ph.i.i.i.i154, !llvm.loop !579

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i167: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i160
  %i.bo = icmp eq ptr %.19.i.i.i.i162, %i.u
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185.thread, label %bb.k

bb.k:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i167
  %i.bp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i162, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !12 ; 3 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i174, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i169

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i169: ; preds = %bb.k
  %.sroa.speculated.i.i.i.i.i.i168 = call i64 @llvm.umin.i64(i64 %i.bq, i64 11)
  %i.bs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i162, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !94
  %i.bu = call i32 @memcmp(ptr noundef nonnull %i.bc, ptr noundef %i.bt, i64 noundef %.sroa.speculated.i.i.i.i.i.i168) #24 ; 2 uses
  %.not.i.i.i.i.i.i170 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i170, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i174, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i174: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i169, %bb.k
  %i.bv = sub i64 11, %i.bq
  %spec.select7.i.i.i.i.i.i.i175 = call i64 @llvm.smax.i64(i64 %i.bv, i64 -2147483648)
  %.08.i.i.i.i.i.i.i176 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i175, i64 2147483647)
  %.0.i6.i.i.i.i.i.i177 = trunc nsw i64 %.08.i.i.i.i.i.i.i176 to i32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i169, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i174
  %.0.i.i.i.i.i.i172 = phi i32 [ %i.bu, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i169 ], [ %.0.i6.i.i.i.i.i.i177, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i174 ]
  %i.bw = icmp sgt i32 %.0.i.i.i.i.i.i172, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br i1 %i.bw, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !406
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !92 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 712
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !604
  %i.ce = sext i32 %i.cd to i64                   ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 720
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !391
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !392 ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = sdiv exact i64 %i.ck, 96                ; 2 uses
  %.not.i.i = icmp ugt i64 %i.cl, %i.ce
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.563, i64 noundef %i.ce, i64 noundef %i.cl) #26
          to label %.noexc186 unwind label %bb.q

.noexc186:                                        ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw [96 x i8], ptr %i.ch, i64 %i.ce ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 36 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !463 ; 2 uses
  %i.cp = icmp sgt i32 %i.co, 2
  br i1 %i.cp, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.n
  %i.cq = add nsw i32 %i.co, -2                   ; 4 uses
  %i.cr = zext nneg i32 %i.cq to i64              ; 5 uses
  %i.cs = shl nuw nsw i64 %i.cr, 2                ; 3 uses
  %i.ct = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #29
          to label %.noexc191 unwind label %bb.r  ; 8 uses

.noexc191:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  store i32 0, ptr %i.ct, align 4, !tbaa !104
  %i.cu = add nsw i64 %i.cr, -1                   ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %.lr.ph, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc191
  %i.cw = getelementptr i8, ptr %i.ct, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cu, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cw, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !104
  br label %.lr.ph

.lr.ph:                                           ; preds = %.noexc191, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %wide.trip.count = zext i32 %i.cq to i64        ; 3 uses
  br label %bb.s

._crit_edge.i.i192:                               ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.cy, ptr %14, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cy, ptr noundef nonnull align 1 dereferenceable(11) @.str.9, i64 11, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 11, ptr %i.cz, align 8, !tbaa !12
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 27
  store i8 0, ptr %i.da, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.db = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %.noexc212 unwind label %bb.ab ; 6 uses

bb.o:                                             ; preds = %._crit_edge.i.i135
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load ptr, ptr %10, align 8, !tbaa !94   ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.am
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %bb.o
  %i.df = load i64, ptr %i.am, align 8, !tbaa !15
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.cr

bb.p:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %12, align 8, !tbaa !94   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.au
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %bb.p
  %i.dk = load i64, ptr %i.au, align 8, !tbaa !15
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.cm

bb.q:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit223

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit223

bb.s:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 3 uses
  %i.do = add nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.dp = load i32, ptr %i.cn, align 4, !tbaa !463
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %i.do, %i.dq
  br i1 %i.dr, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.544, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc210 unwind label %bb.x

.noexc210:                                        ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.545, i32 noundef 103) #26
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.noexc210
  unreachable

bb.v:                                             ; preds = %.noexc210
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %i.dt = load ptr, ptr %5, align 8, !tbaa !94    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.v
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !15
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.body

bb.w:                                             ; preds = %bb.s
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.do
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !104
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !104
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.i.i192, label %bb.s, !llvm.loop !609

bb.x:                                             ; preds = %bb.t
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc212:                                        ; preds = %._crit_edge.i.i192
  %i.ec = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  store ptr %i.ec, ptr %i.db, align 8, !tbaa !273, !noalias !606
  %i.ed = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.not.i.i.i = icmp ugt i32 %i.cq, 1
  store i64 %i.cr, ptr %i.ed, align 8, !tbaa !275, !noalias !606
  br i1 %.not.i.i.i, label %bb.y, label %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i

bb.y:                                             ; preds = %.noexc212
  %i.ee = shl nuw nsw i64 %i.cr, 3
  %i.ef = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ee) #29
          to label %.noexc.i211 unwind label %bb.z, !noalias !606 ; 2 uses

.noexc.i211:                                      ; preds = %bb.y
  store ptr %i.ef, ptr %i.db, align 8, !tbaa !273, !noalias !606
  br label %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i

_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i:             ; preds = %.noexc.i211, %.noexc212
  %i.eg = phi ptr [ %i.ef, %.noexc.i211 ], [ %i.ec, %.noexc212 ] ; 2 uses
  store i32 0, ptr %15, align 8, !tbaa !276, !alias.scope !606
  %i.eh = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.db, ptr %i.eh, align 8, !tbaa !15, !alias.scope !606
  %min.iters.check = icmp ult i32 %i.cq, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 4 uses
  %i.ei = shl nuw nsw i64 %n.vec, 2
  %i.ej = getelementptr i8, ptr %i.ct, i64 %i.ei
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ek = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ct, i64 %i.ek ; 2 uses
  %i.el = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !104, !noalias !606
  %wide.load734 = load <2 x i32>, ptr %i.el, align 4, !tbaa !104, !noalias !606
  %i.em = sext <2 x i32> %wide.load to <2 x i64>
  %i.en = sext <2 x i32> %wide.load734 to <2 x i64>
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <2 x i64> %i.em, ptr %i.eo, align 8, !tbaa !93, !noalias !606
  store <2 x i64> %i.en, ptr %i.ep, align 8, !tbaa !93, !noalias !606
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !610

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i ], [ %n.vec, %middle.block ]
  %.0910.i.ph = phi ptr [ %i.ct, %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i ], [ %i.ej, %middle.block ]
  br label %scalar.ph

bb.z:                                             ; preds = %bb.y
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 24) #27, !noalias !606
  br label %.body213

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0910.i = phi ptr [ %i.ev, %scalar.ph ], [ %.0910.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.es = load i32, ptr %.0910.i, align 4, !tbaa !104, !noalias !606
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv.i
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !93, !noalias !606
  %i.ev = getelementptr inbounds nuw i8, ptr %.0910.i, i64 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.cr
  br i1 %exitcond.not.i, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit, label %scalar.ph, !llvm.loop !611

_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit: ; preds = %scalar.ph, %middle.block
  %i.ew = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.aa unwind label %bb.ac     ; 0 uses

bb.aa:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.ex = load ptr, ptr %14, align 8, !tbaa !94   ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.cy
  br i1 %i.ey, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215: ; preds = %bb.aa
  %i.ez = load i64, ptr %i.cy, align 8, !tbaa !15
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i216: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cs) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.ab:                                            ; preds = %._crit_edge.i.i192
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body213

bb.ac:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
  br label %.body213

.body213:                                         ; preds = %bb.ab, %bb.z, %bb.ac
  %.pn96 = phi { ptr, i32 } [ %i.fc, %bb.ac ], [ %i.fb, %bb.ab ], [ %i.er, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.fd = load ptr, ptr %14, align 8, !tbaa !94   ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.cy
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %.body213
  %i.ff = load i64, ptr %i.cy, align 8, !tbaa !15
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %.body213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.x
  %.pn123 = phi { ptr, i32 } [ %.pn96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %i.eb, %bb.x ], [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cs) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit223

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i216, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.fh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.fh, ptr %17, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.fh, ptr noundef nonnull align 1 dereferenceable(11) @.str.9, i64 11, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 11, ptr %i.fi, align 8, !tbaa !12
  %i.fj = getelementptr inbounds nuw i8, ptr %17, i64 27
  store i8 0, ptr %i.fj, align 1, !tbaa !15
  %i.fk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK2cv3dnn14dnn5_v202606054Dict3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.ad unwind label %bb.ap

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  invoke void @_ZN2cv3dnn14dnn5_v202606059DictValueC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %i.fk)
          to label %bb.ae unwind label %bb.ap

bb.ae:                                            ; preds = %bb.ad
  %i.fl = load ptr, ptr %17, align 8, !tbaa !94   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.fh
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.ae
  %i.fn = load i64, ptr %i.fh, align 8, !tbaa !15
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.fp = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 10 uses
  store ptr %i.fp, ptr %18, align 8, !tbaa !8
  %i.fq = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 6 uses
  store i64 0, ptr %i.fq, align 8, !tbaa !12
  store i8 0, ptr %i.fp, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.fr = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  store ptr %i.fr, ptr %19, align 8, !tbaa !8
  store i64 7306087011044319600, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 8, ptr %i.fs, align 8, !tbaa !12
  %i.ft = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i8 0, ptr %i.ft, align 8, !tbaa !15
  %i.fu = load ptr, ptr %i.s, align 8, !tbaa !21  ; 2 uses
  %.not10.i.i.i.i235 = icmp eq ptr %i.fu, null
  br i1 %.not10.i.i.i.i235, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.thread, label %.lr.ph.i.i.i.i236

.lr.ph.i.i.i.i236:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i242
  %.012.i.i.i.i237 = phi ptr [ %.1.i.i.i.i247, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i242 ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ] ; 4 uses
  %.0811.i.i.i.i238 = phi ptr [ %.19.i.i.i.i244, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i242 ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i237, i64 40
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !12 ; 3 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i260, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i240

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i240: ; preds = %.lr.ph.i.i.i.i236
  %.sroa.speculated.i.i.i.i.i.i.i239 = call i64 @llvm.umin.i64(i64 %i.fw, i64 8)
  %i.fy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i237, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !94
  %i.ga = call i32 @memcmp(ptr noundef %i.fz, ptr noundef nonnull %i.fr, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i239) #24 ; 2 uses
  %.not.i.i.i.i.i.i.i241 = icmp eq i32 %i.ga, 0
  br i1 %.not.i.i.i.i.i.i.i241, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i260, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i242

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i260: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i240, %.lr.ph.i.i.i.i236
  %i.gb = add i64 %i.fw, -8
  %spec.select7.i.i.i.i.i.i.i.i261 = call i64 @llvm.smax.i64(i64 %i.gb, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i262 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i261, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i263 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i262 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i242

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i242: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i260, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i240
  %.0.i.i.i.i.i.i.i243 = phi i32 [ %i.ga, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i240 ], [ %.0.i6.i.i.i.i.i.i.i263, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i260 ]
  %i.gc = icmp slt i32 %.0.i.i.i.i.i.i.i243, 0    ; 2 uses
  %.19.i.i.i.i244 = select i1 %i.gc, ptr %.0811.i.i.i.i238, ptr %.012.i.i.i.i237 ; 4 uses
  %.1.in.v.i.i.i.i245 = select i1 %i.gc, i64 24, i64 16
  %.1.in.i.i.i.i246 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i237, i64 %.1.in.v.i.i.i.i245
  %.1.i.i.i.i247 = load ptr, ptr %.1.in.i.i.i.i246, align 8, !tbaa !317 ; 2 uses
  %.not.i.i.i.i248 = icmp eq ptr %.1.i.i.i.i247, null
  br i1 %.not.i.i.i.i248, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i249, label %.lr.ph.i.i.i.i236, !llvm.loop !579

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i249: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i242
  %i.gd = icmp eq ptr %.19.i.i.i.i244, %i.u
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.thread, label %bb.af

bb.af:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i249
  %i.ge = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i244, i64 40
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !12 ; 3 uses
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i256, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i251

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i251: ; preds = %bb.af
  %.sroa.speculated.i.i.i.i.i.i250 = call i64 @llvm.umin.i64(i64 %i.gf, i64 8)
  %i.gh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i244, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !94
  %i.gj = call i32 @memcmp(ptr noundef nonnull %i.fr, ptr noundef %i.gi, i64 noundef %.sroa.speculated.i.i.i.i.i.i250) #24 ; 2 uses
  %.not.i.i.i.i.i.i252 = icmp eq i32 %i.gj, 0
  br i1 %.not.i.i.i.i.i.i252, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i256, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i256: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i251, %bb.af
  %i.gk = sub i64 8, %i.gf
  %spec.select7.i.i.i.i.i.i.i257 = call i64 @llvm.smax.i64(i64 %i.gk, i64 -2147483648)
  %.08.i.i.i.i.i.i.i258 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i257, i64 2147483647)
  %.0.i6.i.i.i.i.i.i259 = trunc nsw i64 %.08.i.i.i.i.i.i.i258 to i32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606059DictValueEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i251, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i256
  %.0.i.i.i.i.i.i254 = phi i32 [ %i.gj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i251 ], [ %.0.i6.i.i.i.i.i.i259, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i256 ]
  %i.gl = icmp sgt i32 %.0.i.i.i.i.i.i254, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br i1 %i.gl, label %._crit_edge.i.i268, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267
  %i.gm = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.br

._crit_edge.i.i268:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  %i.gn = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.gn, ptr %22, align 8, !tbaa !8
  store i64 7306087011044319600, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 8, ptr %i.go, align 8, !tbaa !12
  %i.gp = getelementptr inbounds nuw i8, ptr %22, i64 24
  store i8 0, ptr %i.gp, align 8, !tbaa !15
  %i.gq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK2cv3dnn14dnn5_v202606054Dict3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %.noexc272 unwind label %bb.aq

.noexc272:                                        ; preds = %._crit_edge.i.i268
  invoke void @_ZNK2cv3dnn14dnn5_v202606059DictValue3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_i(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i32 noundef -1)
          to label %_ZNK2cv3dnn14dnn5_v202606054Dict3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS9_.exit unwind label %bb.aq

_ZNK2cv3dnn14dnn5_v202606054Dict3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS9_.exit: ; preds = %.noexc272
  %.val = load ptr, ptr %21, align 8, !tbaa !94   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.val131 = load i64, ptr %i.gr, align 8, !tbaa !12 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
end_hunk_0
