Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/minimap?download=true
inline.NumInlined: 2133
inline.NumDeleted: 822
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN19MinimapUpdateThread8doUpdateEv:bb.a
  %.1.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !62 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %bb.g, !llvm.loop !1

_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %i.aq = icmp eq ptr %.19.i.i.i.i, %i.m
  br i1 %i.aq, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE7emplaceIJRS2_RS4_EEES7_ISt17_Rb_tree_iteratorIS9_EbEDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !51 ; 2 uses
  %i.at = icmp slt i16 %i.ab, %i.as
  br i1 %i.at, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE7emplaceIJRS2_RS4_EEES7_ISt17_Rb_tree_iteratorIS9_EbEDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = icmp eq i16 %i.ab, %i.as
  br i1 %i.au, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 34
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !52 ; 2 uses
  %i.ax = icmp slt i16 %i.ac, %i.aw
  br i1 %i.ax, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE7emplaceIJRS2_RS4_EEES7_ISt17_Rb_tree_iteratorIS9_EbEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = icmp eq i16 %i.ac, %i.aw
  br i1 %i.ay, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, label %bb.o

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i: ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !53
  %i.bb = icmp slt i16 %i.ad, %i.ba
  br i1 %i.bb, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE7emplaceIJRS2_RS4_EEES7_ISt17_Rb_tree_iteratorIS9_EbEDpOT_.exit, label %bb.o

_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE7emplaceIJRS2_RS4_EEES7_ISt17_Rb_tree_iteratorIS9_EbEDpOT_.exit: ; preds = %bb.f, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %bb.k, %bb.m, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.m, %bb.f ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ %.19.i.i.i.i, %bb.m ], [ %.19.i.i.i.i, %bb.k ]
  %i.bc = call ptr @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRS2_RS6_EEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 2 dereferenceable(6) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  br label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread

bb.o:                                             ; preds = %bb.n, %bb.l, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !39 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 2048) #30
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !50
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bg = phi ptr [ %.pre, %bb.p ], [ %i.z, %bb.o ]
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !39
  br label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread

bb.r:                                             ; preds = %bb.e
  br i1 %.not12.i.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r
  %i.bh = load i16, ptr %1, align 8, !tbaa !51    ; 4 uses
  %i.bi = load i16, ptr %i.a, align 2             ; 4 uses
  %i.bj = load i16, ptr %i.b, align 4             ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i, %.lr.ph.i.i.i
  %.014.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i ] ; 7 uses
  %.0813.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 32
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !51 ; 2 uses
  %i.bm = icmp slt i16 %i.bl, %i.bh
  br i1 %i.bm, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = icmp eq i16 %i.bl, %i.bh
  br i1 %i.bn, label %bb.u, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 34
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !52 ; 2 uses
  %i.bq = icmp slt i16 %i.bp, %i.bi
  br i1 %i.bq, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = icmp eq i16 %i.bp, %i.bi
  br i1 %i.br, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i: ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 36
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !53
  %i.bu = icmp slt i16 %i.bt, %i.bj
  br i1 %i.bu, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.u, %bb.s
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.v, %bb.t
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ], [ 16, %bb.v ], [ 16, %bb.t ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0813.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ], [ %.014.i.i.i, %bb.v ], [ %.014.i.i.i, %bb.t ], [ %.014.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i ] ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.bv, align 8, !tbaa !62 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i6, label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %bb.s, !llvm.loop !1

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i
  %i.bw = icmp eq ptr %.19.i.i.i, %i.m
  br i1 %i.bw, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.w

bb.w:                                             ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !51 ; 2 uses
  %i.bz = icmp slt i16 %i.bh, %i.by
  br i1 %i.bz, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = icmp eq i16 %i.bh, %i.by
  br i1 %i.ca, label %bb.y, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 34
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !52 ; 2 uses
  %i.cd = icmp slt i16 %i.bi, %i.cc
  br i1 %i.cd, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = icmp eq i16 %i.bi, %i.cc
  br i1 %i.ce, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i: ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !53
  %.not18 = icmp slt i16 %i.bj, %i.cg
  br i1 %.not18, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit: ; preds = %bb.z, %bb.x, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !39 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 2048) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit
  %i.ck = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #33
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef 48) #30
  %i.cl = load i64, ptr %i.n, align 8, !tbaa !63
  %i.cm = add i64 %i.cl, -1
  store i64 %i.cm, ptr %i.n, align 8, !tbaa !63
  br label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread

