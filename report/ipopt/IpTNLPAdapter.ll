Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpTNLPAdapter?download=true
inline.NumInlined: 3192
inline.NumDeleted: 752
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN5Ipopt11TNLPAdapter16FinalizeSolutionENS_12SolverReturnERKNS_6VectorES4_S4_S4_S4_S4_S4_dPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesE:bb.a
  %i.uf = sub i64 %i.tp, %i.ua
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.uf, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNK5Ipopt16DenseVectorSpace18HasNumericMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK5Ipopt16DenseVectorSpace18HasNumericMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
  %.0.i.i.i.i.i.i256 = phi i32 [ %i.ue, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ug = icmp sgt i32 %.0.i.i.i.i.i.i256, -1
  br i1 %i.ug, label %bb.be, label %.critedge

bb.be:                                            ; preds = %_ZNK5Ipopt16DenseVectorSpace18HasNumericMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.uh = load ptr, ptr %i.rv, align 8, !tbaa !118 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.uh, null
  br i1 %.not10.i.i.i, label %bb.bh, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.ui = getelementptr inbounds nuw i8, ptr %.sroa.0720.01199, i64 40
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !64 ; 4 uses
  %i.uk = load ptr, ptr %i.sp, align 8            ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i260, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.uh, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i260 ] ; 6 uses
  %.0811.i.i.i = phi ptr [ %i.ru, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i260 ] ; 3 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !64 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i257 = call i64 @llvm.umin.i64(i64 %i.uj, i64 %i.um) ; 2 uses
  %i.un = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i257, 0
  br i1 %i.un, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i263, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i258

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i258: ; preds = %bb.bf
  %i.uo = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !41
  %i.uq = call i32 @memcmp(ptr noundef %i.up, ptr noundef %i.uk, i64 noundef %.sroa.speculated.i.i.i.i.i.i257) #22 ; 2 uses
  %.not.i.i.i.i.i.i259 = icmp eq i32 %i.uq, 0
  br i1 %.not.i.i.i.i.i.i259, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i263, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i260

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i263: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i258, %bb.bf
  %i.ur = sub i64 %i.um, %i.uj
  %spec.select7.i.i.i.i.i.i.i264 = call i64 @llvm.smax.i64(i64 %i.ur, i64 -2147483648)
  %.08.i.i.i.i.i.i.i265 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i264, i64 2147483647)
  %.0.i6.i.i.i.i.i.i266 = trunc nsw i64 %.08.i.i.i.i.i.i.i265 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i260

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i260: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i263, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i258
  %.0.i.i.i.i.i.i261 = phi i32 [ %i.uq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i258 ], [ %.0.i6.i.i.i.i.i.i266, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i263 ]
  %i.us = icmp slt i32 %.0.i.i.i.i.i.i261, 0      ; 4 uses
  %.19.i.i.i = select i1 %i.us, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.us, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !186 ; 2 uses
  %.not.i.i.i262 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i262, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.bf, !llvm.loop !446

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i260
  %i.ut = icmp eq ptr %.19.i.i.i, %i.ru
  br i1 %i.ut, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.us, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.uu = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !64 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.uu, i64 %i.uj) ; 2 uses
  %i.uv = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.uv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.bg
  %.19.i.i.i.sroa.sel730.v.sroa.sel.v.sroa.sel.v = select i1 %i.us, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel730.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel730.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.uw = load ptr, ptr %.19.i.i.i.sroa.sel730.v.sroa.sel.v.sroa.sel, align 8, !tbaa !41
  %i.ux = call i32 @memcmp(ptr noundef %i.uk, ptr noundef %i.uw, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ux, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.bg
  %i.uy = sub i64 %i.uj, %i.uu
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.uy, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ux, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.uz = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.uz, ptr %i.ru, ptr %.19.i.i.i
  br label %bb.bh

bb.bh:                                            ; preds = %bb.be, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.ru, %bb.be ], [ %i.ru, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 72
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !150
  %i.vd = load ptr, ptr %i.va, align 8, !tbaa !148
  %i.ve = ptrtoint ptr %i.vc to i64
  %i.vf = ptrtoint ptr %i.vd to i64
  %i.vg = sub i64 %i.ve, %i.vf
  %i.vh = lshr exact i64 %i.vg, 3
  %i.vi = load ptr, ptr %i.no, align 8, !tbaa !61
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 12
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !132
  %i.vl = trunc i64 %i.vh to i32
  %i.vm = icmp eq i32 %i.vk, %i.vl
  %i.vn = icmp eq ptr %.pre1346, %i.sj
  br i1 %i.vn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.bh
  %i.vo = icmp ult i64 %i.tp, 16
  call void @llvm.assume(i1 %i.vo)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bh
  %i.vp = load i64, ptr %i.sj, align 8, !tbaa !42
  %i.vq = add i64 %i.vp, 1
  call void @_ZdlPvm(ptr noundef %.pre1346, i64 noundef %i.vq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br i1 %i.vm, label %bb.bi, label %_ZNSt6vectorIdSaIdEED2Ev.exit352

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.vr = load ptr, ptr %i.rz, align 8, !tbaa !118 ; 2 uses
  %.not10.i.i.i.i267 = icmp eq ptr %i.vr, null
  br i1 %.not10.i.i.i.i267, label %bb.bl, label %.lr.ph.i.i.i.i268

.lr.ph.i.i.i.i268:                                ; preds = %bb.bi
  %i.vs = getelementptr inbounds nuw i8, ptr %.sroa.0720.01199, i64 40
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !64 ; 4 uses
  %i.vu = load ptr, ptr %i.sp, align 8            ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i274, %.lr.ph.i.i.i.i268
  %.012.i.i.i.i269 = phi ptr [ %i.vr, %.lr.ph.i.i.i.i268 ], [ %.1.i.i.i.i279, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i274 ] ; 4 uses
  %.0811.i.i.i.i270 = phi ptr [ %i.sl, %.lr.ph.i.i.i.i268 ], [ %.19.i.i.i.i276, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i274 ]
  %i.vv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i269, i64 40
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !64 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i271 = call i64 @llvm.umin.i64(i64 %i.vt, i64 %i.vw) ; 2 uses
  %i.vx = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i271, 0
  br i1 %i.vx, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i292, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i272

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i272: ; preds = %bb.bj
  %i.vy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i269, i64 32
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !41
  %i.wa = call i32 @memcmp(ptr noundef %i.vz, ptr noundef %i.vu, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i271) #22 ; 2 uses
  %.not.i.i.i.i.i.i.i273 = icmp eq i32 %i.wa, 0
  br i1 %.not.i.i.i.i.i.i.i273, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i292, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i274

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i292: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i272, %bb.bj
  %i.wb = sub i64 %i.vw, %i.vt
  %spec.select7.i.i.i.i.i.i.i.i293 = call i64 @llvm.smax.i64(i64 %i.wb, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i294 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i293, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i295 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i294 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i274

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i274: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i292, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i272
  %.0.i.i.i.i.i.i.i275 = phi i32 [ %i.wa, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i272 ], [ %.0.i6.i.i.i.i.i.i.i295, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i292 ]
  %i.wc = icmp slt i32 %.0.i.i.i.i.i.i.i275, 0    ; 2 uses
  %.19.i.i.i.i276 = select i1 %i.wc, ptr %.0811.i.i.i.i270, ptr %.012.i.i.i.i269 ; 5 uses
  %.1.in.v.i.i.i.i277 = select i1 %i.wc, i64 24, i64 16
  %.1.in.i.i.i.i278 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i269, i64 %.1.in.v.i.i.i.i277
  %.1.i.i.i.i279 = load ptr, ptr %.1.in.i.i.i.i278, align 8, !tbaa !186 ; 2 uses
  %.not.i.i.i.i280 = icmp eq ptr %.1.i.i.i.i279, null
  br i1 %.not.i.i.i.i280, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i281, label %bb.bj, !llvm.loop !446

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i281: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i274
  %i.wd = icmp eq ptr %.19.i.i.i.i276, %i.sl
  br i1 %i.wd, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i281
  %i.we = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i276, i64 40
  %i.wf = load i64, ptr %i.we, align 8, !tbaa !64 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i282 = call i64 @llvm.umin.i64(i64 %i.wf, i64 %i.vt) ; 2 uses
  %i.wg = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i282, 0
  br i1 %i.wg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i288, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i283

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i283: ; preds = %bb.bk
  %i.wh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i276, i64 32
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !41
  %i.wj = call i32 @memcmp(ptr noundef %i.vu, ptr noundef %i.wi, i64 noundef %.sroa.speculated.i.i.i.i.i.i282) #22 ; 2 uses
  %.not.i.i.i.i.i.i284 = icmp eq i32 %i.wj, 0
  br i1 %.not.i.i.i.i.i.i284, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i288, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i285

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i288: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i283, %bb.bk
  %i.wk = sub i64 %i.vt, %i.wf
  %spec.select7.i.i.i.i.i.i.i289 = call i64 @llvm.smax.i64(i64 %i.wk, i64 -2147483648)
  %.08.i.i.i.i.i.i.i290 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i289, i64 2147483647)
  %.0.i6.i.i.i.i.i.i291 = trunc nsw i64 %.08.i.i.i.i.i.i.i290 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i285

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i285: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i288, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i283
  %.0.i.i.i.i.i.i286 = phi i32 [ %i.wj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i283 ], [ %.0.i6.i.i.i.i.i.i291, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i288 ]
  %i.wl = icmp slt i32 %.0.i.i.i.i.i.i286, 0
  %spec.select.i.i.i = select i1 %i.wl, ptr %i.sl, ptr %.19.i.i.i.i276
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i285, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i281, %bb.bi
  %.sroa.0.0.i.i.i287 = phi ptr [ %i.sl, %bb.bi ], [ %i.sl, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i281 ], [ %spec.select.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i285 ] ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i287, i64 64 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i287, i64 72 ; 2 uses
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !150 ; 2 uses
  %i.wp = load ptr, ptr %i.wm, align 8, !tbaa !148 ; 3 uses
  %i.wq = ptrtoint ptr %i.wo to i64               ; 2 uses
  %i.wr = ptrtoint ptr %i.wp to i64               ; 2 uses
  %i.ws = sub i64 %i.wq, %i.wr                    ; 4 uses
  %.not.i.i.i.i296 = icmp eq ptr %i.wo, %i.wp
  br i1 %.not.i.i.i.i296, label %.noexc299, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.wt = icmp ugt i64 %i.ws, 9223372036854775800
  br i1 %i.wt, label %.noexc.i.i297, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !188

.noexc.i.i297:                                    ; preds = %bb.bm
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc298 unwind label %.loopexit.split-lp1017.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc298:                                        ; preds = %.noexc.i.i297
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.bm
  %i.wu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ws) #25
          to label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc299_crit_edge unwind label %.loopexit.split-lp1017.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc299_crit_edge: ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i
  %.pre1344 = load ptr, ptr %i.wm, align 8, !tbaa !189 ; 3 uses
  %.pre1345 = load ptr, ptr %i.wn, align 8, !tbaa !189 ; 2 uses
  %.pre1360 = ptrtoint ptr %.pre1345 to i64
  %.pre1362 = ptrtoint ptr %.pre1344 to i64
  %41 = icmp eq ptr %.pre1345, %.pre1344
  br label %.noexc299

.noexc299:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc299_crit_edge, %bb.bl
  %.pre-phi1363 = phi i64 [ %.pre1362, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc299_crit_edge ], [ %i.wr, %bb.bl ]
  %.pre-phi1361 = phi i64 [ %.pre1360, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc299_crit_edge ], [ %i.wq, %bb.bl ]
  %.not184 = phi i1 [ %41, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc299_crit_edge ], [ true, %bb.bl ]
  %42 = phi ptr [ %.pre1344, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc299_crit_edge ], [ %i.wp, %bb.bl ] ; 2 uses
  %43 = phi ptr [ %i.wu, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc299_crit_edge ], [ null, %bb.bl ] ; 7 uses
  %i.wv = sub i64 %.pre-phi1361, %.pre-phi1363    ; 3 uses
  %i.ww = icmp sgt i64 %i.wv, 8
  br i1 %i.ww, label %bb.bn, label %bb.bo, !prof !190

bb.bn:                                            ; preds = %.noexc299
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %43, ptr align 8 %42, i64 %i.wv, i1 false)
  br label %bb.bq

