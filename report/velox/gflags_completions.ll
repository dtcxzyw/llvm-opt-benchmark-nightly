begin_hunk_0
inline.NumInlined: 834
inline.NumDeleted: 283
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %35 = alloca %"struct.google::(anonymous namespace)::NotableFlags", align 8 ; 35 uses
  %36 = alloca %"class.std::vector.8", align 8    ; 23 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
end_hunk_1
begin_hunk_2_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
bb.ci:                                            ; preds = %bb.cg, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  %i.lb = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 8 uses
  store i32 0, ptr %i.lb, align 8, !tbaa !33
  %i.lc = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 3 uses
  %38 = getelementptr inbounds nuw i8, ptr %35, i64 24 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %35, i64 32
  %39 = getelementptr inbounds nuw i8, ptr %35, i64 40 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %35, i64 56 ; 10 uses
  store i32 0, ptr %i.le, align 8, !tbaa !33
  %i.lf = getelementptr inbounds nuw i8, ptr %35, i64 64 ; 4 uses
  store ptr null, ptr %i.lf, align 8, !tbaa !38
  %i.lg = getelementptr inbounds nuw i8, ptr %35, i64 72 ; 3 uses
  store ptr %i.le, ptr %i.lg, align 8, !tbaa !39
  %i.lh = getelementptr inbounds nuw i8, ptr %35, i64 80 ; 2 uses
  store ptr %i.le, ptr %i.lh, align 8, !tbaa !40
  %i.li = getelementptr inbounds nuw i8, ptr %35, i64 88 ; 6 uses
  store i64 0, ptr %i.li, align 8, !tbaa !41
  %i.lj = getelementptr inbounds nuw i8, ptr %35, i64 104 ; 10 uses
  store i32 0, ptr %i.lj, align 8, !tbaa !33
  %i.lk = getelementptr inbounds nuw i8, ptr %35, i64 112 ; 5 uses
  store ptr null, ptr %i.lk, align 8, !tbaa !38
  %i.ll = getelementptr inbounds nuw i8, ptr %35, i64 120 ; 3 uses
  store ptr %i.lj, ptr %i.ll, align 8, !tbaa !39
  %i.lm = getelementptr inbounds nuw i8, ptr %35, i64 128 ; 2 uses
  store ptr %i.lj, ptr %i.lm, align 8, !tbaa !40
  %i.ln = getelementptr inbounds nuw i8, ptr %35, i64 136 ; 6 uses
  store i64 0, ptr %i.ln, align 8, !tbaa !41
  %i.lo = getelementptr inbounds nuw i8, ptr %35, i64 152 ; 7 uses
  store i32 0, ptr %i.lo, align 8, !tbaa !33
  %i.lp = getelementptr inbounds nuw i8, ptr %35, i64 160 ; 4 uses
  store ptr null, ptr %i.lp, align 8, !tbaa !38
  %i.lq = getelementptr inbounds nuw i8, ptr %35, i64 168 ; 2 uses
  store ptr %i.lo, ptr %i.lq, align 8, !tbaa !39
  %i.lr = getelementptr inbounds nuw i8, ptr %35, i64 176 ; 2 uses
  store ptr %i.lo, ptr %i.lr, align 8, !tbaa !40
  %i.ls = getelementptr inbounds nuw i8, ptr %35, i64 184 ; 4 uses
  store i64 0, ptr %i.ls, align 8, !tbaa !41
  %i.lt = getelementptr inbounds nuw i8, ptr %35, i64 200 ; 10 uses
  store i32 0, ptr %i.lt, align 8, !tbaa !33
  %i.lu = getelementptr inbounds nuw i8, ptr %35, i64 208 ; 5 uses
  store ptr null, ptr %i.lu, align 8, !tbaa !38
  %i.lv = getelementptr inbounds nuw i8, ptr %35, i64 216 ; 3 uses
  store ptr %i.lt, ptr %i.lv, align 8, !tbaa !39
  %i.lw = getelementptr inbounds nuw i8, ptr %35, i64 224 ; 2 uses
  store ptr %i.lt, ptr %i.lw, align 8, !tbaa !40
  %i.lx = getelementptr inbounds nuw i8, ptr %35, i64 232 ; 6 uses
  store i64 0, ptr %i.lx, align 8, !tbaa !41
  store ptr null, ptr %i.lc, align 8, !tbaa !38
  store ptr %i.lb, ptr %38, align 8, !tbaa !39
  store ptr %i.lb, ptr %i.ld, align 8, !tbaa !40
  store i64 0, ptr %39, align 8, !tbaa !41
  %40 = getelementptr inbounds nuw i8, ptr %35, i64 48 ; 2 uses
  invoke void @_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %40, ptr noundef null)
          to label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit39.i unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ly = landingpad { ptr, i32 }
          catch ptr null
  %i.lz = extractvalue { ptr, i32 } %i.ly, 0
  call void @__clang_call_terminate(ptr %i.lz) #29
  unreachable