_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread: ; preds = %bb.w, %bb.y, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, %bb.r, %bb.ab, %bb.q, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE7emplaceIJRS2_RS4_EEES7_ISt17_Rb_tree_iteratorIS9_EbEDpOT_.exit
  %i.cn = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #33 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %._crit_edge, !llvm.loop !299

bb.ac:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.co = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #33 ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !86 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 2097252
  %i.cs = load i8, ptr %i.cr, align 4, !tbaa !92, !range !93, !noundef !94
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.cu = load i32, ptr %i.cq, align 8, !tbaa !95
  %.off = add i32 %i.cu, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 88
  %.sroa.0.0.copyload = load i48, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 42
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !96
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !97
  call void @_ZN19MinimapUpdateThread6getMapEN4core8vector3dIsEEss(ptr noundef nonnull align 8 dereferenceable(352) %0, i48 %.sroa.0.0.copyload, i16 noundef signext %i.cx, i16 noundef signext %i.cz)
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !86
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2097252
  store i8 0, ptr %i.db, align 4, !tbaa !92
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN19MinimapUpdateThread6getMapEN4core8vector3dIsEEss(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(352) %0, i48 %1, i16 noundef signext %2, i16 noundef signext %3) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i48 %1, 16
  %i.a = sext i16 %2 to i32                       ; 2 uses
  %i.b = insertelement <2 x i16> poison, i16 %2, i64 0
  %i.c = insertelement <2 x i16> %i.b, i16 %3, i64 1
  %i.d = sdiv <2 x i16> %i.c, splat (i16 2)       ; 3 uses
  %i.e = lshr i48 %1, 32
  %i.f = trunc nuw i48 %i.e to i16
  %i.g = extractelement <2 x i16> %i.d, i64 0
  %i.h = sub i16 %i.f, %i.g                       ; 4 uses
  %i.i = add i16 %2, -1                           ; 3 uses
  %i.j = add i16 %i.i, %i.h                       ; 2 uses
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 2 uses
  %.sroa.046.0.extract.trunc = trunc i48 %1 to i16
  %i.k = insertelement <2 x i16> poison, i16 %.sroa.046.0.extract.trunc, i64 0
  %i.l = insertelement <2 x i16> %i.k, i16 %.sroa.2.0.extract.trunc, i64 1
  %i.m = sub <2 x i16> %i.l, %i.d                 ; 5 uses
  %i.n = extractelement <2 x i16> %i.m, i64 0     ; 3 uses
  %i.o = insertelement <2 x i16> %i.d, i16 %i.i, i64 0
  %i.p = insertelement <2 x i16> %i.m, i16 %.sroa.2.0.extract.trunc, i64 1
  %i.q = add <2 x i16> %i.o, %i.p                 ; 2 uses
  %i.r = add i16 %i.i, %i.n
  %i.s = sext <2 x i16> %i.m to <2 x i32>         ; 2 uses
  %i.t = add nsw <2 x i32> %i.s, splat (i32 -15)
  %i.u = icmp slt <2 x i16> %i.m, zeroinitializer
  %i.v = select <2 x i1> %i.u, <2 x i32> %i.t, <2 x i32> %i.s
  %i.w = sdiv <2 x i32> %i.v, splat (i32 16)      ; 3 uses
  %i.x = bitcast <2 x i32> %i.w to <4 x i16>
  %.sroa.032.0.extract.trunc = extractelement <4 x i16> %i.x, i64 0
  %i.y = bitcast <2 x i32> %i.w to <4 x i16>
  %.sroa.433.0.extract.trunc = extractelement <4 x i16> %i.y, i64 2
  %i.z = sext <2 x i16> %i.q to <2 x i32>         ; 2 uses
  %i.aa = add nsw <2 x i32> %i.z, splat (i32 -15)
  %i.ab = icmp slt <2 x i16> %i.q, zeroinitializer
  %i.ac = select <2 x i1> %i.ab, <2 x i32> %i.aa, <2 x i32> %i.z
  %i.ad = sdiv <2 x i32> %i.ac, splat (i32 16)    ; 3 uses
  %4 = insertelement <2 x i16> poison, i16 %i.h, i64 0
  %5 = insertelement <2 x i16> %4, i16 %i.j, i64 1 ; 2 uses
  %6 = sext <2 x i16> %5 to <2 x i32>             ; 2 uses
  %7 = add nsw <2 x i32> %6, splat (i32 -15)
  %8 = icmp slt <2 x i16> %5, zeroinitializer
  %9 = select <2 x i1> %8, <2 x i32> %7, <2 x i32> %6
  %10 = sdiv <2 x i32> %9, splat (i32 16)         ; 2 uses
  %11 = extractelement <2 x i32> %10, i64 0       ; 2 uses
  %.sroa.534.0.extract.trunc = trunc nsw i32 %11 to i16
  %12 = extractelement <2 x i32> %10, i64 1
  %.mask.i.i64 = and i32 %12, 65535
  %.sroa.3.0.insert.ext.i.i65 = zext nneg i32 %.mask.i.i64 to i48
  %.sroa.3.0.insert.shift.i.i66 = shl nuw i48 %.sroa.3.0.insert.ext.i.i65, 32
  %i.ae = bitcast <2 x i32> %i.ad to <4 x i16>
  %.sroa.027.0.extract.trunc = extractelement <4 x i16> %i.ae, i64 0
  %i.af = bitcast <2 x i32> %i.ad to <4 x i16>
  %.sroa.428.0.extract.trunc = extractelement <4 x i16> %i.af, i64 2
  %i.ag = icmp sgt i16 %2, 0
  br i1 %i.ag, label %.preheader164.lr.ph, label %.preheader163

