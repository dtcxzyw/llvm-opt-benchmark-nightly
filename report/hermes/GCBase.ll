inline.NumInlined: 1712
inline.NumDeleted: 796
begin_hunk_0_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatSt4lessIS5_ESaISt4pairIKS5_S9_EEEixEOS5_:bb.a
  %i.ax = icmp eq i64 %.sroa.speculated.i.i.i19.i.i, 0
  br i1 %i.ax, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20.i.i: ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i29, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !89 ; 2 uses
  %i.ba = tail call i32 @memcmp(ptr noundef readonly %i.ad, ptr noundef %i.az, i64 noundef %.sroa.speculated.i.i.i19.i.i) #31 ; 2 uses
  %.not.i.i.i21.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i21.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread23.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.i.i: ; preds = %bb.f
  %i.bb = sub i64 %.val4, %i.aw
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread23.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20.i.i
  %i.bd = sub i64 %.val4, %i.aw
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %bb.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20.i.i
  %i.bf = icmp slt i32 %i.ba, 0
  br i1 %i.bf, label %bb.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38.i.i

bb.g:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread23.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !321 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, %.08.lcssa.i.i.i29
  br i1 %i.bi, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i29) #34 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !90 ; 2 uses
  %.sroa.speculated.i.i.i28.i.i = tail call i64 @llvm.umin.i64(i64 %.val4, i64 %i.bl) ; 2 uses
  %i.bm = icmp eq i64 %.sroa.speculated.i.i.i28.i.i, 0
  br i1 %i.bm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29.i.i: ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !89
  %i.bp = tail call i32 @memcmp(ptr noundef %i.bo, ptr noundef readonly %i.ad, i64 noundef %.sroa.speculated.i.i.i28.i.i) #31 ; 2 uses
  %.not.i.i.i30.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i30.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29.i.i, %bb.h
  %i.bq = sub i64 %i.bl, %.val4
  %spec.select7.i.i.i.i33.i.i = tail call i64 @llvm.smax.i64(i64 %i.bq, i64 -2147483648)
  %.08.i.i.i.i34.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i33.i.i, i64 2147483647)
  %.0.i6.i.i.i35.i.i = trunc nsw i64 %.08.i.i.i.i34.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29.i.i
  %.0.i.i.i31.i.i = phi i32 [ %i.bp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29.i.i ], [ %.0.i6.i.i.i35.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32.i.i ]
  %i.br = icmp slt i32 %.0.i.i.i31.i.i, 0
  br i1 %i.br, label %bb.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.sink.split.i

bb.i:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36.i.i
  %i.bs = getelementptr i8, ptr %i.bj, i64 24
  %.val10.i.i = load ptr, ptr %i.bs, align 8, !tbaa !323
  %i.bt = icmp eq ptr %.val10.i.i, null           ; 2 uses
  %spec.select.i.i = select i1 %i.bt, ptr null, ptr %.08.lcssa.i.i.i29
  %spec.select28.i.i = select i1 %i.bt, ptr %i.bj, ptr %.08.lcssa.i.i.i29
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread23.i.i
  %i.bu = tail call i32 @memcmp(ptr noundef %i.az, ptr noundef readonly %i.ad, i64 noundef %.sroa.speculated.i.i.i19.i.i) #31 ; 2 uses
  %.not.i.i.i39.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i39.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.i.i
  %i.bv = sub i64 %i.aw, %.val4
  %spec.select7.i.i.i.i42.i.i = tail call i64 @llvm.smax.i64(i64 %i.bv, i64 -2147483648)
  %.08.i.i.i.i43.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i42.i.i, i64 2147483647)
  %.0.i6.i.i.i44.i.i = trunc nsw i64 %.08.i.i.i.i43.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38.i.i
  %.0.i.i.i40.i.i = phi i32 [ %i.bu, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38.i.i ], [ %.0.i6.i.i.i44.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41.i.i ]
  %i.bw = icmp slt i32 %.0.i.i.i40.i.i, 0
  br i1 %i.bw, label %bb.j, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread9.i