_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit39.i: ; preds = %bb.ci
  store ptr null, ptr %i.lf, align 8, !tbaa !38
  store ptr %i.le, ptr %i.lg, align 8, !tbaa !39
  store ptr %i.le, ptr %i.lh, align 8, !tbaa !40
  store i64 0, ptr %i.li, align 8, !tbaa !41
  %i.ma = getelementptr inbounds nuw i8, ptr %35, i64 96 ; 3 uses
  %i.mb = load ptr, ptr %i.lk, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ma, ptr noundef %i.mb)
          to label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit40.i unwind label %bb.ck

end_hunk_2
begin_hunk_3_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  unreachable

_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit40.i: ; preds = %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit39.i
  store ptr null, ptr %i.lk, align 8, !tbaa !38
  store ptr %i.lj, ptr %i.ll, align 8, !tbaa !39
  store ptr %i.lj, ptr %i.lm, align 8, !tbaa !40
  store i64 0, ptr %i.ln, align 8, !tbaa !41
  %i.me = getelementptr inbounds nuw i8, ptr %35, i64 144 ; 3 uses
  %i.mf = load ptr, ptr %i.lp, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.me, ptr noundef %i.mf)
          to label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit41.i unwind label %bb.cl

end_hunk_3
begin_hunk_4_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  unreachable

_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit41.i: ; preds = %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit40.i
  store ptr null, ptr %i.lp, align 8, !tbaa !38
  store ptr %i.lo, ptr %i.lq, align 8, !tbaa !39
  store ptr %i.lo, ptr %i.lr, align 8, !tbaa !40
  store i64 0, ptr %i.ls, align 8, !tbaa !41
  %i.mi = getelementptr inbounds nuw i8, ptr %35, i64 192 ; 3 uses
  %i.mj = load ptr, ptr %i.lu, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.mi, ptr noundef %i.mj)
          to label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit42.i unwind label %bb.cm

end_hunk_4
begin_hunk_5_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  unreachable

_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit42.i: ; preds = %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit41.i
  store ptr null, ptr %i.lu, align 8, !tbaa !38
  store ptr %i.lt, ptr %i.lv, align 8, !tbaa !39
  store ptr %i.lt, ptr %i.lw, align 8, !tbaa !40
  store i64 0, ptr %i.lx, align 8, !tbaa !41
  %i.mm = load ptr, ptr %i.de, align 8, !tbaa !39 ; 2 uses
  %i.mn = icmp eq ptr %i.mm, %i.dc
  br i1 %i.mn, label %_ZN6google12_GLOBAL__N_126CategorizeAllMatchingFlagsERKSt3setIPKNS_19CommandLineFlagInfoESt4lessIS4_ESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_SI_PNS0_12NotableFlagsE.exit, label %.lr.ph.i60
end_hunk_5
begin_hunk_6_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a

._crit_edge.thread.i.i.i.i74:                     ; preds = %._crit_edge.i.i.i.i70, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %.019.lcssa29.i.i.i.i75 = phi ptr [ %.02024.i.i.i.i65, %._crit_edge.i.i.i.i70 ], [ %i.lb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ] ; 4 uses
  %i.oe = load ptr, ptr %38, align 8, !tbaa !39
  %i.of = icmp eq ptr %.019.lcssa29.i.i.i.i75, %i.oe
  br i1 %i.of, label %select.unfold.i.i.i72, label %bb.ct

