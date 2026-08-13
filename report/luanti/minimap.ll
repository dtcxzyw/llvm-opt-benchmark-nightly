inline.NumInlined: 2133
inline.NumDeleted: 822
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN19MinimapUpdateThread8doUpdateEv:bb.a
_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.i, %bb.g
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.j, %bb.h
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ 16, %bb.j ], [ 16, %bb.h ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.j ], [ %.014.i.i.i.i, %bb.h ], [ %.014.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ] ; 10 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %bb.g, !llvm.loop !67

_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %i.aq = icmp eq ptr %.19.i.i.i.i, %i.m
  br i1 %i.aq, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE7emplaceIJRS2_RS4_EEES7_ISt17_Rb_tree_iteratorIS9_EbEDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !54 ; 2 uses
  %i.at = icmp slt i16 %i.ab, %i.as
  br i1 %i.at, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE7emplaceIJRS2_RS4_EEES7_ISt17_Rb_tree_iteratorIS9_EbEDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = icmp eq i16 %i.ab, %i.as
  br i1 %i.au, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 34
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !55 ; 2 uses
  %i.ax = icmp slt i16 %i.ac, %i.aw
  br i1 %i.ax, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE7emplaceIJRS2_RS4_EEES7_ISt17_Rb_tree_iteratorIS9_EbEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = icmp eq i16 %i.ac, %i.aw
  br i1 %i.ay, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, label %bb.o

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i: ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !56
  %i.bb = icmp slt i16 %i.ad, %i.ba
  br i1 %i.bb, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE7emplaceIJRS2_RS4_EEES7_ISt17_Rb_tree_iteratorIS9_EbEDpOT_.exit, label %bb.o

_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE7emplaceIJRS2_RS4_EEES7_ISt17_Rb_tree_iteratorIS9_EbEDpOT_.exit: ; preds = %bb.f, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %bb.k, %bb.m, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.m, %bb.f ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ %.19.i.i.i.i, %bb.m ], [ %.19.i.i.i.i, %bb.k ]
  %i.bc = call ptr @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRS2_RS6_EEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 2 dereferenceable(6) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  br label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread

bb.o:                                             ; preds = %bb.n, %bb.l, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !31 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 2048) #30
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !46
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bg = phi ptr [ %.pre, %bb.p ], [ %i.z, %bb.o ]
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !31
  br label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread

bb.r:                                             ; preds = %bb.e
  br i1 %.not12.i.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r
  %i.bh = load i16, ptr %1, align 8, !tbaa !54    ; 4 uses
  %i.bi = load i16, ptr %i.a, align 2             ; 4 uses
  %i.bj = load i16, ptr %i.b, align 4             ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i, %.lr.ph.i.i.i
  %.014.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i ] ; 7 uses
  %.0813.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 32
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !54 ; 2 uses
  %i.bm = icmp slt i16 %i.bl, %i.bh
  br i1 %i.bm, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = icmp eq i16 %i.bl, %i.bh
  br i1 %i.bn, label %bb.u, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 34
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !55 ; 2 uses
  %i.bq = icmp slt i16 %i.bp, %i.bi
  br i1 %i.bq, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = icmp eq i16 %i.bp, %i.bi
  br i1 %i.br, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i: ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 36
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !56
  %i.bu = icmp slt i16 %i.bt, %i.bj
  br i1 %i.bu, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.u, %bb.s
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.v, %bb.t
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ], [ 16, %bb.v ], [ 16, %bb.t ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0813.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ], [ %.014.i.i.i, %bb.v ], [ %.014.i.i.i, %bb.t ], [ %.014.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i ] ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.bv, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i6, label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %bb.s, !llvm.loop !67

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i
  %i.bw = icmp eq ptr %.19.i.i.i, %i.m
  br i1 %i.bw, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.w

bb.w:                                             ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !54 ; 2 uses
  %i.bz = icmp slt i16 %i.bh, %i.by
  br i1 %i.bz, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = icmp eq i16 %i.bh, %i.by
  br i1 %i.ca, label %bb.y, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 34
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !55 ; 2 uses
  %i.cd = icmp slt i16 %i.bi, %i.cc
  br i1 %i.cd, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = icmp eq i16 %i.bi, %i.cc
  br i1 %i.ce, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i: ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !56
  %.not18 = icmp slt i16 %i.bj, %i.cg
  br i1 %.not18, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit: ; preds = %bb.z, %bb.x, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !31 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 2048) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit
  %i.ck = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #33
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef 48) #30
  %i.cl = load i64, ptr %i.n, align 8, !tbaa !68
  %i.cm = add i64 %i.cl, -1
  store i64 %i.cm, ptr %i.n, align 8, !tbaa !68
  br label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread

