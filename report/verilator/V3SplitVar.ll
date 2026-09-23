Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3SplitVar?download=true
inline.NumInlined: 4984
inline.NumDeleted: 1817
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESC_:bb.a
bb.g:                                             ; preds = %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !428
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #24
  br label %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_E.exit

_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_E.exit: ; preds = %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 104) #24
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !72
  %i.ae = add i64 %i.ad, -1
  store i64 %i.ae, ptr %i.m, align 8, !tbaa !72
  %.not = icmp eq ptr %i.n, %2
  br i1 %.not, label %.loopexit, label %bb.e, !llvm.loop !1003

.loopexit:                                        ; preds = %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_E.exit, %.critedge, %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt3mapIP6AstVar12PackedVarRef17AstNodeComparatorSaISt4pairIKS1_S2_EEE7emplaceIJRS1_S2_EEES4_ISt17_Rb_tree_iteratorIS6_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.f
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %bb.f ], [ %i.b, %bb.a ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %bb.f ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !92   ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !92     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !286
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !286
  %i.k = tail call noundef i32 @_ZNK8FileLine15operatorCompareERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j) ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 140 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !287
  %i.o = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4, !tbaa !96 ; 4 uses
  %i.p = icmp ne i32 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = and i64 %i.r, 4294967295
  %.not8.i.i.i.i.i = icmp eq i64 %i.s, 0
  %.not.i.i.i.i.i = select i1 %i.p, i1 true, i1 %.not8.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i.i.i.i, !prof !56

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %i.u = add i64 %i.t, 1                          ; 3 uses
  store i64 %i.u, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = and i64 %i.u, 4294967295
  store i64 %.sroa.0.0.insert.ext.i.i.i.i.i.i, ptr %i.q, align 8, !tbaa !63
  store i32 %i.o, ptr %i.m, align 4, !tbaa !287
  br label %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i.i.i.i

_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %.0.in.i.i.i.i.i = phi i64 [ %i.u, %bb.c ], [ %i.r, %bb.b ]
  %sext.i.i.i.i.i = shl i64 %.0.in.i.i.i.i.i, 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 140 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !287
  %i.x = icmp ne i32 %i.w, %i.o
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i64 %i.z, 4294967295
  %.not8.i7.i.i.i.i = icmp eq i64 %i.aa, 0
  %.not.i8.i.i.i.i = select i1 %i.x, i1 true, i1 %.not8.i7.i.i.i.i
  br i1 %.not.i8.i.i.i.i, label %bb.d, label %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i.i.i, !prof !56

bb.d:                                             ; preds = %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i.i.i.i
  %i.ab = load i64, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %i.ac = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ac, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %.sroa.0.0.insert.ext.i.i12.i.i.i.i = and i64 %i.ac, 4294967295
  store i64 %.sroa.0.0.insert.ext.i.i12.i.i.i.i, ptr %i.y, align 8, !tbaa !63
  store i32 %i.o, ptr %i.v, align 4, !tbaa !287
  br label %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i.i.i

_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i.i.i: ; preds = %bb.d, %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i.i.i.i
  %.0.in.i9.i.i.i.i = phi i64 [ %i.ac, %bb.d ], [ %i.z, %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i.i.i.i ]
  %sext.i10.i.i.i.i = shl i64 %.0.in.i9.i.i.i.i, 32
  %i.ad = icmp ult i64 %sext.i.i.i.i.i, %sext.i10.i.i.i.i
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i.i.i, %.split.i.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i.i.i, %.split.i.i.i
  %.sink.i.i.i = phi i64 [ 24, %bb.e ], [ 16, %.split.i.i.i ], [ 16, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0811.i.i.i, %bb.e ], [ %.012.i.i.i, %.split.i.i.i ], [ %.012.i.i.i, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i.i.i ] ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !240 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIP6AstVar12PackedVarRef17AstNodeComparatorSaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !19

_ZNSt3mapIP6AstVar12PackedVarRef17AstNodeComparatorSaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit: ; preds = %bb.f
  %i.af = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.af, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIP6AstVar12PackedVarRef17AstNodeComparatorSaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit
  %i.ag = load ptr, ptr %1, align 8, !tbaa !92    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !409 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !286
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !286
  %i.an = tail call noundef i32 @_ZNK8FileLine15operatorCompareERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 8 dereferenceable(48) %i.am) ; 2 uses
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %bb.h, label %.split

.split:                                           ; preds = %bb.g
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.critedge, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 140 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !287
  %i.ar = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4, !tbaa !96 ; 4 uses
  %i.as = icmp ne i32 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 144 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = and i64 %i.au, 4294967295
  %.not8.i.i = icmp eq i64 %i.av, 0
  %.not.i.i = select i1 %i.as, i1 true, i1 %.not8.i.i
  br i1 %.not.i.i, label %bb.i, label %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i, !prof !56

bb.i:                                             ; preds = %bb.h
  %i.aw = load i64, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %i.ax = add i64 %i.aw, 1                        ; 3 uses
  store i64 %i.ax, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.ax, 4294967295
  store i64 %.sroa.0.0.insert.ext.i.i.i, ptr %i.at, align 8, !tbaa !63
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !287
  br label %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i

