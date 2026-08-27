Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/extract_cells_single_component?download=true
inline.NumInlined: 884
inline.NumDeleted: 471
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EE:bb.a
  br i1 %i.er, label %.lr.ph.i.i.i174.preheader, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.et = load i64, ptr %i.es, align 8, !tbaa !39
  %i.eu = icmp ugt i64 %i.et, %i.em
  br i1 %i.eu, label %.lr.ph.i.i.i174.preheader, label %bb.m

.lr.ph.i.i.i174.preheader:                        ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit, %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  br label %.lr.ph.i.i.i174

.lr.ph.i.i.i174:                                  ; preds = %.lr.ph.i.i.i174.preheader, %.lr.ph.i.i.i174
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i174 ], [ %i.en, %.lr.ph.i.i.i174.preheader ] ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !39 ; 2 uses
  %i.ex = icmp ugt i64 %i.ew, %i.em               ; 2 uses
  %.in.v.i.i.i = select i1 %i.ex, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i175 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i175, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i174, !llvm.loop !42

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i174
  br i1 %i.ex, label %._crit_edge.thread.i.i.i, label %bb.j

._crit_edge.thread.i.i.i:                         ; preds = %bb.h, %._crit_edge.i.i.i
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.eb, %bb.h ] ; 4 uses
  %i.ey = load ptr, ptr %i.ec, align 8, !tbaa !27
  %i.ez = icmp eq ptr %.019.lcssa29.i.i.i, %i.ey
  br i1 %i.ez, label %select.unfold.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.fa = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #25
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %i.fb = phi i64 [ %.pre.i.i, %bb.i ], [ %i.ew, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.i ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.fc = icmp ult i64 %i.fb, %i.em
  br i1 %i.fc, label %select.unfold.i.i, label %bb.m

select.unfold.i.i:                                ; preds = %bb.j, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.j ] ; 3 uses
  %i.fd = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.eb
  br i1 %i.fd, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %select.unfold.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !39
  %i.fg = icmp ugt i64 %i.ff, %i.em
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i: ; preds = %bb.k, %select.unfold.i.i
  %i.fh = phi i1 [ %i.fg, %bb.k ], [ true, %select.unfold.i.i ]
  %i.fi = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %.noexc176 unwind label %bb.l  ; 3 uses

.noexc176:                                        ; preds = %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  store i64 %i.em, ptr %i.fj, align 8
  %.sroa.8363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  store i64 %storemerge433, ptr %.sroa.8363.0..sroa_idx, align 8
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fh, ptr noundef nonnull %i.fi, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.eb) #26
  %i.fk = load i64, ptr %i.ed, align 8, !tbaa !33
  %i.fl = add i64 %i.fk, 1
  store i64 %i.fl, ptr %i.ed, align 8, !tbaa !33
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.m:                                             ; preds = %bb.j, %.noexc176, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit
  %i.fn = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0384.0, i64 %i.em ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !38 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 5 uses
  %.not10.i.i.i177 = icmp eq ptr %i.fp, null
  br i1 %.not10.i.i.i177, label %._crit_edge.thread.i.i.i208, label %.lr.ph.i.i.i178

.lr.ph.i.i.i178:                                  ; preds = %bb.m, %.lr.ph.i.i.i178
  %.012.i.i.i179 = phi ptr [ %.1.i.i.i184, %.lr.ph.i.i.i178 ], [ %i.fp, %bb.m ] ; 3 uses
  %.0811.i.i.i180 = phi ptr [ %.19.i.i.i181, %.lr.ph.i.i.i178 ], [ %i.fq, %bb.m ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.012.i.i.i179, i64 32
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !39
  %i.ft = icmp ult i64 %i.fs, %i.dv               ; 2 uses
  %.19.i.i.i181 = select i1 %i.ft, ptr %.0811.i.i.i180, ptr %.012.i.i.i179 ; 3 uses
  %.1.in.v.i.i.i182 = select i1 %i.ft, i64 24, i64 16
  %.1.in.i.i.i183 = getelementptr inbounds nuw i8, ptr %.012.i.i.i179, i64 %.1.in.v.i.i.i182
  %.1.i.i.i184 = load ptr, ptr %.1.in.i.i.i183, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i185 = icmp eq ptr %.1.i.i.i184, null
  br i1 %.not.i.i.i185, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i186, label %.lr.ph.i.i.i178, !llvm.loop !41

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i186: ; preds = %.lr.ph.i.i.i178
  %i.fu = icmp eq ptr %.19.i.i.i181, %i.fq
  br i1 %i.fu, label %.lr.ph.i.i.i192.preheader, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit189

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit189: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i186
  %i.fv = getelementptr inbounds nuw i8, ptr %.19.i.i.i181, i64 32
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !39
  %i.fx = icmp ugt i64 %i.fw, %i.dv
  br i1 %i.fx, label %.lr.ph.i.i.i192.preheader, label %bb.r

.lr.ph.i.i.i192.preheader:                        ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit189, %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i186
  br label %.lr.ph.i.i.i192

.lr.ph.i.i.i192:                                  ; preds = %.lr.ph.i.i.i192.preheader, %.lr.ph.i.i.i192
  %.02024.i.i.i193 = phi ptr [ %.020.i.i.i196, %.lr.ph.i.i.i192 ], [ %i.fp, %.lr.ph.i.i.i192.preheader ] ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.02024.i.i.i193, i64 32
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !39 ; 2 uses
  %i.ga = icmp ugt i64 %i.fz, %i.dv               ; 2 uses
  %.in.v.i.i.i194 = select i1 %i.ga, i64 16, i64 24
  %.in.i.i.i195 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i193, i64 %.in.v.i.i.i194
  %.020.i.i.i196 = load ptr, ptr %.in.i.i.i195, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i197 = icmp eq ptr %.020.i.i.i196, null
  br i1 %.not.i.i.i197, label %._crit_edge.i.i.i198, label %.lr.ph.i.i.i192, !llvm.loop !42

._crit_edge.i.i.i198:                             ; preds = %.lr.ph.i.i.i192
  br i1 %i.ga, label %._crit_edge.thread.i.i.i208, label %bb.o

._crit_edge.thread.i.i.i208:                      ; preds = %bb.m, %._crit_edge.i.i.i198
  %.019.lcssa29.i.i.i209 = phi ptr [ %.02024.i.i.i193, %._crit_edge.i.i.i198 ], [ %i.fq, %bb.m ] ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !27
  %i.gd = icmp eq ptr %.019.lcssa29.i.i.i209, %i.gc
  br i1 %i.gd, label %select.unfold.i.i205, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread.i.i.i208
  %i.ge = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i209) #25
  %.phi.trans.insert.i.i210 = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %.pre.i.i211 = load i64, ptr %.phi.trans.insert.i.i210, align 8, !tbaa !39
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i198
  %i.gf = phi i64 [ %.pre.i.i211, %bb.n ], [ %i.fz, %._crit_edge.i.i.i198 ]
  %.019.lcssa28.i.i.i199 = phi ptr [ %.019.lcssa29.i.i.i209, %bb.n ], [ %.02024.i.i.i193, %._crit_edge.i.i.i198 ]
  %i.gg = icmp ult i64 %i.gf, %i.dv
  br i1 %i.gg, label %select.unfold.i.i205, label %bb.r

select.unfold.i.i205:                             ; preds = %bb.o, %._crit_edge.thread.i.i.i208
  %.sroa.4.0.i.ph.i.i206 = phi ptr [ %.019.lcssa29.i.i.i209, %._crit_edge.thread.i.i.i208 ], [ %.019.lcssa28.i.i.i199, %bb.o ] ; 3 uses
  %i.gh = icmp eq ptr %.sroa.4.0.i.ph.i.i206, %i.fq
  br i1 %i.gh, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i207, label %bb.p

bb.p:                                             ; preds = %select.unfold.i.i205
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i206, i64 32
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !39
  %i.gk = icmp ugt i64 %i.gj, %i.dv
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i207

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i207: ; preds = %bb.p, %select.unfold.i.i205
  %i.gl = phi i1 [ %i.gk, %bb.p ], [ true, %select.unfold.i.i205 ]
  %i.gm = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %.noexc213 unwind label %bb.q  ; 3 uses

.noexc213:                                        ; preds = %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i207
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  store i64 %i.dv, ptr %i.gn, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 40
  store i64 %storemerge433, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gl, ptr noundef nonnull %i.gm, ptr noundef nonnull %.sroa.4.0.i.ph.i.i206, ptr noundef nonnull align 8 dereferenceable(32) %i.fq) #26
  %i.go = getelementptr inbounds nuw i8, ptr %i.fn, i64 40 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !33
  %i.gq = add i64 %i.gp, 1
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !33
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i207
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.r:                                             ; preds = %bb.o, %.noexc213, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit189
  %i.gs = add nuw i64 %.0135430, 1                ; 2 uses
  %i.gt = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.cx
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !20 ; 2 uses
  %i.gw = sext i32 %i.gv to i64                   ; 2 uses
  %i.gx = icmp ult i64 %i.gs, %i.gw
  br i1 %i.gx, label %bb.h, label %.loopexit414, !llvm.loop !43

.loopexit415:                                     ; preds = %.loopexit414, %bb.g, %.lr.ph434
  %i.gy = phi ptr [ %i.cu, %.lr.ph434 ], [ %i.cu, %bb.g ], [ %i.dj, %.loopexit414 ]
  %i.gz = phi ptr [ %i.cv, %.lr.ph434 ], [ %i.cv, %bb.g ], [ %i.dj, %.loopexit414 ]
  %i.ha = phi ptr [ %i.cw, %.lr.ph434 ], [ %i.cv, %bb.g ], [ %i.dj, %.loopexit414 ]
  %exitcond.not = icmp eq i64 %i.cx, %i.f
  br i1 %exitcond.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph434, !llvm.loop !44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit415, %_ZNSt6vectorISt3mapImmSt4lessImESaISt4pairIKmmEEESaIS7_EEC2EmRKS8_.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.hb, ptr %7, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.hb, ptr noundef nonnull align 1 dereferenceable(15) @.str.22, i64 15, i1 false)
  %i.hc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 15, ptr %i.hc, align 8, !tbaa !48
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 31
  store i8 0, ptr %i.hd, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.he = shl nsw i64 %i.bl, 1                    ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i171, label %.loopexit413, label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EEC2EmRKS5_.exit.i

_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EEC2EmRKS5_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hf = mul nuw nsw i64 %i.bl, 96
  %i.hg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #24
          to label %.noexc222 unwind label %bb.u  ; 4 uses

.noexc222:                                        ; preds = %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EEC2EmRKS5_.exit.i
  store ptr %i.hg, ptr %8, align 8, !tbaa !50
  %i.hh = getelementptr inbounds nuw [48 x i8], ptr %i.hg, i64 %i.he
  %i.hi = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.hh, ptr %i.hi, align 8, !tbaa !53
  %xtraiter615 = and i64 %i.he, 2                 ; 2 uses
  %lcmp.mod616.not = icmp eq i64 %xtraiter615, 0
  br i1 %lcmp.mod616.not, label %.lr.ph.i.i.i.i.i216.prol.loopexit, label %.lr.ph.i.i.i.i.i216.prol