_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread: ; preds = %bb.w, %bb.y, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, %bb.r, %bb.ab, %bb.q, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE7emplaceIJRS2_RS4_EEES7_ISt17_Rb_tree_iteratorIS9_EbEDpOT_.exit
  %i.cn = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #33 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %._crit_edge, !llvm.loop !69

bb.ac:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.co = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #33 ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !70 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 2097252
  %i.cs = load i8, ptr %i.cr, align 4, !tbaa !93, !range !99, !noundef !100
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.cu = load i32, ptr %i.cq, align 8, !tbaa !101
  %.off = add i32 %i.cu, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 88
  %.sroa.0.0.copyload = load i48, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 42
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !102
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !103
  call void @_ZN19MinimapUpdateThread6getMapEN4core8vector3dIsEEss(ptr noundef nonnull align 8 dereferenceable(352) %0, i48 %.sroa.0.0.copyload, i16 noundef signext %i.cx, i16 noundef signext %i.cz)
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !70
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2097252
  store i8 0, ptr %i.db, align 4, !tbaa !93
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN19MinimapUpdateThread6getMapEN4core8vector3dIsEEss(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(352) %0, i48 %1, i16 noundef signext %2, i16 noundef signext %3) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i48 %1, 16
  %4 = sext i16 %2 to i64
  %i.a = insertelement <2 x i16> poison, i16 %2, i64 0
  %i.b = insertelement <2 x i16> %i.a, i16 %3, i64 1
  %i.c = sdiv <2 x i16> %i.b, splat (i16 2)       ; 3 uses
  %i.d = lshr i48 %1, 32
  %i.e = trunc nuw i48 %i.d to i16
  %i.f = extractelement <2 x i16> %i.c, i64 0
  %i.g = sub i16 %i.e, %i.f                       ; 5 uses
  %i.h = add i16 %2, -1                           ; 3 uses
  %i.i = add i16 %i.h, %i.g                       ; 3 uses
  %i.j = sext i16 %i.g to i32                     ; 2 uses
  %i.k = add nsw i32 %i.j, -15
  %.not157158 = icmp slt i16 %i.g, 0
  %i.l = select i1 %.not157158, i32 %i.k, i32 %i.j
  %i.m = sdiv i32 %i.l, 16                        ; 2 uses
  %.sroa.534.0.extract.trunc = trunc nsw i32 %i.m to i16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 2 uses
  %.sroa.046.0.extract.trunc = trunc i48 %1 to i16
  %i.n = insertelement <2 x i16> poison, i16 %.sroa.046.0.extract.trunc, i64 0
  %i.o = insertelement <2 x i16> %i.n, i16 %.sroa.2.0.extract.trunc, i64 1
  %i.p = sub <2 x i16> %i.o, %i.c                 ; 5 uses
  %i.q = extractelement <2 x i16> %i.p, i64 0     ; 3 uses
  %i.r = insertelement <2 x i16> %i.c, i16 %i.h, i64 0
  %i.s = insertelement <2 x i16> %i.p, i16 %.sroa.2.0.extract.trunc, i64 1
  %i.t = add <2 x i16> %i.r, %i.s                 ; 2 uses
  %i.u = add i16 %i.h, %i.q
  %i.v = sext <2 x i16> %i.p to <2 x i32>         ; 2 uses
  %i.w = add nsw <2 x i32> %i.v, splat (i32 -15)
  %i.x = icmp slt <2 x i16> %i.p, zeroinitializer
  %i.y = select <2 x i1> %i.x, <2 x i32> %i.w, <2 x i32> %i.v
  %i.z = sdiv <2 x i32> %i.y, splat (i32 16)      ; 3 uses
  %i.aa = bitcast <2 x i32> %i.z to <4 x i16>
  %.sroa.032.0.extract.trunc = extractelement <4 x i16> %i.aa, i64 0
  %i.ab = bitcast <2 x i32> %i.z to <4 x i16>
  %.sroa.433.0.extract.trunc = extractelement <4 x i16> %i.ab, i64 2
  %i.ac = sext <2 x i16> %i.t to <2 x i32>        ; 2 uses
  %i.ad = add nsw <2 x i32> %i.ac, splat (i32 -15)
  %i.ae = icmp slt <2 x i16> %i.t, zeroinitializer
  %i.af = select <2 x i1> %i.ae, <2 x i32> %i.ad, <2 x i32> %i.ac
  %i.ag = sdiv <2 x i32> %i.af, splat (i32 16)    ; 3 uses
  %i.ah = sext i16 %i.i to i32                    ; 2 uses
  %i.ai = add nsw i32 %i.ah, -15
  %.not159160 = icmp slt i16 %i.i, 0
  %i.aj = select i1 %.not159160, i32 %i.ai, i32 %i.ah
  %i.ak = sdiv i32 %i.aj, 16
  %.mask.i.i64 = and i32 %i.ak, 65535
  %.sroa.3.0.insert.ext.i.i65 = zext nneg i32 %.mask.i.i64 to i48
  %.sroa.3.0.insert.shift.i.i66 = shl nuw i48 %.sroa.3.0.insert.ext.i.i65, 32
  %i.al = bitcast <2 x i32> %i.ag to <4 x i16>
  %.sroa.027.0.extract.trunc = extractelement <4 x i16> %i.al, i64 0
  %i.am = bitcast <2 x i32> %i.ag to <4 x i16>
  %.sroa.428.0.extract.trunc = extractelement <4 x i16> %i.am, i64 2
  %i.an = icmp sgt i16 %2, 0
  br i1 %i.an, label %.preheader164.lr.ph, label %.preheader163