bb.j:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !321 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %.08.lcssa.i.i.i29
  br i1 %i.bz, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i29) #34 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !90 ; 2 uses
  %.sroa.speculated.i.i.i46.i.i = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 %.val4) ; 2 uses
  %i.cd = icmp eq i64 %.sroa.speculated.i.i.i46.i.i, 0
  br i1 %i.cd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i50.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i47.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i47.i.i: ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !89
  %i.cg = tail call i32 @memcmp(ptr noundef readonly %i.ad, ptr noundef %i.cf, i64 noundef %.sroa.speculated.i.i.i46.i.i) #31 ; 2 uses
  %.not.i.i.i48.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i48.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i50.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit54.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i50.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i47.i.i, %bb.k
  %i.ch = sub i64 %.val4, %i.cc
  %spec.select7.i.i.i.i51.i.i = tail call i64 @llvm.smax.i64(i64 %i.ch, i64 -2147483648)
  %.08.i.i.i.i52.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i51.i.i, i64 2147483647)
  %.0.i6.i.i.i53.i.i = trunc nsw i64 %.08.i.i.i.i52.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit54.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit54.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i50.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i47.i.i
  %.0.i.i.i49.i.i = phi i32 [ %i.cg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i47.i.i ], [ %.0.i6.i.i.i53.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i50.i.i ]
  %i.ci = icmp slt i32 %.0.i.i.i49.i.i, 0
  br i1 %i.ci, label %bb.l, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.sink.split.i