bb.bo:                                            ; preds = %.noexc299
  %i.wx = icmp eq i64 %i.wv, 8
  br i1 %i.wx, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.wy = load double, ptr %42, align 8, !tbaa !123
  store double %i.wy, ptr %43, align 8, !tbaa !123
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  %i.wz = load i32, ptr %i.sm, align 4, !tbaa !110 ; 3 uses
  %.not978 = icmp eq i32 %i.wz, 0
  br i1 %.not978, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit303, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.xa = sext i32 %i.wz to i64                   ; 3 uses
  %i.xb = icmp slt i32 %i.wz, 0
  br i1 %i.xb, label %bb.bs, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i644

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.156) #23
          to label %.noexc652 unwind label %.loopexit.split-lp1022.loopexit.split-lp

.noexc652:                                        ; preds = %bb.bs
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i644: ; preds = %bb.br
  %i.xc = shl nuw nsw i64 %i.xa, 3
  %i.xd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xc) #25
          to label %.noexc653 unwind label %.loopexit.split-lp1022.loopexit.split-lp ; 4 uses

.noexc653:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i644
  store double 0.000000e+00, ptr %i.xd, align 8, !tbaa !123
  %i.xe = add nsw i64 %i.xa, -1                   ; 2 uses
  %i.xf = icmp eq i64 %i.xe, 0
  br i1 %i.xf, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36.i651, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i646

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i646: ; preds = %.noexc653
  %i.xg = getelementptr i8, ptr %i.xd, i64 8
  %.idx.i.i.i.i.i31.i647 = shl nuw nsw i64 %i.xe, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.xg, i8 0, i64 %.idx.i.i.i.i.i31.i647, i1 false), !tbaa !123
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36.i651

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36.i651: ; preds = %.noexc653, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i646
  store ptr %i.xd, ptr %28, align 8, !tbaa !148
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %i.xa ; 2 uses
  store ptr %i.xh, ptr %i.sn, align 8, !tbaa !150
  store ptr %i.xh, ptr %i.so, align 8, !tbaa !149
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit303

_ZNSt6vectorIdSaIdEE6resizeEm.exit303:            ; preds = %bb.bq, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36.i651
  %i.xi = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #25
          to label %.noexc304 unwind label %.loopexit.split-lp1022.loopexit.split-lp ; 11 uses

.noexc304:                                        ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit303
  invoke void @_ZN5Ipopt11DenseVectorC1EPKNS_16DenseVectorSpaceE(ptr noundef nonnull align 8 dereferenceable(248) %i.xi, ptr noundef nonnull align 8 dereferenceable(160) %i.qp)
          to label %bb.bu unwind label %bb.bt

bb.bt:                                            ; preds = %.noexc304
  %i.xj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.xi, i64 noundef 248) #24
  br label %.body305

bb.bu:                                            ; preds = %.noexc304
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xi, i64 8 ; 6 uses
  %i.xl = load i32, ptr %i.xk, align 8, !tbaa !24
  %i.xm = add nsw i32 %i.xl, 1
  store i32 %i.xm, ptr %i.xk, align 8, !tbaa !24
  %i.xn = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #25
          to label %.noexc309 unwind label %bb.bz ; 12 uses

.noexc309:                                        ; preds = %bb.bu
  invoke void @_ZN5Ipopt11DenseVectorC1EPKNS_16DenseVectorSpaceE(ptr noundef nonnull align 8 dereferenceable(248) %i.xn, ptr noundef nonnull align 8 dereferenceable(160) %i.re)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %.noexc309
  %i.xo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.xn, i64 noundef 248) #24
  br label %.body310

