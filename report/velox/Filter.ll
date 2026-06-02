inline.NumInlined: 10428
inline.NumDeleted: 4080
begin_hunk_0_@_ZNK8facebook5velox6common18NegatedBytesValues9mergeWithEPKNS1_6FilterE:bb.a
  %.19.i.i.i.sroa.sel263.v.sroa.sel.v.sroa.sel.v = select i1 %i.fo, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel263.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel263.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.fs = load ptr, ptr %.19.i.i.i.sroa.sel263.v.sroa.sel.v.sroa.sel, align 8, !tbaa !29
  %i.ft = call i32 @memcmp(ptr noundef %i.fg, ptr noundef %i.fs, i64 noundef %.sroa.speculated.i.i.i.i.i) #44 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ft, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.ai
  %i.fu = sub i64 %i.ff, %i.fq
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.fu, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ft, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.fv = icmp sgt i32 %.0.i.i.i.i.i, -1
  %i.fw = zext i1 %i.fv to i8
  br label %.thread280

.thread280:                                       ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, %bb.ag, %bb.af
  %.sroa.0.0.i.i.sink = phi i8 [ 0, %bb.ag ], [ 1, %bb.af ], [ %i.fw, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ 0, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i ]
  store i8 %.sroa.0.0.i.i.sink, ptr %i.b, align 1, !tbaa !51
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fy = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11equal_rangeERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.fx)
          to label %.noexc105 unwind label %bb.aj ; 2 uses

.noexc105:                                        ; preds = %.thread280
  %i.fz = extractvalue { ptr, ptr } %i.fy, 0
  %i.ga = extractvalue { ptr, ptr } %i.fy, 1
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %i.fz, ptr %i.ga)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5eraseERKS5_.exit unwind label %bb.aj

bb.aj:                                            ; preds = %.noexc105, %.thread280
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5eraseERKS5_.exit: ; preds = %.noexc105, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #44
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 3 uses
  %i.gd = load i8, ptr %i.gc, align 2, !tbaa !239, !range !53, !noundef !57
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %.thread283, label %bb.ak

.thread283:                                       ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5eraseERKS5_.exit
  store i8 0, ptr %i.c, align 1, !tbaa !51
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5eraseERKS5_.exit139

bb.ak:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5eraseERKS5_.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 19
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !240, !range !53, !noundef !57
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %.thread284, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gi = load ptr, ptr %i.dz, align 8, !tbaa !1355 ; 2 uses
  %.not10.i.i.i107 = icmp eq ptr %i.gi, null
  br i1 %.not10.i.i.i107, label %.thread284, label %.lr.ph.i.i.i108

.lr.ph.i.i.i108:                                  ; preds = %bb.al
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !77 ; 4 uses
  %i.gm = load ptr, ptr %i.gj, align 8            ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i114, %.lr.ph.i.i.i108
  %.012.i.i.i109 = phi ptr [ %i.gi, %.lr.ph.i.i.i108 ], [ %.1.i.i.i119, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i114 ] ; 6 uses
  %.0811.i.i.i110 = phi ptr [ %i.dy, %.lr.ph.i.i.i108 ], [ %.19.i.i.i116, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i114 ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.012.i.i.i109, i64 40
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !77 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i111 = call i64 @llvm.umin.i64(i64 %i.gl, i64 %i.go) ; 2 uses
  %i.gp = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i111, 0
  br i1 %i.gp, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i132, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i112

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i112: ; preds = %bb.am
  %i.gq = getelementptr inbounds nuw i8, ptr %.012.i.i.i109, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !29
  %i.gs = call i32 @memcmp(ptr noundef %i.gr, ptr noundef %i.gm, i64 noundef %.sroa.speculated.i.i.i.i.i.i111) #44 ; 2 uses
  %.not.i.i.i.i.i.i113 = icmp eq i32 %i.gs, 0
  br i1 %.not.i.i.i.i.i.i113, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i132, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i114

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i132: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i112, %bb.am
  %i.gt = sub i64 %i.go, %i.gl
  %spec.select7.i.i.i.i.i.i.i133 = call i64 @llvm.smax.i64(i64 %i.gt, i64 -2147483648)
  %.08.i.i.i.i.i.i.i134 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i133, i64 2147483647)
  %.0.i6.i.i.i.i.i.i135 = trunc nsw i64 %.08.i.i.i.i.i.i.i134 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i114

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i114: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i132, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i112
  %.0.i.i.i.i.i.i115 = phi i32 [ %i.gs, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i112 ], [ %.0.i6.i.i.i.i.i.i135, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i132 ]
  %i.gu = icmp slt i32 %.0.i.i.i.i.i.i115, 0      ; 4 uses
  %.19.i.i.i116 = select i1 %i.gu, ptr %.0811.i.i.i110, ptr %.012.i.i.i109 ; 2 uses
  %.1.in.v.i.i.i117 = select i1 %i.gu, i64 24, i64 16
  %.1.in.i.i.i118 = getelementptr inbounds nuw i8, ptr %.012.i.i.i109, i64 %.1.in.v.i.i.i117
  %.1.i.i.i119 = load ptr, ptr %.1.in.i.i.i118, align 8, !tbaa !1359 ; 2 uses
  %.not.i.i.i120 = icmp eq ptr %.1.i.i.i119, null
  br i1 %.not.i.i.i120, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i121, label %bb.am, !llvm.loop !1360

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i121: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i114
  %i.gv = icmp eq ptr %.19.i.i.i116, %i.dy
  br i1 %i.gv, label %.thread284, label %bb.an

