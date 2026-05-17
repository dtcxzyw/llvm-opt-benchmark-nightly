inline.NumInlined: 1589
inline.NumDeleted: 778
begin_hunk_0_@_ZN3re216CharClassBuilder8AddRangeEii:bb.a
  br label %.lr.ph.i.i.i63

.thread165:                                       ; preds = %bb.m, %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit61.thread
  %i.bx = load i32, ptr %i.bt, align 8, !tbaa !151
  %reass.sub166 = sub i32 %.4, %.1141
  %i.by = add i32 %reass.sub166, 1
  %i.bz = add nsw i32 %i.by, %i.bx
  store i32 %i.bz, ptr %i.bt, align 8, !tbaa !151
  br label %._crit_edge.thread.i.i.i

.lr.ph.i.i.i63:                                   ; preds = %.lr.ph.i.i.i63.preheader, %.lr.ph.i.i.i63
  %.012.i.i.i64 = phi ptr [ %.1.i.i.i69, %.lr.ph.i.i.i63 ], [ %i.bw, %.lr.ph.i.i.i63.preheader ] ; 3 uses
  %.0811.i.i.i65 = phi ptr [ %.19.i.i.i66, %.lr.ph.i.i.i63 ], [ %i.u, %.lr.ph.i.i.i63.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i64, i64 36
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !160
  %i.cc = icmp slt i32 %i.cb, %.1141              ; 2 uses
  %.19.i.i.i66 = select i1 %i.cc, ptr %.0811.i.i.i65, ptr %.012.i.i.i64 ; 6 uses
  %.1.in.v.i.i.i67 = select i1 %i.cc, i64 24, i64 16
  %.1.in.i.i.i68 = getelementptr inbounds nuw i8, ptr %.012.i.i.i64, i64 %.1.in.v.i.i.i67
  %.1.i.i.i69 = load ptr, ptr %.1.in.i.i.i68, align 8, !tbaa !162 ; 2 uses
  %.not.i.i.i70 = icmp eq ptr %.1.i.i.i69, null
  br i1 %.not.i.i.i70, label %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i71, label %.lr.ph.i.i.i63, !llvm.loop !163

_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i71: ; preds = %.lr.ph.i.i.i63
  %i.cd = icmp eq ptr %.19.i.i.i66, %i.u
  br i1 %i.cd, label %.lr.ph.i.i.i75.preheader, label %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit74

_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit74: ; preds = %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i71
  %i.ce = getelementptr inbounds nuw i8, ptr %.19.i.i.i66, i64 32
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !164
  %i.cg = icmp slt i32 %.4, %i.cf
  br i1 %i.cg, label %.lr.ph.i.i.i75.preheader, label %bb.m

bb.m:                                             ; preds = %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit74
  %i.ch = getelementptr inbounds nuw i8, ptr %.19.i.i.i66, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %.19.i.i.i66, i64 36
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !160
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !164
  %i.cl = xor i32 %i.cj, -1
  %.neg31 = add i32 %i.ck, %i.cl
  %i.cm = load i32, ptr %i.bt, align 8, !tbaa !151
  %i.cn = add i32 %.neg31, %i.cm
  store i32 %i.cn, ptr %i.bt, align 8, !tbaa !151
  %i.co = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.19.i.i.i66, ptr noundef nonnull align 8 dereferenceable(32) %i.u) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef 40) #36
  %i.cp = load i64, ptr %i.bu, align 8, !tbaa !150
  %i.cq = add i64 %i.cp, -1
  store i64 %i.cq, ptr %i.bu, align 8, !tbaa !150
  %i.cr = load ptr, ptr %i.s, align 8, !tbaa !22  ; 2 uses
  %.not10.i.i.i62 = icmp eq ptr %i.cr, null
  br i1 %.not10.i.i.i62, label %.thread165, label %.lr.ph.i.i.i63.preheader

.lr.ph.i.i.i75.preheader:                         ; preds = %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i71, %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit74
  %i.cs = load i32, ptr %i.bt, align 8, !tbaa !151
  %reass.sub = sub i32 %.4, %.1141
  %i.ct = add i32 %reass.sub, 1
  %i.cu = add nsw i32 %i.ct, %i.cs
  store i32 %i.cu, ptr %i.bt, align 8, !tbaa !151
  br label %.lr.ph.i.i.i75

