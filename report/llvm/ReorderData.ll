Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ReorderData?download=true
inline.NumInlined: 2982
inline.NumDeleted: 1570
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4llvm4bolt11ReorderData12sortedByFuncERNS0_13BinaryContextERKNS0_13BinarySectionERSt3mapImNS0_14BinaryFunctionESt4lessImESaISt4pairIKmS8_EEE:bb.a
  %i.op = phi ptr [ %.pre81.i181, %bb.co ], [ %i.ok, %._crit_edge.i.i173 ]
  %.019.lcssa28.i.i174 = phi ptr [ %.019.lcssa29.i.i179, %bb.co ], [ %.02024.i.i168, %._crit_edge.i.i173 ]
  %.sroa.05.0.i.i175 = phi ptr [ %i.oo, %bb.co ], [ %.02024.i.i168, %._crit_edge.i.i173 ]
  %i.oq = icmp ult ptr %i.op, %.0.i33
  br i1 %i.oq, label %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread, label %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread328

bb.cq:                                            ; preds = %.critedge.i50
  %i.or = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i14.i, i64 32
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !353 ; 2 uses
  %i.ot = icmp ult ptr %.0.i33, %i.os
  br i1 %i.ot, label %bb.cr, label %bb.cx

bb.cr:                                            ; preds = %bb.cq
  %i.ou = load ptr, ptr %i.h, align 8, !tbaa !396 ; 4 uses
  %i.ov = icmp eq ptr %i.ou, %.08.lcssa.i.i.i14.i
  br i1 %i.ov, label %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ow = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i14.i) #28 ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 32
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !353
  %i.oz = icmp ult ptr %i.oy, %.0.i33
  br i1 %i.oz, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !541
  %i.pc = icmp eq ptr %i.pb, null                 ; 2 uses
  %spec.select.i162 = select i1 %i.pc, ptr null, ptr %.08.lcssa.i.i.i14.i
  %spec.select71.i163 = select i1 %i.pc, ptr %i.ow, ptr %.08.lcssa.i.i.i14.i
  br label %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread

bb.cu:                                            ; preds = %bb.cs
  %.02022.i10.i145 = load ptr, ptr %i.g, align 8, !tbaa !396 ; 2 uses
  %.not23.i11.i146 = icmp eq ptr %.02022.i10.i145, null
  br i1 %.not23.i11.i146, label %._crit_edge.thread.i27.i158, label %.lr.ph.i12.i147

.lr.ph.i12.i147:                                  ; preds = %bb.cu, %.lr.ph.i12.i147
  %.02024.i13.i148 = phi ptr [ %.020.i16.i151, %.lr.ph.i12.i147 ], [ %.02022.i10.i145, %bb.cu ] ; 5 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.02024.i13.i148, i64 32
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !353 ; 2 uses
  %i.pf = icmp ult ptr %.0.i33, %i.pe             ; 2 uses
  %.in.v.i14.i149 = select i1 %i.pf, i64 16, i64 24
  %.in.i15.i150 = getelementptr inbounds nuw i8, ptr %.02024.i13.i148, i64 %.in.v.i14.i149
  %.020.i16.i151 = load ptr, ptr %.in.i15.i150, align 8, !tbaa !396 ; 2 uses
  %.not.i17.i152 = icmp eq ptr %.020.i16.i151, null
  br i1 %.not.i17.i152, label %._crit_edge.i18.i153, label %.lr.ph.i12.i147, !llvm.loop !7

._crit_edge.i18.i153:                             ; preds = %.lr.ph.i12.i147
  br i1 %i.pf, label %._crit_edge.thread.i27.i158, label %bb.cw

._crit_edge.thread.i27.i158:                      ; preds = %._crit_edge.i18.i153, %bb.cu
  %.019.lcssa29.i28.i159 = phi ptr [ %.02024.i13.i148, %._crit_edge.i18.i153 ], [ %i.f, %bb.cu ] ; 4 uses
  %i.pg = icmp eq ptr %.019.lcssa29.i28.i159, %i.ou
  br i1 %i.pg, label %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread, label %bb.cv

bb.cv:                                            ; preds = %._crit_edge.thread.i27.i158
  %i.ph = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28.i159) #28 ; 2 uses
  %.phi.trans.insert78.i160 = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %.pre79.i161 = load ptr, ptr %.phi.trans.insert78.i160, align 8, !tbaa !353
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %._crit_edge.i18.i153
  %i.pi = phi ptr [ %.pre79.i161, %bb.cv ], [ %i.pe, %._crit_edge.i18.i153 ]
  %.019.lcssa28.i19.i154 = phi ptr [ %.019.lcssa29.i28.i159, %bb.cv ], [ %.02024.i13.i148, %._crit_edge.i18.i153 ]
  %.sroa.05.0.i20.i155 = phi ptr [ %i.ph, %bb.cv ], [ %.02024.i13.i148, %._crit_edge.i18.i153 ]
  %i.pj = icmp ult ptr %i.pi, %.0.i33
  br i1 %i.pj, label %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread, label %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread328