_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i:  ; preds = %bb.i, %bb.h
  %.0.in.i.i = phi i64 [ %i.ax, %bb.i ], [ %i.au, %bb.h ]
  %sext.i.i = shl i64 %.0.in.i.i, 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 140 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !287
  %i.ba = icmp ne i32 %i.az, %i.ar
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 144 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = and i64 %i.bc, 4294967295
  %.not8.i7.i = icmp eq i64 %i.bd, 0
  %.not.i8.i = select i1 %i.ba, i1 true, i1 %.not8.i7.i
  br i1 %.not.i8.i, label %bb.j, label %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit, !prof !56

bb.j:                                             ; preds = %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i
  %i.be = load i64, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %i.bf = add i64 %i.be, 1                        ; 3 uses
  store i64 %i.bf, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %.sroa.0.0.insert.ext.i.i12.i = and i64 %i.bf, 4294967295
  store i64 %.sroa.0.0.insert.ext.i.i12.i, ptr %i.bb, align 8, !tbaa !63
  store i32 %i.ar, ptr %i.ay, align 4, !tbaa !287
  br label %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit

_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit:     ; preds = %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i, %bb.j
  %.0.in.i9.i = phi i64 [ %i.bf, %bb.j ], [ %i.bc, %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i ]
  %sext.i10.i = shl i64 %.0.in.i9.i, 32
  %i.bg = icmp ult i64 %sext.i.i, %sext.i10.i
  br i1 %i.bg, label %.critedge, label %bb.k

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIP6AstVar12PackedVarRef17AstNodeComparatorSaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit, %.split, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit
  %.08.lcssa.i.i.i20 = phi ptr [ %.19.i.i.i, %.split ], [ %.19.i.i.i, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit ], [ %.19.i.i.i, %_ZNSt3mapIP6AstVar12PackedVarRef17AstNodeComparatorSaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit ], [ %i.c, %bb.a ]
  %i.bh = tail call ptr @_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE22_M_emplace_hint_uniqueIJRS1_S4_EEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %2)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit, %.split, %.critedge
  %.sroa.018.0 = phi ptr [ %i.bh, %.critedge ], [ %.19.i.i.i, %.split ], [ %.19.i.i.i, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %.split ], [ 0, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.018.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE22_M_emplace_hint_uniqueIJRS1_S4_EEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Rb_tree<AstVar *, std::pair<AstVar *const, PackedVarRef>, std::_Select1st<std::pair<AstVar *const, PackedVarRef>>, AstNodeComparator>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %0, ptr %4, align 8, !tbaa !1004
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #28 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !92
  store ptr %i.d, ptr %i.c, align 8, !tbaa !409
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.f = load <2 x ptr>, ptr %3, align 8, !tbaa !435
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !435
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !428
  store ptr %7, ptr %5, align 8, !tbaa !428
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !435
  store <2 x ptr> %i.i, ptr %i.g, align 8, !tbaa !435
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  store ptr %i.l, ptr %i.j, align 8, !tbaa !428
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.m, ptr noundef nonnull align 8 dereferenceable(9) %i.n, i64 9, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !446
  %i.o = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.p = extractvalue { ptr, ptr } %i.o, 0        ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.o, 1        ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = invoke ptr @_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSC_PSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.b)
          to label %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE10_Auto_nodeD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %i.s

bb.e:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !412  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !428
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #24
  br label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !412  ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit.i.i.i.i.i
  %i.z = load ptr, ptr %5, align 8, !tbaa !428
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #24
  br label %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i

_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i: ; preds = %bb.g, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 104) #24
  br label %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.c, %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i
  %.sroa.0.09 = phi ptr [ %i.p, %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i ], [ %i.r, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret ptr %.sroa.0.09
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !72
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !240
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92   ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !92     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !286
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !286
  %i.n = tail call noundef i32 @_ZNK8FileLine15operatorCompareERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.m) ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.d, label %.split

.split:                                           ; preds = %bb.c
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 140 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !287
  %i.r = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4, !tbaa !96 ; 4 uses
  %i.s = icmp ne i32 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = and i64 %i.u, 4294967295
  %.not8.i.i = icmp eq i64 %i.v, 0
  %.not.i.i = select i1 %i.s, i1 true, i1 %.not8.i.i
  br i1 %.not.i.i, label %bb.e, label %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i, !prof !56

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %i.x = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.x, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.x, 4294967295
  store i64 %.sroa.0.0.insert.ext.i.i.i, ptr %i.t, align 8, !tbaa !63
  store i32 %i.r, ptr %i.p, align 4, !tbaa !287
  br label %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i