.lr.ph.i.i.i75:                                   ; preds = %.lr.ph.i.i.i75.preheader, %.lr.ph.i.i.i75
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i75 ], [ %i.bw, %.lr.ph.i.i.i75.preheader ] ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !164
  %i.cx = icmp slt i32 %.4, %i.cw                 ; 2 uses
  %.in.v.i.i.i = select i1 %i.cx, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !162 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i76, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i75, !llvm.loop !165

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i75
  br i1 %i.cx, label %._crit_edge.thread.i.i.i, label %bb.o

._crit_edge.thread.i.i.i:                         ; preds = %.thread165, %._crit_edge.i.i.i
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.u, %.thread165 ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !148
  %i.da = icmp eq ptr %.019.lcssa29.i.i.i, %i.cz
  br i1 %i.da, label %select.unfold.i.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.db = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #40
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.n ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.db, %bb.n ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 36
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !160
  %i.de = icmp slt i32 %i.dd, %.1141
  br i1 %i.de, label %select.unfold.i.i, label %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit

select.unfold.i.i:                                ; preds = %bb.o, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.o ] ; 3 uses
  %i.df = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.u
  br i1 %i.df, label %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSC_OT_RT0_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %select.unfold.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !164
  %i.di = icmp slt i32 %.4, %i.dh
  br label %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSC_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSC_OT_RT0_.exit.i.i: ; preds = %bb.p, %select.unfold.i.i
  %i.dj = phi i1 [ %i.di, %bb.p ], [ true, %select.unfold.i.i ]
  %i.dk = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %.sroa.5.0.insert.ext = zext i32 %.4 to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.1141 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.dl, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dj, ptr noundef nonnull %i.dk, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.u) #33
  %i.dm = load i64, ptr %i.bu, align 8, !tbaa !150
  %i.dn = add i64 %i.dm, 1
  store i64 %i.dn, ptr %i.bu, align 8, !tbaa !150
  br label %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit

_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit: ; preds = %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSC_OT_RT0_.exit.i.i, %bb.o, %bb.h, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.h ], [ true, %bb.o ], [ true, %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSC_OT_RT0_.exit.i.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re216CharClassBuilder12AddCharClassEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.03.07 = phi ptr [ %i.j, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.03.07, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !164
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.03.07, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !160
  %i.i = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.f, i32 noundef %i.h) ; 0 uses
  %i.j = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07) #40 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %._crit_edge, label %.lr.ph, !llvm.loop !166
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN3re216CharClassBuilder8ContainsEi(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !160
  %i.f = icmp slt i32 %i.e, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !162 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !163

_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !164
  %i.j = icmp sge i32 %1, %i.i
  br label %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit

_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit: ; preds = %bb.a, %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, %bb.b
  %.sroa.0.0.i.i = phi i1 [ false, %bb.a ], [ false, %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ], [ %i.j, %bb.b ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN3re216CharClassBuilder10FoldsASCIIEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !158
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !159
  %i.d = xor i32 %i.c, %i.a
  %i.e = and i32 %i.d, 67108863
  %i.f = icmp eq i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN3re216CharClassBuilder4CopyEv(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(64) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38 ; 9 uses
  invoke void @_ZN3re216CharClassBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !148  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit, %bb.b
  %1 = load <2 x i32>, ptr %0, align 8, !tbaa !3
  store <2 x i32> %1, ptr %i.a, align 8, !tbaa !3
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i32, ptr %2, align 8, !tbaa !151
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %3, ptr %4, align 8, !tbaa !151
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #36
  resume { ptr, i32 } %i.j

bb.d:                                             ; preds = %.lr.ph, %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit
  %.sroa.010.014 = phi ptr [ %i.c, %.lr.ph ], [ %i.ah, %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.010.014, i64 32
  %i.l = load i64, ptr %i.k, align 4              ; 3 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = lshr i64 %i.l, 32
  %i.o = trunc nuw i64 %i.n to i32                ; 2 uses
  %.02022.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !162 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.d ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.q = load i32, ptr %i.p, align 4, !tbaa !164
  %i.r = icmp sgt i32 %i.q, %i.o                  ; 2 uses
  %.in.v.i.i.i = select i1 %i.r, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !162 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !165

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.r, label %._crit_edge.thread.i.i.i, label %bb.f

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.d
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.g, %bb.d ] ; 4 uses
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.t = icmp eq ptr %.019.lcssa29.i.i.i, %i.s
  br i1 %i.t, label %select.unfold.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.u = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.e ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.u, %bb.e ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 36
  %i.w = load i32, ptr %i.v, align 4, !tbaa !160
  %i.x = icmp slt i32 %i.w, %i.m
  br i1 %i.x, label %select.unfold.i.i, label %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit

select.unfold.i.i:                                ; preds = %bb.f, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.f ] ; 3 uses
  %i.y = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.g
  br i1 %i.y, label %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSC_OT_RT0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !164
  %i.ab = icmp sgt i32 %i.aa, %i.o
  br label %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSC_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSC_OT_RT0_.exit.i.i: ; preds = %bb.g, %select.unfold.i.i
  %i.ac = phi i1 [ %i.ab, %bb.g ], [ true, %select.unfold.i.i ]
  %i.ad = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i64 %i.l, ptr %i.ae, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ac, ptr noundef nonnull %i.ad, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #33
  %i.af = load i64, ptr %i.i, align 8, !tbaa !150
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.i, align 8, !tbaa !150
  br label %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit

_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE6insertEOS1_.exit: ; preds = %bb.f, %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSC_OT_RT0_.exit.i.i
  %i.ah = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.014) #40 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.d
  br i1 %i.ai, label %._crit_edge, label %bb.d, !llvm.loop !167
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re216CharClassBuilder11RemoveAboveEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %1, 1114110
  br i1 %i.a, label %.thread29, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 122
  br i1 %i.b, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.c = icmp slt i32 %1, 97
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = sub nuw nsw i32 122, %1
  %i.e = lshr i32 67108863, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !159
  %i.h = and i32 %i.g, %i.e
  store i32 %i.h, ptr %i.f, align 4, !tbaa !159
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !159
  %i.j = icmp slt i32 %1, 90
  br i1 %i.j, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.k = icmp slt i32 %1, 65
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %0, align 8, !tbaa !158
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.l = sub nuw nsw i32 90, %1
  %i.m = lshr i32 67108863, %i.l
  %i.n = load i32, ptr %0, align 8, !tbaa !158
  %i.o = and i32 %i.n, %i.m
  store i32 %i.o, ptr %0, align 8, !tbaa !158
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.d, %bb.g, %bb.h, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !22   ; 2 uses
  %.not10.i.i.i32 = icmp eq ptr %i.r, null
  br i1 %.not10.i.i.i32, label %.thread29, label %.lr.ph.i.i.i.preheader.lr.ph

.lr.ph.i.i.i.preheader.lr.ph:                     ; preds = %.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.8.0.insert.ext = zext i32 %1 to i64
  %.sroa.8.0.insert.shift = shl nuw i64 %.sroa.8.0.insert.ext, 32
  %i.v = add nsw i32 %1, 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.backedge, %.lr.ph.i.i.i.preheader.lr.ph
  %.012.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.preheader.lr.ph ], [ %.012.i.i.i.be, %.lr.ph.i.i.i.backedge ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.preheader.lr.ph ], [ %.0811.i.i.i.be, %.lr.ph.i.i.i.backedge ]
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 36
  %i.x = load i32, ptr %i.w, align 4, !tbaa !160
  %.not31 = icmp sgt i32 %i.x, %1                 ; 2 uses
  %.19.i.i.i = select i1 %.not31, ptr %.012.i.i.i, ptr %.0811.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %.not31, i64 16, i64 24
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !162 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i.backedge

.lr.ph.i.i.i.backedge:                            ; preds = %.lr.ph.i.i.i, %bb.n
  %.012.i.i.i.be = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.be, %bb.n ]
  %.0811.i.i.i.be = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.q, %bb.n ]
  br label %.lr.ph.i.i.i, !llvm.loop !163

_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.y = icmp eq ptr %.19.i.i.i, %i.q
  br i1 %i.y, label %.thread29, label %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit

_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit: ; preds = %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !164
  %i.ab = icmp sgt i32 %i.aa, 1114111
  br i1 %i.ab, label %.thread29, label %bb.i