end_hunk_6
begin_hunk_7_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 32
  store ptr %i.mr, ptr %i.op, align 8, !tbaa !42
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.on, ptr noundef nonnull %i.oo, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i73, ptr noundef nonnull align 8 dereferenceable(32) %i.lb) #26
  %i.oq = load i64, ptr %39, align 8, !tbaa !41
  %i.or = add i64 %i.oq, 1
  store i64 %i.or, ptr %39, align 8, !tbaa !41
  br label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE6insertERKS3_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread128.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.i
end_hunk_7
begin_hunk_8_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  br i1 %i.pa, label %bb.cx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit44.thread.i

bb.cx:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit44.i
  %.02022.i.i.i45.i = load ptr, ptr %i.lf, align 8, !tbaa !45 ; 2 uses
  %.not23.i.i.i46.i = icmp eq ptr %.02022.i.i.i45.i, null
  br i1 %.not23.i.i.i46.i, label %._crit_edge.thread.i.i.i64.i, label %.lr.ph.i.i.i48.i

end_hunk_8
begin_hunk_9_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  br i1 %i.pd, label %._crit_edge.thread.i.i.i64.i, label %bb.cz

._crit_edge.thread.i.i.i64.i:                     ; preds = %._crit_edge.i.i.i54.i, %bb.cx
  %.019.lcssa29.i.i.i65.i = phi ptr [ %.02024.i.i.i49.i, %._crit_edge.i.i.i54.i ], [ %i.le, %bb.cx ] ; 4 uses
  %i.pe = load ptr, ptr %i.lg, align 8, !tbaa !39
  %i.pf = icmp eq ptr %.019.lcssa29.i.i.i65.i, %i.pe
  br i1 %i.pf, label %select.unfold.i.i61.i, label %bb.cy

end_hunk_9
begin_hunk_10_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a

select.unfold.i.i61.i:                            ; preds = %bb.cz, %._crit_edge.thread.i.i.i64.i
  %.sroa.4.0.i.ph.i.i62.i = phi ptr [ %.019.lcssa29.i.i.i65.i, %._crit_edge.thread.i.i.i64.i ], [ %.019.lcssa28.i.i.i55.i, %bb.cz ] ; 3 uses
  %i.pj = icmp eq ptr %.sroa.4.0.i.ph.i.i62.i, %i.le
  br i1 %i.pj, label %_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i63.i, label %bb.da

bb.da:                                            ; preds = %select.unfold.i.i61.i
end_hunk_10
begin_hunk_11_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
.noexc93:                                         ; preds = %_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i63.i
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 32
  store ptr %i.mr, ptr %i.pp, align 8, !tbaa !42
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.pn, ptr noundef nonnull %i.po, ptr noundef nonnull %.sroa.4.0.i.ph.i.i62.i, ptr noundef nonnull align 8 dereferenceable(32) %i.le) #26
  %i.pq = load i64, ptr %i.li, align 8, !tbaa !41
  %i.pr = add i64 %i.pq, 1
  store i64 %i.pr, ptr %i.li, align 8, !tbaa !41
  br label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE6insertERKS3_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit44.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit44.i, %bb.cw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread128.i
end_hunk_11
begin_hunk_12_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  br i1 %or.cond3.i, label %bb.db, label %bb.df

bb.db:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit44.thread.i
  %.02022.i.i.i69.i = load ptr, ptr %i.lk, align 8, !tbaa !45 ; 2 uses
  %.not23.i.i.i70.i = icmp eq ptr %.02022.i.i.i69.i, null
  br i1 %.not23.i.i.i70.i, label %._crit_edge.thread.i.i.i88.i, label %.lr.ph.i.i.i72.i

end_hunk_12
begin_hunk_13_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  br i1 %i.pw, label %._crit_edge.thread.i.i.i88.i, label %bb.dd

._crit_edge.thread.i.i.i88.i:                     ; preds = %._crit_edge.i.i.i78.i, %bb.db
  %.019.lcssa29.i.i.i89.i = phi ptr [ %.02024.i.i.i73.i, %._crit_edge.i.i.i78.i ], [ %i.lj, %bb.db ] ; 4 uses
  %i.px = load ptr, ptr %i.ll, align 8, !tbaa !39
  %i.py = icmp eq ptr %.019.lcssa29.i.i.i89.i, %i.px
  br i1 %i.py, label %select.unfold.i.i85.i, label %bb.dc