bb.an:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i121
  %.19.i.i.i116.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.gu, ptr %.0811.i.i.i110, ptr %.012.i.i.i109
  %.19.i.i.i116.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i116.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.gw = load i64, ptr %.19.i.i.i116.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !77 ; 2 uses
  %.sroa.speculated.i.i.i.i.i122 = call i64 @llvm.umin.i64(i64 %i.gw, i64 %i.gl) ; 2 uses
  %i.gx = icmp eq i64 %.sroa.speculated.i.i.i.i.i122, 0
  br i1 %i.gx, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i128, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i123

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i123: ; preds = %bb.an
  %.19.i.i.i116.sroa.sel266.v.sroa.sel.v.sroa.sel.v = select i1 %i.gu, ptr %.0811.i.i.i110, ptr %.012.i.i.i109
  %.19.i.i.i116.sroa.sel266.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i116.sroa.sel266.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.gy = load ptr, ptr %.19.i.i.i116.sroa.sel266.v.sroa.sel.v.sroa.sel, align 8, !tbaa !29
  %i.gz = call i32 @memcmp(ptr noundef %i.gm, ptr noundef %i.gy, i64 noundef %.sroa.speculated.i.i.i.i.i122) #44 ; 2 uses
  %.not.i.i.i.i.i124 = icmp eq i32 %i.gz, 0
  br i1 %.not.i.i.i.i.i124, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i128, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i125

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i128: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i123, %bb.an
  %i.ha = sub i64 %i.gl, %i.gw
  %spec.select7.i.i.i.i.i.i129 = call i64 @llvm.smax.i64(i64 %i.ha, i64 -2147483648)
  %.08.i.i.i.i.i.i130 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i129, i64 2147483647)
  %.0.i6.i.i.i.i.i131 = trunc nsw i64 %.08.i.i.i.i.i.i130 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i125

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i125: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i128, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i123
  %.0.i.i.i.i.i126 = phi i32 [ %i.gz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i123 ], [ %.0.i6.i.i.i.i.i131, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i128 ]
  %i.hb = icmp sgt i32 %.0.i.i.i.i.i126, -1
  %i.hc = zext i1 %i.hb to i8
  br label %.thread284

.thread284:                                       ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i125, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i121, %bb.al, %bb.ak
  %.sroa.0.0.i.i127.sink = phi i8 [ 0, %bb.al ], [ 1, %bb.ak ], [ %i.hc, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i125 ], [ 0, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i121 ]
  store i8 %.sroa.0.0.i.i127.sink, ptr %i.c, align 1, !tbaa !51
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.he = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11equal_rangeERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.hd)
          to label %.noexc137 unwind label %bb.ao ; 2 uses

.noexc137:                                        ; preds = %.thread284
  %i.hf = extractvalue { ptr, ptr } %i.he, 0
  %i.hg = extractvalue { ptr, ptr } %i.he, 1
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %i.hf, ptr %i.hg)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5eraseERKS5_.exit139 unwind label %bb.ao

bb.ao:                                            ; preds = %.noexc137, %.thread284
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5eraseERKS5_.exit139: ; preds = %.noexc137, %.thread283
  %.pr = load i64, ptr %i.ec, align 8, !tbaa !1358 ; 2 uses
  %i.hi = icmp eq i64 %.pr, 0
  br i1 %i.hi, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5eraseERKS5_.exit139
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #44
  %i.hk = load i8, ptr %i.el, align 8, !tbaa !236, !range !53, !noundef !57
  store i8 %i.hk, ptr %i.d, align 1, !tbaa !51
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #44
  %i.hm = load i8, ptr %i.gc, align 2, !tbaa !239, !range !53, !noundef !57
  store i8 %i.hm, ptr %i.e, align 1, !tbaa !51
  invoke void @_ZSt11make_uniqueIN8facebook5velox6common10BytesRangeEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRbSB_bSC_SC_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.208") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.hj, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.hl, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit unwind label %bb.aq

_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.ap
  %i.hn = load ptr, ptr %6, align 8, !tbaa !252
  store ptr %i.hn, ptr %0, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br label %bb.bq

bb.aq:                                            ; preds = %bb.ap
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br label %bb.bs

bb.ar:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5eraseERKS5_.exit139
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.hp = add i64 %.pr, 1                         ; 4 uses
  %i.hq = icmp ugt i64 %i.hp, 1152921504606846975
  br i1 %i.hq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.112) #45
          to label %.noexc147 unwind label %bb.ba

.noexc147:                                        ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.hr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %.not397 = icmp eq i64 %i.hp, 0
  br i1 %.not397, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i: ; preds = %bb.at
  %i.hs = shl nuw nsw i64 %i.hp, 3
  %i.ht = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #48
          to label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i unwind label %bb.ba ; 4 uses

_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i
  %i.hu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ht, ptr %7, align 8, !tbaa !320
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !323
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hp ; 2 uses
  store ptr %i.hv, ptr %i.hr, align 8, !tbaa !324
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i, %bb.at
  %i.hw = phi ptr [ %i.hv, %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i ], [ null, %bb.at ] ; 2 uses
  %i.hx = phi ptr [ %i.ht, %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i ], [ null, %bb.at ] ; 4 uses
  %i.hy = load ptr, ptr %i.ea, align 8, !tbaa !1356 ; 4 uses
  %i.hz = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.hy) #49 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #44
  %i.ib = load i8, ptr %i.el, align 8, !tbaa !236, !range !53, !noundef !57
  store i8 %i.ib, ptr %i.f, align 1, !tbaa !51
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #44
  store i8 0, ptr %i.g, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #44
  store i8 1, ptr %i.h, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #44
  store i8 0, ptr %i.i, align 1, !tbaa !51
  invoke void @_ZSt11make_uniqueIN8facebook5velox6common10BytesRangeEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRbSB_bbbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.208") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ia, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.ic, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %i.i)
          to label %bb.au unwind label %bb.bb

bb.au:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit
  %i.id = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  %.not.i149 = icmp eq ptr %i.hx, %i.hw
  br i1 %.not.i149, label %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit.thread: ; preds = %bb.au
  %i.ie = load ptr, ptr %8, align 8, !tbaa !252
  store ptr %i.ie, ptr %i.hx, align 8, !tbaa !104
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store ptr %i.if, ptr %i.id, align 8, !tbaa !323
  br label %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit159

_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.au
  %i.ig = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #48
          to label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i unwind label %bb.bc ; 4 uses

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.ih = load ptr, ptr %8, align 8, !tbaa !252
  store ptr null, ptr %8, align 8, !tbaa !252
  store ptr %i.ih, ptr %i.ig, align 8, !tbaa !104
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 4 uses
  %.not.i23.i = icmp eq ptr %i.hw, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit.thread402, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit.thread402: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  store ptr %i.ig, ptr %7, align 8, !tbaa !320
  store ptr %i.ii, ptr %i.id, align 8, !tbaa !323
  store ptr %i.ii, ptr %i.hr, align 8, !tbaa !324
  br label %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit159

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef 0) #46
  %.pr287.pre = load ptr, ptr %8, align 8, !tbaa !252 ; 6 uses
  store ptr %i.ig, ptr %7, align 8, !tbaa !320
  store ptr %i.ii, ptr %i.id, align 8, !tbaa !323
  store ptr %i.ii, ptr %i.hr, align 8, !tbaa !324
  %.not.i152 = icmp eq ptr %.pr287.pre, null
  br i1 %.not.i152, label %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit159, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit
  %i.ij = getelementptr inbounds nuw i8, ptr %.pr287.pre, i64 56
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !29 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.pr287.pre, i64 72 ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i153: ; preds = %bb.av
  %i.in = load i64, ptr %i.il, align 8, !tbaa !9
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.io) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i154: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i153
  %i.ip = getelementptr inbounds nuw i8, ptr %.pr287.pre, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !29 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.pr287.pre, i64 40 ; 2 uses
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %_ZNKSt14default_deleteIN8facebook5velox6common10BytesRangeEEclEPS3_.exit.i156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i154
  %i.it = load i64, ptr %i.ir, align 8, !tbaa !9
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.iu) #46
  br label %_ZNKSt14default_deleteIN8facebook5velox6common10BytesRangeEEclEPS3_.exit.i156