bb.i:                                             ; preds = %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE4findERKS1_.exit
  %i.ac = load i64, ptr %i.z, align 4             ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.ac to i32 ; 4 uses
  %.sroa.8.0.extract.shift = lshr i64 %i.ac, 32
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32
  %i.ad = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.q) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 40) #36
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !150
  %i.af = add i64 %i.ae, -1
  store i64 %i.af, ptr %i.s, align 8, !tbaa !150
  %i.ag = xor i32 %.sroa.8.0.extract.trunc, -1
  %.neg = add i32 %i.ag, %.sroa.0.0.extract.trunc
  %i.ah = load i32, ptr %i.t, align 8, !tbaa !151
  %i.ai = add i32 %.neg, %i.ah                    ; 2 uses
  store i32 %i.ai, ptr %i.t, align 8, !tbaa !151
  %.not = icmp slt i32 %1, %.sroa.0.0.extract.trunc
  %.pre34 = load ptr, ptr %i.p, align 8, !tbaa !22 ; 4 uses
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not23.i.i.i = icmp eq ptr %.pre34, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %bb.j, %.lr.ph.i.i.i14
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i14 ], [ %.pre34, %bb.j ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !164
  %i.al = icmp slt i32 %1, %i.ak                  ; 2 uses
  %.in.v.i.i.i = select i1 %i.al, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !162 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %.020.i.i.i, null
end_hunk_0
begin_hunk_1_@_ZN3re216CharClassBuilder6NegateEv:bb.a

bb.k:                                             ; preds = %._crit_edge
  %.not.i.i38 = icmp eq ptr %.sroa.16.0.lcssa, %.sroa.31.0.lcssa
  br i1 %.not.i.i38, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.insert.ext = zext i32 %.113.lcssa to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, 4785070309113856
  store i64 %.sroa.0.0.insert.insert, ptr %.sroa.16.0.lcssa, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.16.0.lcssa, i64 8
  br label %_ZNSt6vectorIN3re29RuneRangeESaIS1_EE9push_backEOS1_.exit

bb.m:                                             ; preds = %bb.k
  %i.bz = ptrtoint ptr %.sroa.31.0.lcssa to i64   ; 2 uses
  %i.ca = ptrtoint ptr %.sroa.099.0.lcssa to i64  ; 3 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 4 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.n, label %_ZNKSt6vectorIN3re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i39

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #39
          to label %.noexc51 unwind label %bb.p

.noexc51:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN3re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i39: ; preds = %bb.m
  %i.cd = ashr exact i64 %i.cb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i40 = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i.i40, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 1152921504606846975)
  %i.ch = select i1 %i.cf, i64 1152921504606846975, i64 %i.cg ; 3 uses
  %.not.i.i.i.i41 = icmp ne i64 %i.ch, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i41)
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #38
          to label %.noexc52 unwind label %bb.p   ; 10 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorIN3re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i39
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  %.sroa.0.0.insert.ext59 = zext i32 %.113.lcssa to i64
  %.sroa.0.0.insert.insert61 = or disjoint i64 %.sroa.0.0.insert.ext59, 4785070309113856
  store i64 %.sroa.0.0.insert.insert61, ptr %i.ck, align 4
  %.not10.i.i.i.i.i.i42 = icmp eq ptr %.sroa.099.0.lcssa, %.sroa.31.0.lcssa
  br i1 %.not10.i.i.i.i.i.i42, label %_ZNSt6vectorIN3re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i47, label %iter.check240

iter.check240:                                    ; preds = %.noexc52
  %i.cl = ptrtoaddr ptr %i.cj to i64
  %i.cm = add i64 %i.bz, -8
  %i.cn = sub i64 %i.cm, %i.ca                    ; 3 uses
  %i.co = lshr i64 %i.cn, 3
  %i.cp = add nuw nsw i64 %i.co, 1                ; 5 uses
  %min.iters.check221 = icmp ult i64 %i.cn, 24
  %i.cq = sub i64 %i.cl, %i.ca
  %diff.check220 = icmp ult i64 %i.cq, 128
  %or.cond257 = or i1 %min.iters.check221, %diff.check220
  br i1 %or.cond257, label %.lr.ph.i.i.i.i.i.i43.preheader, label %vector.main.loop.iter.check222

vector.main.loop.iter.check222:                   ; preds = %iter.check240
  %min.iters.check223 = icmp ult i64 %i.cn, 120
  br i1 %min.iters.check223, label %vec.epilog.ph244, label %vector.ph224