.lr.ph.i.i.i.i.i216.prol:                         ; preds = %.noexc222, %.lr.ph.i.i.i.i.i216.prol
  %.08.i.i.i.i.i217.prol = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i216.prol ], [ %i.hg, %.noexc222 ] ; 6 uses
  %.057.i.i.i.i.i218.prol = phi i64 [ %i.hn, %.lr.ph.i.i.i.i.i216.prol ], [ %i.he, %.noexc222 ]
  %prol.iter617 = phi i64 [ %prol.iter617.next, %.lr.ph.i.i.i.i.i216.prol ], [ 0, %.noexc222 ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217.prol, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217.prol, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i217.prol, i8 0, i64 24, i1 false)
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !27
  %i.hl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217.prol, i64 32
  store ptr %i.hj, ptr %i.hl, align 8, !tbaa !32
  %i.hm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217.prol, i64 40
  store i64 0, ptr %i.hm, align 8, !tbaa !33
  %i.hn = add i64 %.057.i.i.i.i.i218.prol, -1     ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217.prol, i64 48 ; 3 uses
  %prol.iter617.next = add i64 %prol.iter617, 1   ; 2 uses
  %prol.iter617.cmp.not = icmp eq i64 %prol.iter617.next, %xtraiter615
  br i1 %prol.iter617.cmp.not, label %.lr.ph.i.i.i.i.i216.prol.loopexit, label %.lr.ph.i.i.i.i.i216.prol, !llvm.loop !54

.lr.ph.i.i.i.i.i216.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i216.prol, %.noexc222
  %.lcssa594.unr = phi ptr [ poison, %.noexc222 ], [ %i.ho, %.lr.ph.i.i.i.i.i216.prol ]
  %.08.i.i.i.i.i217.unr = phi ptr [ %i.hg, %.noexc222 ], [ %i.ho, %.lr.ph.i.i.i.i.i216.prol ]
  %.057.i.i.i.i.i218.unr = phi i64 [ %i.he, %.noexc222 ], [ %i.hn, %.lr.ph.i.i.i.i.i216.prol ]
  %i.hp = icmp ult i64 %i.he, 4
  br i1 %i.hp, label %.loopexit413, label %.lr.ph.i.i.i.i.i216

.lr.ph.i.i.i.i.i216:                              ; preds = %.lr.ph.i.i.i.i.i216.prol.loopexit, %.lr.ph.i.i.i.i.i216
  %.08.i.i.i.i.i217 = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i216 ], [ %.08.i.i.i.i.i217.unr, %.lr.ph.i.i.i.i.i216.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i.i218 = phi i64 [ %i.ij, %.lr.ph.i.i.i.i.i216 ], [ %.057.i.i.i.i.i218.unr, %.lr.ph.i.i.i.i.i216.prol.loopexit ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 8 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i217, i8 0, i64 24, i1 false)
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !27
  %i.hs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 32
  store ptr %i.hq, ptr %i.hs, align 8, !tbaa !32
  %i.ht = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 40
  store i64 0, ptr %i.ht, align 8, !tbaa !33
  %i.hu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 48
  %i.hv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 56 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, i8 0, i64 24, i1 false)
  store ptr %i.hv, ptr %i.hw, align 8, !tbaa !27
  %i.hx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 80
  store ptr %i.hv, ptr %i.hx, align 8, !tbaa !32
  %i.hy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 88
  store i64 0, ptr %i.hy, align 8, !tbaa !33
  %i.hz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 96
  %i.ia = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 104 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hz, i8 0, i64 24, i1 false)
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !27
  %i.ic = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 128
  store ptr %i.ia, ptr %i.ic, align 8, !tbaa !32
  %i.id = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 136
  store i64 0, ptr %i.id, align 8, !tbaa !33
  %i.ie = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 144
  %i.if = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 152 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ie, i8 0, i64 24, i1 false)
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !27
  %i.ih = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 176
  store ptr %i.if, ptr %i.ih, align 8, !tbaa !32
  %i.ii = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 184
  store i64 0, ptr %i.ii, align 8, !tbaa !33
  %i.ij = add i64 %.057.i.i.i.i.i218, -4          ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 192 ; 2 uses
  %.not.i.i.i.i.i219.3 = icmp eq i64 %i.ij, 0
  br i1 %.not.i.i.i.i.i219.3, label %.loopexit413, label %.lr.ph.i.i.i.i.i216, !llvm.loop !55

.loopexit413:                                     ; preds = %.lr.ph.i.i.i.i.i216.prol.loopexit, %.lr.ph.i.i.i.i.i216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.lcssa.i.i.i.i.i220 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.lcssa594.unr, %.lr.ph.i.i.i.i.i216.prol.loopexit ], [ %i.ik, %.lr.ph.i.i.i.i.i216 ]
  %i.il = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i220, ptr %i.il, align 8, !tbaa !56
  br i1 %.not449, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.s

bb.s:                                             ; preds = %.loopexit413
  %i.im = add i64 %i.f, 63                        ; 2 uses
  %i.in = lshr i64 %i.im, 3
  %i.io = and i64 %i.in, 2305843009213693944
  %i.ip = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.io) #24
          to label %bb.t unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i ; 3 uses

bb.t:                                             ; preds = %bb.s
  %i.iq = lshr i64 %i.im, 6                       ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.iq
  %.idx.i = shl nuw nsw i64 %i.iq, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ip, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.s
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.t, %.loopexit413
  %.sroa.16351.0 = phi ptr [ null, %.loopexit413 ], [ %i.ir, %bb.t ] ; 4 uses
  %.sroa.0345.0 = phi ptr [ null, %.loopexit413 ], [ %i.ip, %bb.t ] ; 5 uses
  br i1 %.not.i.i.i.i171, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %.lr.ph446

.lr.ph446:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.it = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  br label %bb.v

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %._crit_edge444, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !tbaa !39
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.he, i64 noundef %i.bl, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.ax

bb.u:                                             ; preds = %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EEC2EmRKS5_.exit.i
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit315

bb.v:                                             ; preds = %.lr.ph446, %._crit_edge444
  %.0132445 = phi i64 [ 0, %.lr.ph446 ], [ %i.ja, %._crit_edge444 ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0384.0, i64 %.0132445 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !27 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 2 uses
  %.not440 = icmp eq ptr %i.iy, %i.iz
  br i1 %.not440, label %._crit_edge444, label %.lr.ph443

._crit_edge444:                                   ; preds = %bb.as, %bb.v
  %i.ja = add nuw i64 %.0132445, 1                ; 2 uses
  %exitcond468.not = icmp eq i64 %i.ja, %i.bl
  br i1 %exitcond468.not, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.v, !llvm.loop !57

.lr.ph443:                                        ; preds = %bb.v, %bb.as
  %.sroa.0340.0441 = phi ptr [ %i.qh, %bb.as ], [ %i.iy, %bb.v ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0340.0441, i64 40
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !58 ; 7 uses
  %i.jd = sdiv i64 %i.jc, 64
  %i.je = getelementptr inbounds [8 x i8], ptr %.sroa.0345.0, i64 %i.jd
  %i.jf = and i64 %i.jc, -9223372036854775745
  %i.jg = icmp ugt i64 %i.jf, -9223372036854775808
  %storemerge.idx.i.i.i.i.i225 = select i1 %i.jg, i64 -8, i64 0
  %storemerge.i.i.i.i.i226 = getelementptr inbounds i8, ptr %i.je, i64 %storemerge.idx.i.i.i.i.i225 ; 2 uses
  %i.jh = and i64 %i.jc, 63
  %i.ji = shl nuw i64 1, %i.jh                    ; 2 uses
  %i.jj = load i64, ptr %storemerge.i.i.i.i.i226, align 8, !tbaa !39 ; 2 uses
  %i.jk = and i64 %i.ji, %i.jj
  %.not412 = icmp eq i64 %i.jk, 0
  br i1 %.not412, label %bb.w, label %bb.as

bb.w:                                             ; preds = %.lr.ph443
  %i.jl = or i64 %i.ji, %i.jj
  store i64 %i.jl, ptr %storemerge.i.i.i.i.i226, align 8, !tbaa !39
  %i.jm = add i64 %i.jc, 1                        ; 2 uses
  %i.jn = load ptr, ptr %4, align 8, !tbaa !14    ; 3 uses
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jn, i64 %i.jm ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !20 ; 2 uses
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.jn, i64 %i.jc ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !20 ; 2 uses
  %i.js = sub i32 %i.jp, %i.jr
  %i.jt = sext i32 %i.js to i64                   ; 2 uses
  %i.ju = load ptr, ptr %3, align 8, !tbaa !60
  %i.jv = getelementptr [4 x i8], ptr %i.ju, i64 %i.jc ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !20 ; 4 uses
  %i.jx = sext i32 %i.jw to i64
  %i.jy = load i64, ptr %i.e, align 8, !tbaa !9
  %i.jz = getelementptr [4 x i8], ptr %i.jv, i64 %i.jy
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !20 ; 6 uses
  %i.kb = sext i32 %i.ka to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.kc = load i32, ptr %i.jq, align 4, !tbaa !20 ; 2 uses
  %i.kd = load i32, ptr %i.jo, align 4, !tbaa !20
  %i.ke = icmp ult i32 %i.kc, %i.kd
  br i1 %i.ke, label %.lr.ph436.preheader, label %._crit_edge

.lr.ph436.preheader:                              ; preds = %bb.w
  %i.kf = sext i32 %i.kc to i64
  br label %.lr.ph436

.lr.ph436:                                        ; preds = %.lr.ph436.preheader, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.kg = phi ptr [ %i.ma, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.jn, %.lr.ph436.preheader ]
  %i.kh = phi ptr [ %i.mb, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %.lr.ph436.preheader ] ; 5 uses
  %i.ki = phi ptr [ %i.mc, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %.lr.ph436.preheader ] ; 3 uses
  %i.kj = phi ptr [ %i.md, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %.lr.ph436.preheader ] ; 3 uses
  %.0131435 = phi i64 [ %i.me, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.kf, %.lr.ph436.preheader ] ; 2 uses
  %i.kk = load ptr, ptr %5, align 8, !tbaa !14
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %.0131435
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !20
  %i.kn = sext i32 %i.km to i64
  %i.ko = urem i64 %i.kn, %i.d                    ; 3 uses
  %i.kp = load ptr, ptr %1, align 8, !tbaa !60
  %i.kq = getelementptr [4 x i8], ptr %i.kp, i64 %i.ko ; 3 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !20 ; 2 uses
  %i.ks = icmp ne i32 %i.jw, %i.kr                ; 2 uses
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !9 ; 2 uses
  %.phi.trans.insert.i = getelementptr [4 x i8], ptr %i.kq, i64 %.pre.i
  %.pre37.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !20 ; 3 uses
  %i.kt = icmp ne i32 %i.ka, %.pre37.i
  %or.cond41.not.i = select i1 %i.ks, i1 true, i1 %i.kt
  br i1 %or.cond41.not.i, label %._crit_edge.i, label %_ZZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EEENKUlmmmE_clEmmm.exit.thread

._crit_edge.i:                                    ; preds = %.lr.ph436
  %i.ku = icmp eq i32 %i.jw, %.pre37.i            ; 2 uses
  %.idx.i231 = shl i64 %.pre.i, 3
  %i.kv = getelementptr i8, ptr %i.kq, i64 %.idx.i231
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !20 ; 3 uses
  %i.kx = icmp eq i32 %i.ka, %i.kw
  %or.cond = select i1 %i.ku, i1 %i.kx, i1 false
  br i1 %or.cond, label %_ZZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EEENKUlmmmE_clEmmm.exit.thread, label %._crit_edge38.i

._crit_edge38.i:                                  ; preds = %._crit_edge.i
  %i.ky = icmp eq i32 %i.jw, %i.kw                ; 2 uses
  %i.kz = icmp eq i32 %i.ka, %i.kr                ; 2 uses
  %or.cond.i = and i1 %i.kz, %i.ky
  br i1 %or.cond.i, label %_ZZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EEENKUlmmmE_clEmmm.exit.thread, label %bb.x

bb.x:                                             ; preds = %._crit_edge38.i
  %brmerge.not36.i = and i1 %i.kz, %i.ku
  %i.la = icmp eq i32 %i.ka, %.pre37.i
  %brmerge28.not.i = and i1 %i.la, %i.ky
  %or.cond33.i = or i1 %brmerge.not36.i, %brmerge28.not.i
  %or.cond33.not.i = xor i1 %or.cond33.i, true
  %i.lb = icmp ne i32 %i.ka, %i.kw
  %brmerge31.i = or i1 %i.ks, %i.lb
  %or.cond34.i = and i1 %brmerge31.i, %or.cond33.not.i
  br i1 %or.cond34.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.lc = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr @.str.108, ptr %i.lc, align 16, !tbaa !61
  invoke void @__cxa_throw(ptr nonnull %i.lc, ptr nonnull @_ZTIPKc, ptr null) #23
          to label %.noexc232 unwind label %bb.ag

.noexc232:                                        ; preds = %bb.y
  unreachable

_ZZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EEENKUlmmmE_clEmmm.exit.thread: ; preds = %._crit_edge.i, %.lr.ph436, %._crit_edge38.i
  %i.ld = xor i64 %i.ko, -1
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.le = add nuw i64 %i.ko, 1
  br label %bb.aa

bb.aa:                                            ; preds = %_ZZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EEENKUlmmmE_clEmmm.exit.thread, %bb.z
  %i.lf = phi i64 [ %i.le, %bb.z ], [ %i.ld, %_ZZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EEENKUlmmmE_clEmmm.exit.thread ]
  %i.lg = trunc i64 %i.lf to i32                  ; 2 uses
  %.not.i.i233 = icmp eq ptr %i.kj, %i.ki
  br i1 %.not.i.i233, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.lg, ptr %i.kj, align 4, !tbaa !20
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kj, i64 4 ; 2 uses
  store ptr %i.lh, ptr %i.it, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.ac:                                            ; preds = %bb.aa
  %i.li = ptrtoint ptr %i.ki to i64
  %i.lj = ptrtoint ptr %i.kh to i64               ; 2 uses
  %i.lk = sub i64 %i.li, %i.lj                    ; 5 uses
  %i.ll = icmp eq i64 %i.lk, 9223372036854775804
  br i1 %i.ll, label %bb.ad, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #23
          to label %.noexc235 unwind label %.loopexit.split-lp

.noexc235:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.lm = ashr exact i64 %i.lk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lm, i64 1)
  %i.ln = add nsw i64 %.sroa.speculated.i.i.i.i, %i.lm ; 2 uses
  %i.lo = icmp ult i64 %i.ln, %i.lm
  %i.lp = call i64 @llvm.umin.i64(i64 %i.ln, i64 2305843009213693951)
  %i.lq = select i1 %i.lo, i64 2305843009213693951, i64 %i.lp ; 3 uses
  %.not.i.i.i.i234 = icmp ne i64 %i.lq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i234)
  %i.lr = shl nuw nsw i64 %i.lq, 2
  %i.ls = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lr) #24
          to label %.noexc236 unwind label %.loopexit ; 5 uses