end_hunk_13
begin_hunk_14_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a

select.unfold.i.i85.i:                            ; preds = %bb.dd, %._crit_edge.thread.i.i.i88.i
  %.sroa.4.0.i.ph.i.i86.i = phi ptr [ %.019.lcssa29.i.i.i89.i, %._crit_edge.thread.i.i.i88.i ], [ %.019.lcssa28.i.i.i79.i, %bb.dd ] ; 3 uses
  %i.qc = icmp eq ptr %.sroa.4.0.i.ph.i.i86.i, %i.lj
  br i1 %i.qc, label %_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i87.i, label %bb.de

bb.de:                                            ; preds = %select.unfold.i.i85.i
end_hunk_14
begin_hunk_15_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
.noexc94:                                         ; preds = %_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i87.i
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 32
  store ptr %i.mr, ptr %i.qi, align 8, !tbaa !42
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.qg, ptr noundef nonnull %i.qh, ptr noundef nonnull %.sroa.4.0.i.ph.i.i86.i, ptr noundef nonnull align 8 dereferenceable(32) %i.lj) #26
  %i.qj = load i64, ptr %i.ln, align 8, !tbaa !41
  %i.qk = add i64 %i.qj, 1
  store i64 %i.qk, ptr %i.ln, align 8, !tbaa !41
  br label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE6insertERKS3_.exit.i

bb.df:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit44.thread.i
end_hunk_15
begin_hunk_16_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  br i1 %or.cond8.i, label %bb.dg, label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE6insertERKS3_.exit.i

bb.dg:                                            ; preds = %bb.df
  %.02022.i.i.i93.i = load ptr, ptr %i.lu, align 8, !tbaa !45 ; 2 uses
  %.not23.i.i.i94.i = icmp eq ptr %.02022.i.i.i93.i, null
  br i1 %.not23.i.i.i94.i, label %._crit_edge.thread.i.i.i112.i, label %.lr.ph.i.i.i96.i

end_hunk_16
begin_hunk_17_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  br i1 %i.qp, label %._crit_edge.thread.i.i.i112.i, label %bb.di

._crit_edge.thread.i.i.i112.i:                    ; preds = %._crit_edge.i.i.i102.i, %bb.dg
  %.019.lcssa29.i.i.i113.i = phi ptr [ %.02024.i.i.i97.i, %._crit_edge.i.i.i102.i ], [ %i.lt, %bb.dg ] ; 4 uses
  %i.qq = load ptr, ptr %i.lv, align 8, !tbaa !39
  %i.qr = icmp eq ptr %.019.lcssa29.i.i.i113.i, %i.qq
  br i1 %i.qr, label %select.unfold.i.i109.i, label %bb.dh

end_hunk_17
begin_hunk_18_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a

select.unfold.i.i109.i:                           ; preds = %bb.di, %._crit_edge.thread.i.i.i112.i
  %.sroa.4.0.i.ph.i.i110.i = phi ptr [ %.019.lcssa29.i.i.i113.i, %._crit_edge.thread.i.i.i112.i ], [ %.019.lcssa28.i.i.i103.i, %bb.di ] ; 3 uses
  %i.qv = icmp eq ptr %.sroa.4.0.i.ph.i.i110.i, %i.lt
  br i1 %i.qv, label %_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i111.i, label %bb.dj

bb.dj:                                            ; preds = %select.unfold.i.i109.i
end_hunk_18
begin_hunk_19_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
.noexc95:                                         ; preds = %_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i111.i
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 32
  store ptr %i.mr, ptr %i.rb, align 8, !tbaa !42
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.qz, ptr noundef nonnull %i.ra, ptr noundef nonnull %.sroa.4.0.i.ph.i.i110.i, ptr noundef nonnull align 8 dereferenceable(32) %i.lt) #26
  %i.rc = load i64, ptr %i.lx, align 8, !tbaa !41
  %i.rd = add i64 %i.rc, 1
  store i64 %i.rd, ptr %i.lx, align 8, !tbaa !41
  br label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE6insertERKS3_.exit.i