bb.cx:                                            ; preds = %bb.cq
  %i.pk = icmp ult ptr %i.os, %.0.i33
  br i1 %i.pk, label %bb.cy, label %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread328

bb.cy:                                            ; preds = %bb.cx
  %i.pl = load ptr, ptr %i.i, align 8, !tbaa !396 ; 2 uses
  %i.pm = icmp eq ptr %i.pl, %.08.lcssa.i.i.i14.i
  br i1 %i.pm, label %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.pn = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i14.i) #28 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 32
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !353
  %i.pq = icmp ult ptr %.0.i33, %i.pp
  br i1 %i.pq, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.pr = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i14.i, i64 24
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !541
  %i.pt = icmp eq ptr %i.ps, null                 ; 2 uses
  %spec.select72.i143 = select i1 %i.pt, ptr null, ptr %i.pn
  %spec.select73.i144 = select i1 %i.pt, ptr %.08.lcssa.i.i.i14.i, ptr %i.pn
  br label %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread

bb.db:                                            ; preds = %bb.cz
  %.02022.i30.i126 = load ptr, ptr %i.g, align 8, !tbaa !396 ; 2 uses
  %.not23.i31.i127 = icmp eq ptr %.02022.i30.i126, null
  br i1 %.not23.i31.i127, label %._crit_edge.thread.i47.i139, label %.lr.ph.i32.i128

.lr.ph.i32.i128:                                  ; preds = %bb.db, %.lr.ph.i32.i128
  %.02024.i33.i129 = phi ptr [ %.020.i36.i132, %.lr.ph.i32.i128 ], [ %.02022.i30.i126, %bb.db ] ; 5 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.02024.i33.i129, i64 32
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !353 ; 2 uses
  %i.pw = icmp ult ptr %.0.i33, %i.pv             ; 2 uses
  %.in.v.i34.i130 = select i1 %i.pw, i64 16, i64 24
  %.in.i35.i131 = getelementptr inbounds nuw i8, ptr %.02024.i33.i129, i64 %.in.v.i34.i130
  %.020.i36.i132 = load ptr, ptr %.in.i35.i131, align 8, !tbaa !396 ; 2 uses
  %.not.i37.i133 = icmp eq ptr %.020.i36.i132, null
  br i1 %.not.i37.i133, label %._crit_edge.i38.i134, label %.lr.ph.i32.i128, !llvm.loop !7

._crit_edge.i38.i134:                             ; preds = %.lr.ph.i32.i128
  br i1 %i.pw, label %._crit_edge.thread.i47.i139, label %bb.dd

._crit_edge.thread.i47.i139:                      ; preds = %._crit_edge.i38.i134, %bb.db
  %.019.lcssa29.i48.i140 = phi ptr [ %.02024.i33.i129, %._crit_edge.i38.i134 ], [ %i.f, %bb.db ] ; 4 uses
  %i.px = load ptr, ptr %i.h, align 8, !tbaa !397
  %i.py = icmp eq ptr %.019.lcssa29.i48.i140, %i.px
  br i1 %i.py, label %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread, label %bb.dc

bb.dc:                                            ; preds = %._crit_edge.thread.i47.i139
  %i.pz = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48.i140) #28 ; 2 uses
  %.phi.trans.insert.i141 = getelementptr inbounds nuw i8, ptr %i.pz, i64 32
  %.pre.i142 = load ptr, ptr %.phi.trans.insert.i141, align 8, !tbaa !353
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %._crit_edge.i38.i134
  %i.qa = phi ptr [ %.pre.i142, %bb.dc ], [ %i.pv, %._crit_edge.i38.i134 ]
  %.019.lcssa28.i39.i135 = phi ptr [ %.019.lcssa29.i48.i140, %bb.dc ], [ %.02024.i33.i129, %._crit_edge.i38.i134 ]
  %.sroa.05.0.i40.i136 = phi ptr [ %i.pz, %bb.dc ], [ %.02024.i33.i129, %._crit_edge.i38.i134 ]
  %i.qb = icmp ult ptr %i.qa, %.0.i33
  br i1 %i.qb, label %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread, label %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread328

_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183: ; preds = %bb.cr, %bb.cy
  %.sroa.070.2.i122 = phi ptr [ null, %bb.cy ], [ %i.ou, %bb.cr ] ; 2 uses
  %.sroa.12.2.i123 = phi ptr [ %i.pl, %bb.cy ], [ %i.ou, %bb.cr ] ; 2 uses
  %.not.i.i51 = icmp eq ptr %.sroa.12.2.i123, null
  br i1 %.not.i.i51, label %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread328, label %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread

_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread: ; preds = %bb.dd, %bb.cw, %bb.cp, %._crit_edge.thread.i47.i139, %._crit_edge.thread.i27.i158, %._crit_edge.thread.i.i178, %bb.da, %bb.cm, %bb.ct, %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183
  %.sroa.12.2.i123325 = phi ptr [ %.sroa.12.2.i123, %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183 ], [ %.019.lcssa28.i19.i154, %bb.cw ], [ %.019.lcssa28.i.i174, %bb.cp ], [ %spec.select71.i163, %bb.ct ], [ %.019.lcssa29.i48.i140, %._crit_edge.thread.i47.i139 ], [ %.019.lcssa29.i28.i159, %._crit_edge.thread.i27.i158 ], [ %.019.lcssa29.i.i179, %._crit_edge.thread.i.i178 ], [ %spec.select73.i144, %bb.da ], [ %i.of, %bb.cm ], [ %.019.lcssa28.i39.i135, %bb.dd ] ; 3 uses
  %.sroa.070.2.i122324 = phi ptr [ %.sroa.070.2.i122, %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183 ], [ null, %bb.cw ], [ null, %bb.cp ], [ %spec.select.i162, %bb.ct ], [ null, %._crit_edge.thread.i47.i139 ], [ null, %._crit_edge.thread.i27.i158 ], [ null, %._crit_edge.thread.i.i178 ], [ %spec.select72.i143, %bb.da ], [ null, %bb.cm ], [ null, %bb.dd ]
  %.not.i.i.i4.i = icmp ne ptr %.sroa.070.2.i122324, null
  %i.qc = icmp eq ptr %.sroa.12.2.i123325, %i.f
  %or.cond.i.i.i.i = select i1 %.not.i.i.i4.i, i1 true, i1 %i.qc
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.de

bb.de:                                            ; preds = %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i123325, i64 32
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !353
  %i.qf = icmp ult ptr %.0.i33, %i.qe
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.de, %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread
  %i.qg = phi i1 [ %i.qf, %bb.de ], [ true, %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.qg, ptr noundef nonnull %i.oa, ptr noundef nonnull %.sroa.12.2.i123325, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #24
  %i.qh = load i64, ptr %i.j, align 8, !tbaa !540
  %i.qi = add i64 %i.qh, 1
  store i64 %i.qi, ptr %i.j, align 8, !tbaa !540
  br label %_ZNSt3mapIPN4llvm4bolt10BinaryDataEmSt4lessIS3_ESaISt4pairIKS3_mEEEixEOS3_.exit

_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread328: ; preds = %bb.cw, %bb.cp, %bb.dd, %bb.cx, %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183
  %.sroa.070.2.i122334 = phi ptr [ %.sroa.070.2.i122, %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183 ], [ %.sroa.05.0.i20.i155, %bb.cw ], [ %.sroa.05.0.i.i175, %bb.cp ], [ %.sroa.05.0.i40.i136, %bb.dd ], [ %.08.lcssa.i.i.i14.i, %bb.cx ]
  call void @_ZdlPvm(ptr noundef nonnull %i.oa, i64 noundef 48) #25
  br label %_ZNSt3mapIPN4llvm4bolt10BinaryDataEmSt4lessIS3_ESaISt4pairIKS3_mEEEixEOS3_.exit

_ZNSt3mapIPN4llvm4bolt10BinaryDataEmSt4lessIS3_ESaISt4pairIKS3_mEEEixEOS3_.exit: ; preds = %bb.ck, %.thread.i.i, %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread328
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i45, %bb.ck ], [ %i.oa, %.thread.i.i ], [ %.sroa.070.2.i122334, %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_.exit183.thread328 ]
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40 ; 2 uses
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !395
  %i.ql = add i64 %i.qk, %spec.select.i
  store i64 %i.ql, ptr %i.qj, align 8, !tbaa !395
  br label %bb.df

bb.df:                                            ; preds = %_ZNSt3mapIPN4llvm4bolt10BinaryDataEmSt4lessIS3_ESaISt4pairIKS3_mEEEixEOS3_.exit, %.lr.ph
  %i.qm = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0249.0374) #28 ; 2 uses
  %.not336 = icmp eq ptr %i.qm, %i.n
  br i1 %.not336, label %._crit_edge, label %.lr.ph

bb.dg:                                            ; preds = %._crit_edge, %bb.az
  %i.qn = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0253.0376) #28 ; 2 uses
  %.not335 = icmp eq ptr %i.qn, %i.m
  br i1 %.not335, label %._crit_edge379, label %bb.az

.lr.ph381:                                        ; preds = %.lr.ph381.preheader, %bb.dh
  %i.qo = phi i64 [ %i.qt, %bb.dh ], [ 0, %.lr.ph381.preheader ]
  %.0380 = phi i32 [ %i.qs, %bb.dh ], [ 0, %.lr.ph381.preheader ] ; 2 uses
  %i.qp = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.qo
  %i.qq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIPN4llvm4bolt10BinaryDataEmSt4lessIS3_ESaISt4pairIKS3_mEEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.qp)
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !395
  %.not = icmp eq i64 %i.qr, 0
  br i1 %.not, label %._crit_edge382, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph381
  %i.qs = add i32 %.0380, 1                       ; 2 uses
  %i.qt = zext i32 %i.qs to i64                   ; 2 uses
  %i.qu = icmp ugt i64 %i.aa, %i.qt
  br i1 %i.qu, label %.lr.ph381, label %._crit_edge382, !llvm.loop !733