vector.ph224:                                     ; preds = %vector.main.loop.iter.check222
  %n.mod.vf225 = and i64 %i.cp, 12
  %n.vec226 = and i64 %i.cp, 4611686018427387888  ; 4 uses
  %i.cr = shl i64 %n.vec226, 3                    ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cj, i64 %i.cr  ; 2 uses
  %i.ct = getelementptr i8, ptr %.sroa.099.0.lcssa, i64 %i.cr
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph224
  %index228 = phi i64 [ 0, %vector.ph224 ], [ %index.next235, %vector.body227 ] ; 2 uses
  %i.cu = shl i64 %index228, 3                    ; 2 uses
  %next.gep229 = getelementptr i8, ptr %i.cj, i64 %i.cu ; 4 uses
  %next.gep230 = getelementptr i8, ptr %.sroa.099.0.lcssa, i64 %i.cu ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.cv = getelementptr i8, ptr %next.gep230, i64 32
  %i.cw = getelementptr i8, ptr %next.gep230, i64 64
  %i.cx = getelementptr i8, ptr %next.gep230, i64 96
  %wide.load231 = load <4 x i64>, ptr %next.gep230, align 4, !alias.scope !180, !noalias !177
  %wide.load232 = load <4 x i64>, ptr %i.cv, align 4, !alias.scope !180, !noalias !177
  %wide.load233 = load <4 x i64>, ptr %i.cw, align 4, !alias.scope !180, !noalias !177
  %wide.load234 = load <4 x i64>, ptr %i.cx, align 4, !alias.scope !180, !noalias !177
  %i.cy = getelementptr i8, ptr %next.gep229, i64 32
  %i.cz = getelementptr i8, ptr %next.gep229, i64 64
  %i.da = getelementptr i8, ptr %next.gep229, i64 96
  store <4 x i64> %wide.load231, ptr %next.gep229, align 4, !alias.scope !177, !noalias !180
  store <4 x i64> %wide.load232, ptr %i.cy, align 4, !alias.scope !177, !noalias !180
  store <4 x i64> %wide.load233, ptr %i.cz, align 4, !alias.scope !177, !noalias !180
  store <4 x i64> %wide.load234, ptr %i.da, align 4, !alias.scope !177, !noalias !180
  %index.next235 = add nuw i64 %index228, 16      ; 2 uses
  %i.db = icmp eq i64 %index.next235, %n.vec226
  br i1 %i.db, label %middle.block236, label %vector.body227, !llvm.loop !182

middle.block236:                                  ; preds = %vector.body227
  %cmp.n237 = icmp eq i64 %i.cp, %n.vec226
  br i1 %cmp.n237, label %_ZNSt6vectorIN3re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i47, label %vec.epilog.iter.check242

vec.epilog.iter.check242:                         ; preds = %middle.block236
  %min.epilog.iters.check243 = icmp eq i64 %n.mod.vf225, 0
  br i1 %min.epilog.iters.check243, label %.lr.ph.i.i.i.i.i.i43.preheader, label %vec.epilog.ph244, !prof !77

vec.epilog.ph244:                                 ; preds = %vector.main.loop.iter.check222, %vec.epilog.iter.check242
  %vec.epilog.resume.val238 = phi i64 [ %n.vec226, %vec.epilog.iter.check242 ], [ 0, %vector.main.loop.iter.check222 ]
  %n.vec246 = and i64 %i.cp, 4611686018427387900  ; 3 uses
  %i.dc = shl i64 %n.vec246, 3                    ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cj, i64 %i.dc  ; 2 uses
  %i.de = getelementptr i8, ptr %.sroa.099.0.lcssa, i64 %i.dc
  br label %vec.epilog.vector.body247

vec.epilog.vector.body247:                        ; preds = %vec.epilog.vector.body247, %vec.epilog.ph244
  %index248 = phi i64 [ %vec.epilog.resume.val238, %vec.epilog.ph244 ], [ %index.next252, %vec.epilog.vector.body247 ] ; 2 uses
  %i.df = shl i64 %index248, 3                    ; 2 uses
  %next.gep249 = getelementptr i8, ptr %i.cj, i64 %i.df
  %next.gep250 = getelementptr i8, ptr %.sroa.099.0.lcssa, i64 %i.df
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %wide.load251 = load <4 x i64>, ptr %next.gep250, align 4, !alias.scope !180, !noalias !177
  store <4 x i64> %wide.load251, ptr %next.gep249, align 4, !alias.scope !177, !noalias !180
  %index.next252 = add nuw i64 %index248, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next252, %n.vec246
  br i1 %i.dg, label %vec.epilog.middle.block253, label %vec.epilog.vector.body247, !llvm.loop !183

vec.epilog.middle.block253:                       ; preds = %vec.epilog.vector.body247
  %cmp.n254 = icmp eq i64 %i.cp, %n.vec246
  br i1 %cmp.n254, label %_ZNSt6vectorIN3re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i47, label %.lr.ph.i.i.i.i.i.i43.preheader