.preheader164.lr.ph:                              ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.ai = zext nneg i32 %i.a to i64               ; 4 uses
  %xtraiter = and i64 %i.ai, 3                    ; 3 uses
  %i.aj = icmp ult i16 %2, 4
  %unroll_iter = and i64 %i.ai, 32764
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod216 = icmp ne i64 %xtraiter, 0
  br label %.preheader164

.preheader164:                                    ; preds = %.preheader164.lr.ph, %._crit_edge
  %indvars.iv194 = phi i64 [ 0, %.preheader164.lr.ph ], [ %indvars.iv.next195, %._crit_edge ] ; 2 uses
  %i.ak = mul nuw nsw i64 %indvars.iv194, %i.ai   ; 5 uses
  br i1 %i.aj, label %.epil.preheader, label %.preheader164.new

.preheader163:                                    ; preds = %._crit_edge, %bb.a
  %i.al = ashr exact i48 %.sroa.3.0.insert.shift.i.i66, 32
  %i.am = trunc nsw i48 %i.al to i32              ; 2 uses
  %.not181 = icmp sgt i32 %11, %i.am
  br i1 %.not181, label %._crit_edge185, label %.preheader162.lr.ph

.preheader162.lr.ph:                              ; preds = %.preheader163
  %i.an = icmp sgt <2 x i32> %i.w, %i.ad          ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ar = extractelement <2 x i1> %i.an, i64 0
  %i.as = extractelement <2 x i1> %i.an, i64 1
  %or.cond215 = select i1 %i.as, i1 true, i1 %i.ar
  br i1 %or.cond215, label %._crit_edge185, label %.preheader162.preheader

.preheader162.preheader:                          ; preds = %.preheader162.lr.ph
  %i.at = extractelement <2 x i16> %i.m, i64 1    ; 2 uses
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
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !86
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 100
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.epil
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ak ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 6
  store i16 0, ptr %i.ay, align 2, !tbaa !100
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i16 0, ptr %i.az, align 4, !tbaa !101
  store i32 126, ptr %i.ax, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !300

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond198.not = icmp eq i64 %indvars.iv.next195, %i.ai
  br i1 %exitcond198.not, label %.preheader163, label %.preheader164, !llvm.loop !301

.preheader164.new:                                ; preds = %.preheader164, %.preheader164.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader164.new ], [ 0, %.preheader164 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader164.new ], [ 0, %.preheader164 ]
  %i.ba = load ptr, ptr %i.ah, align 8, !tbaa !86
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 100
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ak ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 6
  store i16 0, ptr %i.be, align 2, !tbaa !100
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i16 0, ptr %i.bf, align 4, !tbaa !101
  store i32 126, ptr %i.bd, align 4
  %i.bg = load ptr, ptr %i.ah, align 8, !tbaa !86
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 108
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ak ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 6
  store i16 0, ptr %i.bk, align 2, !tbaa !100
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i16 0, ptr %i.bl, align 4, !tbaa !101
  store i32 126, ptr %i.bj, align 4
  %i.bm = load ptr, ptr %i.ah, align 8, !tbaa !86
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 116
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.ak ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 6
  store i16 0, ptr %i.bq, align 2, !tbaa !100
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i16 0, ptr %i.br, align 4, !tbaa !101
  store i32 126, ptr %i.bp, align 4
  %i.bs = load ptr, ptr %i.ah, align 8, !tbaa !86
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 124
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.ak ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 6
  store i16 0, ptr %i.bw, align 2, !tbaa !100
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i16 0, ptr %i.bx, align 4, !tbaa !101
  store i32 126, ptr %i.bv, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader164.new, !llvm.loop !302