bb.bw:                                            ; preds = %.noexc309
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xn, i64 8 ; 6 uses
  %i.xq = load i32, ptr %i.xp, align 8, !tbaa !24
  %i.xr = add nsw i32 %i.xq, 1
  store i32 %i.xr, ptr %i.xp, align 8, !tbaa !24
  %i.xs = load ptr, ptr %i.sq, align 8, !tbaa !148
  invoke void @_ZN5Ipopt11DenseVector9SetValuesEPKd(ptr noundef nonnull align 8 dereferenceable(248) %i.xi, ptr noundef nonnull %i.xs)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  br i1 %.not184, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN5Ipopt11DenseVector9SetValuesEPKd(ptr noundef nonnull align 8 dereferenceable(248) %i.xn, ptr noundef nonnull %43)
          to label %bb.cc unwind label %bb.ca

.loopexit.split-lp1012.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i, %bb.ax
  %lpad.loopexit.split-lp1816 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit358

.loopexit.split-lp1022.loopexit.split-lp:         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i644, %_ZNSt6vectorIdSaIdEE6resizeEm.exit303, %bb.bs
  %lpad.loopexit.split-lp1821 = landingpad { ptr, i32 }
          cleanup
  br label %.body305

bb.bz:                                            ; preds = %bb.bu
  %i.xt = landingpad { ptr, i32 }
          cleanup
  br label %.body310

bb.ca:                                            ; preds = %bb.bw, %bb.by, %_ZN5Ipopt11TNLPAdapter7ResortGERKNS_6VectorES3_Pdb.exit344, %bb.ch
  %i.xu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xv = load i32, ptr %i.xp, align 8, !tbaa !24
  %i.xw = add nsw i32 %i.xv, -1                   ; 2 uses
  store i32 %i.xw, ptr %i.xp, align 8, !tbaa !24
  %i.xx = icmp eq i32 %i.xw, 0
  br i1 %i.xx, label %bb.cb, label %.body310

bb.cb:                                            ; preds = %bb.ca
  %i.xy = load ptr, ptr %i.xn, align 8, !tbaa !26
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  %i.ya = load ptr, ptr %i.xz, align 8
  call void %i.ya(ptr noundef nonnull align 8 dereferenceable(248) %i.xn) #22, !inline_history !436
  br label %.body310

bb.cc:                                            ; preds = %bb.by, %bb.bx
  %i.yb = load ptr, ptr %28, align 8, !tbaa !148  ; 20 uses
  %i.yc = load ptr, ptr %i.kk, align 8, !tbaa !49 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 72
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !143
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 24
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !146 ; 10 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xi, i64 233
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !163, !range !106, !noundef !107
  %i.yj = trunc nuw i8 %i.yi to i1
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yc, i64 56
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !58
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %i.yn = load i32, ptr %i.ym, align 8, !tbaa !166 ; 5 uses
  %i.yo = icmp sgt i32 %i.yn, 0                   ; 2 uses
  br i1 %i.yj, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.yp = getelementptr inbounds nuw i8, ptr %i.xi, i64 240
  %i.yq = load double, ptr %i.yp, align 8, !tbaa !182 ; 5 uses
  br i1 %i.yo, label %.lr.ph54.i338, label %.loopexit50.i319

.lr.ph54.i338:                                    ; preds = %bb.cd
  %wide.trip.count77.i339 = zext nneg i32 %i.yn to i64 ; 2 uses
  %xtraiter1907 = and i64 %wide.trip.count77.i339, 3 ; 3 uses
  %i.yr = icmp ult i32 %i.yn, 4
  br i1 %i.yr, label %.lr.ph54.split.i340.epil.preheader, label %.lr.ph54.i338.new

.lr.ph54.i338.new:                                ; preds = %.lr.ph54.i338
  %unroll_iter1911 = and i64 %wide.trip.count77.i339, 2147483644
  br label %.lr.ph54.split.i340

.lr.ph54.split.i340:                              ; preds = %.lr.ph54.split.i340, %.lr.ph54.i338.new
  %indvars.iv69.i341 = phi i64 [ 0, %.lr.ph54.i338.new ], [ %indvars.iv.next70.i342.3, %.lr.ph54.split.i340 ] ; 5 uses
  %niter1912 = phi i64 [ 0, %.lr.ph54.i338.new ], [ %niter1912.next.3, %.lr.ph54.split.i340 ]
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv69.i341
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !100
  %i.yu = sext i32 %i.yt to i64
  %i.yv = getelementptr inbounds [8 x i8], ptr %i.yb, i64 %i.yu
  store double %i.yq, ptr %i.yv, align 8, !tbaa !123
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv69.i341
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 4
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !100
  %i.yz = sext i32 %i.yy to i64
  %i.za = getelementptr inbounds [8 x i8], ptr %i.yb, i64 %i.yz
  store double %i.yq, ptr %i.za, align 8, !tbaa !123
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv69.i341
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !100
  %i.ze = sext i32 %i.zd to i64
  %i.zf = getelementptr inbounds [8 x i8], ptr %i.yb, i64 %i.ze
  store double %i.yq, ptr %i.zf, align 8, !tbaa !123
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv69.i341
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 12
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !100
  %i.zj = sext i32 %i.zi to i64
  %i.zk = getelementptr inbounds [8 x i8], ptr %i.yb, i64 %i.zj
  store double %i.yq, ptr %i.zk, align 8, !tbaa !123
  %indvars.iv.next70.i342.3 = add nuw nsw i64 %indvars.iv69.i341, 4 ; 2 uses
  %niter1912.next.3 = add i64 %niter1912, 4       ; 2 uses
  %niter1912.ncmp.3 = icmp eq i64 %niter1912.next.3, %unroll_iter1911
  br i1 %niter1912.ncmp.3, label %.loopexit50.i319.loopexit.unr-lcssa, label %.lr.ph54.split.i340, !llvm.loop !10

bb.ce:                                            ; preds = %bb.cc
  %i.zl = getelementptr inbounds nuw i8, ptr %i.xi, i64 216
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !164 ; 5 uses
  br i1 %i.yo, label %.lr.ph.i332, label %.loopexit50.i319

.lr.ph.i332:                                      ; preds = %bb.ce
  %wide.trip.count67.i333 = zext nneg i32 %i.yn to i64 ; 2 uses
  %xtraiter1901 = and i64 %wide.trip.count67.i333, 3 ; 3 uses
  %i.zn = icmp ult i32 %i.yn, 4
  br i1 %i.zn, label %.lr.ph.split.i334.epil.preheader, label %.lr.ph.i332.new

.lr.ph.i332.new:                                  ; preds = %.lr.ph.i332
  %unroll_iter1905 = and i64 %wide.trip.count67.i333, 2147483644
  br label %.lr.ph.split.i334