.preheader164.lr.ph:                              ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.ap = zext nneg i16 %2 to i64                 ; 4 uses
  %xtraiter = and i64 %i.ap, 3                    ; 3 uses
  %i.aq = icmp ult i16 %2, 4
  %unroll_iter = and i64 %i.ap, 32764
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod216 = icmp ne i64 %xtraiter, 0
  br label %.preheader164

.preheader164:                                    ; preds = %.preheader164.lr.ph, %._crit_edge
  %indvars.iv194 = phi i64 [ 0, %.preheader164.lr.ph ], [ %indvars.iv.next195, %._crit_edge ] ; 2 uses
  %i.ar = mul nuw nsw i64 %indvars.iv194, %i.ap   ; 5 uses
  br i1 %i.aq, label %.epil.preheader, label %.preheader164.new

.preheader163:                                    ; preds = %._crit_edge, %bb.a
  %i.as = ashr exact i48 %.sroa.3.0.insert.shift.i.i66, 32
  %i.at = trunc nsw i48 %i.as to i32              ; 2 uses
  %.not181 = icmp sgt i32 %i.m, %i.at
  br i1 %.not181, label %._crit_edge185, label %.preheader162.lr.ph

.preheader162.lr.ph:                              ; preds = %.preheader163
  %i.au = icmp sgt <2 x i32> %i.z, %i.ag          ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ay = extractelement <2 x i1> %i.au, i64 0
  %i.az = extractelement <2 x i1> %i.au, i64 1
  %or.cond215 = select i1 %i.az, i1 true, i1 %i.ay
  br i1 %or.cond215, label %._crit_edge185, label %.preheader162.preheader

.preheader162.preheader:                          ; preds = %.preheader162.lr.ph
  %i.ba = extractelement <2 x i16> %i.p, i64 1    ; 2 uses
  br label %.preheader162

._crit_edge.unr-lcssa:                            ; preds = %.preheader164.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader164
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader164 ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod216)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !70
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 100
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.epil
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ar ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  store i16 0, ptr %i.bf, align 2, !tbaa !104
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i16 0, ptr %i.bg, align 4, !tbaa !107
  store i32 126, ptr %i.be, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !108

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond198.not = icmp eq i64 %indvars.iv.next195, %i.ap
  br i1 %exitcond198.not, label %.preheader163, label %.preheader164, !llvm.loop !110

