Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FrameAnalysis?download=true
inline.NumInlined: 3757
inline.NumDeleted: 2078
begin_hunk_0_@_ZN4llvm4bolt13FrameAnalysis19computeArgsAccessedERNS0_14BinaryFunctionE:bb.a
  br i1 %i.ev, label %.critedge.i123, label %bb.s

bb.s:                                             ; preds = %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEE11lower_boundERSD_.exit.i121
  %i.ew = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i116, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !301
  %i.ey = icmp ult ptr %1, %i.ex
  br i1 %i.ey, label %.critedge.i123, label %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEEixEOS4_.exit125

.critedge.i123:                                   ; preds = %bb.s, %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEE11lower_boundERSD_.exit.i121, %bb.r
  %.08.lcssa.i.i.i11.i124 = phi ptr [ %.19.i.i.i.i116, %bb.s ], [ %.19.i.i.i.i116, %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEE11lower_boundERSD_.exit.i121 ], [ %i.ct, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %i.d, ptr %6, align 8, !tbaa !279, !alias.scope !662
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ez = call ptr @_ZNSt8_Rb_treeIPKN4llvm4bolt14BinaryFunctionESt4pairIKS4_St3setIS5_IlhESt4lessIS8_ESaIS8_EEESt10_Select1stISD_ES9_IS4_ESaISD_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESN_IJEEEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.cr, ptr %.08.lcssa.i.i.i11.i124, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.pre = load i64, ptr %i.cq, align 8, !tbaa !182
  br label %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEEixEOS4_.exit125

_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEEixEOS4_.exit125: ; preds = %bb.s, %.critedge.i123
  %i.fa = phi i64 [ %.pre, %.critedge.i123 ], [ %i.ep, %bb.s ] ; 4 uses
  %.sroa.06.0.i122 = phi ptr [ %i.ez, %.critedge.i123 ], [ %.19.i.i.i.i116, %bb.s ] ; 2 uses
  %i.fb = load i8, ptr %i.cu, align 8, !tbaa !41  ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i122, i64 56
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !232 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i122, i64 48 ; 6 uses
  %.not11.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not11.i.i.i, label %_ZNSt3setISt4pairIlhESt4lessIS1_ESaIS1_EE4findERKS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEEixEOS4_.exit125, %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.thread10.i.i.i
  %.013.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.thread10.i.i.i ], [ %i.fd, %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEEixEOS4_.exit125 ] ; 5 uses
  %.0812.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.thread10.i.i.i ], [ %i.fe, %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEEixEOS4_.exit125 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !303 ; 2 uses
  %i.fh = icmp slt i64 %i.fg, %i.fa
  br i1 %i.fh, label %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.thread.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.fi = icmp slt i64 %i.fa, %i.fg
  br i1 %i.fi, label %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.thread10.i.i.i, label %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.i.i.i

_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.i.i.i:   ; preds = %bb.t
  %i.fj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !304
  %i.fl = icmp ult i8 %i.fk, %i.fb
  br i1 %i.fl, label %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.thread.i.i.i, label %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.thread10.i.i.i

_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.i.i.i, %.lr.ph.i.i.i
  br label %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.thread10.i.i.i

_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.thread10.i.i.i: ; preds = %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.thread.i.i.i, %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.i.i.i, %bb.t
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.thread.i.i.i ], [ 16, %bb.t ], [ 16, %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0812.i.i.i, %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.thread.i.i.i ], [ %.013.i.i.i, %bb.t ], [ %.013.i.i.i, %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.i.i.i ] ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.fm, align 8, !tbaa !236 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeISt4pairIlhES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZNSt8_Rb_treeISt4pairIlhES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.thread10.i.i.i
  %i.fn = icmp eq ptr %.19.i.i.i, %i.fe
  br i1 %i.fn, label %_ZNSt3setISt4pairIlhESt4lessIS1_ESaIS1_EE4findERKS1_.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt8_Rb_treeISt4pairIlhES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !303 ; 2 uses
  %i.fq = icmp slt i64 %i.fa, %i.fp
  br i1 %i.fq, label %_ZNSt3setISt4pairIlhESt4lessIS1_ESaIS1_EE4findERKS1_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fr = icmp slt i64 %i.fp, %i.fa
  br i1 %i.fr, label %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.thread6.i.i, label %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.i.i

_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.i.i:     ; preds = %bb.v
  %i.fs = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !304
  %i.fu = icmp ult i8 %i.fb, %i.ft
  br i1 %i.fu, label %_ZNSt3setISt4pairIlhESt4lessIS1_ESaIS1_EE4findERKS1_.exit, label %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.thread6.i.i

_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.thread6.i.i: ; preds = %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.i.i, %bb.v
  br label %_ZNSt3setISt4pairIlhESt4lessIS1_ESaIS1_EE4findERKS1_.exit