_ZNKSt14default_deleteIN8facebook5velox6common10BytesRangeEEclEPS3_.exit.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i155
  call void @_ZdlPvm(ptr noundef nonnull %.pr287.pre, i64 noundef 128) #46
  br label %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit159

_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit159: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit.thread402, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit, %_ZNKSt14default_deleteIN8facebook5velox6common10BytesRangeEEclEPS3_.exit.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  %i.iv = icmp eq ptr %i.hz, %i.dy
  br i1 %i.iv, label %._crit_edge320, label %.lr.ph319

.lr.ph319:                                        ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit159, %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit171
  %.sroa.0250.0318 = phi ptr [ %i.lg, %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit171 ], [ %i.hz, %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit159 ] ; 2 uses
  %.sroa.0253.0317 = phi ptr [ %i.lh, %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit171 ], [ %i.hy, %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit159 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #44
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0253.0317, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #44
  store i8 0, ptr %i.j, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #44
  store i8 1, ptr %i.k, align 1, !tbaa !51
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0250.0318, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #44
  store i8 0, ptr %i.l, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #44
  store i8 1, ptr %i.m, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #44
  store i8 0, ptr %i.n, align 1, !tbaa !51
  invoke void @_ZSt11make_uniqueIN8facebook5velox6common10BytesRangeEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbSB_bbbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.208") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.iw, ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.ix, ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull align 1 dereferenceable(1) %i.n)
          to label %bb.aw unwind label %bb.be

bb.aw:                                            ; preds = %.lr.ph319
  %11 = load ptr, ptr %i.id, align 8, !tbaa !323  ; 6 uses
  %12 = load ptr, ptr %i.hr, align 8, !tbaa !324
  %.not.i160 = icmp eq ptr %11, %12
  br i1 %.not.i160, label %bb.ax, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit163.thread

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit163.thread: ; preds = %bb.aw
  %i.iy = load ptr, ptr %9, align 8, !tbaa !252
  store ptr %i.iy, ptr %11, align 8, !tbaa !104
  %i.iz = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.iz, ptr %i.id, align 8, !tbaa !323
  br label %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit171

bb.ax:                                            ; preds = %bb.aw
  %i.ja = load ptr, ptr %7, align 8, !tbaa !320   ; 12 uses
  %i.jb = ptrtoint ptr %11 to i64                 ; 3 uses
  %i.jc = ptrtoint ptr %i.ja to i64               ; 3 uses
  %i.jd = sub i64 %i.jb, %i.jc                    ; 4 uses
  %i.je = icmp eq i64 %i.jd, 9223372036854775800
  br i1 %i.je, label %bb.ay, label %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i203

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #45
          to label %.noexc222 unwind label %.loopexit.split-lp296

.noexc222:                                        ; preds = %bb.ay
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i203: ; preds = %bb.ax
  %i.jf = ashr exact i64 %i.jd, 3                 ; 3 uses
  %.sroa.speculated.i.i204 = call i64 @llvm.umax.i64(i64 %i.jf, i64 1)
  %i.jg = add nsw i64 %.sroa.speculated.i.i204, %i.jf ; 2 uses
  %i.jh = icmp ult i64 %i.jg, %i.jf
  %i.ji = call i64 @llvm.umin.i64(i64 %i.jg, i64 1152921504606846975)
  %i.jj = select i1 %i.jh, i64 1152921504606846975, i64 %i.ji ; 4 uses
  %.not.i.i205 = icmp ne i64 %i.jj, 0
  call void @llvm.assume(i1 %.not.i.i205)
  %i.jk = shl nuw nsw i64 %i.jj, 3
  %i.jl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jk) #48
          to label %.noexc223 unwind label %.loopexit295 ; 14 uses

.noexc223:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i203
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jd
  %i.jn = load ptr, ptr %9, align 8, !tbaa !252
  store ptr null, ptr %9, align 8, !tbaa !252
  store ptr %i.jn, ptr %i.jm, align 8, !tbaa !104
  %.not10.i.i.i.i206 = icmp eq ptr %i.ja, %11
  br i1 %.not10.i.i.i.i206, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i218, label %iter.check