_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i:  ; preds = %bb.e, %bb.d
  %.0.in.i.i = phi i64 [ %i.x, %bb.e ], [ %i.u, %bb.d ]
  %sext.i.i = shl i64 %.0.in.i.i, 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 140 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !287
  %i.aa = icmp ne i32 %i.z, %i.r
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 144 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = and i64 %i.ac, 4294967295
  %.not8.i7.i = icmp eq i64 %i.ad, 0
  %.not.i8.i = select i1 %i.aa, i1 true, i1 %.not8.i7.i
  br i1 %.not.i8.i, label %bb.f, label %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit, !prof !56

bb.f:                                             ; preds = %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i
  %i.ae = load i64, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %i.af = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.af, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %.sroa.0.0.insert.ext.i.i12.i = and i64 %i.af, 4294967295
  store i64 %.sroa.0.0.insert.ext.i.i12.i, ptr %i.ab, align 8, !tbaa !63
  store i32 %i.r, ptr %i.y, align 4, !tbaa !287
  br label %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit

_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit:     ; preds = %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i, %bb.f
  %.0.in.i9.i = phi i64 [ %i.af, %bb.f ], [ %i.ac, %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i ]
  %sext.i10.i = shl i64 %.0.in.i9.i, 32
  %i.ag = icmp ult i64 %sext.i.i, %sext.i10.i
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !240
  br label %bb.ae

bb.h:                                             ; preds = %.split, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit, %bb.b
  %i.ai = tail call { ptr, ptr } @_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0
  %i.ak = extractvalue { ptr, ptr } %i.ai, 1
  br label %bb.ae

bb.i:                                             ; preds = %bb.a
  %i.al = load ptr, ptr %2, align 8, !tbaa !92    ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !92 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !286
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !286
  %i.as = tail call noundef i32 @_ZNK8FileLine15operatorCompareERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.ar) ; 2 uses
  %.not.i10 = icmp eq i32 %i.as, 0
  br i1 %.not.i10, label %bb.j, label %.split91

.split91:                                         ; preds = %bb.i
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.m, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 140 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !287
  %i.aw = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4, !tbaa !96 ; 4 uses
  %i.ax = icmp ne i32 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 144 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = and i64 %i.az, 4294967295
  %.not8.i.i12 = icmp eq i64 %i.ba, 0
  %.not.i.i13 = select i1 %i.ax, i1 true, i1 %.not8.i.i12
  br i1 %.not.i.i13, label %bb.k, label %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i14, !prof !56

bb.k:                                             ; preds = %bb.j
  %i.bb = load i64, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %i.bc = add i64 %i.bb, 1                        ; 3 uses
  store i64 %i.bc, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %.sroa.0.0.insert.ext.i.i.i23 = and i64 %i.bc, 4294967295
  store i64 %.sroa.0.0.insert.ext.i.i.i23, ptr %i.ay, align 8, !tbaa !63
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !287
  br label %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i14

_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i14: ; preds = %bb.k, %bb.j
  %.0.in.i.i15 = phi i64 [ %i.bc, %bb.k ], [ %i.az, %bb.j ]
  %sext.i.i16 = shl i64 %.0.in.i.i15, 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 140 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !287
  %i.bf = icmp ne i32 %i.be, %i.aw
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 144 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.bi = and i64 %i.bh, 4294967295
  %.not8.i7.i17 = icmp eq i64 %i.bi, 0
  %.not.i8.i18 = select i1 %i.bf, i1 true, i1 %.not8.i7.i17
  br i1 %.not.i8.i18, label %bb.l, label %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit24, !prof !56

bb.l:                                             ; preds = %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i14
  %i.bj = load i64, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %i.bk = add i64 %i.bj, 1                        ; 3 uses
  store i64 %i.bk, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %.sroa.0.0.insert.ext.i.i12.i22 = and i64 %i.bk, 4294967295
  store i64 %.sroa.0.0.insert.ext.i.i12.i22, ptr %i.bg, align 8, !tbaa !63
  store i32 %i.aw, ptr %i.bd, align 4, !tbaa !287
  br label %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit24

_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit24:   ; preds = %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i14, %bb.l
  %.0.in.i9.i20 = phi i64 [ %i.bk, %bb.l ], [ %i.bh, %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i14 ]
  %sext.i10.i21 = shl i64 %.0.in.i9.i20, 32
  %i.bl = icmp ult i64 %sext.i.i16, %sext.i10.i21
  br i1 %i.bl, label %bb.m, label %bb.t

bb.m:                                             ; preds = %.split91, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit24
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !240 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, %1
  br i1 %i.bo, label %bb.ae, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #26 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !92 ; 3 uses
  %i.bs = load ptr, ptr %2, align 8, !tbaa !92    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !286
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !286
  %i.bx = tail call noundef i32 @_ZNK8FileLine15operatorCompareERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.bu, ptr noundef nonnull align 8 dereferenceable(48) %i.bw) ; 2 uses
  %.not.i25 = icmp eq i32 %i.bx, 0
  br i1 %.not.i25, label %bb.o, label %.split92

.split92:                                         ; preds = %bb.n
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 140 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !287
  %i.cb = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4, !tbaa !96 ; 4 uses
  %i.cc = icmp ne i32 %i.ca, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 144 ; 2 uses
end_hunk_0