bb.l:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit54.i.i
  %i.cj = getelementptr i8, ptr %.08.lcssa.i.i.i29, i64 24
  %.val.i10.i = load ptr, ptr %i.cj, align 8, !tbaa !323
  %i.ck = icmp eq ptr %.val.i10.i, null           ; 2 uses
  %spec.select29.i.i = select i1 %i.ck, ptr null, ptr %i.ca
  %spec.select30.i.i = select i1 %i.ck, ptr %.08.lcssa.i.i.i29, ptr %i.ca
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.sink.split.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit54.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %bb.d
  %.01113.i = load ptr, ptr %i.b, align 8, !tbaa !321 ; 2 uses
  %.not14.i = icmp eq ptr %.01113.i, null
  br i1 %.not14.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.sink.split.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %.01115.i = phi ptr [ %.011.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %.01113.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.sink.split.i ] ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.01115.i, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !90 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 %.val4) ; 3 uses
  %i.cn = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.cn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.co = getelementptr inbounds nuw i8, ptr %.01115.i, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !89
  %i.cq = tail call i32 @memcmp(ptr noundef readonly %i.ad, ptr noundef %i.cp, i64 noundef %.sroa.speculated.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %.lr.ph.i
  %i.cr = sub i64 %.val4, %i.cm
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.cr, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.cq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.cs = icmp slt i32 %.0.i.i.i.i, 0             ; 2 uses
  %.in.v.i = select i1 %i.cs, i64 16, i64 24
  %.in.i = getelementptr i8, ptr %.01115.i, i64 %.in.v.i
  %.011.i = load ptr, ptr %.in.i, align 8, !tbaa !321 ; 2 uses
  %.not.i22 = icmp eq ptr %.011.i, null
  br i1 %.not.i22, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !324

._crit_edge.i:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  br i1 %i.cs, label %._crit_edge.thread.i, label %bb.n

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.sink.split.i
  %.010.lcssa21.i = phi ptr [ %.01115.i, %._crit_edge.i ], [ %i.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.sink.split.i ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val9.i = load ptr, ptr %i.ct, align 8, !tbaa !282
  %i.cu = icmp eq ptr %.010.lcssa21.i, %.val9.i
  br i1 %i.cu, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i
  %i.cv = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa21.i) #34 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !90 ; 2 uses
  %.pre31 = tail call i64 @llvm.umin.i64(i64 %.val4, i64 %.pre)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i
  %.sroa.speculated.i.i.i14.i.pre-phi = phi i64 [ %.pre31, %bb.m ], [ %.sroa.speculated.i.i.i.i, %._crit_edge.i ] ; 2 uses
  %i.cw = phi i64 [ %.pre, %bb.m ], [ %i.cm, %._crit_edge.i ]
  %.010.lcssa20.i = phi ptr [ %.010.lcssa21.i, %bb.m ], [ %.01115.i, %._crit_edge.i ]
  %.sroa.01.0.i = phi ptr [ %i.cv, %bb.m ], [ %.01115.i, %._crit_edge.i ] ; 2 uses
  %i.cx = icmp eq i64 %.sroa.speculated.i.i.i14.i.pre-phi, 0
  br i1 %i.cx, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i18.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15.i: ; preds = %bb.n
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !89
  %i.da = tail call i32 @memcmp(ptr noundef %i.cz, ptr noundef readonly %i.ad, i64 noundef %.sroa.speculated.i.i.i14.i.pre-phi) #31 ; 2 uses
  %.not.i.i.i16.i = icmp eq i32 %i.da, 0
  br i1 %.not.i.i.i16.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i18.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i18.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15.i, %bb.n
  %i.db = sub i64 %i.cw, %.val4
  %spec.select7.i.i.i.i19.i = tail call i64 @llvm.smax.i64(i64 %i.db, i64 -2147483648)
  %.08.i.i.i.i20.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i19.i, i64 2147483647)
  %.0.i6.i.i.i21.i = trunc nsw i64 %.08.i.i.i.i20.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i18.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15.i
  %.0.i.i.i17.i = phi i32 [ %i.da, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15.i ], [ %.0.i6.i.i.i21.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i18.i ]
  %.0.i.i.i17.i.fr = freeze i32 %.0.i.i.i17.i
  %i.dc = icmp slt i32 %.0.i.i.i17.i.fr, 0        ; 2 uses
  %spec.select.i = select i1 %i.dc, ptr null, ptr %.sroa.01.0.i ; 2 uses
  br i1 %i.dc, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread9.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.i: ; preds = %bb.j, %bb.g
  %.sroa.021.2.i.i = phi ptr [ null, %bb.j ], [ %i.bh, %bb.g ] ; 2 uses
  %.sroa.12.2.i.i = phi ptr [ %i.by, %bb.j ], [ %i.bh, %bb.g ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.12.2.i.i, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread9.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i, %._crit_edge.thread.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.i, %bb.l, %bb.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %.sroa.12.2.i8.i = phi ptr [ %.sroa.12.2.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.i ], [ %spec.select30.i.i, %bb.l ], [ %i.am, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ %spec.select28.i.i, %bb.i ], [ %.010.lcssa21.i, %._crit_edge.thread.i ], [ %.010.lcssa20.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i ] ; 4 uses
  %.sroa.021.2.i7.i = phi ptr [ %.sroa.021.2.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.i ], [ %spec.select29.i.i, %bb.l ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ %spec.select.i.i, %bb.i ], [ null, %._crit_edge.thread.i ], [ %spec.select.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i ]
  %.not.i.i.i12 = icmp ne ptr %.sroa.021.2.i7.i, null
  %i.dd = icmp eq ptr %.sroa.12.2.i8.i, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i12, i1 true, i1 %i.dd
  br i1 %or.cond.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i, i64 40
  %i.df = load i64, ptr %i.de, align 8, !tbaa !90 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i13 = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %.val4) ; 2 uses
  %i.dg = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i13, 0
  br i1 %i.dg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i18, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i14

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i14: ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !89
  %i.dj = tail call i32 @memcmp(ptr noundef %i.ad, ptr noundef %i.di, i64 noundef %.sroa.speculated.i.i.i.i.i.i13) #31 ; 2 uses
  %.not.i.i.i.i.i.i15 = icmp eq i32 %i.dj, 0
  br i1 %.not.i.i.i.i.i.i15, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i18, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i16

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i18: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i14, %bb.o
  %i.dk = sub i64 %.val4, %i.df
  %spec.select7.i.i.i.i.i.i.i19 = tail call i64 @llvm.smax.i64(i64 %i.dk, i64 -2147483648)
  %.08.i.i.i.i.i.i.i20 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i19, i64 2147483647)
  %.0.i6.i.i.i.i.i.i21 = trunc nsw i64 %.08.i.i.i.i.i.i.i20 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i16

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i16: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i18, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i14
  %.0.i.i.i.i.i.i17 = phi i32 [ %i.dj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i14 ], [ %.0.i6.i.i.i.i.i.i21, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i18 ]
  %i.dl = icmp slt i32 %.0.i.i.i.i.i.i17, 0
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i16, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread.i
  %i.dm = phi i1 [ %i.dl, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i16 ], [ true, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread.i ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dm, ptr noundef nonnull %i.v, ptr noundef nonnull %.sroa.12.2.i8.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #31
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !284
  %i.dp = add i64 %i.do, 1
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !284
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread9.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45.i.i
  %.sroa.01.0.ph.i = phi ptr [ %.sroa.021.2.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.i ], [ %.08.lcssa.i.i.i29, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45.i.i ], [ %spec.select.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22.i ]
  %i.dq = icmp eq ptr %i.ad, %i.x
  br i1 %i.dq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread9.i
  %i.dr = icmp ult i64 %.val4, 16
  tail call void @llvm.assume(i1 %i.dr)
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_.exit.thread9.i
  %i.ds = load i64, ptr %i.x, align 8, !tbaa !64
  %i.dt = add i64 %i.ds, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.dt) #32, !inline_history !325
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 128) #32, !inline_history !326
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_.exit: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i, %bb.p, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.027.0 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %i.v, %bb.p ], [ %.sroa.01.0.ph.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.027.0, i64 64
  ret ptr %i.du
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #21

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #23

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef %0) unnamed_addr #1 align 2 {
bb.a:
  %.not1 = icmp eq ptr %0, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatED2Ev.exit
  %.02 = phi ptr [ %.0.val, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatED2Ev.exit ], [ %0, %bb.a ] ; 6 uses
  %i.a = getelementptr i8, ptr %.02, i64 24
  %.0.val6 = load ptr, ptr %i.a, align 8, !tbaa !323
  tail call fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef %.0.val6)
  %i.b = getelementptr i8, ptr %.02, i64 16
  %.0.val = load ptr, ptr %i.b, align 8, !tbaa !327 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02, i64 32
  %i.d = getelementptr i8, ptr %.02, i64 96
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !281
  tail call fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef %.val.i.i.i)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph
  %i.h = load i64, ptr %i.f, align 8, !tbaa !64
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #32, !inline_history !328
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatED2Ev.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.02, i64 noundef 128) #32, !inline_history !329
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !330