iter.check:                                       ; preds = %.noexc223
  %i.jo = add i64 %i.jb, -8
  %i.jp = sub i64 %i.jo, %i.jc                    ; 3 uses
  %i.jq = lshr i64 %i.jp, 3
  %i.jr = add nuw nsw i64 %i.jq, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.jp, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i207.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.jl, i64 8
  %i.js = add i64 %i.jb, -8
  %i.jt = sub i64 %i.js, %i.jc
  %i.ju = and i64 %i.jt, -8                       ; 2 uses
  %scevgep429 = getelementptr i8, ptr %scevgep, i64 %i.ju
  %scevgep430 = getelementptr i8, ptr %i.ja, i64 8
  %scevgep431 = getelementptr i8, ptr %scevgep430, i64 %i.ju
  %bound0 = icmp ult ptr %i.jl, %scevgep431
  %bound1 = icmp ult ptr %i.ja, %scevgep429
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i207.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check432 = icmp ult i64 %i.jp, 120
  br i1 %min.iters.check432, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.jr, 12
  %n.vec = and i64 %i.jr, 4611686018427387888     ; 4 uses
  %i.jv = shl i64 %n.vec, 3                       ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jl, i64 %i.jv  ; 2 uses
  %i.jx = getelementptr i8, ptr %i.ja, i64 %i.jv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jy = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.jl, i64 %i.jy ; 4 uses
  %next.gep433 = getelementptr i8, ptr %i.ja, i64 %i.jy ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %i.jz = getelementptr i8, ptr %next.gep433, i64 32
  %i.ka = getelementptr i8, ptr %next.gep433, i64 64
  %i.kb = getelementptr i8, ptr %next.gep433, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep433, align 8, !tbaa !328, !alias.scope !1366, !noalias !1361
  %wide.load434 = load <4 x i64>, ptr %i.jz, align 8, !tbaa !328, !alias.scope !1366, !noalias !1361
  %wide.load435 = load <4 x i64>, ptr %i.ka, align 8, !tbaa !328, !alias.scope !1366, !noalias !1361
  %wide.load436 = load <4 x i64>, ptr %i.kb, align 8, !tbaa !328, !alias.scope !1366, !noalias !1361
  %i.kc = getelementptr i8, ptr %next.gep, i64 32
  %i.kd = getelementptr i8, ptr %next.gep, i64 64
  %i.ke = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !328, !alias.scope !1369, !noalias !1366
  store <4 x i64> %wide.load434, ptr %i.kc, align 8, !tbaa !328, !alias.scope !1369, !noalias !1366
  store <4 x i64> %wide.load435, ptr %i.kd, align 8, !tbaa !328, !alias.scope !1369, !noalias !1366
  store <4 x i64> %wide.load436, ptr %i.ke, align 8, !tbaa !328, !alias.scope !1369, !noalias !1366
  %i.kf = getelementptr i8, ptr %next.gep433, i64 32
  %i.kg = getelementptr i8, ptr %next.gep433, i64 64
  %i.kh = getelementptr i8, ptr %next.gep433, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep433, align 8, !tbaa !328, !alias.scope !1366, !noalias !1361
  store <4 x ptr> splat (ptr null), ptr %i.kf, align 8, !tbaa !328, !alias.scope !1366, !noalias !1361
  store <4 x ptr> splat (ptr null), ptr %i.kg, align 8, !tbaa !328, !alias.scope !1366, !noalias !1361
  store <4 x ptr> splat (ptr null), ptr %i.kh, align 8, !tbaa !328, !alias.scope !1366, !noalias !1361
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ki = icmp eq i64 %index.next, %n.vec
  br i1 %i.ki, label %middle.block, label %vector.body, !llvm.loop !1371

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jr, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i218, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i207.preheader, label %vec.epilog.ph, !prof !304

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec439 = and i64 %i.jr, 4611686018427387900  ; 3 uses
  %i.kj = shl i64 %n.vec439, 3                    ; 2 uses
  %i.kk = getelementptr i8, ptr %i.jl, i64 %i.kj  ; 2 uses
  %i.kl = getelementptr i8, ptr %i.ja, i64 %i.kj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index440 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next444, %vec.epilog.vector.body ] ; 2 uses
  %i.km = shl i64 %index440, 3                    ; 2 uses
  %next.gep441 = getelementptr i8, ptr %i.jl, i64 %i.km
  %next.gep442 = getelementptr i8, ptr %i.ja, i64 %i.km ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %wide.load443 = load <4 x i64>, ptr %next.gep442, align 8, !tbaa !328, !alias.scope !1366, !noalias !1361
  store <4 x i64> %wide.load443, ptr %next.gep441, align 8, !tbaa !328, !alias.scope !1369, !noalias !1366
  store <4 x ptr> splat (ptr null), ptr %next.gep442, align 8, !tbaa !328, !alias.scope !1366, !noalias !1361
  %index.next444 = add nuw i64 %index440, 4       ; 2 uses
  %i.kn = icmp eq i64 %index.next444, %n.vec439
  br i1 %i.kn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1372

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n445 = icmp eq i64 %i.jr, %n.vec439
  br i1 %cmp.n445, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i218, label %.lr.ph.i.i.i.i207.preheader

.lr.ph.i.i.i.i207.preheader:                      ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i208.ph = phi ptr [ %i.jl, %iter.check ], [ %i.jl, %vector.memcheck ], [ %i.jw, %vec.epilog.iter.check ], [ %i.kk, %vec.epilog.middle.block ]
  %.0911.i.i.i.i209.ph = phi ptr [ %i.ja, %iter.check ], [ %i.ja, %vector.memcheck ], [ %i.jx, %vec.epilog.iter.check ], [ %i.kl, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i207

.lr.ph.i.i.i.i207:                                ; preds = %.lr.ph.i.i.i.i207.preheader, %.lr.ph.i.i.i.i207
  %.012.i.i.i.i208 = phi ptr [ %i.kq, %.lr.ph.i.i.i.i207 ], [ %.012.i.i.i.i208.ph, %.lr.ph.i.i.i.i207.preheader ] ; 2 uses
  %.0911.i.i.i.i209 = phi ptr [ %i.kp, %.lr.ph.i.i.i.i207 ], [ %.0911.i.i.i.i209.ph, %.lr.ph.i.i.i.i207.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %i.ko = load i64, ptr %.0911.i.i.i.i209, align 8, !tbaa !328, !alias.scope !1364, !noalias !1361
  store i64 %i.ko, ptr %.012.i.i.i.i208, align 8, !tbaa !328, !alias.scope !1361, !noalias !1364
  store ptr null, ptr %.0911.i.i.i.i209, align 8, !tbaa !328, !alias.scope !1364, !noalias !1361
  %i.kp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i209, i64 8 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i208, i64 8 ; 2 uses
  %.not.i.i.i.i210 = icmp eq ptr %i.kp, %11
  br i1 %.not.i.i.i.i210, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i218, label %.lr.ph.i.i.i.i207, !llvm.loop !1373

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i218: ; preds = %.lr.ph.i.i.i.i207, %middle.block, %vec.epilog.middle.block, %.noexc223
  %.0.lcssa.i.i.i.i212 = phi ptr [ %i.jl, %.noexc223 ], [ %i.kk, %vec.epilog.middle.block ], [ %i.jw, %middle.block ], [ %i.kq, %.lr.ph.i.i.i.i207 ]
  %i.kr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i212, i64 8 ; 2 uses
  %.not.i23.i220 = icmp eq ptr %i.ja, null
  br i1 %.not.i23.i220, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit163.thread405, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit163

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit163.thread405: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i218
  store ptr %i.jl, ptr %7, align 8, !tbaa !320
  store ptr %i.kr, ptr %i.id, align 8, !tbaa !323
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jj
  store ptr %i.ks, ptr %i.hr, align 8, !tbaa !324
  br label %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit171

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit163: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i218
  call void @_ZdlPvm(ptr noundef nonnull %i.ja, i64 noundef %i.jd) #46
  %.pr289.pre = load ptr, ptr %9, align 8, !tbaa !252 ; 6 uses
  store ptr %i.jl, ptr %7, align 8, !tbaa !320
  store ptr %i.kr, ptr %i.id, align 8, !tbaa !323
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jj
  store ptr %i.kt, ptr %i.hr, align 8, !tbaa !324
  %.not.i164 = icmp eq ptr %.pr289.pre, null
  br i1 %.not.i164, label %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit171, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit163
  %i.ku = getelementptr inbounds nuw i8, ptr %.pr289.pre, i64 56
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !29 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.pr289.pre, i64 72 ; 2 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i165: ; preds = %bb.az
  %i.ky = load i64, ptr %i.kw, align 8, !tbaa !9
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.kz) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i166: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i165
  %i.la = getelementptr inbounds nuw i8, ptr %.pr289.pre, i64 24
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !29 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.pr289.pre, i64 40 ; 2 uses
  %i.ld = icmp eq ptr %i.lb, %i.lc
  br i1 %i.ld, label %_ZNKSt14default_deleteIN8facebook5velox6common10BytesRangeEEclEPS3_.exit.i168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i166
  %i.le = load i64, ptr %i.lc, align 8, !tbaa !9
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.lf) #46
  br label %_ZNKSt14default_deleteIN8facebook5velox6common10BytesRangeEEclEPS3_.exit.i168