.noexc236:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 %i.lk ; 2 uses
  store i32 %i.lg, ptr %i.lt, align 4, !tbaa !20
  %i.lu = icmp sgt i64 %i.lk, 0
  br i1 %i.lu, label %bb.ae, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ae:                                            ; preds = %.noexc236
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ls, ptr align 4 %i.kh, i64 %i.lk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ae, %.noexc236
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.lw = load ptr, ptr %i.iu, align 8, !tbaa !64
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = sub i64 %i.lx, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.ly) #27
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ls, ptr %9, align 8, !tbaa !65
  store ptr %i.lv, ptr %i.it, align 8, !tbaa !62
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lq ; 2 uses
  store ptr %i.lz, ptr %i.iu, align 8, !tbaa !64
  %.pre473 = load ptr, ptr %4, align 8, !tbaa !14
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.ab
end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EE:bb.a

bb.am:                                            ; preds = %.noexc260, %bb.ak
  %i.pi = phi ptr [ %.pre476, %.noexc260 ], [ %i.mr, %bb.ak ] ; 2 uses
  %i.pj = getelementptr inbounds nuw [48 x i8], ptr %i.pi, i64 %i.ol ; 4 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 8 ; 3 uses
  %.02022.i.i.i261 = load ptr, ptr %i.pk, align 8, !tbaa !40 ; 2 uses
  %.not23.i.i.i262 = icmp eq ptr %.02022.i.i.i261, null
  br i1 %.not23.i.i.i262, label %._crit_edge.thread.i.i.i279, label %.lr.ph.i.i.i263

.lr.ph.i.i.i263:                                  ; preds = %bb.am, %.lr.ph.i.i.i263
  %.02024.i.i.i264 = phi ptr [ %.020.i.i.i267, %.lr.ph.i.i.i263 ], [ %.02022.i.i.i261, %bb.am ] ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.02024.i.i.i264, i64 32
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !39 ; 2 uses
  %i.po = icmp ult i64 %i.oi, %i.pn               ; 2 uses
  %.in.v.i.i.i265 = select i1 %i.po, i64 16, i64 24
  %.in.i.i.i266 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i264, i64 %.in.v.i.i.i265
  %.020.i.i.i267 = load ptr, ptr %.in.i.i.i266, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i268 = icmp eq ptr %.020.i.i.i267, null
  br i1 %.not.i.i.i268, label %._crit_edge.i.i.i269, label %.lr.ph.i.i.i263, !llvm.loop !67

._crit_edge.i.i.i269:                             ; preds = %.lr.ph.i.i.i263
  br i1 %i.po, label %._crit_edge.thread.i.i.i279, label %bb.ao

._crit_edge.thread.i.i.i279:                      ; preds = %._crit_edge.i.i.i269, %bb.am
  %.019.lcssa29.i.i.i280 = phi ptr [ %.02024.i.i.i264, %._crit_edge.i.i.i269 ], [ %i.pl, %bb.am ] ; 4 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pj, i64 24
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !27
  %i.pr = icmp eq ptr %.019.lcssa29.i.i.i280, %i.pq
  br i1 %i.pr, label %select.unfold.i.i276, label %bb.an

bb.an:                                            ; preds = %._crit_edge.thread.i.i.i279
  %i.ps = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i280) #25
  %.phi.trans.insert.i.i281 = getelementptr inbounds nuw i8, ptr %i.ps, i64 32
  %.pre.i.i282 = load i64, ptr %.phi.trans.insert.i.i281, align 8, !tbaa !39
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge.i.i.i269
  %i.pt = phi i64 [ %.pre.i.i282, %bb.an ], [ %i.pn, %._crit_edge.i.i.i269 ]
  %.019.lcssa28.i.i.i270 = phi ptr [ %.019.lcssa29.i.i.i280, %bb.an ], [ %.02024.i.i.i264, %._crit_edge.i.i.i269 ]
  %i.pu = icmp ult i64 %i.pt, %i.oi
  br i1 %i.pu, label %select.unfold.i.i276, label %bb.aq

select.unfold.i.i276:                             ; preds = %bb.ao, %._crit_edge.thread.i.i.i279
  %.sroa.4.0.i.ph.i.i277 = phi ptr [ %.019.lcssa29.i.i.i280, %._crit_edge.thread.i.i.i279 ], [ %.019.lcssa28.i.i.i270, %bb.ao ] ; 3 uses
  %i.pv = icmp eq ptr %.sroa.4.0.i.ph.i.i277, %i.pl
  br i1 %i.pv, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i278, label %bb.ap

bb.ap:                                            ; preds = %select.unfold.i.i276
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i277, i64 32
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !39
  %i.py = icmp ult i64 %i.oi, %i.px
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i278

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i278: ; preds = %bb.ap, %select.unfold.i.i276
  %i.pz = phi i1 [ %i.py, %bb.ap ], [ true, %select.unfold.i.i276 ]
  %i.qa = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %.noexc284 unwind label %bb.ar ; 2 uses

.noexc284:                                        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i278
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 32
  store i64 %i.oi, ptr %i.qb, align 8, !tbaa !39
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.pz, ptr noundef nonnull %i.qa, ptr noundef nonnull %.sroa.4.0.i.ph.i.i277, ptr noundef nonnull align 8 dereferenceable(32) %i.pl) #26
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pj, i64 40 ; 2 uses
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !33
  %i.qe = add i64 %i.qd, 1
  store i64 %i.qe, ptr %i.qc, align 8, !tbaa !33
  %.pre474 = load ptr, ptr %8, align 8, !tbaa !50
  br label %bb.aq

bb.aq:                                            ; preds = %.noexc284, %bb.ao
  %i.qf = phi ptr [ %.pre474, %.noexc284 ], [ %i.pi, %bb.ao ]
  %exitcond467.not = icmp eq i64 %i.ms, %i.jt
  br i1 %exitcond467.not, label %._crit_edge439, label %.lr.ph438, !llvm.loop !68

bb.ar:                                            ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i278, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %.lr.ph443, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.qh = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0340.0441) #25 ; 2 uses
  %.not = icmp eq ptr %i.qh, %i.iz
  br i1 %.not, label %._crit_edge444, label %.lr.ph443

bb.at:                                            ; preds = %bb.ar, %bb.ai
  %.pn142.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mq, %bb.ai ], [ %i.qg, %bb.ar ]
  %i.qi = load ptr, ptr %10, align 8, !tbaa !14
  call void @free(ptr noundef %i.qi) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.au