_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE6insertERKS3_.exit.i: ; preds = %.noexc95, %bb.di, %bb.df, %.noexc94, %bb.dd, %.noexc93, %bb.cz, %.noexc92, %bb.cu
end_hunk_19
begin_hunk_20_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
_ZN6google12_GLOBAL__N_126CategorizeAllMatchingFlagsERKSt3setIPKNS_19CommandLineFlagInfoESt4lessIS4_ESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_SI_PNS0_12NotableFlagsE.exit: ; preds = %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE6insertERKS3_.exit.i, %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit42.i
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  %i.rg = load i64, ptr %39, align 8, !tbaa !41   ; 2 uses
  %i.rh = icmp ne i64 %i.rg, 0                    ; 2 uses
  br i1 %i.rh, label %_ZNKSt6vectorIN6google12_GLOBAL__N_116DisplayInfoGroupESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, label %.thread419.i

end_hunk_20
begin_hunk_21_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  store ptr %35, ptr %.sroa.9381.0..sroa_idx382.i, align 8, !tbaa !66
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 24 ; 3 uses
  %i.rl = icmp sge i32 %.1.i.i116, %.sroa.11.0
  %i.rm = load i64, ptr %i.li, align 8            ; 2 uses
  %i.rn = icmp eq i64 %i.rm, 0
  %or.cond = select i1 %i.rl, i1 true, i1 %i.rn
  br i1 %or.cond, label %bb.dp, label %.thread430.i

.thread419.i:                                     ; preds = %_ZN6google12_GLOBAL__N_126CategorizeAllMatchingFlagsERKSt3setIPKNS_19CommandLineFlagInfoESt4lessIS4_ESaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_SI_PNS0_12NotableFlagsE.exit
  %i.ro = load i64, ptr %i.li, align 8, !tbaa !41 ; 2 uses
  %i.rp = icmp eq i64 %i.ro, 0
  br i1 %i.rp, label %.thread460.i, label %.thread430.i

end_hunk_21
begin_hunk_22_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  %.sroa.7370.0..sroa_idx371.i = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  store ptr @.str.30, ptr %.sroa.7370.0..sroa_idx371.i, align 8, !tbaa !65
  %.sroa.9373.0..sroa_idx374.i = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  store ptr %40, ptr %.sroa.9373.0..sroa_idx374.i, align 8, !tbaa !66
  %i.sd = icmp sgt i64 %i.rs, 0
  br i1 %i.sd, label %bb.dl, label %_ZNSt6vectorIN6google12_GLOBAL__N_116DisplayInfoGroupESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i91.i

end_hunk_22
begin_hunk_23_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  br i1 %i.si, label %bb.dq, label %bb.dy

bb.dq:                                            ; preds = %bb.dp
  %i.sj = load i64, ptr %i.ln, align 8, !tbaa !41 ; 2 uses
  %i.sk = icmp eq i64 %i.sj, 0
  br i1 %i.sk, label %bb.dy, label %bb.dr

.thread460.i:                                     ; preds = %.thread419.i
  %i.sl = load i64, ptr %i.ln, align 8, !tbaa !41 ; 2 uses
  %i.sm = icmp eq i64 %i.sl, 0
  br i1 %i.sm, label %.thread501.i, label %.thread471.i

end_hunk_23
begin_hunk_24_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  br i1 %i.tg, label %bb.dz, label %bb.eh

bb.dz:                                            ; preds = %bb.dy
  %i.th = load i64, ptr %i.ls, align 8, !tbaa !41 ; 2 uses
  %i.ti = icmp eq i64 %i.th, 0
  br i1 %i.ti, label %bb.eh, label %bb.ea

.thread501.i:                                     ; preds = %.thread460.i
  %i.tj = load i64, ptr %i.ls, align 8, !tbaa !41 ; 2 uses
  %i.tk = icmp eq i64 %i.tj, 0
  br i1 %i.tk, label %.thread542.i, label %.thread512.i

end_hunk_24
begin_hunk_25_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  br i1 %i.ue, label %bb.ei, label %.critedge63.i