.lr.ph.i.i.i.i.i.i43.preheader:                   ; preds = %iter.check240, %vec.epilog.iter.check242, %vec.epilog.middle.block253
  %.012.i.i.i.i.i.i44.ph = phi ptr [ %i.cj, %iter.check240 ], [ %i.cs, %vec.epilog.iter.check242 ], [ %i.dd, %vec.epilog.middle.block253 ]
  %.0911.i.i.i.i.i.i45.ph = phi ptr [ %.sroa.099.0.lcssa, %iter.check240 ], [ %i.ct, %vec.epilog.iter.check242 ], [ %i.de, %vec.epilog.middle.block253 ]
  br label %.lr.ph.i.i.i.i.i.i43

.lr.ph.i.i.i.i.i.i43:                             ; preds = %.lr.ph.i.i.i.i.i.i43.preheader, %.lr.ph.i.i.i.i.i.i43
  %.012.i.i.i.i.i.i44 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i43 ], [ %.012.i.i.i.i.i.i44.ph, %.lr.ph.i.i.i.i.i.i43.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i45 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i43 ], [ %.0911.i.i.i.i.i.i45.ph, %.lr.ph.i.i.i.i.i.i43.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.dh = load i64, ptr %.0911.i.i.i.i.i.i45, align 4, !alias.scope !180, !noalias !177
  store i64 %i.dh, ptr %.012.i.i.i.i.i.i44, align 4, !alias.scope !177, !noalias !180
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i45, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i44, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i46 = icmp eq ptr %i.di, %.sroa.31.0.lcssa
  br i1 %.not.i.i.i.i.i.i46, label %_ZNSt6vectorIN3re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i47, label %.lr.ph.i.i.i.i.i.i43, !llvm.loop !184

_ZNSt6vectorIN3re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i47: ; preds = %.lr.ph.i.i.i.i.i.i43, %middle.block236, %vec.epilog.middle.block253, %.noexc52
  %.0.lcssa.i.i.i.i.i.i48 = phi ptr [ %i.cj, %.noexc52 ], [ %i.dd, %vec.epilog.middle.block253 ], [ %i.cs, %middle.block236 ], [ %i.dj, %.lr.ph.i.i.i.i.i.i43 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i48, i64 8
  %.not.i23.i.i.i49 = icmp eq ptr %.sroa.099.0.lcssa, null
  br i1 %.not.i23.i.i.i49, label %_ZNSt6vectorIN3re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN3re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i47
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.0.lcssa, i64 noundef %i.cb) #36
  br label %_ZNSt6vectorIN3re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50

_ZNSt6vectorIN3re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50: ; preds = %bb.o, %_ZNSt6vectorIN3re29RuneRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i47
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ch
  br label %_ZNSt6vectorIN3re29RuneRangeESaIS1_EE9push_backEOS1_.exit

bb.p:                                             ; preds = %_ZNKSt6vectorIN3re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i39, %bb.n
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZNSt6vectorIN3re29RuneRangeESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.l, %_ZNSt6vectorIN3re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50, %bb.c, %_ZNKSt6vectorIN3re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %._crit_edge
  %.sroa.31.1 = phi ptr [ %.sroa.31.0.lcssa, %._crit_edge ], [ %i.h, %bb.c ], [ %i.s, %_ZNKSt6vectorIN3re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.dl, %_ZNSt6vectorIN3re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50 ], [ %.sroa.31.0.lcssa, %bb.l ] ; 2 uses
  %.sroa.16.1 = phi ptr [ %.sroa.16.0.lcssa, %._crit_edge ], [ %i.q, %bb.c ], [ %i.s, %_ZNKSt6vectorIN3re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.dk, %_ZNSt6vectorIN3re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50 ], [ %i.by, %bb.l ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0.lcssa, %._crit_edge ], [ %i.g, %bb.c ], [ %i.r, %_ZNKSt6vectorIN3re29RuneRangeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cj, %_ZNSt6vectorIN3re29RuneRangeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50 ], [ %.sroa.099.0.lcssa, %bb.l ] ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !22
  invoke void @_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.do)
          to label %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE5clearEv.exit unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN3re29RuneRangeESaIS1_EE9push_backEOS1_.exit
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  tail call void @__clang_call_terminate(ptr %i.dq) #37
  unreachable

_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN3re29RuneRangeESaIS1_EE9push_backEOS1_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr null, ptr %i.dn, align 8, !tbaa !22
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !148
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.dr, ptr %i.dt, align 8, !tbaa !149
  store i64 0, ptr %i.b, align 8, !tbaa !150
  %i.du = ptrtoint ptr %.sroa.099.1 to i64        ; 2 uses
  %.not167 = icmp eq ptr %.sroa.16.1, %.sroa.099.1
  br i1 %.not167, label %._crit_edge165, label %.lr.ph164.preheader