._crit_edge382:                                   ; preds = %bb.dh, %.lr.ph381
  %.0259 = phi i32 [ %i.ab, %bb.dh ], [ %.0380, %.lr.ph381 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !750)
  %i.qv = icmp ugt i64 %i.z, 9223372036854775792
  br i1 %i.qv, label %bb.di, label %.lr.ph.i.i.i.i.i.i.i.preheader, !prof !520

bb.di:                                            ; preds = %._crit_edge382
  call void @_ZSt28__throw_bad_array_new_lengthv() #26, !noalias !750
  unreachable

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %._crit_edge382
  %i.qw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #27, !noalias !750 ; 3 uses
  store ptr %i.qw, ptr %0, align 8, !tbaa !362, !alias.scope !750
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.z
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.qx, ptr %i.qy, align 8, !tbaa !363, !alias.scope !750
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.ra, %.lr.ph.i.i.i.i.i.i.i ], [ %i.qw, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.qz, %.lr.ph.i.i.i.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !750
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.qz, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !9

_ZSt9make_pairIRSt6vectorISt4pairIPN4llvm4bolt10BinaryDataEmESaIS6_EERjES1_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_.exit: ; preds = %._crit_edge379
  store ptr null, ptr %0, align 8, !tbaa !362, !alias.scope !750
  %i.rb = getelementptr inbounds nuw i8, ptr null, i64 %i.z
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.rb, ptr %i.rc, align 8, !tbaa !363, !alias.scope !750
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.rd, align 8, !tbaa !361, !alias.scope !750
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ab, ptr %i.re, align 8, !tbaa !549, !alias.scope !750
  %.not.i.i.i53 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorISt4pairIPN4llvm4bolt10BinaryDataEmESaIS5_EED2Ev.exit, label %bb.dj

.sink.split:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ra, ptr %i.rf, align 8, !tbaa !361, !alias.scope !750
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0259, ptr %i.rg, align 8, !tbaa !549, !alias.scope !750
  br label %bb.dj

bb.dj:                                            ; preds = %.sink.split, %_ZSt9make_pairIRSt6vectorISt4pairIPN4llvm4bolt10BinaryDataEmESaIS6_EERjES1_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_.exit
  %i.rh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !363
  %i.rj = ptrtoint ptr %i.ri to i64
  %i.rk = sub i64 %i.rj, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.rk) #25
  br label %_ZNSt6vectorISt4pairIPN4llvm4bolt10BinaryDataEmESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIPN4llvm4bolt10BinaryDataEmESaIS5_EED2Ev.exit: ; preds = %_ZSt9make_pairIRSt6vectorISt4pairIPN4llvm4bolt10BinaryDataEmESaIS6_EERjES1_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_.exit, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.rl = load ptr, ptr %i.g, align 8, !tbaa !394
  call void @_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.rl)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.rm = load ptr, ptr %i.b, align 8, !tbaa !394
  call void @_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_St3setIPNS1_14BinaryFunctionESt4lessIS8_ESaIS8_EEESt10_Select1stISD_ES9_IS3_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.rm)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