.lr.ph.split.i334:                                ; preds = %.lr.ph.split.i334, %.lr.ph.i332.new
  %indvars.iv.i335 = phi i64 [ 0, %.lr.ph.i332.new ], [ %indvars.iv.next.i336.3, %.lr.ph.split.i334 ] ; 6 uses
  %niter1906 = phi i64 [ 0, %.lr.ph.i332.new ], [ %niter1906.next.3, %.lr.ph.split.i334 ]
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %indvars.iv.i335
  %i.zp = load double, ptr %i.zo, align 8, !tbaa !123
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv.i335
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !100
  %i.zs = sext i32 %i.zr to i64
  %i.zt = getelementptr inbounds [8 x i8], ptr %i.yb, i64 %i.zs
  store double %i.zp, ptr %i.zt, align 8, !tbaa !123
  %indvars.iv.next.i336 = or disjoint i64 %indvars.iv.i335, 1 ; 2 uses
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %indvars.iv.next.i336
  %i.zv = load double, ptr %i.zu, align 8, !tbaa !123
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv.next.i336
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !100
  %i.zy = sext i32 %i.zx to i64
  %i.zz = getelementptr inbounds [8 x i8], ptr %i.yb, i64 %i.zy
  store double %i.zv, ptr %i.zz, align 8, !tbaa !123
  %indvars.iv.next.i336.1 = or disjoint i64 %indvars.iv.i335, 2 ; 2 uses
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %indvars.iv.next.i336.1
  %i.aab = load double, ptr %i.aaa, align 8, !tbaa !123
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv.next.i336.1
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !100
  %i.aae = sext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds [8 x i8], ptr %i.yb, i64 %i.aae
  store double %i.aab, ptr %i.aaf, align 8, !tbaa !123
  %indvars.iv.next.i336.2 = or disjoint i64 %indvars.iv.i335, 3 ; 2 uses
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %indvars.iv.next.i336.2
  %i.aah = load double, ptr %i.aag, align 8, !tbaa !123
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv.next.i336.2
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !100
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds [8 x i8], ptr %i.yb, i64 %i.aak
  store double %i.aah, ptr %i.aal, align 8, !tbaa !123
  %indvars.iv.next.i336.3 = add nuw nsw i64 %indvars.iv.i335, 4 ; 2 uses
  %niter1906.next.3 = add i64 %niter1906, 4       ; 2 uses
  %niter1906.ncmp.3 = icmp eq i64 %niter1906.next.3, %unroll_iter1905
  br i1 %niter1906.ncmp.3, label %.loopexit50.i319.loopexit1814.unr-lcssa, label %.lr.ph.split.i334, !llvm.loop !11

.loopexit50.i319.loopexit.unr-lcssa:              ; preds = %.lr.ph54.split.i340
  %lcmp.mod1909.not = icmp eq i64 %xtraiter1907, 0
  br i1 %lcmp.mod1909.not, label %.loopexit50.i319, label %.lr.ph54.split.i340.epil.preheader

.lr.ph54.split.i340.epil.preheader:               ; preds = %.loopexit50.i319.loopexit.unr-lcssa, %.lr.ph54.i338
  %indvars.iv69.i341.epil.init = phi i64 [ 0, %.lr.ph54.i338 ], [ %indvars.iv.next70.i342.3, %.loopexit50.i319.loopexit.unr-lcssa ]
  %lcmp.mod1910 = icmp ne i64 %xtraiter1907, 0
  call void @llvm.assume(i1 %lcmp.mod1910)
  br label %.lr.ph54.split.i340.epil

.lr.ph54.split.i340.epil:                         ; preds = %.lr.ph54.split.i340.epil, %.lr.ph54.split.i340.epil.preheader
  %indvars.iv69.i341.epil = phi i64 [ %indvars.iv.next70.i342.epil, %.lr.ph54.split.i340.epil ], [ %indvars.iv69.i341.epil.init, %.lr.ph54.split.i340.epil.preheader ] ; 2 uses
  %epil.iter1908 = phi i64 [ %epil.iter1908.next, %.lr.ph54.split.i340.epil ], [ 0, %.lr.ph54.split.i340.epil.preheader ]
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv69.i341.epil
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !100
  %i.aao = sext i32 %i.aan to i64
  %i.aap = getelementptr inbounds [8 x i8], ptr %i.yb, i64 %i.aao
  store double %i.yq, ptr %i.aap, align 8, !tbaa !123
  %indvars.iv.next70.i342.epil = add nuw nsw i64 %indvars.iv69.i341.epil, 1
  %epil.iter1908.next = add i64 %epil.iter1908, 1 ; 2 uses
  %epil.iter1908.cmp.not = icmp eq i64 %epil.iter1908.next, %xtraiter1907
  br i1 %epil.iter1908.cmp.not, label %.loopexit50.i319, label %.lr.ph54.split.i340.epil, !llvm.loop !447

.loopexit50.i319.loopexit1814.unr-lcssa:          ; preds = %.lr.ph.split.i334
  %lcmp.mod1903.not = icmp eq i64 %xtraiter1901, 0
  br i1 %lcmp.mod1903.not, label %.loopexit50.i319, label %.lr.ph.split.i334.epil.preheader

.lr.ph.split.i334.epil.preheader:                 ; preds = %.loopexit50.i319.loopexit1814.unr-lcssa, %.lr.ph.i332
  %indvars.iv.i335.epil.init = phi i64 [ 0, %.lr.ph.i332 ], [ %indvars.iv.next.i336.3, %.loopexit50.i319.loopexit1814.unr-lcssa ]
  %lcmp.mod1904 = icmp ne i64 %xtraiter1901, 0
  call void @llvm.assume(i1 %lcmp.mod1904)
  br label %.lr.ph.split.i334.epil

.lr.ph.split.i334.epil:                           ; preds = %.lr.ph.split.i334.epil, %.lr.ph.split.i334.epil.preheader
  %indvars.iv.i335.epil = phi i64 [ %indvars.iv.next.i336.epil, %.lr.ph.split.i334.epil ], [ %indvars.iv.i335.epil.init, %.lr.ph.split.i334.epil.preheader ] ; 3 uses
  %epil.iter1902 = phi i64 [ %epil.iter1902.next, %.lr.ph.split.i334.epil ], [ 0, %.lr.ph.split.i334.epil.preheader ]
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %indvars.iv.i335.epil
  %i.aar = load double, ptr %i.aaq, align 8, !tbaa !123
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv.i335.epil
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !100
  %i.aau = sext i32 %i.aat to i64
  %i.aav = getelementptr inbounds [8 x i8], ptr %i.yb, i64 %i.aau
  store double %i.aar, ptr %i.aav, align 8, !tbaa !123
  %indvars.iv.next.i336.epil = add nuw nsw i64 %indvars.iv.i335.epil, 1
  %epil.iter1902.next = add i64 %epil.iter1902, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5Ipopt11TNLPAdapter16FinalizeSolutionENS_12SolverReturnERKNS_6VectorES4_S4_S4_S4_S4_S4_dPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.aqw = load ptr, ptr %i.ans, align 8, !tbaa !118 ; 2 uses
  %.not10.i.i.i454 = icmp eq ptr %i.aqw, null
  %.pre1350 = load ptr, ptr %32, align 8          ; 4 uses
  br i1 %.not10.i.i.i454, label %.critedge202, label %.lr.ph.i.i.i455

.lr.ph.i.i.i455:                                  ; preds = %bb.ei
  %i.aqx = load i64, ptr %i.aok, align 8, !tbaa !64 ; 4 uses
  br label %bb.ej