_ZNSt3setISt4pairIlhESt4lessIS1_ESaIS1_EE4findERKS1_.exit: ; preds = %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEEixEOS4_.exit125, %_ZNSt8_Rb_treeISt4pairIlhES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, %bb.u, %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.i.i, %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.thread6.i.i
  %.sroa.0.0.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.thread6.i.i ], [ %i.fe, %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEEixEOS4_.exit125 ], [ %i.fe, %_ZNSt8_Rb_treeISt4pairIlhES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ], [ %i.fe, %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit.i.i ], [ %i.fe, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store ptr %1, ptr %i.e, align 8, !tbaa !293
  %i.fv = load ptr, ptr %i.cs, align 8, !tbaa !232 ; 2 uses
  %.not10.i.i.i.i128 = icmp eq ptr %i.fv, null
  br i1 %.not10.i.i.i.i128, label %.critedge.i139, label %.lr.ph.i.i.i.i129

.lr.ph.i.i.i.i129:                                ; preds = %_ZNSt3setISt4pairIlhESt4lessIS1_ESaIS1_EE4findERKS1_.exit, %.lr.ph.i.i.i.i129
  %.012.i.i.i.i130 = phi ptr [ %.1.i.i.i.i135, %.lr.ph.i.i.i.i129 ], [ %i.fv, %_ZNSt3setISt4pairIlhESt4lessIS1_ESaIS1_EE4findERKS1_.exit ] ; 3 uses
  %.0811.i.i.i.i131 = phi ptr [ %.19.i.i.i.i132, %.lr.ph.i.i.i.i129 ], [ %i.ct, %_ZNSt3setISt4pairIlhESt4lessIS1_ESaIS1_EE4findERKS1_.exit ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i130, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !293
  %i.fy = icmp ult ptr %i.fx, %1                  ; 2 uses
  %.19.i.i.i.i132 = select i1 %i.fy, ptr %.0811.i.i.i.i131, ptr %.012.i.i.i.i130 ; 6 uses
  %.1.in.v.i.i.i.i133 = select i1 %i.fy, i64 24, i64 16
  %.1.in.i.i.i.i134 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i130, i64 %.1.in.v.i.i.i.i133
  %.1.i.i.i.i135 = load ptr, ptr %.1.in.i.i.i.i134, align 8, !tbaa !236 ; 2 uses
  %.not.i.i.i.i136 = icmp eq ptr %.1.i.i.i.i135, null
  br i1 %.not.i.i.i.i136, label %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEE11lower_boundERSD_.exit.i137, label %.lr.ph.i.i.i.i129, !llvm.loop !5

_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEE11lower_boundERSD_.exit.i137: ; preds = %.lr.ph.i.i.i.i129
  %i.fz = icmp eq ptr %.19.i.i.i.i132, %i.ct
  br i1 %i.fz, label %.critedge.i139, label %bb.w

bb.w:                                             ; preds = %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEE11lower_boundERSD_.exit.i137
  %i.ga = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i132, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !301
  %i.gc = icmp ult ptr %1, %i.gb
  br i1 %i.gc, label %.critedge.i139, label %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEEixEOS4_.exit141

.critedge.i139:                                   ; preds = %bb.w, %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEE11lower_boundERSD_.exit.i137, %_ZNSt3setISt4pairIlhESt4lessIS1_ESaIS1_EE4findERKS1_.exit
  %.08.lcssa.i.i.i11.i140 = phi ptr [ %.19.i.i.i.i132, %bb.w ], [ %.19.i.i.i.i132, %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEE11lower_boundERSD_.exit.i137 ], [ %i.ct, %_ZNSt3setISt4pairIlhESt4lessIS1_ESaIS1_EE4findERKS1_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.e, ptr %4, align 8, !tbaa !279, !alias.scope !663
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.gd = call ptr @_ZNSt8_Rb_treeIPKN4llvm4bolt14BinaryFunctionESt4pairIKS4_St3setIS5_IlhESt4lessIS8_ESaIS8_EEESt10_Select1stISD_ES9_IS4_ESaISD_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESN_IJEEEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.cr, ptr %.08.lcssa.i.i.i11.i140, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEEixEOS4_.exit141

_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEEixEOS4_.exit141: ; preds = %bb.w, %.critedge.i139
  %.sroa.06.0.i138 = phi ptr [ %i.gd, %.critedge.i139 ], [ %.19.i.i.i.i132, %bb.w ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i138, i64 48
  %.not225 = icmp eq ptr %.sroa.0.0.i.i, %i.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br i1 %.not225, label %bb.x, label %bb.z

bb.x:                                             ; preds = %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEEixEOS4_.exit141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  store ptr %1, ptr %i.f, align 8, !tbaa !293
  %i.gf = load ptr, ptr %i.cs, align 8, !tbaa !232 ; 2 uses
  %.not10.i.i.i.i142 = icmp eq ptr %i.gf, null
  br i1 %.not10.i.i.i.i142, label %.critedge.i153, label %.lr.ph.i.i.i.i143

.lr.ph.i.i.i.i143:                                ; preds = %bb.x, %.lr.ph.i.i.i.i143
  %.012.i.i.i.i144 = phi ptr [ %.1.i.i.i.i149, %.lr.ph.i.i.i.i143 ], [ %i.gf, %bb.x ] ; 3 uses
  %.0811.i.i.i.i145 = phi ptr [ %.19.i.i.i.i146, %.lr.ph.i.i.i.i143 ], [ %i.ct, %bb.x ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i144, i64 32
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !293
  %i.gi = icmp ult ptr %i.gh, %1                  ; 2 uses
  %.19.i.i.i.i146 = select i1 %i.gi, ptr %.0811.i.i.i.i145, ptr %.012.i.i.i.i144 ; 6 uses
  %.1.in.v.i.i.i.i147 = select i1 %i.gi, i64 24, i64 16
  %.1.in.i.i.i.i148 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i144, i64 %.1.in.v.i.i.i.i147
  %.1.i.i.i.i149 = load ptr, ptr %.1.in.i.i.i.i148, align 8, !tbaa !236 ; 2 uses
  %.not.i.i.i.i150 = icmp eq ptr %.1.i.i.i.i149, null
  br i1 %.not.i.i.i.i150, label %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEE11lower_boundERSD_.exit.i151, label %.lr.ph.i.i.i.i143, !llvm.loop !5

_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEE11lower_boundERSD_.exit.i151: ; preds = %.lr.ph.i.i.i.i143
  %i.gj = icmp eq ptr %.19.i.i.i.i146, %i.ct
  br i1 %i.gj, label %.critedge.i153, label %bb.y

bb.y:                                             ; preds = %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEE11lower_boundERSD_.exit.i151
  %i.gk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i146, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !301
  %i.gm = icmp ult ptr %1, %i.gl
  br i1 %i.gm, label %.critedge.i153, label %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEEixEOS4_.exit155

.critedge.i153:                                   ; preds = %bb.y, %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEE11lower_boundERSD_.exit.i151, %bb.x
  %.08.lcssa.i.i.i11.i154 = phi ptr [ %.19.i.i.i.i146, %bb.y ], [ %.19.i.i.i.i146, %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEE11lower_boundERSD_.exit.i151 ], [ %i.ct, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.f, ptr %2, align 8, !tbaa !279, !alias.scope !664
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.gn = call ptr @_ZNSt8_Rb_treeIPKN4llvm4bolt14BinaryFunctionESt4pairIKS4_St3setIS5_IlhESt4lessIS8_ESaIS8_EEESt10_Select1stISD_ES9_IS4_ESaISD_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESN_IJEEEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.cr, ptr %.08.lcssa.i.i.i11.i154, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEEixEOS4_.exit155

_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEEixEOS4_.exit155: ; preds = %bb.y, %.critedge.i153
  %.sroa.06.0.i152 = phi ptr [ %i.gn, %.critedge.i153 ], [ %.19.i.i.i.i146, %bb.y ]
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i152, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.gp = load i64, ptr %i.cq, align 8, !tbaa !182
  %i.gq = load i8, ptr %i.cu, align 8, !tbaa !41
  store i64 %i.gp, ptr %14, align 8
  store i8 %i.gq, ptr %.sroa.2.0..sroa_idx, align 8
  %i.gr = call { ptr, i8 } @_ZNSt8_Rb_treeISt4pairIlhES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_emplace_uniqueIJS1_EEES0_ISt17_Rb_tree_iteratorIS1_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.go, ptr noundef nonnull align 8 dereferenceable(9) %14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %bb.z

.thread219:                                       ; preds = %.thread.i, %_ZNKSt4lessISt4pairIlhEEclERKS1_S4_.exit5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.loopexit231

bb.z:                                             ; preds = %bb.q, %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEEixEOS4_.exit155, %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEEixEOS4_.exit141
  %.471.ph = phi i8 [ %spec.select, %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEEixEOS4_.exit141 ], [ %spec.select, %bb.q ], [ 1, %_ZNSt3mapIPKN4llvm4bolt14BinaryFunctionESt3setISt4pairIlhESt4lessIS7_ESaIS7_EES8_IS4_ESaIS6_IKS4_SB_EEEixEOS4_.exit155 ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0199.0240, i64 128 ; 2 uses
  %.not224 = icmp eq ptr %i.gs, %i.cy
  br i1 %.not224, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.z, %bb.h
  %.168.lcssa = phi i8 [ %.067244, %bb.h ], [ %.471.ph, %bb.z ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.079243, i64 8 ; 2 uses
  %.not86 = icmp eq ptr %i.gt, %i.cp
  br i1 %.not86, label %.loopexit231, label %bb.h

.loopexit231:                                     ; preds = %._crit_edge, %bb.g, %.thread219
  %.478 = phi i1 [ true, %.thread219 ], [ false, %bb.g ], [ false, %._crit_edge ]
  %.673 = phi i8 [ %.168241, %.thread219 ], [ 0, %bb.g ], [ %.168.lcssa, %._crit_edge ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !289, !noalias !665
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !290, !noalias !665 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !291, !noalias !665 ; 2 uses
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %.loopexit230, label %bb.aa

bb.aa:                                            ; preds = %.loopexit231
  %i.hb = add i32 %i.gz, -1                       ; 2 uses
  %i.hc = ptrtoint ptr %1 to i64
  %i.hd = mul i64 %i.hc, -4658895280553007687     ; 2 uses
  %i.he = lshr i64 %i.hd, 31
  %i.hf = xor i64 %i.he, %i.hd
  %i.hg = trunc i64 %i.hf to i32
  %i.hh = and i32 %i.hb, %i.hg                    ; 3 uses
  %i.hi = zext i32 %i.hh to i64                   ; 2 uses
  %i.hj = lshr i64 %i.hi, 5
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !223
  %i.hm = and i32 %i.hh, 31
  %i.hn = lshr i32 %i.hl, %i.hm
  %i.ho = trunc i32 %i.hn to i1
  br i1 %i.ho, label %.lr.ph.i.i.i.i159, label %.loopexit230, !prof !292

.lr.ph.i.i.i.i159:                                ; preds = %bb.aa, %bb.ab
  %i.hp = phi i64 [ %i.hv, %bb.ab ], [ %i.hi, %bb.aa ]
  %.019.i.i.i.i160 = phi i32 [ %i.hu, %bb.ab ], [ %i.hh, %bb.aa ]
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.hp
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !293
  %i.hs = icmp eq ptr %1, %i.hr
  br i1 %i.hs, label %_ZNK4llvm6detail12DenseSetImplIPKNS_4bolt14BinaryFunctionENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE5countES5_.exit161, label %bb.ab, !prof !257

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i159
  %i.ht = add nuw i32 %.019.i.i.i.i160, 1
  %i.hu = and i32 %i.ht, %i.hb                    ; 3 uses
  %i.hv = zext i32 %i.hu to i64                   ; 2 uses
  %i.hw = lshr i64 %i.hv, 5
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !223
  %i.hz = and i32 %i.hu, 31
  %i.ia = lshr i32 %i.hy, %i.hz
  %i.ib = trunc i32 %i.ia to i1
  br i1 %i.ib, label %.lr.ph.i.i.i.i159, label %.loopexit230, !prof !294

_ZNK4llvm6detail12DenseSetImplIPKNS_4bolt14BinaryFunctionENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE5countES5_.exit161: ; preds = %.lr.ph.i.i.i.i159
  %i.ic = trunc nuw i8 %.673 to i1
  br label %bb.ag

.loopexit230:                                     ; preds = %bb.ab, %.loopexit231, %bb.aa
  br i1 %.478, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.loopexit230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store ptr %1, ptr %i.g, align 8, !tbaa !293
  %i.id = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt14BinaryFunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull align 8 dereferenceable(8) %i.g), !noalias !666 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  br label %bb.ag

bb.ad:                                            ; preds = %.loopexit230
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 1240
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !56 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 1248
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !273 ; 2 uses
  %i.ii = zext i32 %i.ih to i64
  %.idx258 = shl nuw nsw i64 %i.ii, 3
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 %.idx258
  %.not259 = icmp eq i32 %i.ih, 0
  br i1 %.not259, label %.loopexit, label %.lr.ph252

.lr.ph252:                                        ; preds = %bb.ad, %.critedge89
  %.sroa.0181.0250 = phi ptr [ %i.ix, %.critedge89 ], [ %i.if, %bb.ad ] ; 2 uses
  %i.ik = load ptr, ptr %.sroa.0181.0250, align 8, !tbaa !337 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !338 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !338 ; 2 uses
  %.not229248 = icmp eq ptr %i.il, %i.in
  br i1 %.not229248, label %.critedge89, label %.critedge

bb.ae:                                            ; preds = %.critedge
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0177.0249, i64 128 ; 2 uses
  %.not229 = icmp eq ptr %i.io, %i.in
  br i1 %.not229, label %.critedge89, label %.critedge

.critedge:                                        ; preds = %.lr.ph252, %bb.ae
  %.sroa.0177.0249 = phi ptr [ %i.io, %bb.ae ], [ %i.il, %.lr.ph252 ] ; 2 uses
  %i.ip = load ptr, ptr %0, align 8, !tbaa !217, !nonnull !53, !align !218
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 1568
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !220 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !26
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 848
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = call noundef zeroext i1 %i.iu(ptr noundef nonnull align 8 dereferenceable(536) %i.ir, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0177.0249) #26
  br i1 %i.iv, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  store ptr %1, ptr %i.h, align 8, !tbaa !293
  %i.iw = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt14BinaryFunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull align 8 dereferenceable(8) %i.h), !noalias !667 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  br label %.loopexit

.critedge89:                                      ; preds = %bb.ae, %.lr.ph252
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0181.0250, i64 8 ; 2 uses
  %.not260 = icmp eq ptr %i.ix, %i.ij
  br i1 %.not260, label %.loopexit, label %.lr.ph252

.loopexit:                                        ; preds = %.critedge89, %bb.ad, %bb.af
  %i.iy = phi i1 [ true, %bb.af ], [ false, %bb.ad ], [ false, %.critedge89 ]
  %i.iz = trunc nuw i8 %.673 to i1
  %spec.select90 = select i1 %i.iy, i1 true, i1 %i.iz
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit, %bb.ac, %_ZNK4llvm6detail12DenseSetImplIPKNS_4bolt14BinaryFunctionENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE5countES5_.exit161
  %.5 = phi i1 [ %i.ic, %_ZNK4llvm6detail12DenseSetImplIPKNS_4bolt14BinaryFunctionENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE5countES5_.exit161 ], [ true, %bb.ac ], [ %spec.select90, %.loopexit ]
  %i.ja = load ptr, ptr %i.bt, align 8, !tbaa !326 ; 2 uses
  %.not.i.i.i.i172 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i.i172, label %_ZN4llvm4bolt12_GLOBAL__N_119FrameAccessAnalysisD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jb = load ptr, ptr %i.bz, align 8, !tbaa !339 ; 2 uses
  %i.jc = load ptr, ptr %i.ce, align 8, !tbaa !340 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = icmp ult ptr %i.jb, %i.jd
  br i1 %i.je, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseISt4pairIltESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ah, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.jg, %.lr.ph.i.i.i.i.i ], [ %i.jb, %bb.ah ] ; 3 uses
  %i.jf = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !327
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef 512) #27
  %i.jg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.jh = icmp ult ptr %.06.i.i.i.i.i, %i.jc
  br i1 %i.jh, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseISt4pairIltESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i.i, !llvm.loop !8

_ZNSt11_Deque_baseISt4pairIltESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.bt, align 8, !tbaa !326
  br label %_ZNSt11_Deque_baseISt4pairIltESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i.i

_ZNSt11_Deque_baseISt4pairIltESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseISt4pairIltESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i.i, %bb.ah
  %i.ji = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseISt4pairIltESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i.i ], [ %i.ja, %bb.ah ]
  %i.jj = load i64, ptr %i.bu, align 8, !tbaa !325
  %i.jk = shl i64 %i.jj, 3
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jk) #27
  br label %_ZN4llvm4bolt12_GLOBAL__N_119FrameAccessAnalysisD2Ev.exit

_ZN4llvm4bolt12_GLOBAL__N_119FrameAccessAnalysisD2Ev.exit: ; preds = %bb.ag, %_ZNSt11_Deque_baseISt4pairIltESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %_ZNK4llvm6detail12DenseSetImplIPKNS_4bolt14BinaryFunctionENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE5countES5_.exit

_ZNK4llvm6detail12DenseSetImplIPKNS_4bolt14BinaryFunctionENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE5countES5_.exit: ; preds = %.lr.ph.i.i.i.i93, %_ZN4llvm4bolt12_GLOBAL__N_119FrameAccessAnalysisD2Ev.exit, %.loopexit232
  %.6 = phi i1 [ %.5, %_ZN4llvm4bolt12_GLOBAL__N_119FrameAccessAnalysisD2Ev.exit ], [ true, %.loopexit232 ], [ false, %.lr.ph.i.i.i.i93 ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(121) ptr @_ZN4llvm4bolt13FrameAnalysis6getSPTERNS0_14BinaryFunctionE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(1360) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::unique_ptr.690", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !341
  %.not.not.i.i.i = icmp eq i64 %i.d, 0           ; 2 uses
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.e, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.d ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !241 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !293
  %i.h = icmp eq ptr %1, %i.g
  br i1 %i.h, label %.loopexit36, label %bb.c, !llvm.loop !668

bb.e:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %1 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = load i64, ptr %i.j, align 8, !tbaa !342  ; 3 uses
  %i.l = urem i64 %i.i, %i.k                      ; 3 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !343  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !244  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !241  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !293
  %i.s = icmp eq ptr %1, %i.r
  br i1 %i.s, label %.thread, label %.lr.ph.i.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.t = icmp eq ptr %1, %i.w
  br i1 %i.t, label %.loopexit36, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.020.i.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %i.p, %bb.f ]
  %i.u = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !241 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !293  ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = urem i64 %i.x, %i.k
  %.not19.i.i.i.i.i = icmp eq i64 %i.y, %i.l
  br i1 %.not19.i.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !9

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.h
  br label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr %1, ptr %i.a, align 8, !tbaa !293
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.z = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #30, !noalias !671 ; 2 uses
  tail call void @_ZN4llvm4bolt20StackPointerTrackingC1ERNS0_14BinaryFunctionEt(ptr noundef nonnull align 8 dereferenceable(121) %i.z, ptr noundef nonnull align 8 dereferenceable(1360) %1, i16 noundef zeroext 0) #26, !noalias !671
  store ptr %i.z, ptr %2, align 8, !tbaa !308, !alias.scope !671
  %i.aa = call { ptr, i8 } @_ZNSt10_HashtableIPKN4llvm4bolt14BinaryFunctionESt4pairIKS4_St10unique_ptrINS1_20StackPointerTrackingESt14default_deleteIS8_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJPS2_SB_EEES5_INSE_14_Node_iteratorISC_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !308   ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm4bolt20StackPointerTrackingESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm4bolt20StackPointerTrackingEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm4bolt20StackPointerTrackingEEclEPS2_.exit.i: ; preds = %.loopexit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(121) %i.ab) #26, !inline_history !10
  br label %_ZNSt10unique_ptrIN4llvm4bolt20StackPointerTrackingESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm4bolt20StackPointerTrackingESt14default_deleteIS2_EED2Ev.exit: ; preds = %.loopexit, %_ZNKSt14default_deleteIN4llvm4bolt20StackPointerTrackingEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.af = load i64, ptr %i.c, align 8, !tbaa !341
  %.not.not.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.not.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN4llvm4bolt20StackPointerTrackingESt14default_deleteIS2_EED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.j

end_hunk_0
begin_hunk_1_@_ZN4llvm4bolt12_GLOBAL__N_119FrameAccessAnalysis6doNextERKNS0_16BinaryBasicBlockERKNS_6MCInstE:bb.a
  store i64 %i.cu, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.cv, ptr %.sroa.2.0..sroa_idx, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !332 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !696
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -16
  %.not.i.i.i29 = icmp eq ptr %i.cx, %i.da
  br i1 %.not.i.i.i29, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !332
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store ptr %i.dc, ptr %i.cw, align 8, !tbaa !332
  br label %_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE4pushEOS1_.exit

bb.r:                                             ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_ZNSt5dequeISt4pairIltESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.dd, ptr noundef nonnull align 8 dereferenceable(10) %4)
  br label %_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE4pushEOS1_.exit

_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE4pushEOS1_.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.au

bb.s:                                             ; preds = %_ZNK4llvm4bolt14BinaryFunction9getCFIForERKNS_6MCInstE.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !355 ; 2 uses
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !355
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.dj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #26 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !188
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 32 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !189 ; 2 uses
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = icmp ult i64 %i.dq, 28
  br i1 %i.dr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ds = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dj, ptr noundef nonnull @.str.50, i64 noundef 28) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.dn, ptr noundef nonnull align 1 dereferenceable(28) @.str.50, i64 28, i1 false)
  %i.dt = load ptr, ptr %i.dm, align 8, !tbaa !189
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 28
  store ptr %i.du, ptr %i.dm, align 8, !tbaa !189
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.u, %bb.v
  %.0.i.i = phi ptr [ %i.ds, %bb.u ], [ %i.dj, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.dv = load ptr, ptr %i.bj, align 8, !tbaa !681, !nonnull !53, !align !218
  call void @_ZNK4llvm4bolt14BinaryFunction12getPrintNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1360) %i.dv)
  %i.dw = load ptr, ptr %5, align 8, !tbaa !40
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !179
  %i.dz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.dw, i64 noundef %i.dy) #26 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !188
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 32 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !189 ; 2 uses
  %i.ee = icmp eq ptr %i.eb, %i.ed
  br i1 %i.ee, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ef = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef nonnull @.str.51, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit32

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i8 10, ptr %i.ed, align 1
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !189
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  store ptr %i.eh, ptr %i.ec, align 8, !tbaa !189
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit32