._crit_edge:                                      ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZZN6hermes2vm6GCBase20sizeDiagnosticCensusEmEN26HeapSizeDiagnosticAcceptor8acceptHVERKNS0_11HermesValueERZNS1_20sizeDiagnosticCensusEmE14DiagnosticStatm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef range(i64 4, 9) %3) unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load <2 x i64>, ptr %2, align 8, !tbaa !91
  %i.b = insertelement <2 x i64> <i64 1, i64 poison>, i64 %3, i64 1
  %i.c = add <2 x i64> %i.a, %i.b
  store <2 x i64> %i.c, ptr %2, align 8, !tbaa !91
  %i.d = load i64, ptr %1, align 8                ; 5 uses
  %.mask.i = and i64 %i.d, -140737488355328       ; 3 uses
  %i.e = icmp eq i64 %.mask.i, -1407374883553280
  %i.f = bitcast i64 %i.d to double               ; 9 uses
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i51, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %i.d, -1970324836974592
  br i1 %i.g, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.h = tail call { double, double } @llvm.modf.f64(double %i.f)
  %i.i = extractvalue { double, double } %i.h, 0
  %i.j = fcmp oeq double %i.i, 0.000000e+00
  br i1 %i.j, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !256
  %i.m = sitofp i64 %i.l to double
  %i.n = fcmp ult double %i.f, %i.m
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !273
  %i.q = sitofp i64 %i.p to double
  %i.r = fcmp ugt double %i.f, %i.q
  br i1 %i.r, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !274
  %i.u = sitofp i64 %i.t to double
  %i.v = fcmp ult double %i.f, %i.u
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !275
  %i.y = sitofp i64 %i.x to double
  %i.z = fcmp ugt double %i.f, %i.y
  br i1 %i.z, label %bb.h, label %._crit_edge.i.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !276
  %i.ac = sitofp i64 %i.ab to double
  %i.ad = fcmp ult double %i.f, %i.ac
  br i1 %i.ad, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !277
  %i.ag = sitofp i64 %i.af to double
  %i.ah = fcmp ugt double %i.f, %i.ag
  br i1 %i.ah, label %bb.j, label %._crit_edge.i.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !278
  %i.ak = sitofp i64 %i.aj to double
  %i.al = fcmp ult double %i.f, %i.ak
  br i1 %i.al, label %._crit_edge.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load i64, ptr %i.am, align 8, !tbaa !279
  %i.ao = sitofp i64 %i.an to double
  %i.ap = fcmp ugt double %i.f, %i.ao
  br i1 %i.ap, label %._crit_edge.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.i, %bb.g, %bb.e, %bb.l, %bb.k, %bb.j, %bb.c
  %.sroa.085.0 = phi ptr [ @.str.67, %bb.j ], [ @.str.67, %bb.k ], [ @.str.71, %bb.l ], [ @.str.69, %bb.g ], [ @.str.68, %bb.e ], [ @.str.67, %bb.c ], [ @.str.70, %bb.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ 7, %bb.j ], [ 7, %bb.k ], [ 5, %bb.l ], [ 5, %bb.g ], [ 4, %bb.e ], [ 7, %bb.c ], [ 5, %bb.i ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ar, ptr %4, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ar, ptr noundef nonnull align 1 dereferenceable(6) @.str.66, i64 6, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 6, ptr %i.as, align 8, !tbaa !90
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i8 0, ptr %i.at, align 2, !tbaa !64
  %i.au = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatSt4lessIS5_ESaISt4pairIKS5_S9_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.aw, ptr %5, align 8, !tbaa !88, !alias.scope !331
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.085.0, i64 %.sroa.9.0, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.9.0, ptr %i.ax, align 8, !tbaa !90, !alias.scope !331
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.9.0
  store i8 0, ptr %i.ay, align 1, !tbaa !64
  %i.az = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6hermes2vm6GCBase20sizeDiagnosticCensusEmE14DiagnosticStatSt4lessIS5_ESaISt4pairIKS5_S9_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !313
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !313
  %i.bc = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.aw
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.be = load i64, ptr %i.aw, align 8, !tbaa !64
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_0