bb.ej:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i461, %.lr.ph.i.i.i455
  %.012.i.i.i456 = phi ptr [ %i.aqw, %.lr.ph.i.i.i455 ], [ %.1.i.i.i466, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i461 ] ; 6 uses
  %.0811.i.i.i457 = phi ptr [ %i.anr, %.lr.ph.i.i.i455 ], [ %.19.i.i.i463, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i461 ] ; 3 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %.012.i.i.i456, i64 40
  %i.aqz = load i64, ptr %i.aqy, align 8, !tbaa !64 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i458 = call i64 @llvm.umin.i64(i64 %i.aqx, i64 %i.aqz) ; 2 uses
  %i.ara = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i458, 0
  br i1 %i.ara, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i480, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i459

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i459: ; preds = %bb.ej
  %i.arb = getelementptr inbounds nuw i8, ptr %.012.i.i.i456, i64 32
  %i.arc = load ptr, ptr %i.arb, align 8, !tbaa !41
  %i.ard = call i32 @memcmp(ptr noundef %i.arc, ptr noundef %.pre1350, i64 noundef %.sroa.speculated.i.i.i.i.i.i458) #22 ; 2 uses
  %.not.i.i.i.i.i.i460 = icmp eq i32 %i.ard, 0
  br i1 %.not.i.i.i.i.i.i460, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i480, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i461

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i480: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i459, %bb.ej
  %i.are = sub i64 %i.aqz, %i.aqx
  %spec.select7.i.i.i.i.i.i.i481 = call i64 @llvm.smax.i64(i64 %i.are, i64 -2147483648)
  %.08.i.i.i.i.i.i.i482 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i481, i64 2147483647)
  %.0.i6.i.i.i.i.i.i483 = trunc nsw i64 %.08.i.i.i.i.i.i.i482 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i461

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i461: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i480, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i459
  %.0.i.i.i.i.i.i462 = phi i32 [ %i.ard, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i459 ], [ %.0.i6.i.i.i.i.i.i483, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i480 ]
  %i.arf = icmp slt i32 %.0.i.i.i.i.i.i462, 0     ; 4 uses
  %.19.i.i.i463 = select i1 %i.arf, ptr %.0811.i.i.i457, ptr %.012.i.i.i456 ; 3 uses
  %.1.in.v.i.i.i464 = select i1 %i.arf, i64 24, i64 16
  %.1.in.i.i.i465 = getelementptr inbounds nuw i8, ptr %.012.i.i.i456, i64 %.1.in.v.i.i.i464
  %.1.i.i.i466 = load ptr, ptr %.1.in.i.i.i465, align 8, !tbaa !186 ; 2 uses
  %.not.i.i.i467 = icmp eq ptr %.1.i.i.i466, null
  br i1 %.not.i.i.i467, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i468, label %bb.ej, !llvm.loop !446

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i468: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i461
  %i.arg = icmp eq ptr %.19.i.i.i463, %i.anr
  br i1 %i.arg, label %.critedge202, label %bb.ek

bb.ek:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i468
  %.19.i.i.i463.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.arf, ptr %.0811.i.i.i457, ptr %.012.i.i.i456
  %.19.i.i.i463.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i463.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.arh = load i64, ptr %.19.i.i.i463.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !64 ; 2 uses
  %.sroa.speculated.i.i.i.i.i469 = call i64 @llvm.umin.i64(i64 %i.arh, i64 %i.aqx) ; 2 uses
  %i.ari = icmp eq i64 %.sroa.speculated.i.i.i.i.i469, 0
  br i1 %i.ari, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i476, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i470

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i470: ; preds = %bb.ek
  %.19.i.i.i463.sroa.sel685.v.sroa.sel.v.sroa.sel.v = select i1 %i.arf, ptr %.0811.i.i.i457, ptr %.012.i.i.i456
  %.19.i.i.i463.sroa.sel685.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i463.sroa.sel685.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.arj = load ptr, ptr %.19.i.i.i463.sroa.sel685.v.sroa.sel.v.sroa.sel, align 8, !tbaa !41
  %i.ark = call i32 @memcmp(ptr noundef %.pre1350, ptr noundef %i.arj, i64 noundef %.sroa.speculated.i.i.i.i.i469) #22 ; 2 uses
  %.not.i.i.i.i.i471 = icmp eq i32 %i.ark, 0
  br i1 %.not.i.i.i.i.i471, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i476, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i472

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i476: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i470, %bb.ek
  %i.arl = sub i64 %i.aqx, %i.arh
  %spec.select7.i.i.i.i.i.i477 = call i64 @llvm.smax.i64(i64 %i.arl, i64 -2147483648)
  %.08.i.i.i.i.i.i478 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i477, i64 2147483647)
  %.0.i6.i.i.i.i.i479 = trunc nsw i64 %.08.i.i.i.i.i.i478 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i472

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i472: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i476, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i470
  %.0.i.i.i.i.i473 = phi i32 [ %i.ark, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i470 ], [ %.0.i6.i.i.i.i.i479, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i476 ]
  %i.arm = icmp slt i32 %.0.i.i.i.i.i473, 0
  %spec.select.i.i474 = select i1 %i.arm, ptr %i.anr, ptr %.19.i.i.i463
  br label %.critedge202