.preheader164.new:                                ; preds = %.preheader164, %.preheader164.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader164.new ], [ 0, %.preheader164 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader164.new ], [ 0, %.preheader164 ]
  %i.bh = load ptr, ptr %i.ao, align 8, !tbaa !70
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 100
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.ar ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 6
  store i16 0, ptr %i.bl, align 2, !tbaa !104
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i16 0, ptr %i.bm, align 4, !tbaa !107
  store i32 126, ptr %i.bk, align 4
  %i.bn = load ptr, ptr %i.ao, align 8, !tbaa !70
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 108
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ar ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 6
  store i16 0, ptr %i.br, align 2, !tbaa !104
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i16 0, ptr %i.bs, align 4, !tbaa !107
  store i32 126, ptr %i.bq, align 4
  %i.bt = load ptr, ptr %i.ao, align 8, !tbaa !70
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 116
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.ar ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 6
  store i16 0, ptr %i.bx, align 2, !tbaa !104
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i16 0, ptr %i.by, align 4, !tbaa !107
  store i32 126, ptr %i.bw, align 4
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !70
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 124
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ar ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 6
  store i16 0, ptr %i.cd, align 2, !tbaa !104
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i16 0, ptr %i.ce, align 4, !tbaa !107
  store i32 126, ptr %i.cc, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader164.new, !llvm.loop !111

.preheader162:                                    ; preds = %.preheader162.preheader, %._crit_edge178
  %storemerge182 = phi i16 [ %i.ev, %._crit_edge178 ], [ %.sroa.534.0.extract.trunc, %.preheader162.preheader ] ; 4 uses
  %i.cf = shl i16 %storemerge182, 4               ; 3 uses
  %i.cg = or disjoint i16 %i.cf, 15
  %i.ch = tail call i16 @llvm.smax.i16(i16 %i.cf, i16 %i.g) ; 2 uses
  %i.ci = tail call i16 @llvm.smin.i16(i16 %i.i, i16 %i.cg) ; 2 uses
  %.not56170 = icmp sgt i16 %i.ch, %i.ci
  %i.cj = load ptr, ptr %i.av, align 8, !tbaa !36 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %._crit_edge178, label %.preheader161

.preheader161thread-pre-split:                    ; preds = %._crit_edge174
  %i.cl = add nsw i16 %storemerge51176, 1
  %.pr = load ptr, ptr %i.av, align 8, !tbaa !36
  br label %.preheader161

.preheader161:                                    ; preds = %.preheader162, %.preheader161thread-pre-split
  %i.cm = phi ptr [ %.pr, %.preheader161thread-pre-split ], [ %i.cj, %.preheader162 ]
  %storemerge51176 = phi i16 [ %i.cl, %.preheader161thread-pre-split ], [ %.sroa.433.0.extract.trunc, %.preheader162 ] ; 7 uses
  %i.cn = shl i16 %storemerge51176, 4
  %i.co = tail call i16 @llvm.smax.i16(i16 %i.cn, i16 %i.ba)
  %i.cp = sub i16 %i.co, %i.ba
  %i.cq = icmp eq ptr %i.cm, null
  br i1 %i.cq, label %._crit_edge174, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.preheader161, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread
  %storemerge53173 = phi i16 [ %i.eu, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread ], [ %.sroa.032.0.extract.trunc, %.preheader161 ] ; 7 uses
  %i.cr = load ptr, ptr %i.av, align 8, !tbaa !36 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not12.i.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i
  %.014.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i ], [ %i.cr, %.lr.ph.split ] ; 7 uses
  %.0813.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i ], [ %i.aw, %.lr.ph.split ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 32
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !54 ; 2 uses
  %i.cu = icmp slt i16 %i.ct, %storemerge53173
  br i1 %i.cu, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.cv = icmp eq i16 %i.ct, %storemerge53173
  br i1 %i.cv, label %bb.d, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.cw = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 34
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !55 ; 2 uses
  %i.cy = icmp slt i16 %i.cx, %storemerge51176
  br i1 %i.cy, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cz = icmp eq i16 %i.cx, %storemerge51176
  br i1 %i.cz, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i: ; preds = %bb.e
  %i.da = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 36
  %i.db = load i16, ptr %i.da, align 2, !tbaa !56
  %i.dc = icmp slt i16 %i.db, %storemerge182
  br i1 %i.dc, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.d, %.lr.ph.i.i.i
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0813.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ], [ %.014.i.i.i, %bb.e ], [ %.014.i.i.i, %bb.c ], [ %.014.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i ] ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.dd, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !67

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i
  %i.de = icmp eq ptr %.19.i.i.i, %i.aw
  br i1 %i.de, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !54 ; 2 uses
  %i.dh = icmp slt i16 %storemerge53173, %i.dg
  br i1 %i.dh, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.di = icmp eq i16 %storemerge53173, %i.dg
  br i1 %i.di, label %bb.h, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