declare noundef ptr @_ZN4llvm4bolt13BinaryContext20getFunctionForSymbolEPKNS_8MCSymbolEPm(ptr noundef nonnull align 8 dereferenceable(2268), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIPN4llvm4bolt10BinaryDataEmSt4lessIS3_ESaISt4pairIKS3_mEEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !394  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !353    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !353
  %i.g = icmp ult ptr %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !396 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIPN4llvm4bolt10BinaryDataEmSt4lessIS3_ESaISt4pairIKS3_mEEE11lower_boundERS7_.exit, label %bb.b, !llvm.loop !6

_ZNSt3mapIPN4llvm4bolt10BinaryDataEmSt4lessIS3_ESaISt4pairIKS3_mEEE11lower_boundERS7_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIPN4llvm4bolt10BinaryDataEmSt4lessIS3_ESaISt4pairIKS3_mEEE11lower_boundERS7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !519
  %i.k = icmp ult ptr %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIPN4llvm4bolt10BinaryDataEmSt4lessIS3_ESaISt4pairIKS3_mEEE11lower_boundERS7_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIPN4llvm4bolt10BinaryDataEmSt4lessIS3_ESaISt4pairIKS3_mEEE11lower_boundERS7_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !353
  store ptr %i.n, ptr %i.m, align 8, !tbaa !519
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !358
  %i.p = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !353
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !353
  %i.w = icmp ult ptr %i.t, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.x = phi i1 [ %i.w, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !540
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !540
  br label %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #25
  br label %_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeIPN4llvm4bolt10BinaryDataESt4pairIKS3_mESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm4bolt11ReorderData13sortedByCountERNS0_13BinaryContextERKNS0_13BinarySectionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.629") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(2268) %2, ptr noundef nonnull align 8 dereferenceable(391) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.std::vector.396", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNK4llvm4bolt11ReorderData9baseOrderERNS0_13BinaryContextERKNS0_13BinarySectionE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.396") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(2268) %2, ptr noundef nonnull align 8 dereferenceable(391) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !361  ; 7 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !362    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt9make_pairIRSt6vectorISt4pairIPN4llvm4bolt10BinaryDataEmESaIS6_EERjES1_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt10BinaryDataEmESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNKS4_11ReorderData13sortedByCountERNS4_13BinaryContextERKNS4_13BinarySectionEE3$_0EEEvT_SN_T0_T1_"(ptr %i.c, ptr %i.b, i64 noundef %i.k)
  %i.l = icmp sgt i64 %i.f, 256
  br i1 %i.l, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 3 uses
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt10BinaryDataEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_11ReorderData13sortedByCountERNS4_13BinaryContextERKNS4_13BinarySectionEE3$_0EEEvT_SN_T0_"(ptr %i.c, ptr nonnull %i.m)
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.m, %i.b
  br i1 %.not6.i.i.i.i.i.i, label %.lr.ph.preheader, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt10BinaryDataEmESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNKS4_11ReorderData13sortedByCountERNS4_13BinaryContextERKNS4_13BinarySectionEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i = phi ptr [ %i.aj, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt10BinaryDataEmESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNKS4_11ReorderData13sortedByCountERNS4_13BinaryContextERKNS4_13BinarySectionEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i" ], [ %i.m, %bb.c ] ; 4 uses
  %.sroa.04.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.07.i.i.i.i.i.i, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i.i.i.i.i.i.i, i64 48
  %i.o = uitofp i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i to double
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i.i.i.i.i.i.i, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !334  ; 3 uses
  %i.r = uitofp i64 %i.q to double
  %i.s = fdiv double %i.o, %i.r                   ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4llvm4bolt11ReorderData13sortedByCountERNS3_13BinaryContextERKNS3_13BinarySectionEE3$_0EclISt4pairIPNS3_10BinaryDataEmENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  %.sroa.06.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4llvm4bolt11ReorderData13sortedByCountERNS3_13BinaryContextERKNS3_13BinarySectionEE3$_0EclISt4pairIPNS3_10BinaryDataEmENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i.i.i" ] ; 6 uses
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.06.0.i.i.i.i.i.i.i, i64 -16 ; 2 uses
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !62 ; 3 uses
  %i.t = getelementptr i8, ptr %.sroa.06.0.i.i.i.i.i.i.i, i64 -8
  %.val4.i.i.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !tbaa !326 ; 2 uses
  %i.u = uitofp i64 %.val4.i.i.i.i.i.i.i.i to double
  %i.v = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i.i.i.i, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !334  ; 3 uses
  %i.x = uitofp i64 %i.w to double
  %i.y = fdiv double %i.u, %i.x                   ; 2 uses
  %i.z = fcmp ogt double %i.s, %i.y
  br i1 %i.z, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4llvm4bolt11ReorderData13sortedByCountERNS3_13BinaryContextERKNS3_13BinarySectionEE3$_0EclISt4pairIPNS3_10BinaryDataEmENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = fcmp oeq double %i.s, %i.y
  br i1 %i.aa, label %bb.f, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt10BinaryDataEmESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNKS4_11ReorderData13sortedByCountERNS4_13BinaryContextERKNS4_13BinarySectionEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp ult i64 %i.q, %i.w
  br i1 %i.ab, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4llvm4bolt11ReorderData13sortedByCountERNS3_13BinaryContextERKNS3_13BinarySectionEE3$_0EclISt4pairIPNS3_10BinaryDataEmENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp eq i64 %i.q, %i.w
  br i1 %i.ac, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4llvm4bolt11ReorderData13sortedByCountERNS3_13BinaryContextERKNS3_13BinarySectionEE3$_0EclISt4pairIPNS3_10BinaryDataEmENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i", label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt10BinaryDataEmESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNKS4_11ReorderData13sortedByCountERNS4_13BinaryContextERKNS4_13BinarySectionEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4llvm4bolt11ReorderData13sortedByCountERNS3_13BinaryContextERKNS3_13BinarySectionEE3$_0EclISt4pairIPNS3_10BinaryDataEmENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i": ; preds = %bb.g
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !542
  %i.ae = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i.i.i.i, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !542
  %i.ag = icmp ult i64 %i.ad, %i.af
  br i1 %i.ag, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4llvm4bolt11ReorderData13sortedByCountERNS3_13BinaryContextERKNS3_13BinarySectionEE3$_0EclISt4pairIPNS3_10BinaryDataEmENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i.i.i", label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt10BinaryDataEmESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNKS4_11ReorderData13sortedByCountERNS4_13BinaryContextERKNS4_13BinarySectionEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4llvm4bolt11ReorderData13sortedByCountERNS3_13BinaryContextERKNS3_13BinarySectionEE3$_0EclISt4pairIPNS3_10BinaryDataEmENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4llvm4bolt11ReorderData13sortedByCountERNS3_13BinaryContextERKNS3_13BinarySectionEE3$_0EclISt4pairIPNS3_10BinaryDataEmENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i", %bb.f, %bb.d
  store ptr %.val3.i.i.i.i.i.i.i.i, ptr %.sroa.06.0.i.i.i.i.i.i.i, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i.i, i64 8
  store i64 %.val4.i.i.i.i.i.i.i.i, ptr %i.ah, align 8, !tbaa !326
  br label %bb.d, !llvm.loop !10

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt10BinaryDataEmESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNKS4_11ReorderData13sortedByCountERNS4_13BinaryContextERKNS4_13BinarySectionEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4llvm4bolt11ReorderData13sortedByCountERNS3_13BinaryContextERKNS3_13BinarySectionEE3$_0EclISt4pairIPNS3_10BinaryDataEmENS_17__normal_iteratorIPSG_St6vectorISG_SaISG_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i", %bb.g, %bb.e
  store ptr %.sroa.04.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.06.0.i.i.i.i.i.i.i, align 8, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !326
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.preheader, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !751

bb.h:                                             ; preds = %bb.b
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt10BinaryDataEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_11ReorderData13sortedByCountERNS4_13BinaryContextERKNS4_13BinarySectionEE3$_0EEEvT_SN_T0_"(ptr %i.c, ptr %i.b)
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt10BinaryDataEmESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNKS4_11ReorderData13sortedByCountERNS4_13BinaryContextERKNS4_13BinarySectionEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", %bb.h, %bb.c
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.ak = phi i64 [ %i.ap, %bb.i ], [ 0, %.lr.ph.preheader ]
  %.010 = phi i32 [ %i.ao, %bb.i ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !326
  %.not = icmp eq i64 %i.an, 0
  br i1 %.not, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ao = add i32 %.010, 1                        ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = icmp ugt i64 %i.g, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge, !llvm.loop !752

._crit_edge:                                      ; preds = %bb.i, %.lr.ph
  %.09 = phi i32 [ %i.h, %bb.i ], [ %.010, %.lr.ph ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %i.ar = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.ar, label %bb.j, label %.lr.ph.i.i.i.i.i.i.i.preheader, !prof !520

bb.j:                                             ; preds = %._crit_edge
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26, !noalias !755
  unreachable

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %._crit_edge
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27, !noalias !755 ; 3 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !362, !alias.scope !755
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !363, !alias.scope !755
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %i.c, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !755
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !9

_ZSt9make_pairIRSt6vectorISt4pairIPN4llvm4bolt10BinaryDataEmESaIS6_EERjES1_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_.exit: ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !362, !alias.scope !755
  %i.ax = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !363, !alias.scope !755
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.az, align 8, !tbaa !361, !alias.scope !755
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.h, ptr %i.ba, align 8, !tbaa !549, !alias.scope !755
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIPN4llvm4bolt10BinaryDataEmESaIS5_EED2Ev.exit, label %bb.k

.sink.split:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.bb, align 8, !tbaa !361, !alias.scope !755
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.09, ptr %i.bc, align 8, !tbaa !549, !alias.scope !755
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %_ZSt9make_pairIRSt6vectorISt4pairIPN4llvm4bolt10BinaryDataEmESaIS6_EERjES1_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !363
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bg) #25
  br label %_ZNSt6vectorISt4pairIPN4llvm4bolt10BinaryDataEmESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIPN4llvm4bolt10BinaryDataEmESaIS5_EED2Ev.exit: ; preds = %_ZSt9make_pairIRSt6vectorISt4pairIPN4llvm4bolt10BinaryDataEmESaIS6_EERjES1_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt11ReorderData15setSectionOrderERNS0_13BinaryContextERNS0_13BinarySectionEN9__gnu_cxx17__normal_iteratorIPSt4pairIPNS0_10BinaryDataEmESt6vectorISB_SaISB_EEEESG_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(2268) %1, ptr noundef nonnull align 8 dereferenceable(391) %2, ptr nofree readonly captures(address) %3, ptr nofree readnone captures(address) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %class.anon.796, align 8            ; 4 uses
  %6 = alloca %"class.std::vector.661", align 8   ; 9 uses
  %7 = alloca %"class.llvm::format_object", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not87 = icmp eq ptr %3, %4
  br i1 %.not87, label %_ZNSt6vectorIPN4llvm4bolt10BinaryDataESaIS3_EE9push_backERKS3_.exit, label %.lr.ph

.lr.ph106:                                        ; preds = %.lr.ph
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02889 = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.064.088 = phi ptr [ %i.f, %.lr.ph ], [ %3, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.064.088, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !326
  %i.e = add i64 %i.d, %.02889                    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.064.088, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.f, %4
  br i1 %.not, label %.lr.ph106, label %.lr.ph, !llvm.loop !756

bb.b:                                             ; preds = %.lr.ph106, %_ZN4llvm4bolt12_GLOBAL__N_112filterSymbolEPKNS0_10BinaryDataE.exit.thread
  %i.g = phi ptr [ null, %.lr.ph106 ], [ %i.eb, %_ZN4llvm4bolt12_GLOBAL__N_112filterSymbolEPKNS0_10BinaryDataE.exit.thread ] ; 11 uses
  %i.h = phi ptr [ null, %.lr.ph106 ], [ %i.ec, %_ZN4llvm4bolt12_GLOBAL__N_112filterSymbolEPKNS0_10BinaryDataE.exit.thread ] ; 9 uses
  %i.i = phi ptr [ null, %.lr.ph106 ], [ %i.ed, %_ZN4llvm4bolt12_GLOBAL__N_112filterSymbolEPKNS0_10BinaryDataE.exit.thread ] ; 9 uses
  %.0105 = phi i32 [ 0, %.lr.ph106 ], [ %.1.ph, %_ZN4llvm4bolt12_GLOBAL__N_112filterSymbolEPKNS0_10BinaryDataE.exit.thread ] ; 7 uses
  %.029104 = phi i64 [ 0, %.lr.ph106 ], [ %.2.ph, %_ZN4llvm4bolt12_GLOBAL__N_112filterSymbolEPKNS0_10BinaryDataE.exit.thread ] ; 9 uses
  %.031103 = phi i64 [ 0, %.lr.ph106 ], [ %.233.ph, %_ZN4llvm4bolt12_GLOBAL__N_112filterSymbolEPKNS0_10BinaryDataE.exit.thread ] ; 9 uses
  %.sroa.069.0102 = phi ptr [ %3, %.lr.ph106 ], [ %i.ee, %_ZN4llvm4bolt12_GLOBAL__N_112filterSymbolEPKNS0_10BinaryDataE.exit.thread ] ; 3 uses
  %i.j = load ptr, ptr %.sroa.069.0102, align 8, !tbaa !62 ; 23 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(88) %i.j) #24, !inline_history !757
  br i1 %i.n, label %bb.c, label %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !349  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !349
  %.not1.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not1.i.i.i, label %_ZNK4llvm4bolt10BinaryData19isTopLevelJumpTableEv.exit.i.i, label %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.i

_ZNK4llvm4bolt10BinaryData19isTopLevelJumpTableEv.exit.i.i: ; preds = %bb.d
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(88) %i.p) #24, !inline_history !757
  br i1 %i.v, label %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.thread.i, label %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.i

_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.i:     ; preds = %_ZNK4llvm4bolt10BinaryData19isTopLevelJumpTableEv.exit.i.i, %bb.d, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !349
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.thread.i, label %_ZN4llvm4bolt12_GLOBAL__N_112filterSymbolEPKNS0_10BinaryDataE.exit.thread

_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.thread.i: ; preds = %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.i, %_ZNK4llvm4bolt10BinaryData19isTopLevelJumpTableEv.exit.i.i, %bb.c
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(88) %i.j) #24, !inline_history !758
  br i1 %i.ab, label %_ZN4llvm4bolt12_GLOBAL__N_112filterSymbolEPKNS0_10BinaryDataE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm4bolt10BinaryData8isAtomicEv.exit.thread.i
  %i.ac = tail call noundef zeroext i1 @_ZNK4llvm4bolt10BinaryData10isMoveableEv(ptr noundef nonnull align 8 dereferenceable(88) %i.j) #24
  br i1 %i.ac, label %bb.f, label %_ZN4llvm4bolt12_GLOBAL__N_112filterSymbolEPKNS0_10BinaryDataE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14ReorderSymbolsB5cxx11E, i64 120), align 8, !tbaa !550 ; 4 uses
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL14ReorderSymbolsB5cxx11E, i64 128), align 8, !tbaa !550 ; 4 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = ashr i64 %i.ai, 7                       ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %bb.k
  %.064.i.i.i.i.i.i.i = phi i64 [ %i.ax, %bb.k ], [ %i.aj, %bb.g ] ; 2 uses
  %.sroa.044.063.i.i.i.i.i.i.i = phi ptr [ %i.aw, %bb.k ], [ %i.ad, %bb.g ] ; 13 uses
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.044.063.i.i.i.i.i.i.i, align 8, !tbaa !51
  %i.al = getelementptr i8, ptr %.sroa.044.063.i.i.i.i.i.i.i, i64 8
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !tbaa !325
  %i.am = tail call noundef zeroext i1 @_ZNK4llvm4bolt10BinaryData7hasNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr %.val1.i.i.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i.i.i) #24
  br i1 %i.am, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.044.063.i.i.i.i.i.i.i, i64 32
  %.val1.i22.i.i.i.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !51
  %i.ao = getelementptr i8, ptr %.sroa.044.063.i.i.i.i.i.i.i, i64 40
  %.val2.i23.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !325
  %i.ap = tail call noundef zeroext i1 @_ZNK4llvm4bolt10BinaryData7hasNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr %.val1.i22.i.i.i.i.i.i.i, i64 %.val2.i23.i.i.i.i.i.i.i) #24
  br i1 %i.ap, label %.loopexit.i.loopexit.split.loop.exit146, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.044.063.i.i.i.i.i.i.i, i64 64
  %.val1.i24.i.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !51
  %i.ar = getelementptr i8, ptr %.sroa.044.063.i.i.i.i.i.i.i, i64 72
  %.val2.i25.i.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !tbaa !325
  %i.as = tail call noundef zeroext i1 @_ZNK4llvm4bolt10BinaryData7hasNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr %.val1.i24.i.i.i.i.i.i.i, i64 %.val2.i25.i.i.i.i.i.i.i) #24
  br i1 %i.as, label %.loopexit.i.loopexit.split.loop.exit144, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.044.063.i.i.i.i.i.i.i, i64 96
  %.val1.i26.i.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !51
  %i.au = getelementptr i8, ptr %.sroa.044.063.i.i.i.i.i.i.i, i64 104
  %.val2.i27.i.i.i.i.i.i.i = load i64, ptr %i.au, align 8, !tbaa !325
  %i.av = tail call noundef zeroext i1 @_ZNK4llvm4bolt10BinaryData7hasNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr %.val1.i26.i.i.i.i.i.i.i, i64 %.val2.i27.i.i.i.i.i.i.i) #24
  br i1 %i.av, label %.loopexit.i.loopexit.split.loop.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.044.063.i.i.i.i.i.i.i, i64 128 ; 3 uses
  %i.ax = add nsw i64 %.064.i.i.i.i.i.i.i, -1
  %i.ay = icmp sgt i64 %.064.i.i.i.i.i.i.i, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i, !llvm.loop !759