bb.au:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ag, %bb.at
  %.pn149.pn.pn.pn = phi { ptr, i32 } [ %.pn142.pn.pn.pn.pn, %bb.at ], [ %i.mj, %bb.ag ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.qj = load ptr, ptr %9, align 8, !tbaa !65    ; 3 uses
  %.not.i.i.i286 = icmp eq ptr %i.qj, null
  br i1 %.not.i.i.i286, label %_ZNSt6vectorIiSaIiEED2Ev.exit287, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qk = load ptr, ptr %i.iu, align 8, !tbaa !64
  %i.ql = ptrtoint ptr %i.qk to i64
  %i.qm = ptrtoint ptr %i.qj to i64
  %i.qn = sub i64 %i.ql, %i.qm
  call void @_ZdlPvm(ptr noundef nonnull %i.qj, i64 noundef %i.qn) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit287

_ZNSt6vectorIiSaIiEED2Ev.exit287:                 ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.bj

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.qo = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !9
  %i.qq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !69
  %i.qs = mul nsw i64 %i.qr, %i.qp                ; 2 uses
  %i.qt = icmp slt i64 %i.qs, 1
  br i1 %i.qt, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.qu = load ptr, ptr %6, align 8, !tbaa !60    ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.qs, 2 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.qw = add nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i, -4 ; 2 uses
  %i.qx = lshr exact i64 %i.qw, 2
  %i.qy = add nuw nsw i64 %i.qx, 1                ; 2 uses
  %min.iters.check582 = icmp ult i64 %i.qw, 28
  br i1 %min.iters.check582, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph583

vector.ph583:                                     ; preds = %bb.aw
  %n.vec584 = and i64 %i.qy, 9223372036854775800  ; 3 uses
  %i.qz = shl i64 %n.vec584, 2
  %i.ra = getelementptr i8, ptr %i.qu, i64 %i.qz
  br label %vector.body585

vector.body585:                                   ; preds = %vector.body585, %vector.ph583
  %index586 = phi i64 [ 0, %vector.ph583 ], [ %index.next587, %vector.body585 ] ; 2 uses
  %i.rb = shl i64 %index586, 2
  %next.gep = getelementptr i8, ptr %i.qu, i64 %i.rb ; 2 uses
  %i.rc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %next.gep, align 4, !tbaa !20
  store <4 x i32> splat (i32 2147483647), ptr %i.rc, align 4, !tbaa !20
  %index.next587 = add nuw i64 %index586, 8       ; 2 uses
  %i.rd = icmp eq i64 %index.next587, %n.vec584
  br i1 %i.rd, label %middle.block588, label %vector.body585, !llvm.loop !70

middle.block588:                                  ; preds = %vector.body585
  %cmp.n589 = icmp eq i64 %i.qy, %n.vec584
  br i1 %cmp.n589, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.aw, %middle.block588
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.qu, %bb.aw ], [ %i.ra, %middle.block588 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.re, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 2147483647, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !20
  %i.re = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.re, %i.qv
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !71

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block588, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store ptr %6, ptr %11, align 8, !tbaa !72
  %i.rf = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.b, ptr %i.rf, align 8, !tbaa !74
  %i.rg = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %8, ptr %i.rg, align 8, !tbaa !76
  br i1 %.not.i.i.i.i171, label %.noexc.i289, label %.lr.ph448

.noexc.i289:                                      ; preds = %bb.az, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit
  %i.rh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.rh, ptr %12, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 24, ptr %i.a, align 8, !tbaa !39
  %i.ri = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc290 unwind label %bb.bg ; 2 uses

.noexc290:                                        ; preds = %.noexc.i289
  store ptr %i.ri, ptr %12, align 8, !tbaa !78
  %i.rj = load i64, ptr %i.a, align 8, !tbaa !39  ; 3 uses
  store i64 %i.rj, ptr %i.rh, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ri, ptr noundef nonnull align 1 dereferenceable(24) @.str.23, i64 24, i1 false)
  %i.rk = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.rj, ptr %i.rk, align 8, !tbaa !48
  %i.rl = load ptr, ptr %12, align 8, !tbaa !78
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.rj
  store i8 0, ptr %i.rm, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.rn = load ptr, ptr %12, align 8, !tbaa !78   ; 2 uses
  %i.ro = icmp eq ptr %i.rn, %i.rh
  br i1 %i.ro, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

bb.ax:                                            ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.lr.ph448:                                        ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit, %bb.az
  %.0447 = phi i64 [ %i.rs, %bb.az ], [ 0, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit ] ; 2 uses
  %i.rq = shl nuw nsw i64 %.0447, 1               ; 2 uses
  invoke void @_ZZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EEENKUlmE0_clEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.rq)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %.lr.ph448
  %i.rr = or disjoint i64 %i.rq, 1
  invoke void @_ZZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EEENKUlmE0_clEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.rr)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.rs = add nuw i64 %.0447, 1                   ; 2 uses
  %exitcond469.not = icmp eq i64 %i.rs, %i.bl
  br i1 %exitcond469.not, label %.noexc.i289, label %.lr.ph448, !llvm.loop !79

bb.ba:                                            ; preds = %bb.ay, %.lr.ph448
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %.noexc290
  %i.ru = load i64, ptr %i.rh, align 8, !tbaa !17
  %i.rv = add i64 %i.ru, 1
  call void @_ZdlPvm(ptr noundef %i.rn, i64 noundef %i.rv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %.noexc290, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292
  %i.rw = load i64, ptr %i.b, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.not.i.i295 = icmp eq ptr %.sroa.0345.0, null
  br i1 %.not.i.i295, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294
  %i.rx = ptrtoint ptr %.sroa.16351.0 to i64
  %i.ry = ptrtoint ptr %.sroa.0345.0 to i64
  %i.rz = sub i64 %i.rx, %i.ry                    ; 2 uses
  %i.sa = ashr exact i64 %i.rz, 3
  %i.sb = sub nsw i64 0, %i.sa
  %i.sc = getelementptr inbounds [8 x i8], ptr %.sroa.16351.0, i64 %i.sb
  call void @_ZdlPvm(ptr noundef %i.sc, i64 noundef %i.rz) #27
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, %bb.bb
  %i.sd = load ptr, ptr %8, align 8, !tbaa !50    ; 3 uses
  %i.se = load ptr, ptr %i.il, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.sd, %i.se
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i296

.lr.ph.i.i.i296:                                  ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.sj, %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i ], [ %i.sd, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i, ptr noundef %i.sg)
          to label %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i unwind label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i296
  %i.sh = landingpad { ptr, i32 }
          catch ptr null
  %i.si = extractvalue { ptr, i32 } %i.sh, 0
  call void @__clang_call_terminate(ptr %i.si) #28
  unreachable

_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i296
  %i.sj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i297 = icmp eq ptr %i.sj, %i.se
  br i1 %.not.i.i.i297, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i296, !llvm.loop !80

_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !50
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.sk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.sd, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.sk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i
  %i.sl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !53
  %i.sn = ptrtoint ptr %i.sm to i64
  %i.so = ptrtoint ptr %i.sk to i64
  %i.sp = sub i64 %i.sn, %i.so
  call void @_ZdlPvm(ptr noundef nonnull %i.sk, i64 noundef %i.sp) #27
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %.not4.i.i.i298 = icmp eq ptr %.sroa.0384.0, %.0.lcssa.i.i.i.i.i
  br i1 %.not4.i.i.i298, label %_ZSt8_DestroyIPSt3mapImmSt4lessImESaISt4pairIKmmEEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i299

.lr.ph.i.i.i299:                                  ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit, %_ZSt8_DestroyISt3mapImmSt4lessImESaISt4pairIKmmEEEEvPT_.exit.i.i.i
  %.05.i.i.i300 = phi ptr [ %i.su, %_ZSt8_DestroyISt3mapImmSt4lessImESaISt4pairIKmmEEEEvPT_.exit.i.i.i ], [ %.sroa.0384.0, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit ] ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.05.i.i.i300, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i300, ptr noundef %i.sr)
          to label %_ZSt8_DestroyISt3mapImmSt4lessImESaISt4pairIKmmEEEEvPT_.exit.i.i.i unwind label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i299
  %i.ss = landingpad { ptr, i32 }
          catch ptr null
  %i.st = extractvalue { ptr, i32 } %i.ss, 0
  call void @__clang_call_terminate(ptr %i.st) #28
  unreachable

_ZSt8_DestroyISt3mapImmSt4lessImESaISt4pairIKmmEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i299
  %i.su = getelementptr inbounds nuw i8, ptr %.05.i.i.i300, i64 48 ; 2 uses
  %.not.i.i.i301 = icmp eq ptr %i.su, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i.i301, label %_ZSt8_DestroyIPSt3mapImmSt4lessImESaISt4pairIKmmEEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i299, !llvm.loop !81

_ZSt8_DestroyIPSt3mapImmSt4lessImESaISt4pairIKmmEEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt3mapImmSt4lessImESaISt4pairIKmmEEEEvPT_.exit.i.i.i, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit
  %.not.i.i1.i303 = icmp eq ptr %.sroa.0384.0, null
  br i1 %.not.i.i1.i303, label %_ZNSt6vectorISt3mapImmSt4lessImESaISt4pairIKmmEEESaIS7_EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZSt8_DestroyIPSt3mapImmSt4lessImESaISt4pairIKmmEEES7_EvT_S9_RSaIT0_E.exit.i
  %i.sv = ptrtoint ptr %.sroa.0384.0 to i64
  %i.sw = sub i64 %.sroa.20.0, %i.sv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0384.0, i64 noundef %i.sw) #27
  br label %_ZNSt6vectorISt3mapImmSt4lessImESaISt4pairIKmmEEESaIS7_EED2Ev.exit

_ZNSt6vectorISt3mapImmSt4lessImESaISt4pairIKmmEEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt3mapImmSt4lessImESaISt4pairIKmmEEES7_EvT_S9_RSaIT0_E.exit.i, %bb.bf
  %i.sx = trunc i64 %i.rw to i32
  ret i32 %i.sx

bb.bg:                                            ; preds = %.noexc.i289
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.ba
  %.pn = phi { ptr, i32 } [ %i.rt, %bb.ba ], [ %i.sy, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.ax
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bh ], [ %i.rp, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit287, %bb.bi
  %.pn149.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bi ], [ %.pn149.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit287 ] ; 2 uses
  %.not.i.i304 = icmp eq ptr %.sroa.0345.0, null
  br i1 %.not.i.i304, label %.body, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.sz = ptrtoint ptr %.sroa.16351.0 to i64
  %i.ta = ptrtoint ptr %.sroa.0345.0 to i64
  %i.tb = sub i64 %i.sz, %i.ta                    ; 2 uses
  %i.tc = ashr exact i64 %i.tb, 3
  %i.td = sub nsw i64 0, %i.tc
  %i.te = getelementptr inbounds [8 x i8], ptr %.sroa.16351.0, i64 %i.td
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.tb) #27
  br label %.body

.body:                                            ; preds = %bb.bk, %bb.bj, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %.pn149.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.is, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i ], [ %.pn149.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bk ], [ %.pn149.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bj ] ; 2 uses
  %i.tf = load ptr, ptr %8, align 8, !tbaa !50    ; 3 uses
  %i.tg = load ptr, ptr %i.il, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i306 = icmp eq ptr %i.tf, %i.tg
  br i1 %.not4.i.i.i306, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i313, label %.lr.ph.i.i.i307

.lr.ph.i.i.i307:                                  ; preds = %.body, %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i309
  %.05.i.i.i308 = phi ptr [ %i.tl, %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i309 ], [ %i.tf, %.body ] ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.05.i.i.i308, i64 16
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i308, ptr noundef %i.ti)
          to label %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i309 unwind label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i.i307
  %i.tj = landingpad { ptr, i32 }
          catch ptr null
  %i.tk = extractvalue { ptr, i32 } %i.tj, 0
  call void @__clang_call_terminate(ptr %i.tk) #28
  unreachable

_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i309: ; preds = %.lr.ph.i.i.i307
  %i.tl = getelementptr inbounds nuw i8, ptr %.05.i.i.i308, i64 48 ; 2 uses
  %.not.i.i.i310 = icmp eq ptr %i.tl, %i.tg
  br i1 %.not.i.i.i310, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i311, label %.lr.ph.i.i.i307, !llvm.loop !80

_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i311: ; preds = %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i309
  %.pr.i312 = load ptr, ptr %8, align 8, !tbaa !50
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i313

_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i313: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i311, %.body
  %i.tm = phi ptr [ %.pr.i312, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i311 ], [ %i.tf, %.body ] ; 3 uses
  %.not.i.i1.i314 = icmp eq ptr %i.tm, null
  br i1 %.not.i.i1.i314, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit315, label %bb.bm