_ZN4llvm11raw_ostreamlsEPKc.exit32:               ; preds = %bb.w, %bb.x
  %i.ei = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit32
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !41
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.pre = load ptr, ptr %i.de, align 8, !tbaa !355, !noalias !697
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s
  %i.en = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dg, %bb.s ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !329, !noalias !697 ; 2 uses
  %i.eq = icmp eq ptr %i.en, %i.ep
  br i1 %i.eq, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.er = getelementptr inbounds i8, ptr %i.en, i64 -16 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.er, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.en, i64 -8
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 8
  br label %_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE3popEv.exit

bb.aa:                                            ; preds = %bb.y
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !328, !noalias !697
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !327 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 496
  %.sroa.0.0.copyload37 = load i64, ptr %i.ew, align 8
  %.sroa.4.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.ev, i64 504
  %.sroa.4.0.copyload39 = load i16, ptr %.sroa.4.0..sroa_idx38, align 8
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef 512) #27
  %i.ex = load ptr, ptr %i.es, align 8, !tbaa !340
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -8 ; 2 uses
  store ptr %i.ey, ptr %i.es, align 8, !tbaa !328
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !327 ; 3 uses
  store ptr %i.ez, ptr %i.eo, align 8, !tbaa !329
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 512
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !330
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 496
  br label %_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE3popEv.exit

