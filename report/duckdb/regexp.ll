inline.NumInlined: 1249
inline.NumDeleted: 582
begin_hunk_0_@_ZN10duckdb_re216CharClassBuilder6NegateEv:bb.a

.lr.ph.i.i.i:                                     ; preds = %.lr.ph158
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !137
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.02022.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.i.i, %bb.s ] ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !140
  %i.do = icmp slt i32 %i.dl, %i.dn               ; 2 uses
  %.in.v.i.i.i = select i1 %i.do, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i53, label %._crit_edge.i.i.i, label %bb.s, !llvm.loop !141

._crit_edge.i.i.i:                                ; preds = %bb.s
  br i1 %i.do, label %._crit_edge.thread.i.i.i, label %bb.u

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %.lr.ph158
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.cw, %.lr.ph158 ] ; 4 uses
  %i.dp = load ptr, ptr %i.cx, align 8, !tbaa !126
  %i.dq = icmp eq ptr %.019.lcssa29.i.i.i, %i.dp
  br i1 %i.dq, label %select.unfold.i.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.dr = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #31
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.t ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.dr, %bb.t ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 36
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !137
  %i.du = load i32, ptr %i.dj, align 4, !tbaa !140
  %i.dv = icmp slt i32 %i.dt, %i.du
  br i1 %i.dv, label %select.unfold.i.i, label %bb.w

select.unfold.i.i:                                ; preds = %bb.u, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.u ] ; 3 uses
  %i.dw = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.cw
  br i1 %i.dw, label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %select.unfold.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !137
  %i.ea = load i32, ptr %i.dx, align 4, !tbaa !140
  %i.eb = icmp slt i32 %i.dz, %i.ea
  br label %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i: ; preds = %bb.v, %select.unfold.i.i
  %i.ec = phi i1 [ %i.eb, %bb.v ], [ true, %select.unfold.i.i ]
  %i.ed = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %.noexc54 unwind label %bb.x   ; 2 uses

.noexc54:                                         ; preds = %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ef = load i64, ptr %i.dj, align 4
  store i64 %i.ef, ptr %i.ee, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ec, ptr noundef nonnull %i.ed, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cw) #26
  %i.eg = load i64, ptr %i.b, align 8, !tbaa !49
  %i.eh = add i64 %i.eg, 1
  store i64 %i.eh, ptr %i.b, align 8, !tbaa !49
  br label %bb.w

bb.w:                                             ; preds = %.noexc54, %bb.u
  %i.ei = add nuw i64 %.011157, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ei, %i.dc
  br i1 %exitcond.not, label %._crit_edge159, label %.lr.ph158, !llvm.loop !159

bb.x:                                             ; preds = %_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.x, %bb.p
  %.sroa.098.3 = phi ptr [ %.sroa.098.0.lcssa, %bb.p ], [ %.sroa.098.0152, %.loopexit.split-lp ], [ %.sroa.098.1, %bb.x ], [ %.sroa.098.0152, %.loopexit ] ; 2 uses
  %.pn15.pn = phi { ptr, i32 } [ %i.cr, %bb.p ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ej, %bb.x ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i55 = icmp eq ptr %.sroa.098.3, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EED2Ev.exit56, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.098.3) #27
  br label %_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EED2Ev.exit56