bb.bm:                                            ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i313
  %i.tn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !53
  %i.tp = ptrtoint ptr %i.to to i64
  %i.tq = ptrtoint ptr %i.tm to i64
  %i.tr = sub i64 %i.tp, %i.tq
  call void @_ZdlPvm(ptr noundef nonnull %i.tm, i64 noundef %i.tr) #27
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit315

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit315: ; preds = %bb.bm, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i313, %bb.u
  %.pn149.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.iv, %bb.u ], [ %.pn149.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i313 ], [ %.pn149.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bn
end_hunk_1
begin_hunk_2_@_ZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EE:bb.a
  br i1 %i.er, label %.lr.ph.i.i.i174.preheader, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.et = load i64, ptr %i.es, align 8, !tbaa !39
  %i.eu = icmp ugt i64 %i.et, %i.em
  br i1 %i.eu, label %.lr.ph.i.i.i174.preheader, label %bb.m

.lr.ph.i.i.i174.preheader:                        ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit, %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  br label %.lr.ph.i.i.i174

.lr.ph.i.i.i174:                                  ; preds = %.lr.ph.i.i.i174.preheader, %.lr.ph.i.i.i174
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i174 ], [ %i.en, %.lr.ph.i.i.i174.preheader ] ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !39 ; 2 uses
  %i.ex = icmp ugt i64 %i.ew, %i.em               ; 2 uses
  %.in.v.i.i.i = select i1 %i.ex, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i175 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i175, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i174, !llvm.loop !42

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i174
  br i1 %i.ex, label %._crit_edge.thread.i.i.i, label %bb.j

._crit_edge.thread.i.i.i:                         ; preds = %bb.h, %._crit_edge.i.i.i
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.eb, %bb.h ] ; 4 uses
  %i.ey = load ptr, ptr %i.ec, align 8, !tbaa !27
  %i.ez = icmp eq ptr %.019.lcssa29.i.i.i, %i.ey
  br i1 %i.ez, label %select.unfold.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.fa = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #25
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %i.fb = phi i64 [ %.pre.i.i, %bb.i ], [ %i.ew, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.i ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.fc = icmp ult i64 %i.fb, %i.em
  br i1 %i.fc, label %select.unfold.i.i, label %bb.m

select.unfold.i.i:                                ; preds = %bb.j, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.j ] ; 3 uses
  %i.fd = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.eb
  br i1 %i.fd, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %select.unfold.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !39
  %i.fg = icmp ugt i64 %i.ff, %i.em
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i: ; preds = %bb.k, %select.unfold.i.i
  %i.fh = phi i1 [ %i.fg, %bb.k ], [ true, %select.unfold.i.i ]
  %i.fi = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %.noexc176 unwind label %bb.l  ; 3 uses

.noexc176:                                        ; preds = %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  store i64 %i.em, ptr %i.fj, align 8
  %.sroa.8363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  store i64 %storemerge433, ptr %.sroa.8363.0..sroa_idx, align 8
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fh, ptr noundef nonnull %i.fi, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.eb) #26
  %i.fk = load i64, ptr %i.ed, align 8, !tbaa !33
  %i.fl = add i64 %i.fk, 1
  store i64 %i.fl, ptr %i.ed, align 8, !tbaa !33
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.m:                                             ; preds = %bb.j, %.noexc176, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit
  %i.fn = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0384.0, i64 %i.em ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !38 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 5 uses
  %.not10.i.i.i177 = icmp eq ptr %i.fp, null
  br i1 %.not10.i.i.i177, label %._crit_edge.thread.i.i.i208, label %.lr.ph.i.i.i178

.lr.ph.i.i.i178:                                  ; preds = %bb.m, %.lr.ph.i.i.i178
  %.012.i.i.i179 = phi ptr [ %.1.i.i.i184, %.lr.ph.i.i.i178 ], [ %i.fp, %bb.m ] ; 3 uses
  %.0811.i.i.i180 = phi ptr [ %.19.i.i.i181, %.lr.ph.i.i.i178 ], [ %i.fq, %bb.m ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.012.i.i.i179, i64 32
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !39
  %i.ft = icmp ult i64 %i.fs, %i.dv               ; 2 uses
  %.19.i.i.i181 = select i1 %i.ft, ptr %.0811.i.i.i180, ptr %.012.i.i.i179 ; 3 uses
  %.1.in.v.i.i.i182 = select i1 %i.ft, i64 24, i64 16
  %.1.in.i.i.i183 = getelementptr inbounds nuw i8, ptr %.012.i.i.i179, i64 %.1.in.v.i.i.i182
  %.1.i.i.i184 = load ptr, ptr %.1.in.i.i.i183, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i185 = icmp eq ptr %.1.i.i.i184, null
  br i1 %.not.i.i.i185, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i186, label %.lr.ph.i.i.i178, !llvm.loop !41

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i186: ; preds = %.lr.ph.i.i.i178
  %i.fu = icmp eq ptr %.19.i.i.i181, %i.fq
  br i1 %i.fu, label %.lr.ph.i.i.i192.preheader, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit189

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit189: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i186
  %i.fv = getelementptr inbounds nuw i8, ptr %.19.i.i.i181, i64 32
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !39
  %i.fx = icmp ugt i64 %i.fw, %i.dv
  br i1 %i.fx, label %.lr.ph.i.i.i192.preheader, label %bb.r

.lr.ph.i.i.i192.preheader:                        ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit189, %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i186
  br label %.lr.ph.i.i.i192

.lr.ph.i.i.i192:                                  ; preds = %.lr.ph.i.i.i192.preheader, %.lr.ph.i.i.i192
  %.02024.i.i.i193 = phi ptr [ %.020.i.i.i196, %.lr.ph.i.i.i192 ], [ %i.fp, %.lr.ph.i.i.i192.preheader ] ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.02024.i.i.i193, i64 32
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !39 ; 2 uses
  %i.ga = icmp ugt i64 %i.fz, %i.dv               ; 2 uses
  %.in.v.i.i.i194 = select i1 %i.ga, i64 16, i64 24
  %.in.i.i.i195 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i193, i64 %.in.v.i.i.i194
  %.020.i.i.i196 = load ptr, ptr %.in.i.i.i195, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i197 = icmp eq ptr %.020.i.i.i196, null
  br i1 %.not.i.i.i197, label %._crit_edge.i.i.i198, label %.lr.ph.i.i.i192, !llvm.loop !42

._crit_edge.i.i.i198:                             ; preds = %.lr.ph.i.i.i192
  br i1 %i.ga, label %._crit_edge.thread.i.i.i208, label %bb.o

._crit_edge.thread.i.i.i208:                      ; preds = %bb.m, %._crit_edge.i.i.i198
  %.019.lcssa29.i.i.i209 = phi ptr [ %.02024.i.i.i193, %._crit_edge.i.i.i198 ], [ %i.fq, %bb.m ] ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !27
  %i.gd = icmp eq ptr %.019.lcssa29.i.i.i209, %i.gc
  br i1 %i.gd, label %select.unfold.i.i205, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread.i.i.i208
  %i.ge = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i209) #25
  %.phi.trans.insert.i.i210 = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %.pre.i.i211 = load i64, ptr %.phi.trans.insert.i.i210, align 8, !tbaa !39
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i198
  %i.gf = phi i64 [ %.pre.i.i211, %bb.n ], [ %i.fz, %._crit_edge.i.i.i198 ]
  %.019.lcssa28.i.i.i199 = phi ptr [ %.019.lcssa29.i.i.i209, %bb.n ], [ %.02024.i.i.i193, %._crit_edge.i.i.i198 ]
  %i.gg = icmp ult i64 %i.gf, %i.dv
  br i1 %i.gg, label %select.unfold.i.i205, label %bb.r

select.unfold.i.i205:                             ; preds = %bb.o, %._crit_edge.thread.i.i.i208
  %.sroa.4.0.i.ph.i.i206 = phi ptr [ %.019.lcssa29.i.i.i209, %._crit_edge.thread.i.i.i208 ], [ %.019.lcssa28.i.i.i199, %bb.o ] ; 3 uses
  %i.gh = icmp eq ptr %.sroa.4.0.i.ph.i.i206, %i.fq
  br i1 %i.gh, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i207, label %bb.p

bb.p:                                             ; preds = %select.unfold.i.i205
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i206, i64 32
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !39
  %i.gk = icmp ugt i64 %i.gj, %i.dv
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i207

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i207: ; preds = %bb.p, %select.unfold.i.i205
  %i.gl = phi i1 [ %i.gk, %bb.p ], [ true, %select.unfold.i.i205 ]
  %i.gm = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %.noexc213 unwind label %bb.q  ; 3 uses

.noexc213:                                        ; preds = %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i207
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  store i64 %i.dv, ptr %i.gn, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 40
  store i64 %storemerge433, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gl, ptr noundef nonnull %i.gm, ptr noundef nonnull %.sroa.4.0.i.ph.i.i206, ptr noundef nonnull align 8 dereferenceable(32) %i.fq) #26
  %i.go = getelementptr inbounds nuw i8, ptr %i.fn, i64 40 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !33
  %i.gq = add i64 %i.gp, 1
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !33
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i207
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.r:                                             ; preds = %bb.o, %.noexc213, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit189
  %i.gs = add nuw i64 %.0135430, 1                ; 2 uses
  %i.gt = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.cx
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !20 ; 2 uses
  %i.gw = sext i32 %i.gv to i64                   ; 2 uses
  %i.gx = icmp ult i64 %i.gs, %i.gw
  br i1 %i.gx, label %bb.h, label %.loopexit414, !llvm.loop !113

.loopexit415:                                     ; preds = %.loopexit414, %bb.g, %.lr.ph434
  %i.gy = phi ptr [ %i.cu, %.lr.ph434 ], [ %i.cu, %bb.g ], [ %i.dj, %.loopexit414 ]
  %i.gz = phi ptr [ %i.cv, %.lr.ph434 ], [ %i.cv, %bb.g ], [ %i.dj, %.loopexit414 ]
  %i.ha = phi ptr [ %i.cw, %.lr.ph434 ], [ %i.cv, %bb.g ], [ %i.dj, %.loopexit414 ]
  %exitcond.not = icmp eq i64 %i.cx, %i.f
  br i1 %exitcond.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph434, !llvm.loop !114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit415, %_ZNSt6vectorISt3mapImmSt4lessImESaISt4pairIKmmEEESaIS7_EEC2EmRKS8_.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.hb, ptr %7, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.hb, ptr noundef nonnull align 1 dereferenceable(15) @.str.22, i64 15, i1 false)
  %i.hc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 15, ptr %i.hc, align 8, !tbaa !48
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 31
  store i8 0, ptr %i.hd, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.he = shl nsw i64 %i.bl, 1                    ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i171, label %.loopexit413, label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EEC2EmRKS5_.exit.i

_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EEC2EmRKS5_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hf = mul nuw nsw i64 %i.bl, 96
  %i.hg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #24
          to label %.noexc222 unwind label %bb.u  ; 4 uses

.noexc222:                                        ; preds = %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EEC2EmRKS5_.exit.i
  store ptr %i.hg, ptr %8, align 8, !tbaa !50
  %i.hh = getelementptr inbounds nuw [48 x i8], ptr %i.hg, i64 %i.he
  %i.hi = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.hh, ptr %i.hi, align 8, !tbaa !53
  %xtraiter615 = and i64 %i.he, 2                 ; 2 uses
  %lcmp.mod616.not = icmp eq i64 %xtraiter615, 0
  br i1 %lcmp.mod616.not, label %.lr.ph.i.i.i.i.i216.prol.loopexit, label %.lr.ph.i.i.i.i.i216.prol