_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE3popEv.exit: ; preds = %bb.z, %bb.aa
  %.sroa.4.0.copyload42 = phi i16 [ %.sroa.4.0.copyload, %bb.z ], [ %.sroa.4.0.copyload39, %bb.aa ]
  %.sroa.0.0.copyload40 = phi i64 [ %.sroa.0.0.copyload, %bb.z ], [ %.sroa.0.0.copyload37, %bb.aa ]
  %storemerge.i.i = phi ptr [ %i.er, %bb.z ], [ %i.fc, %bb.aa ]
  store ptr %storemerge.i.i, ptr %i.de, align 8, !tbaa !332
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.0.copyload40, ptr %i.fd, align 8, !tbaa !323
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 %.sroa.4.0.copyload42, ptr %i.fe, align 8, !tbaa !324
  br label %bb.au

bb.ab:                                            ; preds = %.critedge23
  %i.ff = load ptr, ptr %i.bb, align 8, !tbaa !680, !nonnull !53, !align !218
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 1568
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !220 ; 2 uses
  %i.fi = load ptr, ptr %0, align 8, !tbaa !678, !nonnull !53, !align !218
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 120
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !365, !range !52, !noundef !53
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = load ptr, ptr %i.fh, align 8, !tbaa !26
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 768
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = call noundef zeroext i1 %i.fo(ptr noundef nonnull align 8 dereferenceable(536) %i.fh, ptr noundef nonnull align 8 dereferenceable(128) %2, i1 noundef zeroext %i.fl) #26
  br i1 %i.fp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.f, align 1, !tbaa !335
  %i.fq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14ExperimentalSWE, i64 120), align 8, !tbaa !371, !range !52, !noundef !53
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.ad, label %bb.au

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i16 0, ptr %i.b, align 2, !tbaa !242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 0, ptr %i.c, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i8 0, ptr %i.d, align 1, !tbaa !266
  %i.fs = load ptr, ptr %i.bb, align 8, !tbaa !680, !nonnull !53, !align !218
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 1568
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !220 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 146 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 162 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.gb = load ptr, ptr %i.fu, align 8, !tbaa !26
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 704
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = call noundef zeroext i1 %i.gd(ptr noundef nonnull align 8 dereferenceable(536) %i.fu, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.fv, ptr noundef nonnull align 1 dereferenceable(1) %i.fw, ptr noundef nonnull align 1 dereferenceable(1) %i.fx, ptr noundef nonnull align 2 dereferenceable(2) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 2 dereferenceable(2) %i.fy, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.fz, ptr noundef nonnull align 1 dereferenceable(1) %i.ga, ptr noundef nonnull align 1 dereferenceable(1) %i.d) #26, !inline_history !677
  br i1 %i.ge, label %bb.ae, label %_ZN4llvm4bolt12_GLOBAL__N_119FrameAccessAnalysis17decodeFrameAccessERKNS_6MCInstE.exit

