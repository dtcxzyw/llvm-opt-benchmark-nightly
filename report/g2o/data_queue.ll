Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/data_queue?download=true
inline.NumInlined: 171
inline.NumDeleted: 86
begin_hunk_0_@_ZNK3g2o9DataQueue5afterEd:bb.a
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.l = load double, ptr %i.k, align 8, !tbaa !20
  %i.m = fcmp olt double %1, %i.l                 ; 2 uses
  %.19.i.i.i = select i1 %i.m, ptr %.012.i.i.i, ptr %.0811.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.m, i64 16, i64 24
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !21 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt3mapIdPN3g2o9RobotDataESt4lessIdESaISt4pairIKdS2_EEE11upper_boundERS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !22

_ZNKSt3mapIdPN3g2o9RobotDataESt4lessIdESaISt4pairIKdS2_EEE11upper_boundERS6_.exit: ; preds = %.lr.ph.i.i.i
  %i.n = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNKSt3mapIdPN3g2o9RobotDataESt4lessIdESaISt4pairIKdS2_EEE11upper_boundERS6_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZNKSt3mapIdPN3g2o9RobotDataESt4lessIdESaISt4pairIKdS2_EEE11upper_boundERS6_.exit, %bb.a, %bb.b
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.p, %bb.c ], [ null, %_ZNKSt3mapIdPN3g2o9RobotDataESt4lessIdESaISt4pairIKdS2_EEE11upper_boundERS6_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o9DataQueue3addEPNS_9RobotDataE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load double, ptr %i.b, align 8, !tbaa !26
  store double %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIdPN3g2o9RobotDataESt4lessIdESaISt4pairIKdS2_EEEixEOd(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %1, ptr %i.d, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIdPN3g2o9RobotDataESt4lessIdESaISt4pairIKdS2_EEEixEOd(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load double, ptr %1, align 8, !tbaa !20  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load double, ptr %i.e, align 8, !tbaa !20
  %i.g = fcmp olt double %i.f, %i.d               ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !21 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIdPN3g2o9RobotDataESt4lessIdESaISt4pairIKdS2_EEE11lower_boundERS6_.exit, label %bb.b, !llvm.loop !36

_ZNSt3mapIdPN3g2o9RobotDataESt4lessIdESaISt4pairIKdS2_EEE11lower_boundERS6_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIdPN3g2o9RobotDataESt4lessIdESaISt4pairIKdS2_EEE11lower_boundERS6_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !20
  %i.k = fcmp olt double %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOdEESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIdPN3g2o9RobotDataESt4lessIdESaISt4pairIKdS2_EEE11lower_boundERS6_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIdPN3g2o9RobotDataESt4lessIdESaISt4pairIKdS2_EEE11lower_boundERS6_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #10 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load double, ptr %1, align 8, !tbaa !20
  store double %i.n, ptr %i.m, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !24
  %i.p = invoke { ptr, ptr } @_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load double, ptr %i.m, align 8, !tbaa !20
  %i.v = load double, ptr %i.t, align 8, !tbaa !20
  %i.w = fcmp olt double %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.x = phi i1 [ %i.w, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #9
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !25
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !25
  br label %_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOdEESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #11
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #11
  br label %_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOdEESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOdEESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit: ; preds = %bb.g, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ac
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load double, ptr %i.g, align 8, !tbaa !20
  %i.i = load double, ptr %2, align 8, !tbaa !20
  %i.j = fcmp olt double %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02021.i = load ptr, ptr %i.k, align 8, !tbaa !21 ; 2 uses
  %.not22.i = icmp eq ptr %.02021.i, null
  br i1 %.not22.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load double, ptr %2, align 8, !tbaa !20  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02023.i = phi ptr [ %.02021.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02023.i, i64 32
  %i.n = load double, ptr %i.m, align 8, !tbaa !20 ; 2 uses
  %i.o = fcmp olt double %i.l, %i.n               ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02023.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !21 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !37

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa28.i.a = phi ptr [ %.02023.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.r = icmp eq ptr %.019.lcssa28.i.a, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa28.i.a) #8 ; 2 uses
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre77 = load double, ptr %.phi.trans.insert76, align 8, !tbaa !20
  %.pre78 = load double, ptr %2, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi double [ %.pre78, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi double [ %.pre77, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa27.i = phi ptr [ %.019.lcssa28.i.a, %bb.f ], [ %.02023.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02023.i, %._crit_edge.i ]
  %i.v = fcmp olt double %i.u, %i.t               ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa27.i, ptr null
  br label %_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load double, ptr %2, align 8, !tbaa !20  ; 8 uses
  %i.y = load double, ptr %i.w, align 8, !tbaa !20 ; 2 uses
  %i.z = fcmp olt double %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load double, ptr %i.ae, align 8, !tbaa !20
  %i.ag = fcmp olt double %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select67 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02021.i10 = load ptr, ptr %i.ak, align 8, !tbaa !21 ; 2 uses
  %.not22.i11 = icmp eq ptr %.02021.i10, null
  br i1 %.not22.i11, label %._crit_edge.thread.i25, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02023.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02021.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02023.i13, i64 32
  %i.am = load double, ptr %i.al, align 8, !tbaa !20 ; 2 uses
  %i.an = fcmp olt double %i.x, %i.am             ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02023.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !21 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !37

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i25, label %bb.n

._crit_edge.thread.i25:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa28.i26 = phi ptr [ %.02023.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa28.i26, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i25
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa28.i26) #8 ; 2 uses
  %.phi.trans.insert74 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre75 = load double, ptr %.phi.trans.insert74, align 8, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi double [ %.pre75, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa27.i19 = phi ptr [ %.019.lcssa28.i26, %bb.m ], [ %.02023.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02023.i13, %._crit_edge.i18 ]
  %i.ar = fcmp olt double %i.aq, %i.x             ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa27.i19, ptr null
  br label %_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = fcmp olt double %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !21 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !20
  %i.az = fcmp olt double %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !38
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select68 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select69 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02021.i28 = load ptr, ptr %i.bd, align 8, !tbaa !21 ; 2 uses
  %.not22.i29 = icmp eq ptr %.02021.i28, null
  br i1 %.not22.i29, label %._crit_edge.thread.i43, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.s, %.lr.ph.i30
  %.02023.i31 = phi ptr [ %.020.i34, %.lr.ph.i30 ], [ %.02021.i28, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02023.i31, i64 32
  %i.bf = load double, ptr %i.be, align 8, !tbaa !20 ; 2 uses
  %i.bg = fcmp olt double %i.x, %i.bf             ; 2 uses
  %.in.v.i32 = select i1 %i.bg, i64 16, i64 24
  %.in.i33 = getelementptr inbounds nuw i8, ptr %.02023.i31, i64 %.in.v.i32
  %.020.i34 = load ptr, ptr %.in.i33, align 8, !tbaa !21 ; 2 uses
  %.not.i35 = icmp eq ptr %.020.i34, null
  br i1 %.not.i35, label %._crit_edge.i36, label %.lr.ph.i30, !llvm.loop !37

._crit_edge.i36:                                  ; preds = %.lr.ph.i30
  br i1 %i.bg, label %._crit_edge.thread.i43, label %bb.u

._crit_edge.thread.i43:                           ; preds = %._crit_edge.i36, %bb.s
  %.019.lcssa28.i44 = phi ptr [ %.02023.i31, %._crit_edge.i36 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !13
  %i.bj = icmp eq ptr %.019.lcssa28.i44, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i43
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa28.i44) #8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i36
  %i.bl = phi double [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i36 ]
  %.019.lcssa27.i37 = phi ptr [ %.019.lcssa28.i44, %bb.t ], [ %.02023.i31, %._crit_edge.i36 ]
  %.sroa.05.0.i38 = phi ptr [ %i.bk, %bb.t ], [ %.02023.i31, %._crit_edge.i36 ]
  %i.bm = fcmp olt double %i.bl, %i.x             ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i38
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa27.i37, ptr null
  br label %_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIdSt4pairIKdPN3g2o9RobotDataEESt10_Select1stIS5_ESt4lessIdESaIS5_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i43, %bb.n, %._crit_edge.thread.i25, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select68, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i25 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i43 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select67, %bb.k ], [ %i.f, %bb.c ], [ %spec.select69, %bb.r ], [ %.019.lcssa28.i.a, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa28.i26, %._crit_edge.thread.i25 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa28.i44, %._crit_edge.thread.i43 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

attributes #0 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSSt4pairIKdPN3g2o9RobotDataEE", !10, i64 0, !11, i64 8}
!10 = !{!"double", !6, i64 0}
!11 = !{!"p1 _ZTSN3g2o9RobotDataE", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !17, i64 16}
!14 = !{!"_ZTSSt15_Rb_tree_header", !15, i64 0, !18, i64 32}
!15 = !{!"_ZTSSt18_Rb_tree_node_base", !16, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!16 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!17 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!14, !17, i64 8}
!20 = !{!10, !10, i64 0}
!21 = !{!17, !17, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!9, !11, i64 8}
!25 = !{!14, !18, i64 32}
!26 = !{!27, !10, i64 24}
!27 = !{!"_ZTSN3g2o9RobotDataE", !28, i64 0, !10, i64 24, !10, i64 32, !32, i64 40, !32, i64 72}
!28 = !{!"_ZTSN3g2o10HyperGraph4DataE", !29, i64 0, !30, i64 8, !31, i64 16}
!29 = !{!"_ZTSN3g2o10HyperGraph17HyperGraphElementE"}
!30 = !{!"p1 _ZTSN3g2o10HyperGraph4DataE", !12, i64 0}
!31 = !{!"p1 _ZTSN3g2o10HyperGraph13DataContainerE", !12, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !33, i64 0, !18, i64 8, !6, i64 16}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !34, i64 0}
!34 = !{!"p1 omnipotent char", !12, i64 0}
!35 = !{!11, !11, i64 0}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23}
!38 = !{!15, !17, i64 24}
end_hunk_0