_ZNKSt14default_deleteIN8facebook5velox6common10BytesRangeEEclEPS3_.exit.i168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i167
  call void @_ZdlPvm(ptr noundef nonnull %.pr289.pre, i64 noundef 128) #46
  br label %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit171

_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit171: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit163.thread405, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit163.thread, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit163, %_ZNKSt14default_deleteIN8facebook5velox6common10BytesRangeEEclEPS3_.exit.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  %i.lg = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0250.0318) #49 ; 2 uses
  %i.lh = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0253.0317) #49 ; 2 uses
  %i.li = icmp eq ptr %i.lg, %i.dy
  br i1 %i.li, label %._crit_edge320, label %.lr.ph319, !llvm.loop !1374

bb.ba:                                            ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i, %bb.as
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bb:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.ll = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #44
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn = phi { ptr, i32 } [ %i.ll, %bb.bc ], [ %i.lk, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  br label %bb.bp

bb.be:                                            ; preds = %.lr.ph319
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit295:                                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i203
  %lpad.loopexit297 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp296:                            ; preds = %bb.ay
  %lpad.loopexit.split-lp298 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit.split-lp296, %.loopexit295
  %lpad.phi299 = phi { ptr, i32 } [ %lpad.loopexit297, %.loopexit295 ], [ %lpad.loopexit.split-lp298, %.loopexit.split-lp296 ]
  call void @_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #44
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn60 = phi { ptr, i32 } [ %lpad.phi299, %bb.bf ], [ %i.lm, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br label %bb.bp

._crit_edge320:                                   ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit171, %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit159
  %.sroa.0253.0.lcssa = phi ptr [ %i.hy, %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit159 ], [ %i.lh, %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit171 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #44
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0253.0.lcssa, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #44
  store i8 0, ptr %i.o, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #44
  store i8 1, ptr %i.p, align 1, !tbaa !51
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #44
  %i.lp = load i8, ptr %i.gc, align 2, !tbaa !239, !range !53, !noundef !57
  store i8 %i.lp, ptr %i.q, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #44
  store i8 0, ptr %i.r, align 1, !tbaa !51
  invoke void @_ZSt11make_uniqueIN8facebook5velox6common10BytesRangeEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbSB_bRbbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.208") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %i.ln, ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.lo, ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.r)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %._crit_edge320
  %13 = load ptr, ptr %i.id, align 8, !tbaa !323  ; 6 uses
  %14 = load ptr, ptr %i.hr, align 8, !tbaa !324  ; 2 uses
  %.not.i172 = icmp eq ptr %13, %14
  br i1 %.not.i172, label %bb.bi, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit175.thread

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit175.thread: ; preds = %bb.bh
  %i.lq = load ptr, ptr %10, align 8, !tbaa !252
  store ptr %i.lq, ptr %13, align 8, !tbaa !104
  %i.lr = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %i.lr, ptr %i.id, align 8, !tbaa !323
  br label %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit183

bb.bi:                                            ; preds = %bb.bh
  %i.ls = load ptr, ptr %7, align 8, !tbaa !320   ; 12 uses
  %i.lt = ptrtoint ptr %13 to i64                 ; 3 uses
  %i.lu = ptrtoint ptr %i.ls to i64               ; 3 uses
  %i.lv = sub i64 %i.lt, %i.lu                    ; 4 uses
  %i.lw = icmp eq i64 %i.lv, 9223372036854775800
  br i1 %i.lw, label %bb.bj, label %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i225

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #45
          to label %.noexc244 unwind label %bb.bm

.noexc244:                                        ; preds = %bb.bj
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i225: ; preds = %bb.bi
  %i.lx = ashr exact i64 %i.lv, 3                 ; 3 uses
  %.sroa.speculated.i.i226 = call i64 @llvm.umax.i64(i64 %i.lx, i64 1)
  %i.ly = add nsw i64 %.sroa.speculated.i.i226, %i.lx ; 2 uses
  %i.lz = icmp ult i64 %i.ly, %i.lx
  %i.ma = call i64 @llvm.umin.i64(i64 %i.ly, i64 1152921504606846975)
  %i.mb = select i1 %i.lz, i64 1152921504606846975, i64 %i.ma ; 4 uses
  %.not.i.i227 = icmp ne i64 %i.mb, 0
  call void @llvm.assume(i1 %.not.i.i227)
  %i.mc = shl nuw nsw i64 %i.mb, 3
  %i.md = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mc) #48
          to label %.noexc245 unwind label %bb.bm ; 14 uses

.noexc245:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i225
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.lv
  %i.mf = load ptr, ptr %10, align 8, !tbaa !252
  store ptr null, ptr %10, align 8, !tbaa !252
  store ptr %i.mf, ptr %i.me, align 8, !tbaa !104
  %.not10.i.i.i.i228 = icmp eq ptr %i.ls, %13
  br i1 %.not10.i.i.i.i228, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i240, label %iter.check473

iter.check473:                                    ; preds = %.noexc245
  %i.mg = add i64 %i.lt, -8
  %i.mh = sub i64 %i.mg, %i.lu                    ; 3 uses
  %i.mi = lshr i64 %i.mh, 3
  %i.mj = add nuw nsw i64 %i.mi, 1                ; 5 uses
  %min.iters.check454 = icmp ult i64 %i.mh, 24
  br i1 %min.iters.check454, label %.lr.ph.i.i.i.i229.preheader, label %vector.memcheck448

vector.memcheck448:                               ; preds = %iter.check473
  %i.mk = add i64 %i.lt, -8
  %i.ml = sub i64 %i.mk, %i.lu
  %i.mm = and i64 %i.ml, -8
  %i.mn = add i64 %i.mm, 8                        ; 2 uses
  %scevgep449 = getelementptr i8, ptr %i.md, i64 %i.mn
  %scevgep450 = getelementptr i8, ptr %i.ls, i64 %i.mn
  %bound0451 = icmp ult ptr %i.md, %scevgep450
  %bound1452 = icmp ult ptr %i.ls, %scevgep449
  %found.conflict453 = and i1 %bound0451, %bound1452
  br i1 %found.conflict453, label %.lr.ph.i.i.i.i229.preheader, label %vector.main.loop.iter.check455

vector.main.loop.iter.check455:                   ; preds = %vector.memcheck448
  %min.iters.check456 = icmp ult i64 %i.mh, 120
  br i1 %min.iters.check456, label %vec.epilog.ph477, label %vector.ph457

vector.ph457:                                     ; preds = %vector.main.loop.iter.check455
  %n.mod.vf458 = and i64 %i.mj, 12
  %n.vec459 = and i64 %i.mj, 4611686018427387888  ; 4 uses
  %i.mo = shl i64 %n.vec459, 3                    ; 2 uses
  %i.mp = getelementptr i8, ptr %i.md, i64 %i.mo  ; 2 uses
  %i.mq = getelementptr i8, ptr %i.ls, i64 %i.mo
  br label %vector.body460

vector.body460:                                   ; preds = %vector.body460, %vector.ph457
  %index461 = phi i64 [ 0, %vector.ph457 ], [ %index.next468, %vector.body460 ] ; 2 uses
  %i.mr = shl i64 %index461, 3                    ; 2 uses
  %next.gep462 = getelementptr i8, ptr %i.md, i64 %i.mr ; 4 uses
  %next.gep463 = getelementptr i8, ptr %i.ls, i64 %i.mr ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  %i.ms = getelementptr i8, ptr %next.gep463, i64 32
  %i.mt = getelementptr i8, ptr %next.gep463, i64 64
  %i.mu = getelementptr i8, ptr %next.gep463, i64 96
  %wide.load464 = load <4 x i64>, ptr %next.gep463, align 8, !tbaa !328, !alias.scope !1380, !noalias !1375
  %wide.load465 = load <4 x i64>, ptr %i.ms, align 8, !tbaa !328, !alias.scope !1380, !noalias !1375
  %wide.load466 = load <4 x i64>, ptr %i.mt, align 8, !tbaa !328, !alias.scope !1380, !noalias !1375
  %wide.load467 = load <4 x i64>, ptr %i.mu, align 8, !tbaa !328, !alias.scope !1380, !noalias !1375
  %i.mv = getelementptr i8, ptr %next.gep462, i64 32
  %i.mw = getelementptr i8, ptr %next.gep462, i64 64
  %i.mx = getelementptr i8, ptr %next.gep462, i64 96
  store <4 x i64> %wide.load464, ptr %next.gep462, align 8, !tbaa !328, !alias.scope !1383, !noalias !1380
  store <4 x i64> %wide.load465, ptr %i.mv, align 8, !tbaa !328, !alias.scope !1383, !noalias !1380
  store <4 x i64> %wide.load466, ptr %i.mw, align 8, !tbaa !328, !alias.scope !1383, !noalias !1380
  store <4 x i64> %wide.load467, ptr %i.mx, align 8, !tbaa !328, !alias.scope !1383, !noalias !1380
  %i.my = getelementptr i8, ptr %next.gep463, i64 32
  %i.mz = getelementptr i8, ptr %next.gep463, i64 64
  %i.na = getelementptr i8, ptr %next.gep463, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep463, align 8, !tbaa !328, !alias.scope !1380, !noalias !1375
  store <4 x ptr> splat (ptr null), ptr %i.my, align 8, !tbaa !328, !alias.scope !1380, !noalias !1375
  store <4 x ptr> splat (ptr null), ptr %i.mz, align 8, !tbaa !328, !alias.scope !1380, !noalias !1375
  store <4 x ptr> splat (ptr null), ptr %i.na, align 8, !tbaa !328, !alias.scope !1380, !noalias !1375
  %index.next468 = add nuw i64 %index461, 16      ; 2 uses
  %i.nb = icmp eq i64 %index.next468, %n.vec459
  br i1 %i.nb, label %middle.block469, label %vector.body460, !llvm.loop !1385

middle.block469:                                  ; preds = %vector.body460
  %cmp.n470 = icmp eq i64 %i.mj, %n.vec459
  br i1 %cmp.n470, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i240, label %vec.epilog.iter.check475

vec.epilog.iter.check475:                         ; preds = %middle.block469
  %min.epilog.iters.check476 = icmp eq i64 %n.mod.vf458, 0
  br i1 %min.epilog.iters.check476, label %.lr.ph.i.i.i.i229.preheader, label %vec.epilog.ph477, !prof !304

vec.epilog.ph477:                                 ; preds = %vector.main.loop.iter.check455, %vec.epilog.iter.check475
  %vec.epilog.resume.val471 = phi i64 [ %n.vec459, %vec.epilog.iter.check475 ], [ 0, %vector.main.loop.iter.check455 ]
  %n.vec479 = and i64 %i.mj, 4611686018427387900  ; 3 uses
  %i.nc = shl i64 %n.vec479, 3                    ; 2 uses
  %i.nd = getelementptr i8, ptr %i.md, i64 %i.nc  ; 2 uses
  %i.ne = getelementptr i8, ptr %i.ls, i64 %i.nc
  br label %vec.epilog.vector.body480

vec.epilog.vector.body480:                        ; preds = %vec.epilog.vector.body480, %vec.epilog.ph477
  %index481 = phi i64 [ %vec.epilog.resume.val471, %vec.epilog.ph477 ], [ %index.next485, %vec.epilog.vector.body480 ] ; 2 uses
  %i.nf = shl i64 %index481, 3                    ; 2 uses
  %next.gep482 = getelementptr i8, ptr %i.md, i64 %i.nf
  %next.gep483 = getelementptr i8, ptr %i.ls, i64 %i.nf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  %wide.load484 = load <4 x i64>, ptr %next.gep483, align 8, !tbaa !328, !alias.scope !1380, !noalias !1375
  store <4 x i64> %wide.load484, ptr %next.gep482, align 8, !tbaa !328, !alias.scope !1383, !noalias !1380
  store <4 x ptr> splat (ptr null), ptr %next.gep483, align 8, !tbaa !328, !alias.scope !1380, !noalias !1375
  %index.next485 = add nuw i64 %index481, 4       ; 2 uses
  %i.ng = icmp eq i64 %index.next485, %n.vec479
  br i1 %i.ng, label %vec.epilog.middle.block486, label %vec.epilog.vector.body480, !llvm.loop !1386

vec.epilog.middle.block486:                       ; preds = %vec.epilog.vector.body480
  %cmp.n487 = icmp eq i64 %i.mj, %n.vec479
  br i1 %cmp.n487, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i240, label %.lr.ph.i.i.i.i229.preheader

.lr.ph.i.i.i.i229.preheader:                      ; preds = %vector.memcheck448, %iter.check473, %vec.epilog.iter.check475, %vec.epilog.middle.block486
  %.012.i.i.i.i230.ph = phi ptr [ %i.md, %iter.check473 ], [ %i.md, %vector.memcheck448 ], [ %i.mp, %vec.epilog.iter.check475 ], [ %i.nd, %vec.epilog.middle.block486 ]
  %.0911.i.i.i.i231.ph = phi ptr [ %i.ls, %iter.check473 ], [ %i.ls, %vector.memcheck448 ], [ %i.mq, %vec.epilog.iter.check475 ], [ %i.ne, %vec.epilog.middle.block486 ]
  br label %.lr.ph.i.i.i.i229

.lr.ph.i.i.i.i229:                                ; preds = %.lr.ph.i.i.i.i229.preheader, %.lr.ph.i.i.i.i229
  %.012.i.i.i.i230 = phi ptr [ %i.nj, %.lr.ph.i.i.i.i229 ], [ %.012.i.i.i.i230.ph, %.lr.ph.i.i.i.i229.preheader ] ; 2 uses
  %.0911.i.i.i.i231 = phi ptr [ %i.ni, %.lr.ph.i.i.i.i229 ], [ %.0911.i.i.i.i231.ph, %.lr.ph.i.i.i.i229.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  %i.nh = load i64, ptr %.0911.i.i.i.i231, align 8, !tbaa !328, !alias.scope !1378, !noalias !1375
  store i64 %i.nh, ptr %.012.i.i.i.i230, align 8, !tbaa !328, !alias.scope !1375, !noalias !1378
  store ptr null, ptr %.0911.i.i.i.i231, align 8, !tbaa !328, !alias.scope !1378, !noalias !1375
  %i.ni = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i231, i64 8 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i230, i64 8 ; 2 uses
  %.not.i.i.i.i232 = icmp eq ptr %i.ni, %13
  br i1 %.not.i.i.i.i232, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i240, label %.lr.ph.i.i.i.i229, !llvm.loop !1387

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i240: ; preds = %.lr.ph.i.i.i.i229, %middle.block469, %vec.epilog.middle.block486, %.noexc245
  %.0.lcssa.i.i.i.i234 = phi ptr [ %i.md, %.noexc245 ], [ %i.nd, %vec.epilog.middle.block486 ], [ %i.mp, %middle.block469 ], [ %i.nj, %.lr.ph.i.i.i.i229 ]
  %i.nk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i234, i64 8 ; 5 uses
  %.not.i23.i242 = icmp eq ptr %i.ls, null
  br i1 %.not.i23.i242, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit175.thread408, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit175

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit175.thread408: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i240
  store ptr %i.md, ptr %7, align 8, !tbaa !320
  store ptr %i.nk, ptr %i.id, align 8, !tbaa !323
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.mb ; 2 uses
  store ptr %i.nl, ptr %i.hr, align 8, !tbaa !324
  br label %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit183

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit175: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i240
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef %i.lv) #46
  %.pr291.pre = load ptr, ptr %10, align 8, !tbaa !252 ; 6 uses
  store ptr %i.md, ptr %7, align 8, !tbaa !320
  store ptr %i.nk, ptr %i.id, align 8, !tbaa !323
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.mb ; 3 uses
  store ptr %i.nm, ptr %i.hr, align 8, !tbaa !324
  %.not.i176 = icmp eq ptr %.pr291.pre, null
  br i1 %.not.i176, label %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit183, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit175
  %i.nn = getelementptr inbounds nuw i8, ptr %.pr291.pre, i64 56
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !29 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.pr291.pre, i64 72 ; 2 uses
  %i.nq = icmp eq ptr %i.no, %i.np
  br i1 %i.nq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i177: ; preds = %bb.bk
  %i.nr = load i64, ptr %i.np, align 8, !tbaa !9
  %i.ns = add i64 %i.nr, 1
  call void @_ZdlPvm(ptr noundef %i.no, i64 noundef %i.ns) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i178: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i177
  %i.nt = getelementptr inbounds nuw i8, ptr %.pr291.pre, i64 24
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !29 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.pr291.pre, i64 40 ; 2 uses
  %i.nw = icmp eq ptr %i.nu, %i.nv
  br i1 %i.nw, label %_ZNKSt14default_deleteIN8facebook5velox6common10BytesRangeEEclEPS3_.exit.i180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i178
  %i.nx = load i64, ptr %i.nv, align 8, !tbaa !9
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %i.nu, i64 noundef %i.ny) #46
  br label %_ZNKSt14default_deleteIN8facebook5velox6common10BytesRangeEEclEPS3_.exit.i180

_ZNKSt14default_deleteIN8facebook5velox6common10BytesRangeEEclEPS3_.exit.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i179
  call void @_ZdlPvm(ptr noundef nonnull %.pr291.pre, i64 noundef 128) #46
  br label %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit183

_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit183: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit175.thread408, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit175.thread, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit175, %_ZNKSt14default_deleteIN8facebook5velox6common10BytesRangeEEclEPS3_.exit.i180
  %15 = phi ptr [ %14, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit175.thread ], [ %i.nm, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit175 ], [ %i.nm, %_ZNKSt14default_deleteIN8facebook5velox6common10BytesRangeEEclEPS3_.exit.i180 ], [ %i.nl, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit175.thread408 ]
  %i.nz = phi ptr [ %i.lr, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit175.thread ], [ %i.nk, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit175 ], [ %i.nk, %_ZNKSt14default_deleteIN8facebook5velox6common10BytesRangeEEclEPS3_.exit.i180 ], [ %i.nk, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_10BytesRangeES5_ISB_EEEEERS7_DpOT_.exit175.thread408 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44
  %i.oa = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #48
          to label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EED2Ev.exit unwind label %bb.bo, !inline_history !325 ; 8 uses

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit183
  %i.ob = load ptr, ptr %7, align 8, !tbaa !320, !noalias !1388
  %i.oc = load i8, ptr %i.a, align 1, !tbaa !51, !range !53, !noalias !1388, !noundef !57
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  store i8 %i.oc, ptr %i.od, align 8, !tbaa !72, !noalias !1388
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 9
  store i8 1, ptr %i.oe, align 1, !tbaa !71, !noalias !1388
  %i.of = getelementptr inbounds nuw i8, ptr %i.oa, i64 12
  store i32 18, ptr %i.of, align 4, !tbaa !68, !noalias !1388
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common10MultiRangeE, i64 16), ptr %i.oa, align 8, !tbaa !102, !noalias !1388
  %i.og = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  store ptr %i.ob, ptr %i.og, align 8, !tbaa !320, !noalias !1388
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  store ptr %i.nz, ptr %i.oh, align 8, !tbaa !323, !noalias !1388
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oa, i64 32
  store ptr %15, ptr %i.oi, align 8, !tbaa !324, !noalias !1388
  store ptr %i.oa, ptr %0, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  br label %bb.bq

bb.bl:                                            ; preds = %._crit_edge320
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i225, %bb.bj
  %i.ok = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #44
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pn58 = phi { ptr, i32 } [ %i.ok, %bb.bm ], [ %i.oj, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44
  br label %bb.bp

bb.bo:                                            ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit183
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bd, %bb.bg, %bb.bn, %bb.bo, %bb.ba
  %.pn60.pn.pn = phi { ptr, i32 } [ %i.lj, %bb.ba ], [ %.pn60, %bb.bg ], [ %i.ol, %bb.bo ], [ %.pn58, %bb.bn ], [ %.pn, %bb.bd ]
  call void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  br label %bb.bs

bb.bq:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS4_EESaIS7_EED2Ev.exit, %_ZNSt10unique_ptrIN8facebook5velox6common10BytesRangeESt14default_deleteIS3_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #44
  %i.om = load ptr, ptr %i.dz, align 8, !tbaa !1355
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.om)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.on = landingpad { ptr, i32 }
          catch ptr null
  %i.oo = extractvalue { ptr, i32 } %i.on, 0
  call void @__clang_call_terminate(ptr %i.oo) #47
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  br label %bb.bw

bb.bs:                                            ; preds = %bb.bp, %bb.aq, %bb.ao
  %.pn64 = phi { ptr, i32 } [ %i.ho, %bb.aq ], [ %.pn60.pn.pn, %bb.bp ], [ %i.hh, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #44
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.aj
  %.pn64.pn = phi { ptr, i32 } [ %.pn64, %bb.bs ], [ %i.gb, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #44
  br label %bb.bu

bb.bu:                                            ; preds = %bb.ae, %bb.bt
  %.pn67.pn.pn = phi { ptr, i32 } [ %.pn64.pn, %bb.bt ], [ %i.ex, %bb.ae ]
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  br label %common.resume

bb.bv:                                            ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6common18NegatedBytesValues9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs) #45
  unreachable

bb.bw:                                            ; preds = %bb.h, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit, %_ZNK8facebook5velox6common18NegatedBytesValues5cloneESt8optionalIbE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox6common18NegatedBytesValues5cloneESt8optionalIbE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i16 %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.02.0.extract.trunc = trunc i16 %2 to i8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = and i16 %2, 256
  %.not = icmp eq i16 %i.b, 0
  %.val3.i = load i8, ptr %i.a, align 8, !range !53
  %.0.in.i = select i1 %.not, i8 %.val3.i, i8 %.sroa.02.0.extract.trunc
  %i.c = and i8 %.0.in.i, 1
  %i.d = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #48, !noalias !1391, !inline_history !1394 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !68, !noalias !1391
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.c, ptr %i.g, align 8, !tbaa !72, !noalias !1391
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 1, ptr %i.h, align 1, !tbaa !71, !noalias !1391
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.f, ptr %i.i, align 4, !tbaa !68, !noalias !1391
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common18NegatedBytesValuesE, i64 16), ptr %i.d, align 8, !tbaa !102, !noalias !1391
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !482, !noalias !1391
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  %i.l = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #48
          to label %.noexc.i unwind label %bb.b, !noalias !1391, !inline_history !1398 ; 3 uses

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZN8facebook5velox6common11BytesValuesC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(128) %i.l, ptr noundef nonnull align 8 dereferenceable(128) %i.k)
          to label %_ZNSt10unique_ptrIN8facebook5velox6common18NegatedBytesValuesESt14default_deleteIS3_EED2Ev.exit unwind label %.body.i.i, !noalias !1399, !inline_history !1398