bb.ei:                                            ; preds = %bb.eh
  %i.uf = load i64, ptr %i.lx, align 8, !tbaa !41 ; 2 uses
  %i.ug = icmp eq i64 %i.uf, 0
  br i1 %i.ug, label %.critedge.i115, label %bb.ej

.thread542.i:                                     ; preds = %.thread501.i
  %i.uh = load i64, ptr %i.lx, align 8, !tbaa !41 ; 2 uses
  %i.ui = icmp eq i64 %i.uh, 0
  br i1 %i.ui, label %.critedge.i115, label %.thread558.i

end_hunk_25
begin_hunk_26_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  br i1 %.not80.i.i, label %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread.i.i, label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE6insertERKS3_.exit.i.i

_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread.i.i: ; preds = %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit.i.i, %_ZNKSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i.i.i, %bb.er
  %i.wb = load ptr, ptr %i.lf, align 8, !tbaa !38 ; 2 uses
  %.not10.i.i.i12.i.i = icmp eq ptr %i.wb, null
  br i1 %.not10.i.i.i12.i.i, label %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit23.thread.i.i, label %.lr.ph.i.i.i13.i.i

.lr.ph.i.i.i13.i.i:                               ; preds = %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread.i.i, %.lr.ph.i.i.i13.i.i
  %.012.i.i.i14.i.i = phi ptr [ %.1.i.i.i19.i.i, %.lr.ph.i.i.i13.i.i ], [ %i.wb, %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread.i.i ] ; 4 uses
  %.0811.i.i.i15.i.i = phi ptr [ %.19.i.i.i16.i.i, %.lr.ph.i.i.i13.i.i ], [ %i.le, %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread.i.i ] ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.012.i.i.i14.i.i, i64 32
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !42
  %i.we = icmp ult ptr %i.wd, %.pre.i.pre.pre.i.i.pre.pre.pre.pre.pre.i.i ; 3 uses
end_hunk_26
begin_hunk_27_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  br i1 %.not.i.i.i20.i.i, label %_ZNKSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i21.i.i, label %.lr.ph.i.i.i13.i.i, !llvm.loop !68

_ZNKSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i21.i.i: ; preds = %.lr.ph.i.i.i13.i.i
  %i.wf = icmp eq ptr %.19.i.i.i16.i.i, %i.le
  br i1 %i.wf, label %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit23.thread.i.i, label %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit23.i.i

_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit23.i.i: ; preds = %_ZNKSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i21.i.i
end_hunk_27
begin_hunk_28_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  br i1 %.not.i151.i, label %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit23.thread.i.i, label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE6insertERKS3_.exit.i.i

_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit23.thread.i.i: ; preds = %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit23.i.i, %_ZNKSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i21.i.i, %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread.i.i
  %i.wh = load ptr, ptr %i.lk, align 8, !tbaa !38 ; 2 uses
  %.not10.i.i.i24.i.i = icmp eq ptr %i.wh, null
  br i1 %.not10.i.i.i24.i.i, label %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit35.thread.i.i, label %.lr.ph.i.i.i25.i.i

.lr.ph.i.i.i25.i.i:                               ; preds = %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit23.thread.i.i, %.lr.ph.i.i.i25.i.i
  %.012.i.i.i26.i.i = phi ptr [ %.1.i.i.i31.i.i, %.lr.ph.i.i.i25.i.i ], [ %i.wh, %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit23.thread.i.i ] ; 4 uses
  %.0811.i.i.i27.i.i = phi ptr [ %.19.i.i.i28.i.i, %.lr.ph.i.i.i25.i.i ], [ %i.lj, %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit23.thread.i.i ] ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.012.i.i.i26.i.i, i64 32
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !42
  %i.wk = icmp ult ptr %i.wj, %.pre.i.pre.pre.i.i.pre.pre.pre.pre.pre.i.i ; 3 uses
end_hunk_28
begin_hunk_29_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  br i1 %.not.i.i.i32.i.i, label %_ZNKSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i33.i.i, label %.lr.ph.i.i.i25.i.i, !llvm.loop !68

_ZNKSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i33.i.i: ; preds = %.lr.ph.i.i.i25.i.i
  %i.wl = icmp eq ptr %.19.i.i.i28.i.i, %i.lj
  br i1 %i.wl, label %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit35.thread.i.i, label %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit35.i.i