.critedge202:                                     ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i472, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i468, %bb.ei
  %.sroa.0.0.i.i475 = phi ptr [ %i.anr, %bb.ei ], [ %i.anr, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i468 ], [ %spec.select.i.i474, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i472 ] ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i475, i64 64
  %i.aro = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i475, i64 72
  %i.arp = load ptr, ptr %i.aro, align 8, !tbaa !150
  %i.arq = load ptr, ptr %i.arn, align 8, !tbaa !148
  %i.arr = ptrtoint ptr %i.arp to i64
  %i.ars = ptrtoint ptr %i.arq to i64
  %i.art = sub i64 %i.arr, %i.ars
  %i.aru = lshr exact i64 %i.art, 3
  %i.arv = load ptr, ptr %i.amm, align 8, !tbaa !61
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 12
  %i.arx = load i32, ptr %i.arw, align 4, !tbaa !132
  %i.ary = trunc i64 %i.aru to i32
  %i.arz = icmp eq i32 %i.arx, %i.ary
  %i.asa = icmp eq ptr %.pre1350, %i.aoj
  br i1 %i.asa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485: ; preds = %.critedge202
  %i.asb = load i64, ptr %i.aoj, align 8, !tbaa !42
  %i.asc = add i64 %i.asb, 1
  call void @_ZdlPvm(ptr noundef %.pre1350, i64 noundef %i.asc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487: ; preds = %.critedge202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %.pre1351 = load ptr, ptr %31, align 8, !tbaa !41
  br label %.critedge204

.critedge204:                                     ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i433, %bb.ea, %_ZNK5Ipopt16DenseVectorSpace18HasNumericMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit448, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487
  %i.asd = phi ptr [ %.pre1351, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487 ], [ %.pre1352, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i433 ], [ %.pre1352, %_ZNK5Ipopt16DenseVectorSpace18HasNumericMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit448 ], [ %.pre1352, %bb.ea ] ; 2 uses
  %i.ase = phi i1 [ %i.arz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487 ], [ false, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i433 ], [ false, %_ZNK5Ipopt16DenseVectorSpace18HasNumericMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit448 ], [ false, %bb.ea ]
  %i.asf = icmp eq ptr %i.asd, %i.aog
  br i1 %i.asf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i488

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i488: ; preds = %.critedge204
  %i.asg = load i64, ptr %i.aog, align 8, !tbaa !42
  %i.ash = add i64 %i.asg, 1
  call void @_ZdlPvm(ptr noundef %i.asd, i64 noundef %i.ash) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490: ; preds = %.critedge204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i488
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br i1 %i.ase, label %bb.el, label %_ZNSt6vectorIdSaIdEED2Ev.exit586

bb.el:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490
  %i.asi = load ptr, ptr %i.anw, align 8, !tbaa !118 ; 2 uses
  %.not10.i.i.i.i491 = icmp eq ptr %i.asi, null
  br i1 %.not10.i.i.i.i491, label %bb.eo, label %.lr.ph.i.i.i.i492

.lr.ph.i.i.i.i492:                                ; preds = %bb.el
  %i.asj = getelementptr inbounds nuw i8, ptr %.sroa.0674.01205, i64 40
  %i.ask = load i64, ptr %i.asj, align 8, !tbaa !64 ; 4 uses
  %i.asl = load ptr, ptr %i.aot, align 8          ; 2 uses
  br label %bb.em

bb.em:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i498, %.lr.ph.i.i.i.i492
  %.012.i.i.i.i493 = phi ptr [ %i.asi, %.lr.ph.i.i.i.i492 ], [ %.1.i.i.i.i503, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i498 ] ; 4 uses
  %.0811.i.i.i.i494 = phi ptr [ %i.aoi, %.lr.ph.i.i.i.i492 ], [ %.19.i.i.i.i500, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i498 ]
  %i.asm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i493, i64 40
  %i.asn = load i64, ptr %i.asm, align 8, !tbaa !64 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i495 = call i64 @llvm.umin.i64(i64 %i.ask, i64 %i.asn) ; 2 uses
  %i.aso = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i495, 0
  br i1 %i.aso, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i517, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i496

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i496: ; preds = %bb.em
  %i.asp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i493, i64 32
  %i.asq = load ptr, ptr %i.asp, align 8, !tbaa !41
  %i.asr = call i32 @memcmp(ptr noundef %i.asq, ptr noundef %i.asl, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i495) #22 ; 2 uses
  %.not.i.i.i.i.i.i.i497 = icmp eq i32 %i.asr, 0
  br i1 %.not.i.i.i.i.i.i.i497, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i517, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i498

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i517: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i496, %bb.em
  %i.ass = sub i64 %i.asn, %i.ask
  %spec.select7.i.i.i.i.i.i.i.i518 = call i64 @llvm.smax.i64(i64 %i.ass, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i519 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i518, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i520 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i519 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i498

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i498: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i517, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i496
  %.0.i.i.i.i.i.i.i499 = phi i32 [ %i.asr, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i496 ], [ %.0.i6.i.i.i.i.i.i.i520, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i517 ]
  %i.ast = icmp slt i32 %.0.i.i.i.i.i.i.i499, 0   ; 2 uses
  %.19.i.i.i.i500 = select i1 %i.ast, ptr %.0811.i.i.i.i494, ptr %.012.i.i.i.i493 ; 5 uses
  %.1.in.v.i.i.i.i501 = select i1 %i.ast, i64 24, i64 16
  %.1.in.i.i.i.i502 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i493, i64 %.1.in.v.i.i.i.i501
  %.1.i.i.i.i503 = load ptr, ptr %.1.in.i.i.i.i502, align 8, !tbaa !186 ; 2 uses
  %.not.i.i.i.i504 = icmp eq ptr %.1.i.i.i.i503, null
  br i1 %.not.i.i.i.i504, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i505, label %bb.em, !llvm.loop !446

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i505: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i498
  %i.asu = icmp eq ptr %.19.i.i.i.i500, %i.aoi
  br i1 %i.asu, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i505
  %i.asv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i500, i64 40
  %i.asw = load i64, ptr %i.asv, align 8, !tbaa !64 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i506 = call i64 @llvm.umin.i64(i64 %i.asw, i64 %i.ask) ; 2 uses
  %i.asx = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i506, 0
  br i1 %i.asx, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i513, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i507

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i507: ; preds = %bb.en
  %i.asy = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i500, i64 32
  %i.asz = load ptr, ptr %i.asy, align 8, !tbaa !41
  %i.ata = call i32 @memcmp(ptr noundef %i.asl, ptr noundef %i.asz, i64 noundef %.sroa.speculated.i.i.i.i.i.i506) #22 ; 2 uses
  %.not.i.i.i.i.i.i508 = icmp eq i32 %i.ata, 0
  br i1 %.not.i.i.i.i.i.i508, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i513, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i509

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i513: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i507, %bb.en
  %i.atb = sub i64 %i.ask, %i.asw
  %spec.select7.i.i.i.i.i.i.i514 = call i64 @llvm.smax.i64(i64 %i.atb, i64 -2147483648)
  %.08.i.i.i.i.i.i.i515 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i514, i64 2147483647)
  %.0.i6.i.i.i.i.i.i516 = trunc nsw i64 %.08.i.i.i.i.i.i.i515 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i509

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i509: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i513, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i507
  %.0.i.i.i.i.i.i510 = phi i32 [ %i.ata, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i507 ], [ %.0.i6.i.i.i.i.i.i516, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i513 ]
  %i.atc = icmp slt i32 %.0.i.i.i.i.i.i510, 0
  %spec.select.i.i.i511 = select i1 %i.atc, ptr %i.aoi, ptr %.19.i.i.i.i500
  br label %bb.eo

bb.eo:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i509, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i505, %bb.el
  %.sroa.0.0.i.i.i512 = phi ptr [ %i.aoi, %bb.el ], [ %i.aoi, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i505 ], [ %spec.select.i.i.i511, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i509 ] ; 2 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i512, i64 64 ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i512, i64 72 ; 2 uses
  %i.atf = load ptr, ptr %i.ate, align 8, !tbaa !150 ; 2 uses
  %i.atg = load ptr, ptr %i.atd, align 8, !tbaa !148 ; 3 uses
  %i.ath = ptrtoint ptr %i.atf to i64             ; 2 uses
  %i.ati = ptrtoint ptr %i.atg to i64             ; 2 uses
  %i.atj = sub i64 %i.ath, %i.ati                 ; 4 uses
  %.not.i.i.i.i522 = icmp eq ptr %i.atf, %i.atg
  br i1 %.not.i.i.i.i522, label %.noexc526, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.atk = icmp ugt i64 %i.atj, 9223372036854775800
  br i1 %i.atk, label %.noexc.i.i524, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i523, !prof !188

.noexc.i.i524:                                    ; preds = %bb.ep
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc525 unwind label %.loopexit.split-lp988.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc525:                                        ; preds = %.noexc.i.i524
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i523: ; preds = %bb.ep
  %i.atl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.atj) #25
          to label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i523..noexc526_crit_edge unwind label %.loopexit.split-lp988.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i523..noexc526_crit_edge: ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i523
  %.pre1353 = load ptr, ptr %i.atd, align 8, !tbaa !189 ; 3 uses
  %.pre1354 = load ptr, ptr %i.ate, align 8, !tbaa !189 ; 2 uses
  %.pre1357 = ptrtoint ptr %.pre1354 to i64
  %.pre1358 = ptrtoint ptr %.pre1353 to i64
  %44 = icmp eq ptr %.pre1354, %.pre1353
  br label %.noexc526

.noexc526:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i523..noexc526_crit_edge, %bb.eo
  %.pre-phi1359 = phi i64 [ %.pre1358, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i523..noexc526_crit_edge ], [ %i.ati, %bb.eo ]
  %.pre-phi = phi i64 [ %.pre1357, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i523..noexc526_crit_edge ], [ %i.ath, %bb.eo ]
  %.not = phi i1 [ %44, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i523..noexc526_crit_edge ], [ true, %bb.eo ]
  %45 = phi ptr [ %.pre1353, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i523..noexc526_crit_edge ], [ %i.atg, %bb.eo ] ; 2 uses
  %46 = phi ptr [ %i.atl, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i523..noexc526_crit_edge ], [ null, %bb.eo ] ; 7 uses
  %i.atm = sub i64 %.pre-phi, %.pre-phi1359       ; 3 uses
  %i.atn = icmp sgt i64 %i.atm, 8
  br i1 %i.atn, label %bb.eq, label %bb.er, !prof !190

bb.eq:                                            ; preds = %.noexc526
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %46, ptr align 8 %45, i64 %i.atm, i1 false)
  br label %bb.et

bb.er:                                            ; preds = %.noexc526
  %i.ato = icmp eq i64 %i.atm, 8
  br i1 %i.ato, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.atp = load double, ptr %45, align 8, !tbaa !123
  store double %i.atp, ptr %46, align 8, !tbaa !123
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er, %bb.eq
  %i.atq = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #25
          to label %.noexc528 unwind label %bb.fa ; 9 uses

.noexc528:                                        ; preds = %bb.et
  invoke void @_ZN5Ipopt11DenseVectorC1EPKNS_16DenseVectorSpaceE(ptr noundef nonnull align 8 dereferenceable(248) %i.atq, ptr noundef nonnull align 8 dereferenceable(160) %i.aml)
          to label %bb.ev unwind label %bb.eu

bb.eu:                                            ; preds = %.noexc528
  %i.atr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.atq, i64 noundef 248) #24
  br label %.body529

bb.ev:                                            ; preds = %.noexc528
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atq, i64 8 ; 6 uses
  %i.att = load i32, ptr %i.ats, align 8, !tbaa !24
  %i.atu = add nsw i32 %i.att, 1
  store i32 %i.atu, ptr %i.ats, align 8, !tbaa !24
  %i.atv = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #25
          to label %.noexc533 unwind label %bb.fb ; 9 uses