.lr.ph164.preheader:                              ; preds = %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE5clearEv.exit
  %i.dv = ptrtoint ptr %.sroa.16.1 to i64
  %i.dw = sub i64 %i.dv, %i.du
  %i.dx = ashr exact i64 %i.dw, 3
  br label %.lr.ph164

._crit_edge165:                                   ; preds = %bb.w, %_ZNSt3setIN3re29RuneRangeENS0_13RuneRangeLessESaIS1_EE5clearEv.exit
  %1 = load <2 x i32>, ptr %0, align 8, !tbaa !3
  %2 = and <2 x i32> %1, splat (i32 67108863)
  %3 = xor <2 x i32> %2, splat (i32 67108863)
  store <2 x i32> %3, ptr %0, align 8, !tbaa !3
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %5 = load i32, ptr %4, align 8, !tbaa !151
  %6 = sub nsw i32 1114112, %5
  store i32 %6, ptr %4, align 8, !tbaa !151
  %.not.i.i.i = icmp eq ptr %.sroa.099.1, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3re29RuneRangeESaIS1_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge165
  %i.dy = ptrtoint ptr %.sroa.31.1 to i64
  %i.dz = sub i64 %i.dy, %i.du
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.1, i64 noundef %i.dz) #36
  br label %_ZNSt6vectorIN3re29RuneRangeESaIS1_EED2Ev.exit

_ZNSt6vectorIN3re29RuneRangeESaIS1_EED2Ev.exit:   ; preds = %._crit_edge165, %bb.r
  ret void

.lr.ph164:                                        ; preds = %.lr.ph164.preheader, %bb.w
  %.011163 = phi i64 [ %i.ez, %bb.w ], [ 0, %.lr.ph164.preheader ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.sroa.099.1, i64 %.011163 ; 4 uses
  %.02022.i.i.i = load ptr, ptr %i.dn, align 8, !tbaa !162 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph164
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !160
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.02022.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.i.i, %bb.s ] ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !164
  %i.ef = icmp slt i32 %i.ec, %i.ee               ; 2 uses
  %.in.v.i.i.i = select i1 %i.ef, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !162 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i54, label %._crit_edge.i.i.i, label %bb.s, !llvm.loop !165

._crit_edge.i.i.i:                                ; preds = %bb.s
  br i1 %i.ef, label %._crit_edge.thread.i.i.i, label %bb.u

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %.lr.ph164
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.dr, %.lr.ph164 ] ; 4 uses
  %i.eg = load ptr, ptr %i.ds, align 8, !tbaa !148
  %i.eh = icmp eq ptr %.019.lcssa29.i.i.i, %i.eg
  br i1 %i.eh, label %select.unfold.i.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.ei = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #40
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.t ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.ei, %bb.t ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 36
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !160
  %i.el = load i32, ptr %i.ea, align 4, !tbaa !164
  %i.em = icmp slt i32 %i.ek, %i.el
  br i1 %i.em, label %select.unfold.i.i, label %bb.w

select.unfold.i.i:                                ; preds = %bb.u, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.u ] ; 3 uses
  %i.en = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.dr
  br i1 %i.en, label %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %select.unfold.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !160
  %i.er = load i32, ptr %i.eo, align 4, !tbaa !164
  %i.es = icmp slt i32 %i.eq, %i.er
  br label %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i: ; preds = %bb.v, %select.unfold.i.i
  %i.et = phi i1 [ %i.es, %bb.v ], [ true, %select.unfold.i.i ]
  %i.eu = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %.noexc55 unwind label %bb.x   ; 2 uses

.noexc55:                                         ; preds = %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ew = load i64, ptr %i.ea, align 4
  store i64 %i.ew, ptr %i.ev, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.et, ptr noundef nonnull %i.eu, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.dr) #33
  %i.ex = load i64, ptr %i.b, align 8, !tbaa !150
  %i.ey = add i64 %i.ex, 1
  store i64 %i.ey, ptr %i.b, align 8, !tbaa !150
  br label %bb.w

bb.w:                                             ; preds = %.noexc55, %bb.u
  %i.ez = add nuw i64 %.011163, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ez, %i.dx
  br i1 %exitcond.not, label %._crit_edge165, label %.lr.ph164, !llvm.loop !185