.lr.ph.i.i.i.i.i216.prol:                         ; preds = %.noexc222, %.lr.ph.i.i.i.i.i216.prol
  %.08.i.i.i.i.i217.prol = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i216.prol ], [ %i.hg, %.noexc222 ] ; 6 uses
  %.057.i.i.i.i.i218.prol = phi i64 [ %i.hn, %.lr.ph.i.i.i.i.i216.prol ], [ %i.he, %.noexc222 ]
  %prol.iter617 = phi i64 [ %prol.iter617.next, %.lr.ph.i.i.i.i.i216.prol ], [ 0, %.noexc222 ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217.prol, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217.prol, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i217.prol, i8 0, i64 24, i1 false)
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !27
  %i.hl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217.prol, i64 32
  store ptr %i.hj, ptr %i.hl, align 8, !tbaa !32
  %i.hm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217.prol, i64 40
  store i64 0, ptr %i.hm, align 8, !tbaa !33
  %i.hn = add i64 %.057.i.i.i.i.i218.prol, -1     ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217.prol, i64 48 ; 3 uses
  %prol.iter617.next = add i64 %prol.iter617, 1   ; 2 uses
  %prol.iter617.cmp.not = icmp eq i64 %prol.iter617.next, %xtraiter615
  br i1 %prol.iter617.cmp.not, label %.lr.ph.i.i.i.i.i216.prol.loopexit, label %.lr.ph.i.i.i.i.i216.prol, !llvm.loop !115

.lr.ph.i.i.i.i.i216.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i216.prol, %.noexc222
  %.lcssa594.unr = phi ptr [ poison, %.noexc222 ], [ %i.ho, %.lr.ph.i.i.i.i.i216.prol ]
  %.08.i.i.i.i.i217.unr = phi ptr [ %i.hg, %.noexc222 ], [ %i.ho, %.lr.ph.i.i.i.i.i216.prol ]
  %.057.i.i.i.i.i218.unr = phi i64 [ %i.he, %.noexc222 ], [ %i.hn, %.lr.ph.i.i.i.i.i216.prol ]
  %i.hp = icmp ult i64 %i.he, 4
  br i1 %i.hp, label %.loopexit413, label %.lr.ph.i.i.i.i.i216

.lr.ph.i.i.i.i.i216:                              ; preds = %.lr.ph.i.i.i.i.i216.prol.loopexit, %.lr.ph.i.i.i.i.i216
  %.08.i.i.i.i.i217 = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i216 ], [ %.08.i.i.i.i.i217.unr, %.lr.ph.i.i.i.i.i216.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i.i218 = phi i64 [ %i.ij, %.lr.ph.i.i.i.i.i216 ], [ %.057.i.i.i.i.i218.unr, %.lr.ph.i.i.i.i.i216.prol.loopexit ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 8 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i217, i8 0, i64 24, i1 false)
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !27
  %i.hs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 32
  store ptr %i.hq, ptr %i.hs, align 8, !tbaa !32
  %i.ht = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 40
  store i64 0, ptr %i.ht, align 8, !tbaa !33
  %i.hu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 48
  %i.hv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 56 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, i8 0, i64 24, i1 false)
  store ptr %i.hv, ptr %i.hw, align 8, !tbaa !27
  %i.hx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 80
  store ptr %i.hv, ptr %i.hx, align 8, !tbaa !32
  %i.hy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 88
  store i64 0, ptr %i.hy, align 8, !tbaa !33
  %i.hz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 96
  %i.ia = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 104 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hz, i8 0, i64 24, i1 false)
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !27
  %i.ic = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 128
  store ptr %i.ia, ptr %i.ic, align 8, !tbaa !32
  %i.id = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 136
  store i64 0, ptr %i.id, align 8, !tbaa !33
  %i.ie = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 144
  %i.if = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 152 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ie, i8 0, i64 24, i1 false)
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !27
  %i.ih = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 176
  store ptr %i.if, ptr %i.ih, align 8, !tbaa !32
  %i.ii = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 184
  store i64 0, ptr %i.ii, align 8, !tbaa !33
  %i.ij = add i64 %.057.i.i.i.i.i218, -4          ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i217, i64 192 ; 2 uses
  %.not.i.i.i.i.i219.3 = icmp eq i64 %i.ij, 0
  br i1 %.not.i.i.i.i.i219.3, label %.loopexit413, label %.lr.ph.i.i.i.i.i216, !llvm.loop !55

.loopexit413:                                     ; preds = %.lr.ph.i.i.i.i.i216.prol.loopexit, %.lr.ph.i.i.i.i.i216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.lcssa.i.i.i.i.i220 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.lcssa594.unr, %.lr.ph.i.i.i.i.i216.prol.loopexit ], [ %i.ik, %.lr.ph.i.i.i.i.i216 ]
  %i.il = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i220, ptr %i.il, align 8, !tbaa !56
  br i1 %.not449, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.s

bb.s:                                             ; preds = %.loopexit413
  %i.im = add i64 %i.f, 63                        ; 2 uses
  %i.in = lshr i64 %i.im, 3
  %i.io = and i64 %i.in, 2305843009213693944
  %i.ip = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.io) #24
          to label %bb.t unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i ; 3 uses

bb.t:                                             ; preds = %bb.s
  %i.iq = lshr i64 %i.im, 6                       ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.iq
  %.idx.i = shl nuw nsw i64 %i.iq, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ip, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.s
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.t, %.loopexit413
  %.sroa.16351.0 = phi ptr [ null, %.loopexit413 ], [ %i.ir, %bb.t ] ; 4 uses
  %.sroa.0345.0 = phi ptr [ null, %.loopexit413 ], [ %i.ip, %bb.t ] ; 5 uses
  br i1 %.not.i.i.i.i171, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %.lr.ph446

.lr.ph446:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.it = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  br label %bb.v

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %._crit_edge444, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !tbaa !39
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.he, i64 noundef %i.bl, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %bb.ax

bb.u:                                             ; preds = %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EEC2EmRKS5_.exit.i
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit315

bb.v:                                             ; preds = %.lr.ph446, %._crit_edge444
  %.0132445 = phi i64 [ 0, %.lr.ph446 ], [ %i.ja, %._crit_edge444 ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0384.0, i64 %.0132445 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !27 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 2 uses
  %.not440 = icmp eq ptr %i.iy, %i.iz
  br i1 %.not440, label %._crit_edge444, label %.lr.ph443

._crit_edge444:                                   ; preds = %bb.as, %bb.v
  %i.ja = add nuw i64 %.0132445, 1                ; 2 uses
  %exitcond468.not = icmp eq i64 %i.ja, %i.bl
  br i1 %exitcond468.not, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.v, !llvm.loop !116

.lr.ph443:                                        ; preds = %bb.v, %bb.as
  %.sroa.0340.0441 = phi ptr [ %i.qh, %bb.as ], [ %i.iy, %bb.v ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0340.0441, i64 40
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !58 ; 7 uses
  %i.jd = sdiv i64 %i.jc, 64
  %i.je = getelementptr inbounds [8 x i8], ptr %.sroa.0345.0, i64 %i.jd
  %i.jf = and i64 %i.jc, -9223372036854775745
  %i.jg = icmp ugt i64 %i.jf, -9223372036854775808
  %storemerge.idx.i.i.i.i.i225 = select i1 %i.jg, i64 -8, i64 0
  %storemerge.i.i.i.i.i226 = getelementptr inbounds i8, ptr %i.je, i64 %storemerge.idx.i.i.i.i.i225 ; 2 uses
  %i.jh = and i64 %i.jc, 63
  %i.ji = shl nuw i64 1, %i.jh                    ; 2 uses
  %i.jj = load i64, ptr %storemerge.i.i.i.i.i226, align 8, !tbaa !39 ; 2 uses
  %i.jk = and i64 %i.ji, %i.jj
  %.not412 = icmp eq i64 %i.jk, 0
  br i1 %.not412, label %bb.w, label %bb.as

bb.w:                                             ; preds = %.lr.ph443
  %i.jl = or i64 %i.ji, %i.jj
  store i64 %i.jl, ptr %storemerge.i.i.i.i.i226, align 8, !tbaa !39
  %i.jm = add i64 %i.jc, 1                        ; 2 uses
  %i.jn = load ptr, ptr %4, align 8, !tbaa !14    ; 3 uses
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jn, i64 %i.jm ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !20 ; 2 uses
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.jn, i64 %i.jc ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !20 ; 2 uses
  %i.js = sub i32 %i.jp, %i.jr
  %i.jt = sext i32 %i.js to i64                   ; 2 uses
  %i.ju = load ptr, ptr %3, align 8, !tbaa !60
  %i.jv = getelementptr [4 x i8], ptr %i.ju, i64 %i.jc ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !20 ; 4 uses
  %i.jx = sext i32 %i.jw to i64
  %i.jy = load i64, ptr %i.e, align 8, !tbaa !9
  %i.jz = getelementptr [4 x i8], ptr %i.jv, i64 %i.jy
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !20 ; 6 uses
  %i.kb = sext i32 %i.ka to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.kc = load i32, ptr %i.jq, align 4, !tbaa !20 ; 2 uses
  %i.kd = load i32, ptr %i.jo, align 4, !tbaa !20
  %i.ke = icmp ult i32 %i.kc, %i.kd
  br i1 %i.ke, label %.lr.ph436.preheader, label %._crit_edge

.lr.ph436.preheader:                              ; preds = %bb.w
  %i.kf = sext i32 %i.kc to i64
  br label %.lr.ph436

.lr.ph436:                                        ; preds = %.lr.ph436.preheader, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.kg = phi ptr [ %i.ma, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.jn, %.lr.ph436.preheader ]
  %i.kh = phi ptr [ %i.mb, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %.lr.ph436.preheader ] ; 5 uses
  %i.ki = phi ptr [ %i.mc, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %.lr.ph436.preheader ] ; 3 uses
  %i.kj = phi ptr [ %i.md, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %.lr.ph436.preheader ] ; 3 uses
  %.0131435 = phi i64 [ %i.me, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.kf, %.lr.ph436.preheader ] ; 2 uses
  %i.kk = load ptr, ptr %5, align 8, !tbaa !14
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %.0131435
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !20
  %i.kn = sext i32 %i.km to i64
  %i.ko = urem i64 %i.kn, %i.d                    ; 3 uses
  %i.kp = load ptr, ptr %1, align 8, !tbaa !60
  %i.kq = getelementptr [4 x i8], ptr %i.kp, i64 %i.ko ; 3 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !20 ; 2 uses
  %i.ks = icmp ne i32 %i.jw, %i.kr                ; 2 uses
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !9 ; 2 uses
  %.phi.trans.insert.i = getelementptr [4 x i8], ptr %i.kq, i64 %.pre.i
  %.pre37.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !20 ; 3 uses
  %i.kt = icmp ne i32 %i.ka, %.pre37.i
  %or.cond41.not.i = select i1 %i.ks, i1 true, i1 %i.kt
  br i1 %or.cond41.not.i, label %._crit_edge.i, label %_ZZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EEENKUlmmmE_clEmmm.exit.thread

._crit_edge.i:                                    ; preds = %.lr.ph436
  %i.ku = icmp eq i32 %i.jw, %.pre37.i            ; 2 uses
  %.idx.i231 = shl i64 %.pre.i, 3
  %i.kv = getelementptr i8, ptr %i.kq, i64 %.idx.i231
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !20 ; 3 uses
  %i.kx = icmp eq i32 %i.ka, %i.kw
  %or.cond = select i1 %i.ku, i1 %i.kx, i1 false
  br i1 %or.cond, label %_ZZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EEENKUlmmmE_clEmmm.exit.thread, label %._crit_edge38.i

._crit_edge38.i:                                  ; preds = %._crit_edge.i
  %i.ky = icmp eq i32 %i.jw, %i.kw                ; 2 uses
  %i.kz = icmp eq i32 %i.ka, %i.kr                ; 2 uses
  %or.cond.i = and i1 %i.kz, %i.ky
  br i1 %or.cond.i, label %_ZZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EEENKUlmmmE_clEmmm.exit.thread, label %bb.x

bb.x:                                             ; preds = %._crit_edge38.i
  %brmerge.not36.i = and i1 %i.kz, %i.ku
  %i.la = icmp eq i32 %i.ka, %.pre37.i
  %brmerge28.not.i = and i1 %i.la, %i.ky
  %or.cond33.i = or i1 %brmerge.not36.i, %brmerge28.not.i
  %or.cond33.not.i = xor i1 %or.cond33.i, true
  %i.lb = icmp ne i32 %i.ka, %i.kw
  %brmerge31.i = or i1 %i.ks, %i.lb
  %or.cond34.i = and i1 %brmerge31.i, %or.cond33.not.i
  br i1 %or.cond34.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.lc = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr @.str.108, ptr %i.lc, align 16, !tbaa !61
  invoke void @__cxa_throw(ptr nonnull %i.lc, ptr nonnull @_ZTIPKc, ptr null) #23
          to label %.noexc232 unwind label %bb.ag

.noexc232:                                        ; preds = %bb.y
  unreachable

_ZZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EEENKUlmmmE_clEmmm.exit.thread: ; preds = %._crit_edge.i, %.lr.ph436, %._crit_edge38.i
  %i.ld = xor i64 %i.ko, -1
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.le = add nuw i64 %i.ko, 1
  br label %bb.aa

bb.aa:                                            ; preds = %_ZZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EEENKUlmmmE_clEmmm.exit.thread, %bb.z
  %i.lf = phi i64 [ %i.le, %bb.z ], [ %i.ld, %_ZZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EEENKUlmmmE_clEmmm.exit.thread ]
  %i.lg = trunc i64 %i.lf to i32                  ; 2 uses
  %.not.i.i233 = icmp eq ptr %i.kj, %i.ki
  br i1 %.not.i.i233, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.lg, ptr %i.kj, align 4, !tbaa !20
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kj, i64 4 ; 2 uses
  store ptr %i.lh, ptr %i.it, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.ac:                                            ; preds = %bb.aa
  %i.li = ptrtoint ptr %i.ki to i64
  %i.lj = ptrtoint ptr %i.kh to i64               ; 2 uses
  %i.lk = sub i64 %i.li, %i.lj                    ; 5 uses
  %i.ll = icmp eq i64 %i.lk, 9223372036854775804
  br i1 %i.ll, label %bb.ad, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #23
          to label %.noexc235 unwind label %.loopexit.split-lp

.noexc235:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.lm = ashr exact i64 %i.lk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lm, i64 1)
  %i.ln = add nsw i64 %.sroa.speculated.i.i.i.i, %i.lm ; 2 uses
  %i.lo = icmp ult i64 %i.ln, %i.lm
  %i.lp = call i64 @llvm.umin.i64(i64 %i.ln, i64 2305843009213693951)
  %i.lq = select i1 %i.lo, i64 2305843009213693951, i64 %i.lp ; 3 uses
  %.not.i.i.i.i234 = icmp ne i64 %i.lq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i234)
  %i.lr = shl nuw nsw i64 %i.lq, 2
  %i.ls = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lr) #24
          to label %.noexc236 unwind label %.loopexit ; 5 uses