_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit35.i.i: ; preds = %_ZNKSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i33.i.i
end_hunk_29
begin_hunk_30_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  br i1 %.not81.i.i, label %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit35.thread.i.i, label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE6insertERKS3_.exit.i.i

_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit35.thread.i.i: ; preds = %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit35.i.i, %_ZNKSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i33.i.i, %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit23.thread.i.i
  %i.wn = load ptr, ptr %i.lp, align 8, !tbaa !38 ; 2 uses
  %.not10.i.i.i36.i.i = icmp eq ptr %i.wn, null
  br i1 %.not10.i.i.i36.i.i, label %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit47.thread.i.i, label %.lr.ph.i.i.i37.i.i

.lr.ph.i.i.i37.i.i:                               ; preds = %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit35.thread.i.i, %.lr.ph.i.i.i37.i.i
  %.012.i.i.i38.i.i = phi ptr [ %.1.i.i.i43.i.i, %.lr.ph.i.i.i37.i.i ], [ %i.wn, %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit35.thread.i.i ] ; 4 uses
  %.0811.i.i.i39.i.i = phi ptr [ %.19.i.i.i40.i.i, %.lr.ph.i.i.i37.i.i ], [ %i.lo, %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit35.thread.i.i ] ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.012.i.i.i38.i.i, i64 32
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !42
  %i.wq = icmp ult ptr %i.wp, %.pre.i.pre.pre.i.i.pre.pre.pre.pre.pre.i.i ; 3 uses
end_hunk_30
begin_hunk_31_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  br i1 %.not.i.i.i44.i.i, label %_ZNKSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i45.i.i, label %.lr.ph.i.i.i37.i.i, !llvm.loop !68

_ZNKSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i45.i.i: ; preds = %.lr.ph.i.i.i37.i.i
  %i.wr = icmp eq ptr %.19.i.i.i40.i.i, %i.lo
  br i1 %i.wr, label %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit47.thread.i.i, label %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit47.i.i

_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit47.i.i: ; preds = %_ZNKSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i45.i.i
end_hunk_31
begin_hunk_32_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  br i1 %.not82.i.i, label %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit47.thread.i.i, label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE6insertERKS3_.exit.i.i

_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit47.thread.i.i: ; preds = %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit47.i.i, %_ZNKSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i45.i.i, %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit35.thread.i.i
  %i.wt = load ptr, ptr %i.lu, align 8, !tbaa !38 ; 2 uses
  %.not10.i.i.i48.i.i = icmp eq ptr %i.wt, null
  br i1 %.not10.i.i.i48.i.i, label %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit59.thread.i.i, label %.lr.ph.i.i.i49.i.i

.lr.ph.i.i.i49.i.i:                               ; preds = %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit47.thread.i.i, %.lr.ph.i.i.i49.i.i
  %.012.i.i.i50.i.i = phi ptr [ %.1.i.i.i55.i.i, %.lr.ph.i.i.i49.i.i ], [ %i.wt, %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit47.thread.i.i ] ; 4 uses
  %.0811.i.i.i51.i.i = phi ptr [ %.19.i.i.i52.i.i, %.lr.ph.i.i.i49.i.i ], [ %i.lt, %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit47.thread.i.i ] ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.012.i.i.i50.i.i, i64 32
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !42
  %i.ww = icmp ult ptr %i.wv, %.pre.i.pre.pre.i.i.pre.pre.pre.pre.pre.i.i ; 3 uses
end_hunk_32
begin_hunk_33_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
  br i1 %.not.i.i.i56.i.i, label %_ZNKSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i57.i.i, label %.lr.ph.i.i.i49.i.i, !llvm.loop !68

_ZNKSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i57.i.i: ; preds = %.lr.ph.i.i.i49.i.i
  %i.wx = icmp eq ptr %.19.i.i.i52.i.i, %i.lt
  br i1 %i.wx, label %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit59.thread.i.i, label %_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit59.i.i

_ZNKSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5countERKS3_.exit59.i.i: ; preds = %_ZNKSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i57.i.i
end_hunk_33