.body.i.i:                                        ; preds = %.noexc.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 128) #46, !noalias !1399, !inline_history !1398
  br label %.body.i

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.b, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.b ], [ %i.m, %.body.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #46, !noalias !1391, !inline_history !1394
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt10unique_ptrIN8facebook5velox6common18NegatedBytesValuesESt14default_deleteIS3_EED2Ev.exit: ; preds = %.noexc.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.l, ptr %i.o, align 8, !tbaa !482, !alias.scope !1395, !noalias !1391
  store ptr %i.d, ptr %0, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !262  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !259
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !76
  %i.f = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !77   ; 8 uses
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i64 %i.h, 0
  br i1 %i.j, label %.noexc.i.i, label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #45
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !61

.noexc6.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #45
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #48 ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !29
  store i64 %i.h, ptr %i.e, align 8, !tbaa !9
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.b
  %i.n = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  switch i64 %i.h, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.o = load i8, ptr %i.f, align 1, !tbaa !9
  store i8 %i.o, ptr %i.n, align 1, !tbaa !9
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.p, align 8, !tbaa !77
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  store i8 0, ptr %i.q, align 1, !tbaa !9
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !262
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  store ptr %i.s, ptr %i.a, align 8, !tbaa !262
  br label %bb.h

end_hunk_0