.noexc533:                                        ; preds = %bb.ev
  invoke void @_ZN5Ipopt11DenseVectorC1EPKNS_16DenseVectorSpaceE(ptr noundef nonnull align 8 dereferenceable(248) %i.atv, ptr noundef nonnull align 8 dereferenceable(160) %i.anb)
          to label %bb.ex unwind label %bb.ew

bb.ew:                                            ; preds = %.noexc533
  %i.atw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.atv, i64 noundef 248) #24
  br label %.body534

bb.ex:                                            ; preds = %.noexc533
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atv, i64 8 ; 6 uses
  %i.aty = load i32, ptr %i.atx, align 8, !tbaa !24
  %i.atz = add nsw i32 %i.aty, 1
  store i32 %i.atz, ptr %i.atx, align 8, !tbaa !24
  %i.aua = load ptr, ptr %i.aou, align 8, !tbaa !148
  invoke void @_ZN5Ipopt11DenseVector9SetValuesEPKd(ptr noundef nonnull align 8 dereferenceable(248) %i.atq, ptr noundef nonnull %i.aua)
          to label %bb.ey unwind label %bb.fc

bb.ey:                                            ; preds = %bb.ex
  br i1 %.not, label %bb.fd, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZN5Ipopt11DenseVector9SetValuesEPKd(ptr noundef nonnull align 8 dereferenceable(248) %i.atv, ptr noundef nonnull %46)
          to label %bb.fd unwind label %bb.fc

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i415, %bb.dw
  %lpad.loopexit.split-lp1725 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543

.loopexit.split-lp983.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i450, %bb.ee
  %lpad.loopexit.split-lp1727 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %i.aub = load ptr, ptr %31, align 8, !tbaa !41  ; 2 uses
  %i.auc = icmp eq ptr %i.aub, %i.aog
  br i1 %i.auc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541: ; preds = %.loopexit.split-lp983.loopexit.split-lp.loopexit.split-lp
  %i.aud = load i64, ptr %i.aog, align 8, !tbaa !42
  %i.aue = add i64 %i.aud, 1
  call void @_ZdlPvm(ptr noundef %i.aub, i64 noundef %i.aue) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543: ; preds = %.loopexit.split-lp983.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541
  %.pn159.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp1727, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541 ], [ %lpad.loopexit.split-lp1725, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1727, %.loopexit.split-lp983.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit602

bb.fa:                                            ; preds = %bb.et
  %i.auf = landingpad { ptr, i32 }
          cleanup
  br label %.body529

bb.fb:                                            ; preds = %bb.ev
  %i.aug = landingpad { ptr, i32 }
          cleanup
  br label %.body534

bb.fc:                                            ; preds = %bb.ez, %bb.ex
  %i.auh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.fd:                                            ; preds = %bb.ez, %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  %i.aui = load i32, ptr %i.ald, align 8, !tbaa !109 ; 3 uses
  %i.auj = sext i32 %i.aui to i64                 ; 2 uses
  %i.auk = icmp slt i32 %i.aui, 0
  br i1 %i.auk, label %bb.fe, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.fe:                                            ; preds = %bb.fd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.155) #23
          to label %.noexc546 unwind label %.loopexit.split-lp993.loopexit.split-lp

.noexc546:                                        ; preds = %bb.fe
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.fd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  %.not.i.i.i.i544 = icmp ne i32 %i.aui, 0
  call void @llvm.assume(i1 %.not.i.i.i.i544)
  %i.aul = shl nuw nsw i64 %i.auj, 3              ; 3 uses
  %i.aum = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aul) #25
          to label %.loopexit980 unwind label %.loopexit.split-lp993.loopexit.split-lp ; 4 uses

.loopexit980:                                     ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  store ptr %i.aum, ptr %33, align 8, !tbaa !148
  %i.aun = getelementptr inbounds nuw [8 x i8], ptr %i.aum, i64 %i.auj
  store ptr %i.aun, ptr %i.aol, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aum, i8 0, i64 %i.aul, i1 false), !tbaa !123
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aum, i64 %i.aul
  %.pre1355 = load i32, ptr %i.ald, align 8, !tbaa !109 ; 3 uses
  store ptr %i.auo, ptr %i.aom, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  %i.aup = zext nneg i32 %.pre1355 to i64         ; 2 uses
  %i.auq = icmp slt i32 %.pre1355, 0
  br i1 %i.auq, label %bb.ff, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i548

bb.ff:                                            ; preds = %.loopexit980
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.155) #23
          to label %.noexc555 unwind label %.loopexit.split-lp998.loopexit.split-lp

.noexc555:                                        ; preds = %bb.ff
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i548: ; preds = %.loopexit980
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  %.not.i.i.i.i549 = icmp ne i32 %.pre1355, 0
  call void @llvm.assume(i1 %.not.i.i.i.i549)
  %i.aur = shl nuw nsw i64 %i.aup, 3              ; 3 uses
  %i.aus = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aur) #25
          to label %.noexc556 unwind label %.loopexit.split-lp998.loopexit.split-lp ; 5 uses

.noexc556:                                        ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i548
  store ptr %i.aus, ptr %34, align 8, !tbaa !148
  %i.aut = getelementptr inbounds nuw [8 x i8], ptr %i.aus, i64 %i.aup
  store ptr %i.aut, ptr %i.aon, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aus, i8 0, i64 %i.aur, i1 false), !tbaa !123
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aus, i64 %i.aur
  %.pre1356 = load ptr, ptr %33, align 8, !tbaa !148
  store ptr %i.auu, ptr %i.aoo, align 8, !tbaa !150
  call void @_ZN5Ipopt11TNLPAdapter12ResortBoundsERKNS_6VectorEPdS3_S4_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(205) %i.atq, ptr noundef nonnull %.pre1356, ptr noundef nonnull align 8 dereferenceable(205) %i.atv, ptr noundef nonnull %i.aus)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  store ptr %i.aop, ptr %35, align 8, !tbaa !62
  %i.auv = load ptr, ptr %i.aot, align 8, !tbaa !41 ; 2 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %.sroa.0674.01205, i64 40 ; 2 uses
  %i.aux = load i64, ptr %i.auw, align 8, !tbaa !64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.aux, ptr %i.b, align 8, !tbaa !63
  %i.auy = icmp ugt i64 %i.aux, 15
  br i1 %i.auy, label %.noexc.i559, label %._crit_edge.i.i558

.noexc.i559:                                      ; preds = %.noexc556
  %i.auz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc560 unwind label %bb.fw ; 2 uses

.noexc560:                                        ; preds = %.noexc.i559
  store ptr %i.auz, ptr %35, align 8, !tbaa !41
  %i.ava = load i64, ptr %i.b, align 8, !tbaa !63
  store i64 %i.ava, ptr %i.aop, align 8, !tbaa !42
  br label %._crit_edge.i.i558

._crit_edge.i.i558:                               ; preds = %.noexc560, %.noexc556
  %i.avb = phi ptr [ %i.auz, %.noexc560 ], [ %i.aop, %.noexc556 ] ; 2 uses
  switch i64 %i.aux, label %bb.fh [
    i64 1, label %bb.fg
    i64 0, label %bb.fi
  ]

bb.fg:                                            ; preds = %._crit_edge.i.i558
  %i.avc = load i8, ptr %i.auv, align 1, !tbaa !42
  store i8 %i.avc, ptr %i.avb, align 1, !tbaa !42
  br label %bb.fi