.noexc236:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 %i.lk ; 2 uses
  store i32 %i.lg, ptr %i.lt, align 4, !tbaa !20
  %i.lu = icmp sgt i64 %i.lk, 0
  br i1 %i.lu, label %bb.ae, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ae:                                            ; preds = %.noexc236
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ls, ptr align 4 %i.kh, i64 %i.lk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ae, %.noexc236
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.lw = load ptr, ptr %i.iu, align 8, !tbaa !64
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = sub i64 %i.lx, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.ly) #27
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ls, ptr %9, align 8, !tbaa !65
  store ptr %i.lv, ptr %i.it, align 8, !tbaa !62
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lq ; 2 uses
  store ptr %i.lz, ptr %i.iu, align 8, !tbaa !64
  %.pre473 = load ptr, ptr %4, align 8, !tbaa !14
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.ab
end_hunk_2
begin_hunk_3_@_ZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EE:bb.a

bb.am:                                            ; preds = %.noexc260, %bb.ak
  %i.pi = phi ptr [ %.pre476, %.noexc260 ], [ %i.mr, %bb.ak ] ; 2 uses
  %i.pj = getelementptr inbounds nuw [48 x i8], ptr %i.pi, i64 %i.ol ; 4 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 8 ; 3 uses
  %.02022.i.i.i261 = load ptr, ptr %i.pk, align 8, !tbaa !40 ; 2 uses
  %.not23.i.i.i262 = icmp eq ptr %.02022.i.i.i261, null
  br i1 %.not23.i.i.i262, label %._crit_edge.thread.i.i.i279, label %.lr.ph.i.i.i263

.lr.ph.i.i.i263:                                  ; preds = %bb.am, %.lr.ph.i.i.i263
  %.02024.i.i.i264 = phi ptr [ %.020.i.i.i267, %.lr.ph.i.i.i263 ], [ %.02022.i.i.i261, %bb.am ] ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.02024.i.i.i264, i64 32
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !39 ; 2 uses
  %i.po = icmp ult i64 %i.oi, %i.pn               ; 2 uses
  %.in.v.i.i.i265 = select i1 %i.po, i64 16, i64 24
  %.in.i.i.i266 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i264, i64 %.in.v.i.i.i265
  %.020.i.i.i267 = load ptr, ptr %.in.i.i.i266, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i268 = icmp eq ptr %.020.i.i.i267, null
  br i1 %.not.i.i.i268, label %._crit_edge.i.i.i269, label %.lr.ph.i.i.i263, !llvm.loop !67

._crit_edge.i.i.i269:                             ; preds = %.lr.ph.i.i.i263
  br i1 %i.po, label %._crit_edge.thread.i.i.i279, label %bb.ao

._crit_edge.thread.i.i.i279:                      ; preds = %._crit_edge.i.i.i269, %bb.am
  %.019.lcssa29.i.i.i280 = phi ptr [ %.02024.i.i.i264, %._crit_edge.i.i.i269 ], [ %i.pl, %bb.am ] ; 4 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pj, i64 24
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !27
  %i.pr = icmp eq ptr %.019.lcssa29.i.i.i280, %i.pq
  br i1 %i.pr, label %select.unfold.i.i276, label %bb.an

bb.an:                                            ; preds = %._crit_edge.thread.i.i.i279
  %i.ps = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i280) #25
  %.phi.trans.insert.i.i281 = getelementptr inbounds nuw i8, ptr %i.ps, i64 32
  %.pre.i.i282 = load i64, ptr %.phi.trans.insert.i.i281, align 8, !tbaa !39
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge.i.i.i269
  %i.pt = phi i64 [ %.pre.i.i282, %bb.an ], [ %i.pn, %._crit_edge.i.i.i269 ]
  %.019.lcssa28.i.i.i270 = phi ptr [ %.019.lcssa29.i.i.i280, %bb.an ], [ %.02024.i.i.i264, %._crit_edge.i.i.i269 ]
  %i.pu = icmp ult i64 %i.pt, %i.oi
  br i1 %i.pu, label %select.unfold.i.i276, label %bb.aq

select.unfold.i.i276:                             ; preds = %bb.ao, %._crit_edge.thread.i.i.i279
  %.sroa.4.0.i.ph.i.i277 = phi ptr [ %.019.lcssa29.i.i.i280, %._crit_edge.thread.i.i.i279 ], [ %.019.lcssa28.i.i.i270, %bb.ao ] ; 3 uses
  %i.pv = icmp eq ptr %.sroa.4.0.i.ph.i.i277, %i.pl
  br i1 %i.pv, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i278, label %bb.ap

bb.ap:                                            ; preds = %select.unfold.i.i276
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i277, i64 32
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !39
  %i.py = icmp ult i64 %i.oi, %i.px
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i278

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i278: ; preds = %bb.ap, %select.unfold.i.i276
  %i.pz = phi i1 [ %i.py, %bb.ap ], [ true, %select.unfold.i.i276 ]
  %i.qa = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %.noexc284 unwind label %bb.ar ; 2 uses

.noexc284:                                        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i278
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 32
  store i64 %i.oi, ptr %i.qb, align 8, !tbaa !39
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.pz, ptr noundef nonnull %i.qa, ptr noundef nonnull %.sroa.4.0.i.ph.i.i277, ptr noundef nonnull align 8 dereferenceable(32) %i.pl) #26
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pj, i64 40 ; 2 uses
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !33
  %i.qe = add i64 %i.qd, 1
  store i64 %i.qe, ptr %i.qc, align 8, !tbaa !33
  %.pre474 = load ptr, ptr %8, align 8, !tbaa !50
  br label %bb.aq

bb.aq:                                            ; preds = %.noexc284, %bb.ao
  %i.qf = phi ptr [ %.pre474, %.noexc284 ], [ %i.pi, %bb.ao ]
  %exitcond467.not = icmp eq i64 %i.ms, %i.jt
  br i1 %exitcond467.not, label %._crit_edge439, label %.lr.ph438, !llvm.loop !118

bb.ar:                                            ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i278, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %.lr.ph443, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.qh = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0340.0441) #25 ; 2 uses
  %.not = icmp eq ptr %i.qh, %i.iz
  br i1 %.not, label %._crit_edge444, label %.lr.ph443

bb.at:                                            ; preds = %bb.ar, %bb.ai
  %.pn142.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mq, %bb.ai ], [ %i.qg, %bb.ar ]
  %i.qi = load ptr, ptr %10, align 8, !tbaa !14
  call void @free(ptr noundef %i.qi) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.au