bb.ae:                                            ; preds = %bb.ad
  %i.gf = load i8, ptr %i.d, align 1, !tbaa !266, !range !52, !noundef !53
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %_ZN4llvm4bolt12_GLOBAL__N_119FrameAccessAnalysis17decodeFrameAccessERKNS_6MCInstE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gh = load i8, ptr %i.fz, align 8, !tbaa !698
  %.not.i = icmp eq i8 %i.gh, 0
  %.pre.i = load i8, ptr %i.fv, align 8, !tbaa !699, !range !52
  %6 = trunc nuw i8 %.pre.i to i1                 ; 2 uses
  br i1 %.not.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  br i1 %6, label %_ZN4llvm4bolt12_GLOBAL__N_119FrameAccessAnalysis17decodeFrameAccessERKNS_6MCInstE.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gi = load i8, ptr %i.fw, align 1, !tbaa !700, !range !52, !noundef !53
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %_ZN4llvm4bolt12_GLOBAL__N_119FrameAccessAnalysis17decodeFrameAccessERKNS_6MCInstE.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.ah
  %i.gk = load i32, ptr %i.a, align 4, !tbaa !223
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !701
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.gm = load i32, ptr %i.a, align 4, !tbaa !223
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !701
  br i1 %6, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.thread.i
  %i.go = phi ptr [ %i.gl, %.thread.i ], [ %i.gn, %bb.ai ]
  %i.gp = load i8, ptr %i.fx, align 2, !tbaa !702, !range !52, !noundef !53
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gr = phi ptr [ %i.go, %bb.aj ], [ %i.gn, %bb.ai ]
  %i.gs = load i16, ptr %i.b, align 2, !tbaa !242
  %i.gt = zext i16 %i.gs to i32
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !701
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gu = load i16, ptr %i.fy, align 2, !tbaa !703
  %i.gv = load ptr, ptr %i.bb, align 8, !tbaa !680, !nonnull !53, !align !218
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1568
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !220 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !26
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 744
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = call noundef zeroext i16 %i.ha(ptr noundef nonnull align 8 dereferenceable(536) %i.gx) #26, !inline_history !677
  %i.hc = icmp eq i16 %i.gu, %i.hb
  br i1 %i.hc, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.hd = load i32, ptr %i.ba, align 8, !tbaa !321 ; 2 uses
  %.off.i = add i32 %i.hd, -2147483647
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.he = sext i32 %i.hd to i64
  br label %bb.at