bb.fh:                                            ; preds = %._crit_edge.i.i558
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.avb, ptr align 1 %i.auv, i64 %i.aux, i1 false)
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %._crit_edge.i.i558
  %i.avd = load i64, ptr %i.b, align 8, !tbaa !63 ; 2 uses
  store i64 %i.avd, ptr %i.aoq, align 8, !tbaa !64
  %i.ave = load ptr, ptr %35, align 8, !tbaa !41
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 %i.avd
  store i8 0, ptr %i.avf, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  store ptr %i.aor, ptr %36, align 8, !tbaa !62
  %i.avg = load ptr, ptr %i.aot, align 8, !tbaa !41 ; 2 uses
  %i.avh = load i64, ptr %i.auw, align 8, !tbaa !64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.avh, ptr %i.a, align 8, !tbaa !63
  %i.avi = icmp ugt i64 %i.avh, 15
  br i1 %i.avi, label %.noexc.i562, label %._crit_edge.i.i561

.noexc.i562:                                      ; preds = %bb.fi
  %i.avj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc563 unwind label %bb.fx ; 2 uses

.noexc563:                                        ; preds = %.noexc.i562
  store ptr %i.avj, ptr %36, align 8, !tbaa !41
  %i.avk = load i64, ptr %i.a, align 8, !tbaa !63
  store i64 %i.avk, ptr %i.aor, align 8, !tbaa !42
  br label %._crit_edge.i.i561

._crit_edge.i.i561:                               ; preds = %.noexc563, %bb.fi
  %i.avl = phi ptr [ %i.avj, %.noexc563 ], [ %i.aor, %bb.fi ] ; 2 uses
  switch i64 %i.avh, label %bb.fk [
    i64 1, label %bb.fj
    i64 0, label %bb.fl
  ]

bb.fj:                                            ; preds = %._crit_edge.i.i561
  %i.avm = load i8, ptr %i.avg, align 1, !tbaa !42
  store i8 %i.avm, ptr %i.avl, align 1, !tbaa !42
  br label %bb.fl

bb.fk:                                            ; preds = %._crit_edge.i.i561
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.avl, ptr align 1 %i.avg, i64 %i.avh, i1 false)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj, %._crit_edge.i.i561
  %i.avn = load i64, ptr %i.a, align 8, !tbaa !63 ; 2 uses
  store i64 %i.avn, ptr %i.aos, align 8, !tbaa !64
  %i.avo = load ptr, ptr %36, align 8, !tbaa !41
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 %i.avn
  store i8 0, ptr %i.avp, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.avq = load i64, ptr %i.aoq, align 8, !tbaa !64
  %i.avr = and i64 %i.avq, -4
  %i.avs = icmp eq i64 %i.avr, 4611686018427387900
  br i1 %i.avs, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.fl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.153) #23
          to label %.cont unwind label %.loopexit.split-lp1003.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable
end_hunk_1
begin_hunk_2_@_ZN5Ipopt16DenseVectorSpaceD2Ev:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !118
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef %i.m)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt16DenseVectorSpaceD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt16DenseVectorSpaceE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIdSaIdEESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i unwind label %bb.b, !inline_history !513

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #26, !inline_history !513
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIdSaIdEESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !118
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIiSaIiEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i unwind label %bb.c, !inline_history !513

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIdSaIdEESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #26, !inline_history !513
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIdSaIdEESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !118
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef %i.m)
          to label %_ZN5Ipopt16DenseVectorSpaceD2Ev.exit unwind label %bb.d, !inline_history !513

bb.d:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #26, !inline_history !513
  unreachable

_ZN5Ipopt16DenseVectorSpaceD2Ev.exit:             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK5Ipopt16DenseVectorSpace7MakeNewEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #25 ; 3 uses
  invoke void @_ZN5Ipopt11DenseVectorC1EPKNS_16DenseVectorSpaceE(ptr noundef nonnull align 8 dereferenceable(248) %i.a, ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %_ZNK5Ipopt16DenseVectorSpace18MakeNewDenseVectorEv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 248) #24
  resume { ptr, i32 } %i.b

_ZNK5Ipopt16DenseVectorSpace18MakeNewDenseVectorEv.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN5Ipopt15ExpansionMatrixC1EPKNS_20ExpansionMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple", align 8        ; 4 uses
  %3 = alloca %"class.std::tuple.102", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !186 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit, label %bb.b, !llvm.loop !514

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !64   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #22 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %1, ptr %2, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !96     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.j = load ptr, ptr %0, align 8, !tbaa !96     ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !96     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !94   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i, align 8, !tbaa !41 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !42
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, %bb.c
  %i.y = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !96
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !95
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !94 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.ah, %i.f
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp sgt i64 %i.g, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.g, %bb.f ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.f ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.f ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 3 uses
  %i.al = add nsw i64 %.012.i.i.i.i.i, -1
  %i.am = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, !llvm.loop !515

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !191
  %.pre45 = ptrtoint ptr %i.ak to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, %bb.f
  %.pre-phi46 = phi i64 [ %.pre45, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.l, %bb.f ]
  %i.an = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.af, %bb.f ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.j, %bb.f ]
  %.not4.i.i25 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.an
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit
  %i.ao = sub i64 %.pre-phi46, %i.l
  %i.ap = getelementptr inbounds i8, ptr %i.j, i64 %i.ao
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28
  %.sroa.01.05.i.i = phi ptr [ %i.av, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28 ], [ %i.ap, %.lr.ph.i.i26.preheader ] ; 3 uses
  %i.aq = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !41 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %.lr.ph.i.i26
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !42
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28: ; preds = %.lr.ph.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 32 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.av, %i.an
  br i1 %.not.i.i29, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i26, !llvm.loop !516

bb.g:                                             ; preds = %bb.e
  %i.aw = ashr exact i64 %i.ah, 5                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i32, label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i32:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i32
  %.012.i.i.i.i.i33 = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i32 ], [ %i.aw, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i34 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i32 ], [ %i.j, %bb.g ] ; 2 uses
  %.0910.i.i.i.i.i35 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i32 ], [ %i.c, %bb.g ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i34, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i35)
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i34, i64 32
  %i.ba = add nsw i64 %.012.i.i.i.i.i33, -1
  %i.bb = icmp samesign ugt i64 %.012.i.i.i.i.i33, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i32, label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit, !llvm.loop !517

_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i32
  %.pre36 = load ptr, ptr %1, align 8, !tbaa !96
  %.pre37 = load ptr, ptr %i.ae, align 8, !tbaa !94 ; 2 uses
  %.pre38 = load ptr, ptr %0, align 8, !tbaa !96
  %.pre39 = load ptr, ptr %i.a, align 8, !tbaa !94
  %.pre40 = ptrtoint ptr %.pre37 to i64
  %.pre41 = ptrtoint ptr %.pre38 to i64
  %.pre43 = sub i64 %.pre40, %.pre41
  br label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit: ; preds = %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit, %bb.g
  %.pre-phi44 = phi i64 [ %.pre43, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.ah, %bb.g ]
  %i.bc = phi ptr [ %.pre39, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.b, %bb.g ]
  %i.bd = phi ptr [ %.pre37, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.af, %bb.g ]
  %i.be = phi ptr [ %.pre36, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.c, %bb.g ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.pre-phi44
  %i.bg = tail call noundef ptr @_ZSt16__do_uninit_copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_(ptr noundef %i.bf, ptr noundef %i.bc, ptr noundef %i.bd) ; 0 uses
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit
  %i.bh = load ptr, ptr %0, align 8, !tbaa !96
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !94
  br label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::vector<std::__cxx11::basic_string<char>>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %0, ptr %5, align 8, !tbaa !518
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #25 ; 11 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEEvPSt13_Rb_tree_nodeISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !197
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !64   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !64   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.q = tail call i32 @memcmp(ptr noundef %i.p, ptr noundef %i.o, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.r = sub i64 %i.j, %i.l
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.r, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.s = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.c, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.t = phi i1 [ %i.s, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #22
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !121
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !121
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.x

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !96   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.z, %bb.f ] ; 3 uses
  %i.ac = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !41 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !42
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ab
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %bb.f
  %i.ai = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.z, %bb.f ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !95
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i: ; preds = %bb.g, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !41  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !42
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #24
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #24
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev.exit

end_hunk_2