bb.h:                                             ; preds = %bb.g
  %i.dj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 34
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !55 ; 2 uses
  %i.dl = icmp slt i16 %storemerge51176, %i.dk
  br i1 %i.dl, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dm = icmp eq i16 %storemerge51176, %i.dk
  br i1 %i.dm, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i: ; preds = %bb.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !56
  %i.dp = icmp slt i16 %storemerge182, %i.do
  br i1 %i.dp, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !31
  %i.ds = shl i16 %storemerge53173, 4             ; 3 uses
  %i.dt = or disjoint i16 %i.ds, 15
  %i.du = tail call i16 @llvm.smax.i16(i16 %i.ds, i16 %i.q) ; 2 uses
  %i.dv = tail call i16 @llvm.smin.i16(i16 %i.u, i16 %i.dt) ; 2 uses
  %.not58167 = icmp sgt i16 %i.du, %i.dv
  %or.cond = select i1 %.not56170, i1 true, i1 %.not58167
  br i1 %or.cond, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit, %._crit_edge169
  %storemerge55171 = phi i16 [ %i.et, %._crit_edge169 ], [ %i.ch, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit ] ; 3 uses
  %i.dw = sub i16 %storemerge55171, %i.cf
  %.sroa.3.0.insert.ext.i100 = zext i16 %i.dw to i48
  %.sroa.3.0.insert.shift.i101 = shl nuw i48 %.sroa.3.0.insert.ext.i100, 32
  %sh.diff = ashr exact i48 %.sroa.3.0.insert.shift.i101, 28
  %i.dx = zext i48 %sh.diff to i64
  %i.dy = sub i16 %storemerge55171, %i.g
  %5 = sext i16 %i.dy to i64
  %6 = mul nsw i64 %5, %4
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.l
  %storemerge57168 = phi i16 [ %i.du, %.preheader ], [ %i.es, %bb.l ] ; 3 uses
  %i.dz = sub i16 %storemerge57168, %i.ds
  %i.ea = sext i16 %i.dz to i64
  %i.eb = add nsw i64 %i.ea, %i.dx
  %sext = shl i64 %i.eb, 32
  %i.ec = ashr exact i64 %sext, 29
  %i.ed = getelementptr inbounds i8, ptr %i.dr, i64 %i.ec ; 4 uses
  %i.ee = sub i16 %storemerge57168, %i.q
  %i.ef = load ptr, ptr %i.ax, align 8, !tbaa !70
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 100
  %7 = sext i16 %i.ee to i64
  %8 = add nsw i64 %6, %7
  %9 = shl nsw i64 %8, 3
  %10 = getelementptr inbounds i8, ptr %i.eg, i64 %9 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 6
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !104
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 6 ; 2 uses
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !104
  %i.el = add i16 %i.ek, %i.ei
  store i16 %i.el, ptr %i.ej, align 2, !tbaa !104
  %i.em = load i16, ptr %i.ed, align 4, !tbaa !112
  %.not60 = icmp eq i16 %i.em, 126
  br i1 %.not60, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.en = load i32, ptr %i.ed, align 4
  store i32 %i.en, ptr %10, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ep = load i16, ptr %i.eo, align 4, !tbaa !107
  %i.eq = add i16 %i.cp, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i16 %i.eq, ptr %i.er, align 4, !tbaa !107
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.es = add i16 %storemerge57168, 1             ; 2 uses
  %.not58 = icmp sgt i16 %i.es, %i.dv
  br i1 %.not58, label %._crit_edge169, label %bb.j, !llvm.loop !113

._crit_edge169:                                   ; preds = %bb.l
  %i.et = add i16 %storemerge55171, 1             ; 2 uses
  %.not56 = icmp sgt i16 %i.et, %i.ci
  br i1 %.not56, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %.preheader, !llvm.loop !114