bb.ao:                                            ; preds = %bb.am, %bb.al
  %i.hf = load i16, ptr %i.fy, align 2, !tbaa !703
  %i.hg = load ptr, ptr %i.bb, align 8, !tbaa !680, !nonnull !53, !align !218
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1568
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !220 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !26
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 752
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = call noundef zeroext i16 %i.hl(ptr noundef nonnull align 8 dereferenceable(536) %i.hi) #26, !inline_history !677
  %i.hn = icmp eq i16 %i.hf, %i.hm
  br i1 %i.hn, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ho = load i32, ptr %i.az, align 4, !tbaa !322 ; 2 uses
  %.off9.i = add i32 %i.ho, -2147483647
  %switch10.i = icmp ult i32 %.off9.i, 2
  br i1 %switch10.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hp = sext i32 %i.ho to i64
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %i.hq = load i16, ptr %i.fy, align 2, !tbaa !703
  %i.hr = zext i16 %i.hq to i32
  %i.hs = load ptr, ptr %i.bb, align 8, !tbaa !680, !nonnull !53, !align !218
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 1576
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !373
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hw = load i16, ptr %i.hv, align 8, !tbaa !324
  %i.hx = zext i16 %i.hw to i64
  %i.hy = call i64 @_ZNK4llvm14MCRegisterInfo13getLLVMRegNumEmb(ptr noundef nonnull align 8 dereferenceable(240) %i.hu, i64 noundef %i.hx, i1 noundef zeroext false) #26
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.hy to i32
  %i.hz = icmp eq i32 %.sroa.0.0.extract.trunc.i, %i.hr
  br i1 %i.hz, label %bb.as, label %_ZN4llvm4bolt12_GLOBAL__N_119FrameAccessAnalysis17decodeFrameAccessERKNS_6MCInstE.exit