_ZNSt6vectorIN10duckdb_re29RuneRangeESaIS1_EED2Ev.exit56: ; preds = %bb.y, %bb.z
  resume { ptr, i32 } %.pn15.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN10duckdb_re29CharClass3NewEm(i64 noundef %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = shl i64 %0, 3
  %i.b = add i64 %i.a, 24
  %i.c = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.b) #30 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !72
  store i8 0, ptr %i.c, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !69
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN10duckdb_re29CharClass6NegateEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %i.c = add nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = add nsw i64 %i.e, 24
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #30 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.k = load i8, ptr %0, align 8, !tbaa !160, !range !161, !noundef !162
  store i8 %i.k, ptr %i.g, align 8, !tbaa !160
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !69
  %i.n = sub nsw i32 1114112, %i.m
  store i32 %i.n, ptr %i.j, align 4, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not24 = icmp eq i32 %i.b, 0
  br i1 %.not24, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 2 uses
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
  %i.t = load i32, ptr %.027, align 4, !tbaa !140 ; 2 uses
  %i.u = icmp eq i32 %i.t, %.01926
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.v = add nsw i32 %i.t, -1
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.x = add nsw i32 %.02025, 1
  %i.y = sext i32 %.02025 to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.y
  %.sroa.423.0.insert.ext = zext i32 %i.v to i64
  %.sroa.423.0.insert.shift = shl nuw i64 %.sroa.423.0.insert.ext, 32
  %.sroa.022.0.insert.ext = zext i32 %.01926 to i64
  %.sroa.022.0.insert.insert = or disjoint i64 %.sroa.423.0.insert.shift, %.sroa.022.0.insert.ext
  store i64 %.sroa.022.0.insert.insert, ptr %i.z, align 4
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !73
  %.pre29 = load i32, ptr %i.a, align 8, !tbaa !72
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.aa = phi i32 [ %.pre29, %bb.b ], [ %i.r, %.lr.ph ] ; 2 uses
  %i.ab = phi ptr [ %.pre, %bb.b ], [ %i.s, %.lr.ph ] ; 2 uses
  %.121 = phi i32 [ %i.x, %bb.b ], [ %.02025, %.lr.ph ] ; 3 uses
  %.1.in.in = getelementptr inbounds nuw i8, ptr %.027, i64 4
  %.1.in = load i32, ptr %.1.in.in, align 4, !tbaa !137 ; 2 uses
  %.1 = add nsw i32 %.1.in, 1                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.027, i64 8 ; 2 uses
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ad
  %.not = icmp eq ptr %i.ac, %i.ae
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !163

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.019.lcssa35 = phi i32 [ %.1, %._crit_edge ], [ 0, %bb.a ]
  %.020.lcssa34 = phi i32 [ %.121, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.ag = add nsw i32 %.020.lcssa34, 1
  %i.ah = sext i32 %.020.lcssa34 to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ah
  %.sroa.0.0.insert.ext = zext i32 %.019.lcssa35 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, 4785070309113856
  store i64 %.sroa.0.0.insert.insert, ptr %i.ai, align 4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.2 = phi i32 [ %i.ag, %._crit_edge.thread ], [ %.121, %._crit_edge ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 %.2, ptr %i.aj, align 8, !tbaa !72
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK10duckdb_re29CharClass8ContainsEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = load i32, ptr %i.a, align 8, !tbaa !72     ; 2 uses
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.outer, label %bb.e

.outer:                                           ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.d
  %.01624 = phi i32 [ %.218, %bb.d ], [ %2, %.outer ] ; 2 uses
  %.01923 = phi ptr [ %.221, %bb.d ], [ %5, %.outer ] ; 3 uses
  %i.b = lshr i32 %.01624, 1                      ; 3 uses
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.01923, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !137
  %i.g = icmp slt i32 %i.f, %1
  br i1 %i.g, label %6, label %bb.c

6:                                                ; preds = %bb.b
  %7 = add nuw nsw i32 %i.b, 1                    ; 2 uses
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds nuw [8 x i8], ptr %.01923, i64 %8
  %10 = sub nsw i32 %.01624, %7
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.d, align 4, !tbaa !140
  %i.i = icmp slt i32 %1, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %6
  %.221 = phi ptr [ %9, %6 ], [ %.01923, %bb.c ]
  %.218 = phi i32 [ %10, %6 ], [ %i.b, %bb.c ]    ; 2 uses
  %11 = icmp sgt i32 %.218, 0
  br i1 %11, label %bb.b, label %bb.e, !llvm.loop !164

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.d ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN10duckdb_re216CharClassBuilder12GetCharClassEv(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(64) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !49
  %i.c = shl i64 %i.b, 3
  %i.d = add i64 %i.c, 24
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #30 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !73
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i32 0, ptr %i.h, align 8, !tbaa !72
  store i8 0, ptr %i.e, align 8, !tbaa !160
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i32 0, ptr %i.i, align 4, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !126  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not10 = icmp eq ptr %i.k, %i.l
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.m = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %._crit_edge.loopexit ]
  store i32 %.0.lcssa, ptr %i.h, align 8, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !128
  store i32 %i.o, ptr %i.i, align 4, !tbaa !69
  %i.p = load i32, ptr %0, align 8, !tbaa !135
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !136
  %i.s = xor i32 %i.r, %i.p
  %i.t = and i32 %i.s, 67108863
  %i.u = icmp eq i32 %i.t, 0
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.e, align 8, !tbaa !160
  ret ptr %i.e

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.sroa.07.011 = phi ptr [ %i.aa, %.lr.ph ], [ %i.k, %bb.a ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 32
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load i64, ptr %i.w, align 4
  store i64 %i.z, ptr %i.y, align 4
  %i.aa = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.07.011) #31 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !165
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #7 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166
  tail call void @_ZNSt8_Rb_treeIN10duckdb_re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167  ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !168

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) local_unnamed_addr #13

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #9

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @pthread_rwlock_unlock(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10duckdb_re217NumCapturesWalkerD0Ev(ptr noundef nonnull align 8 dereferenceable(100) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN10duckdb_re26Regexp6WalkerIiEE, i64 16), ptr %0, align 8, !tbaa !30
  invoke void @_ZN10duckdb_re26Regexp6WalkerIiE5ResetEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
          to label %bb.b unwind label %bb.d, !inline_history !106

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN10duckdb_re26Regexp6WalkerIiED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !108  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.i = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !110
  tail call void @_ZdlPv(ptr noundef %i.i) #27, !inline_history !106
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.k = icmp ult ptr %.06.i.i.i.i.i, %i.f
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i, !llvm.loop !111

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !107
  br label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i, %bb.c
  %i.l = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i ], [ %i.b, %bb.c ]
  tail call void @_ZdlPv(ptr noundef %i.l) #27, !inline_history !106
  br label %_ZN10duckdb_re26Regexp6WalkerIiED2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #28, !inline_history !106
  unreachable

_ZN10duckdb_re26Regexp6WalkerIiED2Ev.exit:        ; preds = %bb.b, %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN10duckdb_re217NumCapturesWalker8PreVisitEPNS_6RegexpEiPb(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !7
  %i.b = icmp eq i8 %i.a, 11
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !103
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !103
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN10duckdb_re26Regexp6WalkerIiE9PostVisitEPS0_iiPii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN10duckdb_re26Regexp6WalkerIiE4CopyEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN10duckdb_re217NumCapturesWalker10ShortVisitEPNS_6RegexpEi(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.LogMessage, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.a)
end_hunk_0