bb.x:                                             ; preds = %_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.x, %bb.p
  %.sroa.31.3 = phi ptr [ %.sroa.31.0.lcssa, %bb.p ], [ %.sroa.16.0157, %.loopexit.split-lp ], [ %.sroa.31.1, %bb.x ], [ %.sroa.16.0157, %.loopexit ]
  %.sroa.099.3 = phi ptr [ %.sroa.099.0.lcssa, %bb.p ], [ %.sroa.099.0158, %.loopexit.split-lp ], [ %.sroa.099.1, %bb.x ], [ %.sroa.099.0158, %.loopexit ] ; 3 uses
  %.pn15.pn = phi { ptr, i32 } [ %i.dm, %bb.p ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.fa, %bb.x ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i56 = icmp eq ptr %.sroa.099.3, null
  br i1 %.not.i.i.i56, label %_ZNSt6vectorIN3re29RuneRangeESaIS1_EED2Ev.exit57, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fb = ptrtoint ptr %.sroa.31.3 to i64
  %i.fc = ptrtoint ptr %.sroa.099.3 to i64
  %i.fd = sub i64 %i.fb, %i.fc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.099.3, i64 noundef %i.fd) #36
  br label %_ZNSt6vectorIN3re29RuneRangeESaIS1_EED2Ev.exit57

_ZNSt6vectorIN3re29RuneRangeESaIS1_EED2Ev.exit57: ; preds = %bb.y, %bb.z
  resume { ptr, i32 } %.pn15.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN3re29CharClass3NewEm(i64 noundef %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = shl i64 %0, 3
  %i.b = add i64 %i.a, 24
  %i.c = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.b) #38 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !89
  store i8 0, ptr %i.c, align 8, !tbaa !186
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !85
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN3re29CharClass6NegateEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !89   ; 3 uses
  %i.c = add nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = add nsw i64 %i.e, 24
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #38 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.k = load i8, ptr %0, align 8, !tbaa !186, !range !187, !noundef !43
  store i8 %i.k, ptr %i.g, align 8, !tbaa !186
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !85
  %i.n = sub nsw i32 1114112, %i.m
  store i32 %i.n, ptr %i.j, align 4, !tbaa !85
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not24 = icmp eq i32 %i.b, 0
  br i1 %.not24, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !90   ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %i.q = icmp slt i32 %.1.in, 1114111
  br i1 %i.q, label %._crit_edge.thread, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.r = phi i32 [ %i.aa, %bb.c ], [ %i.b, %.lr.ph.preheader ]
  %i.s = phi ptr [ %i.ab, %bb.c ], [ %i.p, %.lr.ph.preheader ]
  %.027 = phi ptr [ %i.ac, %bb.c ], [ %i.p, %.lr.ph.preheader ] ; 3 uses
  %.01926 = phi i32 [ %.1, %bb.c ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.02025 = phi i32 [ %.121, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.t = load i32, ptr %.027, align 4, !tbaa !164 ; 2 uses
  %i.u = icmp eq i32 %i.t, %.01926
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.v = add nsw i32 %i.t, -1
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !90
  %i.x = add nsw i32 %.02025, 1
  %i.y = sext i32 %.02025 to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.y
  %.sroa.423.0.insert.ext = zext i32 %i.v to i64
  %.sroa.423.0.insert.shift = shl nuw i64 %.sroa.423.0.insert.ext, 32
  %.sroa.022.0.insert.ext = zext i32 %.01926 to i64
  %.sroa.022.0.insert.insert = or disjoint i64 %.sroa.423.0.insert.shift, %.sroa.022.0.insert.ext
  store i64 %.sroa.022.0.insert.insert, ptr %i.z, align 4
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !90
  %.pre29 = load i32, ptr %i.a, align 8, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.aa = phi i32 [ %.pre29, %bb.b ], [ %i.r, %.lr.ph ] ; 2 uses
  %i.ab = phi ptr [ %.pre, %bb.b ], [ %i.s, %.lr.ph ] ; 2 uses
  %.121 = phi i32 [ %i.x, %bb.b ], [ %.02025, %.lr.ph ] ; 3 uses
  %.1.in.in = getelementptr inbounds nuw i8, ptr %.027, i64 4
  %.1.in = load i32, ptr %.1.in.in, align 4, !tbaa !160 ; 2 uses
  %.1 = add nsw i32 %.1.in, 1                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.027, i64 8 ; 2 uses
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ad
  %.not = icmp eq ptr %i.ac, %i.ae
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !188

end_hunk_1