bb.as:                                            ; preds = %bb.ar
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !323
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq, %bb.an
  %.sink15.i = phi i64 [ %i.hp, %bb.aq ], [ %i.ib, %bb.as ], [ %i.he, %bb.an ]
  %i.ic = load i64, ptr %i.c, align 8, !tbaa !182
  %i.id = add nsw i64 %i.ic, %.sink15.i
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.id, ptr %i.ie, align 8, !tbaa !704
  store i8 1, ptr %i.e, align 8, !tbaa !334
  br label %_ZN4llvm4bolt12_GLOBAL__N_119FrameAccessAnalysis17decodeFrameAccessERKNS_6MCInstE.exit

_ZN4llvm4bolt12_GLOBAL__N_119FrameAccessAnalysis17decodeFrameAccessERKNS_6MCInstE.exit: ; preds = %bb.ad, %bb.ae, %bb.ag, %bb.ah, %bb.ar, %bb.at
  %.0.i33 = phi i1 [ true, %bb.ad ], [ true, %bb.at ], [ false, %bb.ae ], [ false, %bb.ah ], [ false, %bb.ag ], [ false, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.au

bb.au:                                            ; preds = %bb.ac, %_ZNK4llvm16MCCFIInstruction11getRegisterEv.exit, %_ZNK4llvm16MCCFIInstruction9getOffsetEv.exit28, %_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE4pushEOS1_.exit, %_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE3popEv.exit, %_ZNK4llvm4bolt14BinaryFunction9getCFIForERKNS_6MCInstE.exit, %_ZN4llvm4bolt12_GLOBAL__N_119FrameAccessAnalysis17decodeFrameAccessERKNS_6MCInstE.exit
  %.0 = phi i1 [ true, %_ZNK4llvm16MCCFIInstruction11getRegisterEv.exit ], [ %.0.i33, %_ZN4llvm4bolt12_GLOBAL__N_119FrameAccessAnalysis17decodeFrameAccessERKNS_6MCInstE.exit ], [ true, %_ZNK4llvm4bolt14BinaryFunction9getCFIForERKNS_6MCInstE.exit ], [ true, %_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE3popEv.exit ], [ true, %_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE4pushEOS1_.exit ], [ true, %_ZNK4llvm16MCCFIInstruction9getOffsetEv.exit28 ], [ false, %bb.ac ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm4bolt13FrameAnalysis17restoreFrameIndexERNS0_14BinaryFunctionE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(1360) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::bolt::(anonymous namespace)::FrameAccessAnalysis", align 8 ; 24 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(121) ptr @_ZN4llvm4bolt13FrameAnalysis6getSPTERNS0_14BinaryFunctionE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(1360) %1)
  store ptr %i.b, ptr %2, align 8, !tbaa !308
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !309, !nonnull !53, !align !218
  store ptr %i.e, ptr %i.c, align 8, !tbaa !310
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.f, align 8, !tbaa !293
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.g, align 8, !tbaa !321
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 0, ptr %i.h, align 4, !tbaa !322
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 -8, ptr %i.i, align 8, !tbaa !323
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i16 7, ptr %i.j, align 8, !tbaa !324
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store i64 8, ptr %i.l, align 8, !tbaa !325
  %i.m = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 2 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !326
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #30 ; 6 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !327
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !328
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.o, ptr %i.r, align 8, !tbaa !329
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 512 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.s, ptr %i.t, align 8, !tbaa !330
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  store ptr %i.n, ptr %i.v, align 8, !tbaa !328
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 104
  store ptr %i.o, ptr %i.w, align 8, !tbaa !329
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 112
  store ptr %i.s, ptr %i.x, align 8, !tbaa !330
  store ptr %i.o, ptr %i.p, align 8, !tbaa !331
  store ptr %i.o, ptr %i.u, align 8, !tbaa !332
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  store ptr null, ptr %i.y, align 8, !tbaa !333
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !334
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 137 ; 2 uses
  store i8 0, ptr %i.aa, align 1, !tbaa !335
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1288
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1296
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !273 ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %.idx = shl nuw nsw i64 %i.af, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx
  %.not53 = icmp eq i32 %i.ae, 0
  br i1 %.not53, label %.critedge, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.al = ptrtoint ptr %1 to i64
  %i.am = mul i64 %i.al, -4658895280553007687     ; 2 uses
  %i.an = lshr i64 %i.am, 31
  %i.ao = xor i64 %i.an, %i.am
  %i.ap = trunc i64 %i.ao to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph57, %._crit_edge
  %.02854 = phi ptr [ %i.ac, %.lr.ph57 ], [ %i.bz, %._crit_edge ] ; 2 uses
  %i.aq = load ptr, ptr %.02854, align 8, !tbaa !337 ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !333
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !338 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !338 ; 2 uses
  %.not4651 = icmp eq ptr %i.ar, %i.at
  br i1 %.not4651, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.loopexit
  %.sroa.033.052 = phi ptr [ %i.by, %.loopexit ], [ %i.ar, %bb.b ] ; 3 uses
  %i.au = call fastcc noundef zeroext i1 @_ZN4llvm4bolt12_GLOBAL__N_119FrameAccessAnalysis6doNextERKNS0_16BinaryBasicBlockERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(192) %i.aq, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.033.052)
  br i1 %i.au, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %.val = load i8, ptr %i.aa, align 1, !tbaa !335, !range !52, !noundef !53
  %i.av = trunc nuw i8 %.val to i1
  br i1 %i.av, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !289, !noalias !715
  %i.ax = load ptr, ptr %i.aj, align 8, !tbaa !290, !noalias !715 ; 2 uses
  %i.ay = load i32, ptr %i.ak, align 4, !tbaa !291, !noalias !715 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.loopexit47, label %bb.e
end_hunk_1