._crit_edge.loopexit.i.i.i.i.i.i.i:               ; preds = %bb.k
  %.pre.i.i.i.i.i.i.i = ptrtoint ptr %i.aw to i64
  %.pre69.i.i.i.i.i.i.i = sub i64 %i.ag, %.pre.i.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i, %bb.g
  %.pre-phi70.i.i.i.i.i.i.i = phi i64 [ %.pre69.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %i.ai, %bb.g ]
  %.sroa.044.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aw, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %i.ad, %bb.g ] ; 6 uses
  %i.az = ashr exact i64 %.pre-phi70.i.i.i.i.i.i.i, 5
  switch i64 %i.az, label %_ZN4llvm4bolt12_GLOBAL__N_112filterSymbolEPKNS0_10BinaryDataE.exit.thread [
    i64 3, label %bb.l
    i64 2, label %bb.n
    i64 1, label %bb.p
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %.val1.i28.i.i.i.i.i.i.i = load ptr, ptr %.sroa.044.0.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !51
  %i.ba = getelementptr i8, ptr %.sroa.044.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.val2.i29.i.i.i.i.i.i.i = load i64, ptr %i.ba, align 8, !tbaa !325
  %i.bb = tail call noundef zeroext i1 @_ZNK4llvm4bolt10BinaryData7hasNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr %.val1.i28.i.i.i.i.i.i.i, i64 %.val2.i29.i.i.i.i.i.i.i) #24
  br i1 %i.bb, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.044.0.lcssa.i.i.i.i.i.i.i, i64 32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.044.1.i.i.i.i.i.i.i = phi ptr [ %i.bc, %bb.m ], [ %.sroa.044.0.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 4 uses
  %.val1.i30.i.i.i.i.i.i.i = load ptr, ptr %.sroa.044.1.i.i.i.i.i.i.i, align 8, !tbaa !51
  %i.bd = getelementptr i8, ptr %.sroa.044.1.i.i.i.i.i.i.i, i64 8
  %.val2.i31.i.i.i.i.i.i.i = load i64, ptr %i.bd, align 8, !tbaa !325
  %i.be = tail call noundef zeroext i1 @_ZNK4llvm4bolt10BinaryData7hasNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr %.val1.i30.i.i.i.i.i.i.i, i64 %.val2.i31.i.i.i.i.i.i.i) #24
  br i1 %i.be, label %.loopexit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.044.1.i.i.i.i.i.i.i, i64 32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.044.2.i.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.o ], [ %.sroa.044.0.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %.val1.i32.i.i.i.i.i.i.i = load ptr, ptr %.sroa.044.2.i.i.i.i.i.i.i, align 8, !tbaa !51
  %i.bg = getelementptr i8, ptr %.sroa.044.2.i.i.i.i.i.i.i, i64 8
end_hunk_0