_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread: ; preds = %._crit_edge169, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit, %bb.f, %bb.h, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, %.lr.ph.split
  %i.eu = add nsw i16 %storemerge53173, 1
  %exitcond199 = icmp eq i16 %storemerge53173, %.sroa.027.0.extract.trunc
  br i1 %exitcond199, label %._crit_edge174, label %.lr.ph.split, !llvm.loop !115

._crit_edge174:                                   ; preds = %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, %.preheader161
  %exitcond200 = icmp eq i16 %storemerge51176, %.sroa.428.0.extract.trunc
  br i1 %exitcond200, label %._crit_edge178, label %.preheader161thread-pre-split, !llvm.loop !117

._crit_edge178:                                   ; preds = %._crit_edge174, %.preheader162
  %i.ev = add i16 %storemerge182, 1               ; 2 uses
  %i.ew = sext i16 %i.ev to i32
  %.not = icmp sgt i32 %i.ew, %i.at
  br i1 %.not, label %._crit_edge185, label %.preheader162, !llvm.loop !118

._crit_edge185:                                   ; preds = %._crit_edge178, %.preheader162.lr.ph, %.preheader163
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7MinimapC2EP6Client(ptr noundef nonnull align 8 dereferenceable(192) initializes((0, 88), (104, 192)) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %class.irr_ptr, align 8            ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, i8 0, i64 88, i1 false)
  store ptr %1, ptr %i.c, align 8, !tbaa !119
  %i.n = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !157 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !159  ; 3 uses
  %.not2.i = icmp eq ptr %i.p, null
  br i1 %.not2.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  invoke void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15RenderingEngine16get_video_driverEv) #34
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZN15RenderingEngine16get_video_driverEv.exit unwind label %bb.x, !inline_history !171

_ZN15RenderingEngine16get_video_driverEv.exit:    ; preds = %bb.d
  store ptr %i.t, ptr %0, align 8, !tbaa !172
  %i.u = invoke noundef ptr @_ZN6Client16getTextureSourceEv(ptr noundef nonnull align 8 dereferenceable(1674) %1)
          to label %bb.e unwind label %bb.x

bb.e:                                             ; preds = %_ZN15RenderingEngine16get_video_driverEv.exit
  store ptr %i.u, ptr %i.e, align 8, !tbaa !173
  %i.v = load ptr, ptr %1, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(1674) %1)
          to label %bb.f unwind label %bb.x

bb.f:                                             ; preds = %bb.e
  store ptr %i.y, ptr %i.f, align 8, !tbaa !174
  %i.z = load ptr, ptr %1, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(1674) %1)
          to label %.noexc.i unwind label %bb.x

.noexc.i:                                         ; preds = %bb.f
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !175
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float 0.000000e+00, ptr %i.ad, align 4, !tbaa !176
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.ae, align 8, !tbaa !177
  %i.af = load ptr, ptr @g_settings, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.ag, ptr %2, align 8, !tbaa !180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 26, ptr %i.b, align 8, !tbaa !181
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc50 unwind label %bb.y   ; 2 uses

.noexc50:                                         ; preds = %.noexc.i
  store ptr %i.ah, ptr %2, align 8, !tbaa !182
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !181 ; 3 uses
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.ah, ptr noundef nonnull align 1 dereferenceable(26) @.str, i64 26, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !184
  %i.ak = load ptr, ptr %2, align 8, !tbaa !182
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.am = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.z

bb.g:                                             ; preds = %.noexc50
  %i.an = select i1 %i.am, i16 256, i16 128
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i16 %i.an, ptr %i.ao, align 8, !tbaa !185
  %i.ap = load ptr, ptr %2, align 8, !tbaa !182   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ag
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ar = load i64, ptr %i.ag, align 8, !tbaa !183
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.at, ptr %3, align 8, !tbaa !180
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !184
  store i8 0, ptr %i.at, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.av, ptr %4, align 8, !tbaa !180
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !184
  store i8 0, ptr %i.av, align 8, !tbaa !183
  invoke void @_ZN7Minimap7addModeE11MinimapTypetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_t(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef 0, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i16 noundef zeroext 1)
          to label %bb.h unwind label %bb.aa

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !182   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.av
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.h
  %i.az = load i64, ptr %i.av, align 8, !tbaa !183
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
end_hunk_0