.preheader162:                                    ; preds = %.preheader162.preheader, %._crit_edge178
  %storemerge182 = phi i16 [ %i.eu, %._crit_edge178 ], [ %.sroa.534.0.extract.trunc, %.preheader162.preheader ] ; 4 uses
  %i.by = shl i16 %storemerge182, 4               ; 3 uses
  %i.bz = or disjoint i16 %i.by, 15
  %i.ca = tail call i16 @llvm.smax.i16(i16 %i.by, i16 %i.h) ; 2 uses
  %i.cb = tail call i16 @llvm.smin.i16(i16 %i.j, i16 %i.bz) ; 2 uses
  %.not56170 = icmp sgt i16 %i.ca, %i.cb
  %i.cc = load ptr, ptr %i.ao, align 8, !tbaa !40 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %._crit_edge178, label %.preheader161

.preheader161thread-pre-split:                    ; preds = %._crit_edge174
  %i.ce = add nsw i16 %storemerge51176, 1
  %.pr = load ptr, ptr %i.ao, align 8, !tbaa !40
  br label %.preheader161

.preheader161:                                    ; preds = %.preheader162, %.preheader161thread-pre-split
  %i.cf = phi ptr [ %.pr, %.preheader161thread-pre-split ], [ %i.cc, %.preheader162 ]
  %storemerge51176 = phi i16 [ %i.ce, %.preheader161thread-pre-split ], [ %.sroa.433.0.extract.trunc, %.preheader162 ] ; 7 uses
  %i.cg = shl i16 %storemerge51176, 4
  %i.ch = tail call i16 @llvm.smax.i16(i16 %i.cg, i16 %i.at)
  %i.ci = sub i16 %i.ch, %i.at
  %i.cj = icmp eq ptr %i.cf, null
  br i1 %i.cj, label %._crit_edge174, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.preheader161, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread
  %storemerge53173 = phi i16 [ %i.et, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread ], [ %.sroa.032.0.extract.trunc, %.preheader161 ] ; 7 uses
  %i.ck = load ptr, ptr %i.ao, align 8, !tbaa !40 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not12.i.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i
  %.014.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i ], [ %i.ck, %.lr.ph.split ] ; 7 uses
  %.0813.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i ], [ %i.ap, %.lr.ph.split ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 32
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !51 ; 2 uses
  %i.cn = icmp slt i16 %i.cm, %storemerge53173
  br i1 %i.cn, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.co = icmp eq i16 %i.cm, %storemerge53173
  br i1 %i.co, label %bb.d, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.cp = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 34
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !52 ; 2 uses
  %i.cr = icmp slt i16 %i.cq, %storemerge51176
  br i1 %i.cr, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cs = icmp eq i16 %i.cq, %storemerge51176
  br i1 %i.cs, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i: ; preds = %bb.e
  %i.ct = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 36
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !53
  %i.cv = icmp slt i16 %i.cu, %storemerge182
  br i1 %i.cv, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.d, %.lr.ph.i.i.i
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0813.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ], [ %.014.i.i.i, %bb.e ], [ %.014.i.i.i, %bb.c ], [ %.014.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i ] ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.cw, align 8, !tbaa !62 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i
  %i.cx = icmp eq ptr %.19.i.i.i, %i.ap
  br i1 %i.cx, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !51 ; 2 uses
  %i.da = icmp slt i16 %storemerge53173, %i.cz
  br i1 %i.da, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.db = icmp eq i16 %storemerge53173, %i.cz
  br i1 %i.db, label %bb.h, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

bb.h:                                             ; preds = %bb.g
  %i.dc = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 34
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !52 ; 2 uses
  %i.de = icmp slt i16 %storemerge51176, %i.dd
  br i1 %i.de, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.df = icmp eq i16 %storemerge51176, %i.dd
  br i1 %i.df, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i: ; preds = %bb.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !53
  %i.di = icmp slt i16 %storemerge182, %i.dh
  br i1 %i.di, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !39
  %i.dl = shl i16 %storemerge53173, 4             ; 3 uses
  %i.dm = or disjoint i16 %i.dl, 15
  %i.dn = tail call i16 @llvm.smax.i16(i16 %i.dl, i16 %i.n) ; 2 uses
  %i.do = tail call i16 @llvm.smin.i16(i16 %i.r, i16 %i.dm) ; 2 uses
  %.not58167 = icmp sgt i16 %i.dn, %i.do
  %or.cond = select i1 %.not56170, i1 true, i1 %.not58167
  br i1 %or.cond, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %.preheader
end_hunk_0