bb.au:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ag, %bb.at
  %.pn149.pn.pn.pn = phi { ptr, i32 } [ %.pn142.pn.pn.pn.pn, %bb.at ], [ %i.mj, %bb.ag ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.qj = load ptr, ptr %9, align 8, !tbaa !65    ; 3 uses
  %.not.i.i.i286 = icmp eq ptr %i.qj, null
  br i1 %.not.i.i.i286, label %_ZNSt6vectorIiSaIiEED2Ev.exit287, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qk = load ptr, ptr %i.iu, align 8, !tbaa !64
  %i.ql = ptrtoint ptr %i.qk to i64
  %i.qm = ptrtoint ptr %i.qj to i64
  %i.qn = sub i64 %i.ql, %i.qm
  call void @_ZdlPvm(ptr noundef nonnull %i.qj, i64 noundef %i.qn) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit287

_ZNSt6vectorIiSaIiEED2Ev.exit287:                 ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.bj

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.qo = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !9
  %i.qq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !69
  %i.qs = mul nsw i64 %i.qr, %i.qp                ; 2 uses
  %i.qt = icmp slt i64 %i.qs, 1
  br i1 %i.qt, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.qu = load ptr, ptr %6, align 8, !tbaa !60    ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.qs, 2 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.qw = add nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i, -4 ; 2 uses
  %i.qx = lshr exact i64 %i.qw, 2
  %i.qy = add nuw nsw i64 %i.qx, 1                ; 2 uses
  %min.iters.check582 = icmp ult i64 %i.qw, 28
  br i1 %min.iters.check582, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph583

vector.ph583:                                     ; preds = %bb.aw
  %n.vec584 = and i64 %i.qy, 9223372036854775800  ; 3 uses
  %i.qz = shl i64 %n.vec584, 2
  %i.ra = getelementptr i8, ptr %i.qu, i64 %i.qz
  br label %vector.body585

vector.body585:                                   ; preds = %vector.body585, %vector.ph583
  %index586 = phi i64 [ 0, %vector.ph583 ], [ %index.next587, %vector.body585 ] ; 2 uses
  %i.rb = shl i64 %index586, 2
  %next.gep = getelementptr i8, ptr %i.qu, i64 %i.rb ; 2 uses
  %i.rc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %next.gep, align 4, !tbaa !20
  store <4 x i32> splat (i32 2147483647), ptr %i.rc, align 4, !tbaa !20
  %index.next587 = add nuw i64 %index586, 8       ; 2 uses
  %i.rd = icmp eq i64 %index.next587, %n.vec584
  br i1 %i.rd, label %middle.block588, label %vector.body585, !llvm.loop !119

middle.block588:                                  ; preds = %vector.body585
  %cmp.n589 = icmp eq i64 %i.qy, %n.vec584
  br i1 %cmp.n589, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.aw, %middle.block588
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.qu, %bb.aw ], [ %i.ra, %middle.block588 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.re, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 2147483647, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !20
  %i.re = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.re, %i.qv
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !120

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block588, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store ptr %6, ptr %11, align 8, !tbaa !72
  %i.rf = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.b, ptr %i.rf, align 8, !tbaa !74
  %i.rg = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %8, ptr %i.rg, align 8, !tbaa !76
  br i1 %.not.i.i.i.i171, label %.noexc.i289, label %.lr.ph448

.noexc.i289:                                      ; preds = %bb.az, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit
  %i.rh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.rh, ptr %12, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 24, ptr %i.a, align 8, !tbaa !39
  %i.ri = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc290 unwind label %bb.bg ; 2 uses

.noexc290:                                        ; preds = %.noexc.i289
  store ptr %i.ri, ptr %12, align 8, !tbaa !78
  %i.rj = load i64, ptr %i.a, align 8, !tbaa !39  ; 3 uses
  store i64 %i.rj, ptr %i.rh, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ri, ptr noundef nonnull align 1 dereferenceable(24) @.str.23, i64 24, i1 false)
  %i.rk = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.rj, ptr %i.rk, align 8, !tbaa !48
  %i.rl = load ptr, ptr %12, align 8, !tbaa !78
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.rj
  store i8 0, ptr %i.rm, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.rn = load ptr, ptr %12, align 8, !tbaa !78   ; 2 uses
  %i.ro = icmp eq ptr %i.rn, %i.rh
  br i1 %i.ro, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

bb.ax:                                            ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.lr.ph448:                                        ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit, %bb.az
  %.0447 = phi i64 [ %i.rs, %bb.az ], [ 0, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKi.exit ] ; 2 uses
  %i.rq = shl nuw nsw i64 %.0447, 1               ; 2 uses
  invoke void @_ZZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EEENKUlmE0_clEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.rq)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %.lr.ph448
  %i.rr = or disjoint i64 %i.rq, 1
  invoke void @_ZZN3igl8copyleft4cgal30extract_cells_single_componentIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SM_EEiRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERNS3_15PlainObjectBaseIT5_EEENKUlmE0_clEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.rr)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.rs = add nuw i64 %.0447, 1                   ; 2 uses
  %exitcond469.not = icmp eq i64 %i.rs, %i.bl
  br i1 %exitcond469.not, label %.noexc.i289, label %.lr.ph448, !llvm.loop !121

bb.ba:                                            ; preds = %bb.ay, %.lr.ph448
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %.noexc290
  %i.ru = load i64, ptr %i.rh, align 8, !tbaa !17
  %i.rv = add i64 %i.ru, 1
  call void @_ZdlPvm(ptr noundef %i.rn, i64 noundef %i.rv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %.noexc290, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292
  %i.rw = load i64, ptr %i.b, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.not.i.i295 = icmp eq ptr %.sroa.0345.0, null
  br i1 %.not.i.i295, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294
  %i.rx = ptrtoint ptr %.sroa.16351.0 to i64
  %i.ry = ptrtoint ptr %.sroa.0345.0 to i64
  %i.rz = sub i64 %i.rx, %i.ry                    ; 2 uses
  %i.sa = ashr exact i64 %i.rz, 3
  %i.sb = sub nsw i64 0, %i.sa
  %i.sc = getelementptr inbounds [8 x i8], ptr %.sroa.16351.0, i64 %i.sb
  call void @_ZdlPvm(ptr noundef %i.sc, i64 noundef %i.rz) #27
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, %bb.bb
  %i.sd = load ptr, ptr %8, align 8, !tbaa !50    ; 3 uses
  %i.se = load ptr, ptr %i.il, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.sd, %i.se
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i296

.lr.ph.i.i.i296:                                  ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.sj, %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i ], [ %i.sd, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i, ptr noundef %i.sg)
          to label %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i unwind label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i296
  %i.sh = landingpad { ptr, i32 }
          catch ptr null
  %i.si = extractvalue { ptr, i32 } %i.sh, 0
  call void @__clang_call_terminate(ptr %i.si) #28
  unreachable

_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i296
  %i.sj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i297 = icmp eq ptr %i.sj, %i.se
  br i1 %.not.i.i.i297, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i296, !llvm.loop !80

_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !50
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.sk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.sd, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.sk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i
  %i.sl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !53
  %i.sn = ptrtoint ptr %i.sm to i64
  %i.so = ptrtoint ptr %i.sk to i64
  %i.sp = sub i64 %i.sn, %i.so
  call void @_ZdlPvm(ptr noundef nonnull %i.sk, i64 noundef %i.sp) #27
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %.not4.i.i.i298 = icmp eq ptr %.sroa.0384.0, %.0.lcssa.i.i.i.i.i
  br i1 %.not4.i.i.i298, label %_ZSt8_DestroyIPSt3mapImmSt4lessImESaISt4pairIKmmEEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i299

.lr.ph.i.i.i299:                                  ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit, %_ZSt8_DestroyISt3mapImmSt4lessImESaISt4pairIKmmEEEEvPT_.exit.i.i.i
  %.05.i.i.i300 = phi ptr [ %i.su, %_ZSt8_DestroyISt3mapImmSt4lessImESaISt4pairIKmmEEEEvPT_.exit.i.i.i ], [ %.sroa.0384.0, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit ] ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.05.i.i.i300, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i300, ptr noundef %i.sr)
          to label %_ZSt8_DestroyISt3mapImmSt4lessImESaISt4pairIKmmEEEEvPT_.exit.i.i.i unwind label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i299
  %i.ss = landingpad { ptr, i32 }
          catch ptr null
  %i.st = extractvalue { ptr, i32 } %i.ss, 0
  call void @__clang_call_terminate(ptr %i.st) #28
  unreachable

_ZSt8_DestroyISt3mapImmSt4lessImESaISt4pairIKmmEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i299
  %i.su = getelementptr inbounds nuw i8, ptr %.05.i.i.i300, i64 48 ; 2 uses
  %.not.i.i.i301 = icmp eq ptr %i.su, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i.i301, label %_ZSt8_DestroyIPSt3mapImmSt4lessImESaISt4pairIKmmEEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i299, !llvm.loop !81

_ZSt8_DestroyIPSt3mapImmSt4lessImESaISt4pairIKmmEEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt3mapImmSt4lessImESaISt4pairIKmmEEEEvPT_.exit.i.i.i, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit
  %.not.i.i1.i303 = icmp eq ptr %.sroa.0384.0, null
  br i1 %.not.i.i1.i303, label %_ZNSt6vectorISt3mapImmSt4lessImESaISt4pairIKmmEEESaIS7_EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZSt8_DestroyIPSt3mapImmSt4lessImESaISt4pairIKmmEEES7_EvT_S9_RSaIT0_E.exit.i
  %i.sv = ptrtoint ptr %.sroa.0384.0 to i64
  %i.sw = sub i64 %.sroa.20.0, %i.sv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0384.0, i64 noundef %i.sw) #27
  br label %_ZNSt6vectorISt3mapImmSt4lessImESaISt4pairIKmmEEESaIS7_EED2Ev.exit

_ZNSt6vectorISt3mapImmSt4lessImESaISt4pairIKmmEEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt3mapImmSt4lessImESaISt4pairIKmmEEES7_EvT_S9_RSaIT0_E.exit.i, %bb.bf
  %i.sx = trunc i64 %i.rw to i32
  ret i32 %i.sx

bb.bg:                                            ; preds = %.noexc.i289
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.ba
  %.pn = phi { ptr, i32 } [ %i.rt, %bb.ba ], [ %i.sy, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.ax
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bh ], [ %i.rp, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit287, %bb.bi
  %.pn149.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bi ], [ %.pn149.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit287 ] ; 2 uses
  %.not.i.i304 = icmp eq ptr %.sroa.0345.0, null
  br i1 %.not.i.i304, label %.body, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.sz = ptrtoint ptr %.sroa.16351.0 to i64
  %i.ta = ptrtoint ptr %.sroa.0345.0 to i64
  %i.tb = sub i64 %i.sz, %i.ta                    ; 2 uses
  %i.tc = ashr exact i64 %i.tb, 3
  %i.td = sub nsw i64 0, %i.tc
  %i.te = getelementptr inbounds [8 x i8], ptr %.sroa.16351.0, i64 %i.td
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.tb) #27
  br label %.body

.body:                                            ; preds = %bb.bk, %bb.bj, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %.pn149.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.is, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i ], [ %.pn149.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bk ], [ %.pn149.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bj ] ; 2 uses
  %i.tf = load ptr, ptr %8, align 8, !tbaa !50    ; 3 uses
  %i.tg = load ptr, ptr %i.il, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i306 = icmp eq ptr %i.tf, %i.tg
  br i1 %.not4.i.i.i306, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i313, label %.lr.ph.i.i.i307

.lr.ph.i.i.i307:                                  ; preds = %.body, %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i309
  %.05.i.i.i308 = phi ptr [ %i.tl, %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i309 ], [ %i.tf, %.body ] ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.05.i.i.i308, i64 16
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i308, ptr noundef %i.ti)
          to label %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i309 unwind label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i.i307
  %i.tj = landingpad { ptr, i32 }
          catch ptr null
  %i.tk = extractvalue { ptr, i32 } %i.tj, 0
  call void @__clang_call_terminate(ptr %i.tk) #28
  unreachable

_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i309: ; preds = %.lr.ph.i.i.i307
  %i.tl = getelementptr inbounds nuw i8, ptr %.05.i.i.i308, i64 48 ; 2 uses
  %.not.i.i.i310 = icmp eq ptr %i.tl, %i.tg
  br i1 %.not.i.i.i310, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i311, label %.lr.ph.i.i.i307, !llvm.loop !80

_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i311: ; preds = %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i309
  %.pr.i312 = load ptr, ptr %8, align 8, !tbaa !50
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i313

_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i313: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i311, %.body
  %i.tm = phi ptr [ %.pr.i312, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i311 ], [ %i.tf, %.body ] ; 3 uses
  %.not.i.i1.i314 = icmp eq ptr %i.tm, null
  br i1 %.not.i.i1.i314, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit315, label %bb.bm

bb.bm:                                            ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i313
  %i.tn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !53
  %i.tp = ptrtoint ptr %i.to to i64
  %i.tq = ptrtoint ptr %i.tm to i64
  %i.tr = sub i64 %i.tp, %i.tq
  call void @_ZdlPvm(ptr noundef nonnull %i.tm, i64 noundef %i.tr) #27
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit315

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit315: ; preds = %bb.bm, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i313, %bb.u
  %.pn149.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.iv, %bb.u ], [ %.pn149.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i313 ], [ %.pn149.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bn
end_hunk_3
