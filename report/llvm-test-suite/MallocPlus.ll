inline.NumInlined: 879
inline.NumDeleted: 248
begin_hunk_0_@_ZN10MallocPlus14memory_reallocEmPv:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41   ; 14 uses
  %i.n = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 48) #31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !17
  %i.t = and i32 %i.s, 1
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !18
  %i.w = icmp ugt i64 %1, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.y = shl i64 %1, 1                            ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !16
  %i.ab = mul i64 %i.aa, %i.y
  %i.ac = tail call ptr @realloc(ptr noundef %i.x, i64 noundef %i.ab) #33 ; 3 uses
  store i64 %i.y, ptr %i.u, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !8
  store i64 %1, ptr %i.ae, align 8, !tbaa !14
  store ptr %i.ac, ptr %i.m, align 8, !tbaa !19
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !8
  store i64 %1, ptr %i.ag, align 8, !tbaa !14
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !30
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !16
  %i.ak = mul i64 %i.aj, %1
  %i.al = tail call ptr @realloc(ptr noundef %i.ah, i64 noundef %i.ak) #33 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %1, ptr %i.am, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !8
  store i64 %1, ptr %i.ao, align 8, !tbaa !14
  store ptr %i.al, ptr %i.m, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %i.ap = phi ptr [ %i.ac, %bb.d ], [ %.pre, %bb.e ], [ %i.al, %bb.f ] ; 3 uses
  %.0 = phi ptr [ %i.ac, %bb.d ], [ null, %bb.e ], [ %i.al, %bb.f ] ; 3 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aq, %bb.g ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.at = icmp ult ptr %i.as, %i.ap               ; 2 uses
  %.19.i.i.i.i = select i1 %i.at, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.at, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.au = icmp eq ptr %.19.i.i.i.i, %i.d
  br i1 %i.au, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.ax = icmp ult ptr %i.ap, %i.aw
  br i1 %i.ax, label %.critedge.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

.critedge.i:                                      ; preds = %bb.h, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, %bb.g
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.h ], [ %.19.i.i.i.i, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i ], [ %i.d, %bb.g ]
  %i.ay = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 3 uses
  store ptr %i.ap, ptr %i.az, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store ptr %i.m, ptr %i.ba, align 8, !tbaa !41
  %i.bb = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.i unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.i:                                             ; preds = %.critedge.i
  %i.bc = extractvalue { ptr, ptr } %i.bb, 1      ; 4 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = extractvalue { ptr, ptr } %i.bb, 0
  %.not.i.i.i15 = icmp ne ptr %i.bd, null
  %i.be = icmp eq ptr %i.bc, %i.d
  %or.cond.i.i.i = select i1 %.not.i.i.i15, i1 true, i1 %i.be
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !30
  %i.bi = icmp ult ptr %i.bf, %i.bh
  br label %.thread.i

.thread.i:                                        ; preds = %bb.k, %bb.j
  %i.bj = phi i1 [ %i.bi, %bb.k ], [ true, %bb.j ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bj, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #29
  %i.bk = load i64, ptr %i.o, align 8, !tbaa !42
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.o, align 8, !tbaa !42
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 48) #31
  resume { ptr, i32 } %i.bm

bb.l:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 48) #31
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread: ; preds = %bb.h, %.thread.i, %bb.l, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.a, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %.1 = phi ptr [ null, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i ], [ null, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit ], [ null, %bb.a ], [ %.0, %bb.l ], [ %.0, %.thread.i ], [ %.0, %bb.h ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN10MallocPlus14memory_reallocEmPKc(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !21
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #30
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.d, ptr %i.a, align 8, !tbaa !14
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !23
  %i.g = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %2, align 1, !tbaa !25
  store i8 %i.i, ptr %i.h, align 1, !tbaa !25
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %2, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !26
  %i.l = load ptr, ptr %3, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.o, null
  %.pre = load ptr, ptr %3, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.q = load i64, ptr %i.k, align 8, !tbaa !26   ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.s) ; 2 uses
  %i.t = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.w = call i32 @memcmp(ptr noundef %i.v, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.x = sub i64 %i.s, %i.q
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.x, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.y = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.y, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.y, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.f, !llvm.loop !43

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.z = icmp eq ptr %.19.i.i.i, %i.p
  br i1 %i.z, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.q) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23
  %i.af = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.g
  %i.ag = sub i64 %i.q, %i.ab
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ah = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.ah, ptr %i.p, ptr %.19.i.i.i
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %i.p, %bb.e ], [ %i.p, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %i.ai = icmp eq ptr %.pre, %i.b
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !25
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ak) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.not47 = icmp eq ptr %.sroa.0.0.i.i, %i.p
  br i1 %.not47, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44 ; 15 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !31 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 11 uses
  %.not10.i.i.i23 = icmp eq ptr %i.ap, null
  br i1 %.not10.i.i.i23, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit, label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %bb.h
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !30 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i24
  %.012.i.i.i25 = phi ptr [ %i.ap, %.lr.ph.i.i.i24 ], [ %.1.i.i.i30, %bb.i ] ; 3 uses
  %.0811.i.i.i26 = phi ptr [ %i.aq, %.lr.ph.i.i.i24 ], [ %.19.i.i.i27, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i25, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !30
  %i.au = icmp ult ptr %i.at, %i.ar               ; 2 uses
  %.19.i.i.i27 = select i1 %i.au, ptr %.0811.i.i.i26, ptr %.012.i.i.i25 ; 4 uses
  %.1.in.v.i.i.i28 = select i1 %i.au, i64 24, i64 16
  %.1.in.i.i.i29 = getelementptr inbounds nuw i8, ptr %.012.i.i.i25, i64 %.1.in.v.i.i.i28
  %.1.i.i.i30 = load ptr, ptr %.1.in.i.i.i29, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %.1.i.i.i30, null
  br i1 %.not.i.i.i31, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %bb.i, !llvm.loop !37

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %bb.i
  %i.av = icmp eq ptr %.19.i.i.i27, %i.aq
  br i1 %i.av, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.19.i.i.i27, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.ay = icmp ult ptr %i.ar, %i.ax
  %spec.select.i.i32 = select i1 %i.ay, ptr %i.aq, ptr %.19.i.i.i27
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit: ; preds = %bb.h, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.j
  %.sroa.0.0.i.i33 = phi ptr [ %i.aq, %bb.h ], [ %i.aq, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i ], [ %spec.select.i.i32, %bb.j ]
  %i.az = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.0.0.i.i33, ptr noundef nonnull align 8 dereferenceable(32) %i.aq) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 48) #31
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !42
  %i.bc = add i64 %i.bb, -1
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !42
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !17
  %i.bf = and i32 %i.be, 1
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !18
  %i.bi = icmp ugt i64 %1, %i.bh
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.bk = shl i64 %1, 1                           ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !16
  %i.bn = mul i64 %i.bm, %i.bk
  %i.bo = call ptr @realloc(ptr noundef %i.bj, i64 noundef %i.bn) #33 ; 3 uses
  store i64 %i.bk, ptr %i.bg, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !8
  store i64 %1, ptr %i.bq, align 8, !tbaa !14
  store ptr %i.bo, ptr %i.am, align 8, !tbaa !19
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !8
  store i64 %1, ptr %i.bs, align 8, !tbaa !14
  %.pre48 = load ptr, ptr %i.am, align 8, !tbaa !30
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %i.bt = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !16
  %i.bw = mul i64 %i.bv, %1
  %i.bx = call ptr @realloc(ptr noundef %i.bt, i64 noundef %i.bw) #33 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %1, ptr %i.by, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !8
  store i64 %1, ptr %i.ca, align 8, !tbaa !14
  store ptr %i.bx, ptr %i.am, align 8, !tbaa !19
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.cb = phi ptr [ %i.bo, %bb.l ], [ %.pre48, %bb.m ], [ %i.bx, %bb.n ] ; 3 uses
  %.018 = phi ptr [ %i.bo, %bb.l ], [ null, %bb.m ], [ %i.bx, %bb.n ] ; 3 uses
  %i.cc = load ptr, ptr %i.ao, align 8, !tbaa !31 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.cc, %bb.o ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aq, %bb.o ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !30
  %i.cf = icmp ult ptr %i.ce, %i.cb               ; 2 uses
  %.19.i.i.i.i = select i1 %i.cf, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.cf, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN10MallocPlus14memory_reallocEmPKc:bb.a
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef 48) #31
  resume { ptr, i32 } %i.cy

bb.t:                                             ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef 48) #31
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit: ; preds = %bb.p, %.thread.i, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.018, %bb.t ], [ %.018, %.thread.i ], [ %.018, %bb.p ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN10MallocPlus14memory_requestEmPv(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, ptr noundef readnone captures(address) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp ult ptr %i.f, %2                    ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.h, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit: ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = icmp ult ptr %2, %i.j
  br i1 %i.k, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41   ; 5 uses
  %i.n = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 48) #31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !42
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16
  %i.u = mul i64 %i.t, %1
  %i.v = tail call ptr @realloc(ptr noundef %i.r, i64 noundef %i.u) #33 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %1, ptr %i.w, align 8, !tbaa !18
  store ptr %i.v, ptr %i.m, align 8, !tbaa !19
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.x, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.aa = icmp ult ptr %i.z, %i.v                 ; 2 uses
  %.19.i.i.i.i = select i1 %i.aa, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.aa, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ab = icmp eq ptr %.19.i.i.i.i, %i.d
  br i1 %i.ab, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !39
  %i.ae = icmp ult ptr %i.v, %i.ad
  br i1 %i.ae, label %.critedge.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, %bb.b
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i ], [ %i.d, %bb.b ]
  %i.af = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 3 uses
  store ptr %i.v, ptr %i.ag, align 8, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr %i.m, ptr %i.ah, align 8, !tbaa !41
  %i.ai = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge.i
  %i.aj = extractvalue { ptr, ptr } %i.ai, 1      ; 4 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = extractvalue { ptr, ptr } %i.ai, 0
  %.not.i.i.i4 = icmp ne ptr %i.ak, null
  %i.al = icmp eq ptr %i.aj, %i.d
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.al
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !30
  %i.ap = icmp ult ptr %i.am, %i.ao
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.aq = phi i1 [ %i.ap, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aq, ptr noundef nonnull %i.af, ptr noundef nonnull %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #29
  %i.ar = load i64, ptr %i.o, align 8, !tbaa !42
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.o, align 8, !tbaa !42
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 48) #31
  resume { ptr, i32 } %i.at

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 48) #31
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread: ; preds = %bb.c, %.thread.i, %bb.g, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.a, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %.0 = phi ptr [ null, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i ], [ null, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit ], [ null, %bb.a ], [ %i.v, %bb.g ], [ %i.v, %.thread.i ], [ %i.v, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN10MallocPlus14memory_requestEmPKc(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !21
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #30
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.d, ptr %i.a, align 8, !tbaa !14
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !23
  %i.g = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %2, align 1, !tbaa !25
  store i8 %i.i, ptr %i.h, align 1, !tbaa !25
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %2, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !26
  %i.l = load ptr, ptr %3, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.o, null
  %.pre = load ptr, ptr %3, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.q = load i64, ptr %i.k, align 8, !tbaa !26   ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.s) ; 2 uses
  %i.t = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.w = call i32 @memcmp(ptr noundef %i.v, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.x = sub i64 %i.s, %i.q
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.x, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.y = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.y, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.y, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.f, !llvm.loop !43

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.z = icmp eq ptr %.19.i.i.i, %i.p
  br i1 %i.z, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.q) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23
  %i.af = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.g
  %i.ag = sub i64 %i.q, %i.ab
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ah = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.ah, ptr %i.p, ptr %.19.i.i.i
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %i.p, %bb.e ], [ %i.p, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %i.ai = icmp eq ptr %.pre, %i.b
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !25
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ak) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.not = icmp eq ptr %.sroa.0.0.i.i, %i.p
  br i1 %.not, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !31 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 11 uses
  %.not10.i.i.i11 = icmp eq ptr %i.ap, null
  br i1 %.not10.i.i.i11, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %bb.h
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !30 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i12
  %.012.i.i.i13 = phi ptr [ %i.ap, %.lr.ph.i.i.i12 ], [ %.1.i.i.i18, %bb.i ] ; 3 uses
  %.0811.i.i.i14 = phi ptr [ %i.aq, %.lr.ph.i.i.i12 ], [ %.19.i.i.i15, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i13, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !30
  %i.au = icmp ult ptr %i.at, %i.ar               ; 2 uses
  %.19.i.i.i15 = select i1 %i.au, ptr %.0811.i.i.i14, ptr %.012.i.i.i13 ; 4 uses
  %.1.in.v.i.i.i16 = select i1 %i.au, i64 24, i64 16
  %.1.in.i.i.i17 = getelementptr inbounds nuw i8, ptr %.012.i.i.i13, i64 %.1.in.v.i.i.i16
  %.1.i.i.i18 = load ptr, ptr %.1.in.i.i.i17, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %.1.i.i.i18, null
  br i1 %.not.i.i.i19, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %bb.i, !llvm.loop !37

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %bb.i
  %i.av = icmp eq ptr %.19.i.i.i15, %i.aq
  br i1 %i.av, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.19.i.i.i15, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.ay = icmp ult ptr %i.ar, %i.ax
  %spec.select.i.i20 = select i1 %i.ay, ptr %i.aq, ptr %.19.i.i.i15
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit: ; preds = %bb.h, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.j
  %.sroa.0.0.i.i21 = phi ptr [ %i.aq, %bb.h ], [ %i.aq, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i ], [ %spec.select.i.i20, %bb.j ]
  %i.az = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.0.0.i.i21, ptr noundef nonnull align 8 dereferenceable(32) %i.aq) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 48) #31
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !42
  %i.bc = add i64 %i.bb, -1
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !42
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !16
  %i.bg = mul i64 %i.bf, %1
  %i.bh = call ptr @realloc(ptr noundef %i.bd, i64 noundef %i.bg) #33 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %1, ptr %i.bi, align 8, !tbaa !18
  store ptr %i.bh, ptr %i.am, align 8, !tbaa !19
  %i.bj = load ptr, ptr %i.ao, align 8, !tbaa !31 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bj, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aq, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !30
  %i.bm = icmp ult ptr %i.bl, %i.bh               ; 2 uses
  %.19.i.i.i.i = select i1 %i.bm, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.bm, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.bn = icmp eq ptr %.19.i.i.i.i, %i.aq
  br i1 %i.bn, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !39
  %i.bq = icmp ult ptr %i.bh, %i.bp
  br i1 %i.bq, label %.critedge.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit

.critedge.i:                                      ; preds = %bb.k, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.k ], [ %.19.i.i.i.i, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i ], [ %i.aq, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit ]
  %i.br = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 3 uses
  store ptr %i.bh, ptr %i.bs, align 8, !tbaa !39
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store ptr %i.am, ptr %i.bt, align 8, !tbaa !41
  %i.bu = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
          to label %bb.l unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.l:                                             ; preds = %.critedge.i
  %i.bv = extractvalue { ptr, ptr } %i.bu, 1      ; 4 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = extractvalue { ptr, ptr } %i.bu, 0
  %.not.i.i.i25 = icmp ne ptr %i.bw, null
  %i.bx = icmp eq ptr %i.bv, %i.aq
  %or.cond.i.i.i = select i1 %.not.i.i.i25, i1 true, i1 %i.bx
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !30
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !30
  %i.cb = icmp ult ptr %i.by, %i.ca
  br label %.thread.i

.thread.i:                                        ; preds = %bb.n, %bb.m
  %i.cc = phi i1 [ %i.cb, %bb.n ], [ true, %bb.m ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cc, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.aq) #29
  %i.cd = load i64, ptr %i.ba, align 8, !tbaa !42
end_hunk_1
begin_hunk_2_@_ZN10MallocPlus18memory_reorder_allEPi:bb.a
bb.am:                                            ; preds = %.critedge.i114
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.an:                                            ; preds = %.thread.i142, %bb.ak, %bb.ag, %.thread.i132, %bb.ac, %bb.y, %.thread.i, %bb.t, %bb.p
  %.sroa.21.2 = phi ptr [ %.sroa.21.1, %.thread.i ], [ %.sroa.21.0233, %.thread.i132 ], [ %.sroa.21.1, %bb.p ], [ %.sroa.21.1, %bb.t ], [ %.sroa.21.0233, %bb.y ], [ %.sroa.21.0233, %bb.ac ], [ %.sroa.21.0233, %bb.ag ], [ %.sroa.21.0233, %bb.ak ], [ %.sroa.21.0233, %.thread.i142 ] ; 2 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.1, %.thread.i ], [ %.sroa.13.0234, %.thread.i132 ], [ %.sroa.13.1, %bb.p ], [ %.sroa.13.1, %bb.t ], [ %.sroa.13.0234, %bb.y ], [ %.sroa.13.0234, %bb.ac ], [ %.sroa.13.0234, %bb.ag ], [ %.sroa.13.0234, %bb.ak ], [ %.sroa.13.0234, %.thread.i142 ]
  %.sroa.0175.2 = phi ptr [ %.sroa.0175.1, %.thread.i ], [ %.sroa.0175.0235, %.thread.i132 ], [ %.sroa.0175.1, %bb.p ], [ %.sroa.0175.1, %bb.t ], [ %.sroa.0175.0235, %bb.y ], [ %.sroa.0175.0235, %bb.ac ], [ %.sroa.0175.0235, %bb.ag ], [ %.sroa.0175.0235, %bb.ak ], [ %.sroa.0175.0235, %.thread.i142 ] ; 4 uses
  %i.hl = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0188.0236) #34 ; 2 uses
  %.not191 = icmp eq ptr %i.hl, %i.b
  br i1 %.not191, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.d, !llvm.loop !71

.body:                                            ; preds = %.loopexit192, %.loopexit.split-lp, %bb.v, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i, %bb.u, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i128, %bb.ad, %bb.am, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138, %bb.al
  %.sroa.21.3 = phi ptr [ %.sroa.21.1, %bb.u ], [ %.sroa.21.0233, %bb.ad ], [ %.sroa.21.0233, %bb.al ], [ %.sroa.21.1, %bb.v ], [ %.sroa.21.1, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ], [ %.sroa.21.0233, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i128 ], [ %.sroa.21.0233, %bb.am ], [ %.sroa.21.0233, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138 ], [ %.sroa.21.0233, %.loopexit192 ], [ %.sroa.21.0233, %.loopexit.split-lp ]
  %.sroa.0175.3 = phi ptr [ %.sroa.0175.1, %bb.u ], [ %.sroa.0175.0235, %bb.ad ], [ %.sroa.0175.0235, %bb.al ], [ %.sroa.0175.1, %bb.v ], [ %.sroa.0175.1, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ], [ %.sroa.0175.0235, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i128 ], [ %.sroa.0175.0235, %bb.am ], [ %.sroa.0175.0235, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138 ], [ %.sroa.0175.0235, %.loopexit192 ], [ %.sroa.0175.0235, %.loopexit.split-lp ] ; 3 uses
  %.pn76.pn = phi { ptr, i32 } [ %i.ej, %bb.u ], [ %i.fy, %bb.ad ], [ %i.hj, %bb.al ], [ %i.ek, %bb.v ], [ %i.ei, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ], [ %i.fn, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i128 ], [ %i.hk, %bb.am ], [ %i.hi, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138 ], [ %lpad.loopexit, %.loopexit192 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i118 = icmp eq ptr %.sroa.0175.3, null
  br i1 %.not.i.i.i118, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %.body
  %i.hm = ptrtoint ptr %.sroa.21.3 to i64
  %i.hn = ptrtoint ptr %.sroa.0175.3 to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.3, i64 noundef %i.ho) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.body, %bb.ao
  call void @_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn76.pn

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.an
  %.not.i.i.i121 = icmp eq ptr %.sroa.0175.2, null
  br i1 %.not.i.i.i121, label %_ZNSt6vectorIiSaIiEED2Ev.exit122, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.hp = ptrtoint ptr %.sroa.21.2 to i64
  %i.hq = ptrtoint ptr %.sroa.0175.2 to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.2, i64 noundef %i.hr) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit122

_ZNSt6vectorIiSaIiEED2Ev.exit122:                 ; preds = %bb.a, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEEC2ERKS9_.exit, %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.ap
  %i.hs = load ptr, ptr %i.c, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.hs)
          to label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit unwind label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit122
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #35
  unreachable

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit122
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN10MallocPlus14memory_replaceEPvS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef readnone captures(address) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.std::pair.24", align 8     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 16 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.f, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.i = icmp ult ptr %i.h, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.i, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.i, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.j = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.j, label %.lr.ph.i.i.i33, label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.m = icmp ult ptr %1, %i.l
  %spec.select.i.i = select i1 %i.m, ptr %i.f, ptr %.19.i.i.i
  br label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.b
  %.sroa.0.0.i.i.ph = phi ptr [ %spec.select.i.i, %bb.b ], [ %i.f, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i33
  %.012.i.i.i34 = phi ptr [ %i.e, %.lr.ph.i.i.i33 ], [ %.1.i.i.i39, %bb.c ] ; 3 uses
  %.0811.i.i.i35 = phi ptr [ %i.f, %.lr.ph.i.i.i33 ], [ %.19.i.i.i36, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i.i.i34, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = icmp ult ptr %i.o, %2                    ; 2 uses
  %.19.i.i.i36 = select i1 %i.p, ptr %.0811.i.i.i35, ptr %.012.i.i.i34 ; 4 uses
  %.1.in.v.i.i.i37 = select i1 %i.p, i64 24, i64 16
  %.1.in.i.i.i38 = getelementptr inbounds nuw i8, ptr %.012.i.i.i34, i64 %.1.in.v.i.i.i37
  %.1.i.i.i39 = load ptr, ptr %.1.in.i.i.i38, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %.1.i.i.i39, null
  br i1 %.not.i.i.i40, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i41, label %bb.c, !llvm.loop !37

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i41: ; preds = %bb.c
  %i.q = icmp eq ptr %.19.i.i.i36, %i.f
  br i1 %i.q, label %.critedge, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit44

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit44: ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i41
  %i.r = getelementptr inbounds nuw i8, ptr %.19.i.i.i36, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.t = icmp ult ptr %2, %i.s
  %spec.select.i.i42 = select i1 %i.t, ptr %i.f, ptr %.19.i.i.i36 ; 3 uses
  %i.u = icmp ne ptr %.sroa.0.0.i.i.ph, %i.f
  %i.v = icmp ne ptr %spec.select.i.i42, %i.f
  %or.cond = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit44
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.ph, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41   ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %spec.select.i.i42, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41   ; 7 uses
  %i.aa = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %spec.select.i.i42, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 48) #31
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !42
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !42
  %i.ae = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.0.0.i.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 48) #31
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !42
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !20 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.aj, ptr %3, align 8, !tbaa !21
  %i.ak = icmp eq ptr %i.ai, null
  br i1 %i.ak, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #30
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.al = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.al, ptr %i.b, align 8, !tbaa !14
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.an = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.an, ptr %3, align 8, !tbaa !23
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !14
  store i64 %i.ao, ptr %i.aj, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.e
  %i.ap = phi ptr [ %i.an, %.noexc.i ], [ %i.aj, %bb.e ] ; 2 uses
  switch i64 %i.al, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.aq = load i8, ptr %i.ai, align 1, !tbaa !25
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !25
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull align 1 %i.ai, i64 %i.al, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !14  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !26
  %i.at = load ptr, ptr %3, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !31 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %.not10.i.i.i46 = icmp eq ptr %i.aw, null
  %.pre = load ptr, ptr %3, align 8               ; 4 uses
  br i1 %.not10.i.i.i46, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i47

.lr.ph.i.i.i47:                                   ; preds = %bb.h
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !26 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i47
  %.012.i.i.i48 = phi ptr [ %i.aw, %.lr.ph.i.i.i47 ], [ %.1.i.i.i53, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i49 = phi ptr [ %i.ax, %.lr.ph.i.i.i47 ], [ %.19.i.i.i50, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i48, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.ba) ; 2 uses
  %i.bb = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.bb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i48, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !23
  %i.be = call i32 @memcmp(ptr noundef %i.bd, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.i
  %i.bf = sub i64 %i.ba, %i.ay
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bf, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.be, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.bg = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i50 = select i1 %i.bg, ptr %.0811.i.i.i49, ptr %.012.i.i.i48 ; 5 uses
  %.1.in.v.i.i.i51 = select i1 %i.bg, i64 24, i64 16
  %.1.in.i.i.i52 = getelementptr inbounds nuw i8, ptr %.012.i.i.i48, i64 %.1.in.v.i.i.i51
  %.1.i.i.i53 = load ptr, ptr %.1.in.i.i.i52, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %.1.i.i.i53, null
  br i1 %.not.i.i.i54, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.i, !llvm.loop !43

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.bh = icmp eq ptr %.19.i.i.i50, %i.ax
  br i1 %i.bh, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.19.i.i.i50, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.ay) ; 2 uses
  %i.bk = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %.19.i.i.i50, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !23
  %i.bn = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.bm, i64 noundef %.sroa.speculated.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.j
  %i.bo = sub i64 %i.ay, %i.bj
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bo, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bn, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bp = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i55 = select i1 %i.bp, ptr %i.ax, ptr %.19.i.i.i50
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.h
  %.sroa.0.0.i.i56 = phi ptr [ %i.ax, %bb.h ], [ %i.ax, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i55, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ]
  %i.bq = icmp eq ptr %.pre, %i.aj
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.br = load i64, ptr %i.aj, align 8, !tbaa !25
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bt = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !20 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.bv, ptr %4, align 8, !tbaa !21
  %i.bw = icmp eq ptr %i.bu, null
  br i1 %i.bw, label %.noexc59, label %bb.k

.noexc59:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #30
  unreachable

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bu) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.bx, ptr %i.a, align 8, !tbaa !14
  %i.by = icmp ugt i64 %i.bx, 15
  br i1 %i.by, label %.noexc.i58, label %._crit_edge.i.i57

.noexc.i58:                                       ; preds = %bb.k
  %i.bz = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bz, ptr %4, align 8, !tbaa !23
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.ca, ptr %i.bv, align 8, !tbaa !25
  br label %._crit_edge.i.i57

._crit_edge.i.i57:                                ; preds = %.noexc.i58, %bb.k
  %i.cb = phi ptr [ %i.bz, %.noexc.i58 ], [ %i.bv, %bb.k ] ; 2 uses
  switch i64 %i.bx, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i57
  %i.cc = load i8, ptr %i.bu, align 1, !tbaa !25
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !25
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr nonnull align 1 %i.bu, i64 %i.bx, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i57
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !26
  %i.cf = load ptr, ptr %4, align 8, !tbaa !23
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 0, ptr %i.cg, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ch = load ptr, ptr %i.av, align 8, !tbaa !31 ; 2 uses
  %.not10.i.i.i62 = icmp eq ptr %i.ch, null
  %.pre132 = load ptr, ptr %4, align 8            ; 4 uses
  br i1 %.not10.i.i.i62, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit92, label %.lr.ph.i.i.i63

.lr.ph.i.i.i63:                                   ; preds = %bb.n
  %i.ci = load i64, ptr %i.ce, align 8, !tbaa !26 ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i69, %.lr.ph.i.i.i63
  %.012.i.i.i64 = phi ptr [ %i.ch, %.lr.ph.i.i.i63 ], [ %.1.i.i.i74, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i69 ] ; 4 uses
  %.0811.i.i.i65 = phi ptr [ %i.ax, %.lr.ph.i.i.i63 ], [ %.19.i.i.i71, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i69 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i64, i64 40
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i66 = call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.ck) ; 2 uses
  %i.cl = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i66, 0
  br i1 %i.cl, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i88, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i67

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i67: ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i64, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !23
  %i.co = call i32 @memcmp(ptr noundef %i.cn, ptr noundef %.pre132, i64 noundef %.sroa.speculated.i.i.i.i.i.i66) #29 ; 2 uses
  %.not.i.i.i.i.i.i68 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i.i.i.i.i68, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i88, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i69

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i88: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i67, %bb.o
  %i.cp = sub i64 %i.ck, %i.ci
  %spec.select7.i.i.i.i.i.i.i89 = call i64 @llvm.smax.i64(i64 %i.cp, i64 -2147483648)
  %.08.i.i.i.i.i.i.i90 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i89, i64 2147483647)
  %.0.i6.i.i.i.i.i.i91 = trunc nsw i64 %.08.i.i.i.i.i.i.i90 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i69

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i69: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i88, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i67
  %.0.i.i.i.i.i.i70 = phi i32 [ %i.co, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i67 ], [ %.0.i6.i.i.i.i.i.i91, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i88 ]
  %i.cq = icmp slt i32 %.0.i.i.i.i.i.i70, 0       ; 2 uses
  %.19.i.i.i71 = select i1 %i.cq, ptr %.0811.i.i.i65, ptr %.012.i.i.i64 ; 5 uses
  %.1.in.v.i.i.i72 = select i1 %i.cq, i64 24, i64 16
  %.1.in.i.i.i73 = getelementptr inbounds nuw i8, ptr %.012.i.i.i64, i64 %.1.in.v.i.i.i72
  %.1.i.i.i74 = load ptr, ptr %.1.in.i.i.i73, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %.1.i.i.i74, null
  br i1 %.not.i.i.i75, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i76, label %bb.o, !llvm.loop !43

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i76: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i69
  %i.cr = icmp eq ptr %.19.i.i.i71, %i.ax
  br i1 %i.cr, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit92, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i76
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i71, i64 40
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i77 = call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.ci) ; 2 uses
  %i.cu = icmp eq i64 %.sroa.speculated.i.i.i.i.i77, 0
  br i1 %i.cu, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i84, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i78

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i78: ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %.19.i.i.i71, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !23
  %i.cx = call i32 @memcmp(ptr noundef %.pre132, ptr noundef %i.cw, i64 noundef %.sroa.speculated.i.i.i.i.i77) #29 ; 2 uses
  %.not.i.i.i.i.i79 = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i.i.i.i79, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i84, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i80

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i84: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i78, %bb.p
  %i.cy = sub i64 %i.ci, %i.ct
  %spec.select7.i.i.i.i.i.i85 = call i64 @llvm.smax.i64(i64 %i.cy, i64 -2147483648)
  %.08.i.i.i.i.i.i86 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i85, i64 2147483647)
  %.0.i6.i.i.i.i.i87 = trunc nsw i64 %.08.i.i.i.i.i.i86 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i80

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i80: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i84, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i78
  %.0.i.i.i.i.i81 = phi i32 [ %i.cx, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i78 ], [ %.0.i6.i.i.i.i.i87, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i84 ]
  %i.cz = icmp slt i32 %.0.i.i.i.i.i81, 0
  %spec.select.i.i82 = select i1 %i.cz, ptr %i.ax, ptr %.19.i.i.i71
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit92

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit92: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i80, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i76, %bb.n
  %.sroa.0.0.i.i83 = phi ptr [ %i.ax, %bb.n ], [ %i.ax, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i76 ], [ %spec.select.i.i82, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i80 ]
  %i.da = icmp eq ptr %.pre132, %i.bv
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit92
  %i.db = load i64, ptr %i.bv, align 8, !tbaa !25
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %.pre132, i64 noundef %i.dc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.dd = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.0.0.i.i83, ptr noundef nonnull align 8 dereferenceable(32) %i.ax) #29 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !23 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 48 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !25
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #31
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 72) #31
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !42
  %i.dm = add i64 %i.dl, -1
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !42
  %i.dn = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.0.0.i.i56, ptr noundef nonnull align 8 dereferenceable(32) %i.ax) #29 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !23 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 48 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i96: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !25
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #31
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit98

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit98: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i96
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef 72) #31
  %i.du = load i64, ptr %i.dk, align 8, !tbaa !42
  %i.dv = add i64 %i.du, -1
  store i64 %i.dv, ptr %i.dk, align 8, !tbaa !42
  %i.dw = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !17
  %i.dy = and i32 %i.dx, 2
  %.not = icmp eq i32 %i.dy, 0
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit98
  %i.dz = load ptr, ptr %i.x, align 8, !tbaa !19
  call void @free(ptr noundef %i.dz) #29
  %i.ea = load ptr, ptr %i.z, align 8, !tbaa !19
  store ptr %i.ea, ptr %i.x, align 8, !tbaa !19
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit98, %bb.q
  %i.eb = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !8  ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !14
  %i.ee = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !8
  store i64 %i.ed, ptr %i.ef, align 8, !tbaa !14
  %i.eg = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !18
  %i.ei = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !16
  %i.el = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !16
  %i.em = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.en = load i32, ptr %i.em, align 8, !tbaa !17
  store i32 %i.en, ptr %i.dw, align 8, !tbaa !17
  call void @free(ptr noundef %i.ec) #29
  %i.eo = load ptr, ptr %i.bt, align 8, !tbaa !20
  call void @free(ptr noundef %i.eo) #29
  call void @free(ptr noundef %i.z) #29
  %i.ep = load ptr, ptr %i.d, align 8, !tbaa !31  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.r, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ep, %bb.r ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %bb.r ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !30
  %i.es = icmp ult ptr %i.er, %2                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.es, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.es, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.et = icmp eq ptr %.19.i.i.i.i, %i.f
  br i1 %i.et, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !39
  %i.ew = icmp ult ptr %2, %i.ev
  br i1 %i.ew, label %.critedge.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit

.critedge.i:                                      ; preds = %bb.s, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, %bb.r
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.s ], [ %.19.i.i.i.i, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i ], [ %i.f, %bb.r ]
  %i.ex = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 3 uses
  store ptr %2, ptr %i.ey, align 8, !tbaa !39
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store ptr %i.x, ptr %i.ez, align 8, !tbaa !41
  %i.fa = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ey)
          to label %bb.t unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.t:                                             ; preds = %.critedge.i
  %i.fb = extractvalue { ptr, ptr } %i.fa, 1      ; 4 uses
  %.not.i = icmp eq ptr %i.fb, null
  br i1 %.not.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fc = extractvalue { ptr, ptr } %i.fa, 0
  %.not.i.i.i105 = icmp ne ptr %i.fc, null
end_hunk_2
begin_hunk_3_@_ZN10MallocPlus13memory_reportEv:bb.a
  br i1 %.not, label %._crit_edge55, label %.lr.ph54, !llvm.loop !76

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ag = phi i64 [ %i.ao, %.lr.ph ], [ 1, %.lr.ph.preheader ]
  %.050 = phi ptr [ %i.am, %.lr.ph ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %.03749 = phi i32 [ %i.an, %.lr.ph ], [ 1, %.lr.ph.preheader ]
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !14
  %i.ak = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %.050, ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef %i.aj) #29
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %.050, i64 %i.al
  %i.an = add i32 %.03749, 1                      ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = load i64, ptr %i.m, align 8, !tbaa !15
  %i.aq = icmp ugt i64 %i.ap, %i.ao
  br i1 %i.aq, label %.lr.ph, label %._crit_edge, !llvm.loop !77

._crit_edge55:                                    ; preds = %._crit_edge, %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not4861 = icmp eq ptr %i.as, %i.at
  br i1 %.not4861, label %._crit_edge65, label %.lr.ph64

.lr.ph64:                                         ; preds = %._crit_edge55, %._crit_edge60
  %.sroa.041.062 = phi ptr [ %i.bu, %._crit_edge60 ], [ %i.as, %._crit_edge55 ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.041.062, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.041.062, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 7 uses
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !23
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !20
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !15
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %i.ax, ptr noundef %i.az, ptr noundef %i.ba, i64 noundef %i.bc) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !14
  %i.bh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %i.bg) #29
  %i.bi = load i64, ptr %i.bb, align 8, !tbaa !15
  %i.bj = icmp ugt i64 %i.bi, 1
  br i1 %i.bj, label %.lr.ph59.preheader, label %._crit_edge60

.lr.ph59.preheader:                               ; preds = %.lr.ph64
  %i.bk = sext i32 %i.bh to i64
  %i.bl = getelementptr inbounds i8, ptr %i.b, i64 %i.bk
  br label %.lr.ph59

._crit_edge60:                                    ; preds = %.lr.ph59, %.lr.ph64
  %i.bm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %i.b) ; 0 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !18
  %i.bt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %i.bo, i32 noundef %i.bq, i64 noundef %i.bs) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.bu = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.041.062) #34 ; 2 uses
  %.not48 = icmp eq ptr %i.bu, %i.at
  br i1 %.not48, label %._crit_edge65, label %.lr.ph64, !llvm.loop !78

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %.lr.ph59
  %i.bv = phi i64 [ %i.cd, %.lr.ph59 ], [ 1, %.lr.ph59.preheader ]
  %.03557 = phi i32 [ %i.cc, %.lr.ph59 ], [ 1, %.lr.ph59.preheader ]
  %.03656 = phi ptr [ %i.cb, %.lr.ph59 ], [ %i.bl, %.lr.ph59.preheader ] ; 2 uses
  %i.bw = load ptr, ptr %i.be, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !14
  %i.bz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %.03656, ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef %i.by) #29
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %.03656, i64 %i.ca
  %i.cc = add i32 %.03557, 1                      ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = load i64, ptr %i.bb, align 8, !tbaa !15
  %i.cf = icmp ugt i64 %i.ce, %i.cd
  br i1 %i.cf, label %.lr.ph59, label %._crit_edge60, !llvm.loop !79

._crit_edge65:                                    ; preds = %._crit_edge60, %._crit_edge55
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef readnone captures(address) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp ult ptr %i.f, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.h, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit: ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = icmp ult ptr %1, %i.j
  br i1 %i.k, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !17
  %i.p = and i32 %i.o, 2
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.q) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.r = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 48) #31
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !42
  %i.u = add i64 %i.t, -1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !21
  %i.y = icmp eq ptr %i.w, null
  br i1 %i.y, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #30
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.z, ptr %i.a, align 8, !tbaa !14
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.ab = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !23
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.e
  %i.ad = phi ptr [ %i.ab, %.noexc.i ], [ %i.x, %bb.e ] ; 2 uses
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ae = load i8, ptr %i.w, align 1, !tbaa !25
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !25
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 1 %i.w, i64 %i.z, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.af = load i64, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !26
  %i.ah = load ptr, ptr %2, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not10.i.i.i15 = icmp eq ptr %i.ak, null
  %.pre = load ptr, ptr %2, align 8               ; 4 uses
  br i1 %.not10.i.i.i15, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %bb.h
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !26 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.ak, %.lr.ph.i.i.i16 ], [ %.1.i.i.i22, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i18 = phi ptr [ %i.al, %.lr.ph.i.i.i16 ], [ %.19.i.i.i19, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.am, i64 %i.ao) ; 2 uses
  %i.ap = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ap, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !23
  %i.as = call i32 @memcmp(ptr noundef %i.ar, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.i
  %i.at = sub i64 %i.ao, %i.am
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.at, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.as, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.au = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i19 = select i1 %i.au, ptr %.0811.i.i.i18, ptr %.012.i.i.i17 ; 5 uses
  %.1.in.v.i.i.i20 = select i1 %i.au, i64 24, i64 16
  %.1.in.i.i.i21 = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 %.1.in.v.i.i.i20
  %.1.i.i.i22 = load ptr, ptr %.1.in.i.i.i21, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %.1.i.i.i22, null
  br i1 %.not.i.i.i23, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.i, !llvm.loop !43

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.av = icmp eq ptr %.19.i.i.i19, %i.al
  br i1 %i.av, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.19.i.i.i19, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.am) ; 2 uses
  %i.ay = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ay, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %.19.i.i.i19, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !23
  %i.bb = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.ba, i64 noundef %.sroa.speculated.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.j
  %i.bc = sub i64 %i.am, %i.ax
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bc, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bd = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i24 = select i1 %i.bd, ptr %i.al, ptr %.19.i.i.i19
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.h
  %.sroa.0.0.i.i25 = phi ptr [ %i.al, %bb.h ], [ %i.al, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i24, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ]
  %i.be = icmp eq ptr %.pre, %i.x
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.bf = load i64, ptr %i.x, align 8, !tbaa !25
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.bh = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.0.0.i.i25, ptr noundef nonnull align 8 dereferenceable(32) %i.al) #29 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !23 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 48 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !25
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #31
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 72) #31
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !42
  %i.bq = add i64 %i.bp, -1
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !42
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !8
  call void @free(ptr noundef %i.bs) #29
  %i.bt = load ptr, ptr %i.v, align 8, !tbaa !20
  call void @free(ptr noundef %i.bt) #29
  call void @free(ptr noundef %i.m) #29
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.a, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @_ZN10MallocPlus13memory_deleteEPKc(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !21
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #30
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.d, ptr %i.a, align 8, !tbaa !14
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !23
  %i.g = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !25
  store i8 %i.i, ptr %i.h, align 1, !tbaa !25
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !26
  %i.l = load ptr, ptr %2, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.not10.i.i.i = icmp eq ptr %i.o, null
  %.pre = load ptr, ptr %2, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.q = load i64, ptr %i.k, align 8, !tbaa !26   ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.s) ; 2 uses
  %i.t = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.w = call i32 @memcmp(ptr noundef %i.v, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.x = sub i64 %i.s, %i.q
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.x, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.y = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.y, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.y, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.f, !llvm.loop !43

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.z = icmp eq ptr %.19.i.i.i, %i.p
  br i1 %i.z, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.q) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23
  %i.af = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.g
  %i.ag = sub i64 %i.q, %i.ab
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ah = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.ah, ptr %i.p, ptr %.19.i.i.i
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %i.p, %bb.e ], [ %i.p, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 3 uses
  %i.ai = icmp eq ptr %.pre, %i.b
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !25
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ak) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %.not33 = icmp eq ptr %.sroa.0.0.i.i, %i.p
  br i1 %.not33, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !17
  %i.ap = and i32 %i.ao, 2
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !19
  call void @free(ptr noundef %i.aq) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ar = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.0.0.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #29 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !23 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 48 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !25
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #31
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 72) #31
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !42
  %i.ba = add i64 %i.az, -1
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %.not10.i.i.i19 = icmp eq ptr %i.bc, null
  br i1 %.not10.i.i.i19, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit
  %i.be = load ptr, ptr %i.am, align 8, !tbaa !30 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i20
  %.012.i.i.i21 = phi ptr [ %i.bc, %.lr.ph.i.i.i20 ], [ %.1.i.i.i26, %bb.k ] ; 3 uses
  %.0811.i.i.i22 = phi ptr [ %i.bd, %.lr.ph.i.i.i20 ], [ %.19.i.i.i23, %bb.k ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !30
  %i.bh = icmp ult ptr %i.bg, %i.be               ; 2 uses
  %.19.i.i.i23 = select i1 %i.bh, ptr %.0811.i.i.i22, ptr %.012.i.i.i21 ; 4 uses
  %.1.in.v.i.i.i24 = select i1 %i.bh, i64 24, i64 16
  %.1.in.i.i.i25 = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 %.1.in.v.i.i.i24
  %.1.i.i.i26 = load ptr, ptr %.1.in.i.i.i25, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %.1.i.i.i26, null
  br i1 %.not.i.i.i27, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %bb.k, !llvm.loop !37

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %bb.k
  %i.bi = icmp eq ptr %.19.i.i.i23, %i.bd
  br i1 %i.bi, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.19.i.i.i23, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !30
  %i.bl = icmp ult ptr %i.be, %i.bk
  %spec.select.i.i28 = select i1 %i.bl, ptr %i.bd, ptr %.19.i.i.i23
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.l
  %.sroa.0.0.i.i29 = phi ptr [ %i.bd, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit ], [ %i.bd, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i ], [ %spec.select.i.i28, %bb.l ]
  %i.bm = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.0.0.i.i29, ptr noundef nonnull align 8 dereferenceable(32) %i.bd) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 48) #31
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !42
  %i.bp = add i64 %i.bo, -1
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !42
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !8
  call void @free(ptr noundef %i.br) #29
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !20
  call void @free(ptr noundef %i.bt) #29
  call void @free(ptr noundef nonnull %i.am) #29
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10MallocPlus17memory_delete_allEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::_Rb_tree<void *, std::pair<void *const, malloc_plus_memory_entry *>, std::_Select1st<std::pair<void *const, malloc_plus_memory_entry *>>, std::less<void *>>::_Alloc_node", align 8 ; 4 uses
  %2 = alloca %"class.std::map.1", align 8        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store ptr %2, ptr %1, align 8, !tbaa !49
end_hunk_3
begin_hunk_4_@_ZN10MallocPlus17memory_delete_allEv:bb.a

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.i, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEEC2ERKS9_.exit, label %bb.c, !llvm.loop !54

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEEC2ERKS9_.exit: ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i, ptr %i.e, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load i64, ptr %i.n, align 8, !tbaa !42
  store i64 %i.o, ptr %i.f, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  store ptr %i.i, ptr %i.c, align 8, !tbaa !36
  %.not910 = icmp eq ptr %.0.i.i.i.i.i.i, %i.b
  br i1 %.not910, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEEC2ERKS9_.exit, %bb.e
  %.sroa.07.011 = phi ptr [ %i.z, %bb.e ], [ %.0.i.i.i.i.i.i, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEEC2ERKS9_.exit ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41   ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !17
  %i.t = and i32 %i.s, 2
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !19
  call void @free(ptr noundef %i.u) #29
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  call void @free(ptr noundef %i.w) #29
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20
  call void @free(ptr noundef %i.y) #29
  call void @free(ptr noundef nonnull %i.q) #29
  %i.z = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.07.011) #34 ; 2 uses
  %.not9 = icmp eq ptr %i.z, %i.b
  br i1 %.not9, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.e, %bb.a, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEEC2ERKS9_.exit
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.aa)
          to label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE5clearEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #35
  unreachable

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE5clearEv.exit: ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.ag, align 8, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.ai)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE5clearEv.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #35
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit: ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE5clearEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.al, ptr %i.am, align 8, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.al, ptr %i.an, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.ao, align 8, !tbaa !42
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.ap)
          to label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #35
  unreachable

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10MallocPlus13memory_removeEPv(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef readnone captures(address) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp ult ptr %i.f, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.h, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit: ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = icmp ult ptr %1, %i.j
  br i1 %i.k, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41   ; 3 uses
  %i.n = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 48) #31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !21
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #30
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.v, ptr %i.a, align 8, !tbaa !14
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !23
  %i.y = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.y, ptr %i.t, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.z = phi ptr [ %i.x, %.noexc.i ], [ %i.t, %bb.c ] ; 2 uses
  switch i64 %i.v, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.s, align 1, !tbaa !25
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !25
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %i.s, i64 %i.v, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !26
  %i.ad = load ptr, ptr %2, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not10.i.i.i13 = icmp eq ptr %i.ag, null
  %.pre = load ptr, ptr %2, align 8               ; 4 uses
  br i1 %.not10.i.i.i13, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %bb.f
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !26 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i14
  %.012.i.i.i15 = phi ptr [ %i.ag, %.lr.ph.i.i.i14 ], [ %.1.i.i.i20, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i16 = phi ptr [ %i.ah, %.lr.ph.i.i.i14 ], [ %.19.i.i.i17, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i15, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.ak) ; 2 uses
  %i.al = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.al, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i15, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !23
  %i.ao = call i32 @memcmp(ptr noundef %i.an, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.g
  %i.ap = sub i64 %i.ak, %i.ai
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ap, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ao, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.aq = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i17 = select i1 %i.aq, ptr %.0811.i.i.i16, ptr %.012.i.i.i15 ; 5 uses
  %.1.in.v.i.i.i18 = select i1 %i.aq, i64 24, i64 16
  %.1.in.i.i.i19 = getelementptr inbounds nuw i8, ptr %.012.i.i.i15, i64 %.1.in.v.i.i.i18
  %.1.i.i.i20 = load ptr, ptr %.1.in.i.i.i19, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %.1.i.i.i20, null
  br i1 %.not.i.i.i21, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.g, !llvm.loop !43

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ar = icmp eq ptr %.19.i.i.i17, %i.ah
  br i1 %i.ar, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i17, i64 40
  %i.at = load i64, ptr %i.as, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.at, i64 %i.ai) ; 2 uses
  %i.au = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.au, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.19.i.i.i17, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !23
  %i.ax = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.aw, i64 noundef %.sroa.speculated.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.h
  %i.ay = sub i64 %i.ai, %i.at
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ay, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ax, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.az = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i22 = select i1 %i.az, ptr %i.ah, ptr %.19.i.i.i17
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.f
  %.sroa.0.0.i.i23 = phi ptr [ %i.ah, %bb.f ], [ %i.ah, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i22, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ]
  %i.ba = icmp eq ptr %.pre, %i.t
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.bb = load i64, ptr %i.t, align 8, !tbaa !25
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.bd = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.0.0.i.i23, ptr noundef nonnull align 8 dereferenceable(32) %i.ah) #29 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !23 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 48 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !25
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #31
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 72) #31
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !42
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !42
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !8
  call void @free(ptr noundef %i.bo) #29
  %i.bp = load ptr, ptr %i.r, align 8, !tbaa !20
  call void @free(ptr noundef %i.bp) #29
  call void @free(ptr noundef %i.m) #29
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.a, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10MallocPlus13memory_removeEPKc(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !21
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #30
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.d, ptr %i.a, align 8, !tbaa !14
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !23
  %i.g = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !25
  store i8 %i.i, ptr %i.h, align 1, !tbaa !25
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !26
  %i.l = load ptr, ptr %2, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.not10.i.i.i = icmp eq ptr %i.o, null
  %.pre = load ptr, ptr %2, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.q = load i64, ptr %i.k, align 8, !tbaa !26   ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.s) ; 2 uses
  %i.t = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.w = call i32 @memcmp(ptr noundef %i.v, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.x = sub i64 %i.s, %i.q
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.x, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.y = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.y, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.y, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.f, !llvm.loop !43

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.z = icmp eq ptr %.19.i.i.i, %i.p
  br i1 %i.z, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.q) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23
  %i.af = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.g
  %i.ag = sub i64 %i.q, %i.ab
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ah = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.ah, ptr %i.p, ptr %.19.i.i.i
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %i.p, %bb.e ], [ %i.p, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 3 uses
  %i.ai = icmp eq ptr %.pre, %i.b
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !25
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ak) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %.not = icmp eq ptr %.sroa.0.0.i.i, %i.p
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44 ; 4 uses
  %i.an = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.0.0.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #29 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !25
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 72) #31
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !42
  %i.aw = add i64 %i.av, -1
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !31 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %.not10.i.i.i14 = icmp eq ptr %i.ay, null
  br i1 %.not10.i.i.i14, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit, label %.lr.ph.i.i.i15

.lr.ph.i.i.i15:                                   ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !30 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i15
  %.012.i.i.i16 = phi ptr [ %i.ay, %.lr.ph.i.i.i15 ], [ %.1.i.i.i21, %bb.i ] ; 3 uses
  %.0811.i.i.i17 = phi ptr [ %i.az, %.lr.ph.i.i.i15 ], [ %.19.i.i.i18, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i16, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !30
  %i.bd = icmp ult ptr %i.bc, %i.ba               ; 2 uses
  %.19.i.i.i18 = select i1 %i.bd, ptr %.0811.i.i.i17, ptr %.012.i.i.i16 ; 4 uses
  %.1.in.v.i.i.i19 = select i1 %i.bd, i64 24, i64 16
  %.1.in.i.i.i20 = getelementptr inbounds nuw i8, ptr %.012.i.i.i16, i64 %.1.in.v.i.i.i19
  %.1.i.i.i21 = load ptr, ptr %.1.in.i.i.i20, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %.1.i.i.i21, null
  br i1 %.not.i.i.i22, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %bb.i, !llvm.loop !37

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %bb.i
  %i.be = icmp eq ptr %.19.i.i.i18, %i.az
  br i1 %i.be, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.19.i.i.i18, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !30
  %i.bh = icmp ult ptr %i.ba, %i.bg
  %spec.select.i.i23 = select i1 %i.bh, ptr %i.az, ptr %.19.i.i.i18
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.j
  %.sroa.0.0.i.i24 = phi ptr [ %i.az, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit ], [ %i.az, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i ], [ %spec.select.i.i23, %bb.j ]
  %i.bi = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.0.0.i.i24, ptr noundef nonnull align 8 dereferenceable(32) %i.az) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef 48) #31
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !42
  %i.bl = add i64 %i.bk, -1
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !42
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !8
  call void @free(ptr noundef %i.bn) #29
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !20
  call void @free(ptr noundef %i.bp) #29
  call void @free(ptr noundef %i.am) #29
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN10MallocPlus12memory_beginEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  store ptr %i.b, ptr @it_save, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: read, target_mem: read) uwtable
define dso_local noundef ptr @_ZN10MallocPlus11memory_nextEv(ptr noundef nonnull readnone align 8 captures(address) dereferenceable(96) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr @it_save, align 8, !tbaa !36
  %i.a = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0.0.copyload.i) #34 ; 3 uses
  store ptr %i.a, ptr @it_save, align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN10MallocPlus20memory_by_name_beginEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_4
begin_hunk_5_@_ZN10MallocPlus11memory_swapEPPiS1_:bb.a
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.at = icmp ult ptr %i.as, %i.ap               ; 2 uses
  %.19.i.i.i.i = select i1 %i.at, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.at, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.au = icmp eq ptr %.19.i.i.i.i, %i.i
  br i1 %i.au, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.ax = icmp ult ptr %i.ap, %i.aw
  br i1 %i.ax, label %.critedge.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit

.critedge.i:                                      ; preds = %bb.e, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, %bb.d
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.e ], [ %.19.i.i.i.i, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i ], [ %i.i, %bb.d ]
  %i.ay = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 3 uses
  store ptr %i.ap, ptr %i.az, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store ptr %i.ad, ptr %i.ba, align 8, !tbaa !41
  %i.bb = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.f unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.f:                                             ; preds = %.critedge.i
  %i.bc = extractvalue { ptr, ptr } %i.bb, 1      ; 4 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = extractvalue { ptr, ptr } %i.bb, 0
  %.not.i.i.i137 = icmp ne ptr %i.bd, null
  %i.be = icmp eq ptr %i.bc, %i.i
  %or.cond.i.i.i = select i1 %.not.i.i.i137, i1 true, i1 %i.be
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !30
  %i.bi = icmp ult ptr %i.bf, %i.bh
  br label %.thread.i

.thread.i:                                        ; preds = %bb.h, %bb.g
  %i.bj = phi i1 [ %i.bi, %bb.h ], [ true, %bb.g ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bj, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #29
  %i.bk = load i64, ptr %i.aj, align 8, !tbaa !42
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.aj, align 8, !tbaa !42
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit

common.resume:                                    ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit136, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit133, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bm, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ], [ %i.ck, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138 ], [ %i.hm, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit133 ], [ %i.hr, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit136 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 48) #31
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 48) #31
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit: ; preds = %bb.i, %.thread.i, %bb.e
  %i.bn = load ptr, ptr %i.ab, align 8, !tbaa !30 ; 3 uses
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !31  ; 2 uses
  %.not10.i.i.i.i46 = icmp eq ptr %i.bo, null
  br i1 %.not10.i.i.i.i46, label %.critedge.i60, label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit, %.lr.ph.i.i.i.i47
  %.012.i.i.i.i48 = phi ptr [ %.1.i.i.i.i53, %.lr.ph.i.i.i.i47 ], [ %i.bo, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit ] ; 3 uses
  %.0811.i.i.i.i49 = phi ptr [ %.19.i.i.i.i50, %.lr.ph.i.i.i.i47 ], [ %i.i, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i48, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !30
  %i.br = icmp ult ptr %i.bq, %i.bn               ; 2 uses
  %.19.i.i.i.i50 = select i1 %i.br, ptr %.0811.i.i.i.i49, ptr %.012.i.i.i.i48 ; 5 uses
  %.1.in.v.i.i.i.i51 = select i1 %i.br, i64 24, i64 16
  %.1.in.i.i.i.i52 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i48, i64 %.1.in.v.i.i.i.i51
  %.1.i.i.i.i53 = load ptr, ptr %.1.in.i.i.i.i52, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i54 = icmp eq ptr %.1.i.i.i.i53, null
  br i1 %.not.i.i.i.i54, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i55, label %.lr.ph.i.i.i.i47, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i55: ; preds = %.lr.ph.i.i.i.i47
  %i.bs = icmp eq ptr %.19.i.i.i.i50, %i.i
  br i1 %i.bs, label %.critedge.i60, label %bb.j

bb.j:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i55
  %i.bt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i50, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !39
  %i.bv = icmp ult ptr %i.bn, %i.bu
  br i1 %i.bv, label %.critedge.i60, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit62

.critedge.i60:                                    ; preds = %bb.j, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i55, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
  %.08.lcssa.i.i.i14.i61 = phi ptr [ %.19.i.i.i.i50, %bb.j ], [ %.19.i.i.i.i50, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i55 ], [ %i.i, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit ]
  %i.bw = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32 ; 3 uses
  store ptr %i.bn, ptr %i.bx, align 8, !tbaa !39
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store ptr %i.ab, ptr %i.by, align 8, !tbaa !41
  %i.bz = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr %.08.lcssa.i.i.i14.i61, ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %bb.k unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138 ; 2 uses

bb.k:                                             ; preds = %.critedge.i60
  %i.ca = extractvalue { ptr, ptr } %i.bz, 1      ; 4 uses
  %.not.i139 = icmp eq ptr %i.ca, null
  br i1 %.not.i139, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = extractvalue { ptr, ptr } %i.bz, 0
  %.not.i.i.i140 = icmp ne ptr %i.cb, null
  %i.cc = icmp eq ptr %i.ca, %i.i
  %or.cond.i.i.i141 = select i1 %.not.i.i.i140, i1 true, i1 %i.cc
  br i1 %or.cond.i.i.i141, label %.thread.i142, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !30
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !30
  %i.cg = icmp ult ptr %i.cd, %i.cf
  br label %.thread.i142

.thread.i142:                                     ; preds = %bb.m, %bb.l
  %i.ch = phi i1 [ %i.cg, %bb.m ], [ true, %bb.l ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ch, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #29
  %i.ci = load i64, ptr %i.aj, align 8, !tbaa !42
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.aj, align 8, !tbaa !42
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit62

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138: ; preds = %.critedge.i60
  %i.ck = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 48) #31
  br label %common.resume

bb.n:                                             ; preds = %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 48) #31
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit62

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit62: ; preds = %bb.n, %.thread.i142, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.cl = load ptr, ptr %i.ae, align 8, !tbaa !20 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.cm, ptr %3, align 8, !tbaa !21
  %i.cn = icmp eq ptr %i.cl, null
  br i1 %i.cn, label %.noexc, label %bb.o

.noexc:                                           ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit62
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #30
  unreachable

bb.o:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit62
  %i.co = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cl) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store i64 %i.co, ptr %i.d, align 8, !tbaa !14
  %i.cp = icmp ugt i64 %i.co, 15
  br i1 %i.cp, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.o
  %i.cq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.cq, ptr %3, align 8, !tbaa !23
  %i.cr = load i64, ptr %i.d, align 8, !tbaa !14
  store i64 %i.cr, ptr %i.cm, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.o
  %i.cs = phi ptr [ %i.cq, %.noexc.i ], [ %i.cm, %bb.o ] ; 2 uses
  switch i64 %i.co, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.ct = load i8, ptr %i.cl, align 1, !tbaa !25
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !25
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr nonnull align 1 %i.cl, i64 %i.co, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i
  %i.cu = load i64, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !26
  %i.cw = load ptr, ptr %3, align 8, !tbaa !23
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cu
  store i8 0, ptr %i.cx, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !31 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %.not10.i.i.i64 = icmp eq ptr %i.cz, null
  %.pre = load ptr, ptr %3, align 8               ; 4 uses
  br i1 %.not10.i.i.i64, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i65

.lr.ph.i.i.i65:                                   ; preds = %bb.r
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !26 ; 4 uses
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i65
  %.012.i.i.i66 = phi ptr [ %i.cz, %.lr.ph.i.i.i65 ], [ %.1.i.i.i71, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i67 = phi ptr [ %i.da, %.lr.ph.i.i.i65 ], [ %.19.i.i.i68, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i66, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.db, i64 %i.dd) ; 2 uses
  %i.de = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.de, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %.012.i.i.i66, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !23
  %i.dh = call i32 @memcmp(ptr noundef %i.dg, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.s
  %i.di = sub i64 %i.dd, %i.db
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.di, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.dh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.dj = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i68 = select i1 %i.dj, ptr %.0811.i.i.i67, ptr %.012.i.i.i66 ; 5 uses
  %.1.in.v.i.i.i69 = select i1 %i.dj, i64 24, i64 16
  %.1.in.i.i.i70 = getelementptr inbounds nuw i8, ptr %.012.i.i.i66, i64 %.1.in.v.i.i.i69
  %.1.i.i.i71 = load ptr, ptr %.1.in.i.i.i70, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %.1.i.i.i71, null
  br i1 %.not.i.i.i72, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.s, !llvm.loop !43

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.dk = icmp eq ptr %.19.i.i.i68, %i.da
  br i1 %i.dk, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.19.i.i.i68, i64 40
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dm, i64 %i.db) ; 2 uses
  %i.dn = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.dn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %.19.i.i.i68, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !23
  %i.dq = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.dp, i64 noundef %.sroa.speculated.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.t
  %i.dr = sub i64 %i.db, %i.dm
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dr, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.dq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ds = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i73 = select i1 %i.ds, ptr %i.da, ptr %.19.i.i.i68
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.r
  %.sroa.0.0.i.i74 = phi ptr [ %i.da, %bb.r ], [ %i.da, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i73, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ]
  %i.dt = icmp eq ptr %.pre, %i.cm
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.du = load i64, ptr %i.cm, align 8, !tbaa !25
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.dv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.dw = load ptr, ptr %i.ag, align 8, !tbaa !20 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.dx, ptr %4, align 8, !tbaa !21
  %i.dy = icmp eq ptr %i.dw, null
  br i1 %i.dy, label %.noexc77, label %bb.u

.noexc77:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #30
  unreachable

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.dz, ptr %i.c, align 8, !tbaa !14
  %i.ea = icmp ugt i64 %i.dz, 15
  br i1 %i.ea, label %.noexc.i76, label %._crit_edge.i.i75

.noexc.i76:                                       ; preds = %bb.u
  %i.eb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.eb, ptr %4, align 8, !tbaa !23
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !14
  store i64 %i.ec, ptr %i.dx, align 8, !tbaa !25
  br label %._crit_edge.i.i75

._crit_edge.i.i75:                                ; preds = %.noexc.i76, %bb.u
  %i.ed = phi ptr [ %i.eb, %.noexc.i76 ], [ %i.dx, %bb.u ] ; 2 uses
  switch i64 %i.dz, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i75
  %i.ee = load i8, ptr %i.dw, align 1, !tbaa !25
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !25
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i75
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ed, ptr nonnull align 1 %i.dw, i64 %i.dz, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i75
  %i.ef = load i64, ptr %i.c, align 8, !tbaa !14  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !26
  %i.eh = load ptr, ptr %4, align 8, !tbaa !23
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ef
  store i8 0, ptr %i.ei, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.ej = load ptr, ptr %i.cy, align 8, !tbaa !31 ; 2 uses
  %.not10.i.i.i80 = icmp eq ptr %i.ej, null
  %.pre176 = load ptr, ptr %4, align 8            ; 4 uses
  br i1 %.not10.i.i.i80, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit110, label %.lr.ph.i.i.i81

.lr.ph.i.i.i81:                                   ; preds = %bb.x
  %i.ek = load i64, ptr %i.eg, align 8, !tbaa !26 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i87, %.lr.ph.i.i.i81
  %.012.i.i.i82 = phi ptr [ %i.ej, %.lr.ph.i.i.i81 ], [ %.1.i.i.i92, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i87 ] ; 4 uses
  %.0811.i.i.i83 = phi ptr [ %i.da, %.lr.ph.i.i.i81 ], [ %.19.i.i.i89, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i87 ]
  %i.el = getelementptr inbounds nuw i8, ptr %.012.i.i.i82, i64 40
  %i.em = load i64, ptr %i.el, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i84 = call i64 @llvm.umin.i64(i64 %i.ek, i64 %i.em) ; 2 uses
  %i.en = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i84, 0
  br i1 %i.en, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i106, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i85

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i85: ; preds = %bb.y
  %i.eo = getelementptr inbounds nuw i8, ptr %.012.i.i.i82, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !23
  %i.eq = call i32 @memcmp(ptr noundef %i.ep, ptr noundef %.pre176, i64 noundef %.sroa.speculated.i.i.i.i.i.i84) #29 ; 2 uses
  %.not.i.i.i.i.i.i86 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i.i.i.i.i86, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i106, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i87

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i106: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i85, %bb.y
  %i.er = sub i64 %i.em, %i.ek
  %spec.select7.i.i.i.i.i.i.i107 = call i64 @llvm.smax.i64(i64 %i.er, i64 -2147483648)
  %.08.i.i.i.i.i.i.i108 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i107, i64 2147483647)
  %.0.i6.i.i.i.i.i.i109 = trunc nsw i64 %.08.i.i.i.i.i.i.i108 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i87

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i87: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i106, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i85
  %.0.i.i.i.i.i.i88 = phi i32 [ %i.eq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i85 ], [ %.0.i6.i.i.i.i.i.i109, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i106 ]
  %i.es = icmp slt i32 %.0.i.i.i.i.i.i88, 0       ; 2 uses
  %.19.i.i.i89 = select i1 %i.es, ptr %.0811.i.i.i83, ptr %.012.i.i.i82 ; 5 uses
  %.1.in.v.i.i.i90 = select i1 %i.es, i64 24, i64 16
  %.1.in.i.i.i91 = getelementptr inbounds nuw i8, ptr %.012.i.i.i82, i64 %.1.in.v.i.i.i90
  %.1.i.i.i92 = load ptr, ptr %.1.in.i.i.i91, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %.1.i.i.i92, null
  br i1 %.not.i.i.i93, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i94, label %bb.y, !llvm.loop !43

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i94: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i87
  %i.et = icmp eq ptr %.19.i.i.i89, %i.da
  br i1 %i.et, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit110, label %bb.z

bb.z:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i94
  %i.eu = getelementptr inbounds nuw i8, ptr %.19.i.i.i89, i64 40
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i95 = call i64 @llvm.umin.i64(i64 %i.ev, i64 %i.ek) ; 2 uses
  %i.ew = icmp eq i64 %.sroa.speculated.i.i.i.i.i95, 0
  br i1 %i.ew, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i102, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i96

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i96: ; preds = %bb.z
  %i.ex = getelementptr inbounds nuw i8, ptr %.19.i.i.i89, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !23
  %i.ez = call i32 @memcmp(ptr noundef %.pre176, ptr noundef %i.ey, i64 noundef %.sroa.speculated.i.i.i.i.i95) #29 ; 2 uses
  %.not.i.i.i.i.i97 = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i.i.i.i97, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i102, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i98

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i102: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i96, %bb.z
  %i.fa = sub i64 %i.ek, %i.ev
  %spec.select7.i.i.i.i.i.i103 = call i64 @llvm.smax.i64(i64 %i.fa, i64 -2147483648)
  %.08.i.i.i.i.i.i104 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i103, i64 2147483647)
  %.0.i6.i.i.i.i.i105 = trunc nsw i64 %.08.i.i.i.i.i.i104 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i98

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i98: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i102, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i96
  %.0.i.i.i.i.i99 = phi i32 [ %i.ez, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i96 ], [ %.0.i6.i.i.i.i.i105, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i102 ]
  %i.fb = icmp slt i32 %.0.i.i.i.i.i99, 0
  %spec.select.i.i100 = select i1 %i.fb, ptr %i.da, ptr %.19.i.i.i89
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit110

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit110: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i98, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i94, %bb.x
  %.sroa.0.0.i.i101 = phi ptr [ %i.da, %bb.x ], [ %i.da, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i94 ], [ %spec.select.i.i100, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i98 ]
  %i.fc = icmp eq ptr %.pre176, %i.dx
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit110
  %i.fd = load i64, ptr %i.dx, align 8, !tbaa !25
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %.pre176, i64 noundef %i.fe) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ff = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.0.0.i.i74, ptr noundef nonnull align 8 dereferenceable(32) %i.da) #29 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !23 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 48 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !25
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #31
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef 72) #31
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !42
  %i.fo = add i64 %i.fn, -1
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !42
  %i.fp = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.0.0.i.i101, ptr noundef nonnull align 8 dereferenceable(32) %i.da) #29 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !23 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 48 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i114: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !25
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #31
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit116

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit116: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i114
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef 72) #31
  %i.fw = load i64, ptr %i.fm, align 8, !tbaa !42
  %i.fx = add i64 %i.fw, -1
  store i64 %i.fx, ptr %i.fm, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.fy = load ptr, ptr %i.ae, align 8, !tbaa !72 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.fz, ptr %5, align 8, !tbaa !21
  %i.ga = icmp eq ptr %i.fy, null
  br i1 %i.ga, label %.noexc.i117, label %bb.aa

.noexc.i117:                                      ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit116
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #30
  unreachable

bb.aa:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit116
  %i.gb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fy) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.gb, ptr %i.b, align 8, !tbaa !14
  %i.gc = icmp ugt i64 %i.gb, 15
  br i1 %i.gc, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.aa
  %i.gd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.gd, ptr %5, align 8, !tbaa !23
  %i.ge = load i64, ptr %i.b, align 8, !tbaa !14
  store i64 %i.ge, ptr %i.fz, align 8, !tbaa !25
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.aa
  %i.gf = phi ptr [ %i.gd, %.noexc.i.i ], [ %i.fz, %bb.aa ] ; 2 uses
  switch i64 %i.gb, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  %i.gg = load i8, ptr %i.fy, align 1, !tbaa !25
  store i8 %i.gg, ptr %i.gf, align 1, !tbaa !25
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit

bb.ac:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gf, ptr nonnull align 1 %i.fy, i64 %i.gb, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit: ; preds = %._crit_edge.i.i.i, %bb.ab, %bb.ac
  %i.gh = load i64, ptr %i.b, align 8, !tbaa !14  ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.gh, ptr %i.gi, align 8, !tbaa !26
  %i.gj = load ptr, ptr %5, align 8, !tbaa !23
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gh
  store i8 0, ptr %i.gk, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ad, ptr %i.gl, align 8, !tbaa !27
  %i.gm = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.ad unwind label %bb.ai     ; 0 uses

bb.ad:                                            ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit
  %i.gn = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.fz
  br i1 %i.go, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ad
  %i.gp = load i64, ptr %i.fz, align 8, !tbaa !25
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #31
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.gr = load ptr, ptr %i.ag, align 8, !tbaa !72 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.gs, ptr %6, align 8, !tbaa !21
  %i.gt = icmp eq ptr %i.gr, null
  br i1 %i.gt, label %.noexc.i120, label %bb.ae

.noexc.i120:                                      ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #30
  unreachable

bb.ae:                                            ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit
  %i.gu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gr) #29 ; 4 uses
end_hunk_5
begin_hunk_6_@_ZN10MallocPlus11memory_swapEPPfS1_:bb.a
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.at = icmp ult ptr %i.as, %i.ap               ; 2 uses
  %.19.i.i.i.i = select i1 %i.at, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.at, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.au = icmp eq ptr %.19.i.i.i.i, %i.i
  br i1 %i.au, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.ax = icmp ult ptr %i.ap, %i.aw
  br i1 %i.ax, label %.critedge.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit

.critedge.i:                                      ; preds = %bb.e, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, %bb.d
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.e ], [ %.19.i.i.i.i, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i ], [ %i.i, %bb.d ]
  %i.ay = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 3 uses
  store ptr %i.ap, ptr %i.az, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store ptr %i.ad, ptr %i.ba, align 8, !tbaa !41
  %i.bb = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.f unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.f:                                             ; preds = %.critedge.i
  %i.bc = extractvalue { ptr, ptr } %i.bb, 1      ; 4 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = extractvalue { ptr, ptr } %i.bb, 0
  %.not.i.i.i137 = icmp ne ptr %i.bd, null
  %i.be = icmp eq ptr %i.bc, %i.i
  %or.cond.i.i.i = select i1 %.not.i.i.i137, i1 true, i1 %i.be
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !30
  %i.bi = icmp ult ptr %i.bf, %i.bh
  br label %.thread.i

.thread.i:                                        ; preds = %bb.h, %bb.g
  %i.bj = phi i1 [ %i.bi, %bb.h ], [ true, %bb.g ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bj, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #29
  %i.bk = load i64, ptr %i.aj, align 8, !tbaa !42
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.aj, align 8, !tbaa !42
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit

common.resume:                                    ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit136, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit133, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bm, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ], [ %i.ck, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138 ], [ %i.hm, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit133 ], [ %i.hr, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit136 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 48) #31
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 48) #31
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit: ; preds = %bb.i, %.thread.i, %bb.e
  %i.bn = load ptr, ptr %i.ab, align 8, !tbaa !30 ; 3 uses
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !31  ; 2 uses
  %.not10.i.i.i.i46 = icmp eq ptr %i.bo, null
  br i1 %.not10.i.i.i.i46, label %.critedge.i60, label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit, %.lr.ph.i.i.i.i47
  %.012.i.i.i.i48 = phi ptr [ %.1.i.i.i.i53, %.lr.ph.i.i.i.i47 ], [ %i.bo, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit ] ; 3 uses
  %.0811.i.i.i.i49 = phi ptr [ %.19.i.i.i.i50, %.lr.ph.i.i.i.i47 ], [ %i.i, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i48, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !30
  %i.br = icmp ult ptr %i.bq, %i.bn               ; 2 uses
  %.19.i.i.i.i50 = select i1 %i.br, ptr %.0811.i.i.i.i49, ptr %.012.i.i.i.i48 ; 5 uses
  %.1.in.v.i.i.i.i51 = select i1 %i.br, i64 24, i64 16
  %.1.in.i.i.i.i52 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i48, i64 %.1.in.v.i.i.i.i51
  %.1.i.i.i.i53 = load ptr, ptr %.1.in.i.i.i.i52, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i54 = icmp eq ptr %.1.i.i.i.i53, null
  br i1 %.not.i.i.i.i54, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i55, label %.lr.ph.i.i.i.i47, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i55: ; preds = %.lr.ph.i.i.i.i47
  %i.bs = icmp eq ptr %.19.i.i.i.i50, %i.i
  br i1 %i.bs, label %.critedge.i60, label %bb.j

bb.j:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i55
  %i.bt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i50, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !39
  %i.bv = icmp ult ptr %i.bn, %i.bu
  br i1 %i.bv, label %.critedge.i60, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit62

.critedge.i60:                                    ; preds = %bb.j, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i55, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
  %.08.lcssa.i.i.i14.i61 = phi ptr [ %.19.i.i.i.i50, %bb.j ], [ %.19.i.i.i.i50, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i55 ], [ %i.i, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit ]
  %i.bw = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32 ; 3 uses
  store ptr %i.bn, ptr %i.bx, align 8, !tbaa !39
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store ptr %i.ab, ptr %i.by, align 8, !tbaa !41
  %i.bz = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr %.08.lcssa.i.i.i14.i61, ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %bb.k unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138 ; 2 uses

bb.k:                                             ; preds = %.critedge.i60
  %i.ca = extractvalue { ptr, ptr } %i.bz, 1      ; 4 uses
  %.not.i139 = icmp eq ptr %i.ca, null
  br i1 %.not.i139, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = extractvalue { ptr, ptr } %i.bz, 0
  %.not.i.i.i140 = icmp ne ptr %i.cb, null
  %i.cc = icmp eq ptr %i.ca, %i.i
  %or.cond.i.i.i141 = select i1 %.not.i.i.i140, i1 true, i1 %i.cc
  br i1 %or.cond.i.i.i141, label %.thread.i142, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !30
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !30
  %i.cg = icmp ult ptr %i.cd, %i.cf
  br label %.thread.i142

.thread.i142:                                     ; preds = %bb.m, %bb.l
  %i.ch = phi i1 [ %i.cg, %bb.m ], [ true, %bb.l ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ch, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #29
  %i.ci = load i64, ptr %i.aj, align 8, !tbaa !42
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.aj, align 8, !tbaa !42
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit62

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138: ; preds = %.critedge.i60
  %i.ck = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 48) #31
  br label %common.resume

bb.n:                                             ; preds = %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 48) #31
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit62

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit62: ; preds = %bb.n, %.thread.i142, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.cl = load ptr, ptr %i.ae, align 8, !tbaa !20 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.cm, ptr %3, align 8, !tbaa !21
  %i.cn = icmp eq ptr %i.cl, null
  br i1 %i.cn, label %.noexc, label %bb.o

.noexc:                                           ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit62
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #30
  unreachable

bb.o:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit62
  %i.co = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cl) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store i64 %i.co, ptr %i.d, align 8, !tbaa !14
  %i.cp = icmp ugt i64 %i.co, 15
  br i1 %i.cp, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.o
  %i.cq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.cq, ptr %3, align 8, !tbaa !23
  %i.cr = load i64, ptr %i.d, align 8, !tbaa !14
  store i64 %i.cr, ptr %i.cm, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.o
  %i.cs = phi ptr [ %i.cq, %.noexc.i ], [ %i.cm, %bb.o ] ; 2 uses
  switch i64 %i.co, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.ct = load i8, ptr %i.cl, align 1, !tbaa !25
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !25
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr nonnull align 1 %i.cl, i64 %i.co, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i
  %i.cu = load i64, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !26
  %i.cw = load ptr, ptr %3, align 8, !tbaa !23
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cu
  store i8 0, ptr %i.cx, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !31 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %.not10.i.i.i64 = icmp eq ptr %i.cz, null
  %.pre = load ptr, ptr %3, align 8               ; 4 uses
  br i1 %.not10.i.i.i64, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i65

.lr.ph.i.i.i65:                                   ; preds = %bb.r
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !26 ; 4 uses
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i65
  %.012.i.i.i66 = phi ptr [ %i.cz, %.lr.ph.i.i.i65 ], [ %.1.i.i.i71, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i67 = phi ptr [ %i.da, %.lr.ph.i.i.i65 ], [ %.19.i.i.i68, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i66, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.db, i64 %i.dd) ; 2 uses
  %i.de = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.de, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %.012.i.i.i66, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !23
  %i.dh = call i32 @memcmp(ptr noundef %i.dg, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.s
  %i.di = sub i64 %i.dd, %i.db
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.di, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.dh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.dj = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i68 = select i1 %i.dj, ptr %.0811.i.i.i67, ptr %.012.i.i.i66 ; 5 uses
  %.1.in.v.i.i.i69 = select i1 %i.dj, i64 24, i64 16
  %.1.in.i.i.i70 = getelementptr inbounds nuw i8, ptr %.012.i.i.i66, i64 %.1.in.v.i.i.i69
  %.1.i.i.i71 = load ptr, ptr %.1.in.i.i.i70, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %.1.i.i.i71, null
  br i1 %.not.i.i.i72, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.s, !llvm.loop !43

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.dk = icmp eq ptr %.19.i.i.i68, %i.da
  br i1 %i.dk, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.19.i.i.i68, i64 40
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dm, i64 %i.db) ; 2 uses
  %i.dn = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.dn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %.19.i.i.i68, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !23
  %i.dq = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.dp, i64 noundef %.sroa.speculated.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.t
  %i.dr = sub i64 %i.db, %i.dm
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dr, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.dq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ds = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i73 = select i1 %i.ds, ptr %i.da, ptr %.19.i.i.i68
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.r
  %.sroa.0.0.i.i74 = phi ptr [ %i.da, %bb.r ], [ %i.da, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i73, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ]
  %i.dt = icmp eq ptr %.pre, %i.cm
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.du = load i64, ptr %i.cm, align 8, !tbaa !25
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.dv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.dw = load ptr, ptr %i.ag, align 8, !tbaa !20 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.dx, ptr %4, align 8, !tbaa !21
  %i.dy = icmp eq ptr %i.dw, null
  br i1 %i.dy, label %.noexc77, label %bb.u

.noexc77:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #30
  unreachable

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.dz, ptr %i.c, align 8, !tbaa !14
  %i.ea = icmp ugt i64 %i.dz, 15
  br i1 %i.ea, label %.noexc.i76, label %._crit_edge.i.i75

.noexc.i76:                                       ; preds = %bb.u
  %i.eb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.eb, ptr %4, align 8, !tbaa !23
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !14
  store i64 %i.ec, ptr %i.dx, align 8, !tbaa !25
  br label %._crit_edge.i.i75

._crit_edge.i.i75:                                ; preds = %.noexc.i76, %bb.u
  %i.ed = phi ptr [ %i.eb, %.noexc.i76 ], [ %i.dx, %bb.u ] ; 2 uses
  switch i64 %i.dz, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i75
  %i.ee = load i8, ptr %i.dw, align 1, !tbaa !25
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !25
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i75
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ed, ptr nonnull align 1 %i.dw, i64 %i.dz, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i75
  %i.ef = load i64, ptr %i.c, align 8, !tbaa !14  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !26
  %i.eh = load ptr, ptr %4, align 8, !tbaa !23
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ef
  store i8 0, ptr %i.ei, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.ej = load ptr, ptr %i.cy, align 8, !tbaa !31 ; 2 uses
  %.not10.i.i.i80 = icmp eq ptr %i.ej, null
  %.pre176 = load ptr, ptr %4, align 8            ; 4 uses
  br i1 %.not10.i.i.i80, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit110, label %.lr.ph.i.i.i81

.lr.ph.i.i.i81:                                   ; preds = %bb.x
  %i.ek = load i64, ptr %i.eg, align 8, !tbaa !26 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i87, %.lr.ph.i.i.i81
  %.012.i.i.i82 = phi ptr [ %i.ej, %.lr.ph.i.i.i81 ], [ %.1.i.i.i92, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i87 ] ; 4 uses
  %.0811.i.i.i83 = phi ptr [ %i.da, %.lr.ph.i.i.i81 ], [ %.19.i.i.i89, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i87 ]
  %i.el = getelementptr inbounds nuw i8, ptr %.012.i.i.i82, i64 40
  %i.em = load i64, ptr %i.el, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i84 = call i64 @llvm.umin.i64(i64 %i.ek, i64 %i.em) ; 2 uses
  %i.en = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i84, 0
  br i1 %i.en, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i106, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i85

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i85: ; preds = %bb.y
  %i.eo = getelementptr inbounds nuw i8, ptr %.012.i.i.i82, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !23
  %i.eq = call i32 @memcmp(ptr noundef %i.ep, ptr noundef %.pre176, i64 noundef %.sroa.speculated.i.i.i.i.i.i84) #29 ; 2 uses
  %.not.i.i.i.i.i.i86 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i.i.i.i.i86, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i106, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i87

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i106: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i85, %bb.y
  %i.er = sub i64 %i.em, %i.ek
  %spec.select7.i.i.i.i.i.i.i107 = call i64 @llvm.smax.i64(i64 %i.er, i64 -2147483648)
  %.08.i.i.i.i.i.i.i108 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i107, i64 2147483647)
  %.0.i6.i.i.i.i.i.i109 = trunc nsw i64 %.08.i.i.i.i.i.i.i108 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i87

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i87: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i106, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i85
  %.0.i.i.i.i.i.i88 = phi i32 [ %i.eq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i85 ], [ %.0.i6.i.i.i.i.i.i109, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i106 ]
  %i.es = icmp slt i32 %.0.i.i.i.i.i.i88, 0       ; 2 uses
  %.19.i.i.i89 = select i1 %i.es, ptr %.0811.i.i.i83, ptr %.012.i.i.i82 ; 5 uses
  %.1.in.v.i.i.i90 = select i1 %i.es, i64 24, i64 16
  %.1.in.i.i.i91 = getelementptr inbounds nuw i8, ptr %.012.i.i.i82, i64 %.1.in.v.i.i.i90
  %.1.i.i.i92 = load ptr, ptr %.1.in.i.i.i91, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %.1.i.i.i92, null
  br i1 %.not.i.i.i93, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i94, label %bb.y, !llvm.loop !43

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i94: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i87
  %i.et = icmp eq ptr %.19.i.i.i89, %i.da
  br i1 %i.et, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit110, label %bb.z

bb.z:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i94
  %i.eu = getelementptr inbounds nuw i8, ptr %.19.i.i.i89, i64 40
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i95 = call i64 @llvm.umin.i64(i64 %i.ev, i64 %i.ek) ; 2 uses
  %i.ew = icmp eq i64 %.sroa.speculated.i.i.i.i.i95, 0
  br i1 %i.ew, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i102, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i96

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i96: ; preds = %bb.z
  %i.ex = getelementptr inbounds nuw i8, ptr %.19.i.i.i89, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !23
  %i.ez = call i32 @memcmp(ptr noundef %.pre176, ptr noundef %i.ey, i64 noundef %.sroa.speculated.i.i.i.i.i95) #29 ; 2 uses
  %.not.i.i.i.i.i97 = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i.i.i.i97, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i102, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i98

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i102: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i96, %bb.z
  %i.fa = sub i64 %i.ek, %i.ev
  %spec.select7.i.i.i.i.i.i103 = call i64 @llvm.smax.i64(i64 %i.fa, i64 -2147483648)
  %.08.i.i.i.i.i.i104 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i103, i64 2147483647)
  %.0.i6.i.i.i.i.i105 = trunc nsw i64 %.08.i.i.i.i.i.i104 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i98

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i98: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i102, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i96
  %.0.i.i.i.i.i99 = phi i32 [ %i.ez, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i96 ], [ %.0.i6.i.i.i.i.i105, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i102 ]
  %i.fb = icmp slt i32 %.0.i.i.i.i.i99, 0
  %spec.select.i.i100 = select i1 %i.fb, ptr %i.da, ptr %.19.i.i.i89
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit110

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit110: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i98, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i94, %bb.x
  %.sroa.0.0.i.i101 = phi ptr [ %i.da, %bb.x ], [ %i.da, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i94 ], [ %spec.select.i.i100, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i98 ]
  %i.fc = icmp eq ptr %.pre176, %i.dx
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit110
  %i.fd = load i64, ptr %i.dx, align 8, !tbaa !25
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %.pre176, i64 noundef %i.fe) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ff = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.0.0.i.i74, ptr noundef nonnull align 8 dereferenceable(32) %i.da) #29 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !23 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 48 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !25
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #31
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef 72) #31
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !42
  %i.fo = add i64 %i.fn, -1
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !42
  %i.fp = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.0.0.i.i101, ptr noundef nonnull align 8 dereferenceable(32) %i.da) #29 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !23 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 48 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i114: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !25
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #31
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit116

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit116: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i114
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef 72) #31
  %i.fw = load i64, ptr %i.fm, align 8, !tbaa !42
  %i.fx = add i64 %i.fw, -1
  store i64 %i.fx, ptr %i.fm, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.fy = load ptr, ptr %i.ae, align 8, !tbaa !72 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.fz, ptr %5, align 8, !tbaa !21
  %i.ga = icmp eq ptr %i.fy, null
  br i1 %i.ga, label %.noexc.i117, label %bb.aa

.noexc.i117:                                      ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit116
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #30
  unreachable

bb.aa:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit116
  %i.gb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fy) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.gb, ptr %i.b, align 8, !tbaa !14
  %i.gc = icmp ugt i64 %i.gb, 15
  br i1 %i.gc, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.aa
  %i.gd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.gd, ptr %5, align 8, !tbaa !23
  %i.ge = load i64, ptr %i.b, align 8, !tbaa !14
  store i64 %i.ge, ptr %i.fz, align 8, !tbaa !25
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.aa
  %i.gf = phi ptr [ %i.gd, %.noexc.i.i ], [ %i.fz, %bb.aa ] ; 2 uses
  switch i64 %i.gb, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  %i.gg = load i8, ptr %i.fy, align 1, !tbaa !25
  store i8 %i.gg, ptr %i.gf, align 1, !tbaa !25
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit

bb.ac:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gf, ptr nonnull align 1 %i.fy, i64 %i.gb, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit: ; preds = %._crit_edge.i.i.i, %bb.ab, %bb.ac
  %i.gh = load i64, ptr %i.b, align 8, !tbaa !14  ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.gh, ptr %i.gi, align 8, !tbaa !26
  %i.gj = load ptr, ptr %5, align 8, !tbaa !23
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gh
  store i8 0, ptr %i.gk, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ad, ptr %i.gl, align 8, !tbaa !27
  %i.gm = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.ad unwind label %bb.ai     ; 0 uses

bb.ad:                                            ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit
  %i.gn = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.fz
  br i1 %i.go, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ad
  %i.gp = load i64, ptr %i.fz, align 8, !tbaa !25
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #31
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.gr = load ptr, ptr %i.ag, align 8, !tbaa !72 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.gs, ptr %6, align 8, !tbaa !21
  %i.gt = icmp eq ptr %i.gr, null
  br i1 %i.gt, label %.noexc.i120, label %bb.ae

.noexc.i120:                                      ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #30
  unreachable

bb.ae:                                            ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit
  %i.gu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gr) #29 ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN10MallocPlus11memory_swapEPPdS1_:bb.a
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.ar = icmp ult ptr %i.aq, %i.an               ; 2 uses
  %.19.i.i.i.i = select i1 %i.ar, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.ar, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.as = icmp eq ptr %.19.i.i.i.i, %i.g
  br i1 %i.as, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !39
  %i.av = icmp ult ptr %i.an, %i.au
  br i1 %i.av, label %.critedge.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit

.critedge.i:                                      ; preds = %bb.e, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, %bb.d
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.e ], [ %.19.i.i.i.i, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i ], [ %i.g, %bb.d ]
  %i.aw = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 3 uses
  store ptr %i.an, ptr %i.ax, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store ptr %i.ab, ptr %i.ay, align 8, !tbaa !41
  %i.az = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.f unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.f:                                             ; preds = %.critedge.i
  %i.ba = extractvalue { ptr, ptr } %i.az, 1      ; 4 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = extractvalue { ptr, ptr } %i.az, 0
  %.not.i.i.i120 = icmp ne ptr %i.bb, null
  %i.bc = icmp eq ptr %i.ba, %i.g
  %or.cond.i.i.i = select i1 %.not.i.i.i120, i1 true, i1 %i.bc
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !30
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !30
  %i.bg = icmp ult ptr %i.bd, %i.bf
  br label %.thread.i

.thread.i:                                        ; preds = %bb.h, %bb.g
  %i.bh = phi i1 [ %i.bg, %bb.h ], [ true, %bb.g ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bh, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #29
  %i.bi = load i64, ptr %i.ah, align 8, !tbaa !42
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.ah, align 8, !tbaa !42
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit

common.resume:                                    ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i121, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
  %.sink = phi ptr [ %i.bu, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i121 ], [ %i.aw, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.ci, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i121 ], [ %i.bk, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 48) #31
  resume { ptr, i32 } %common.resume.op

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 48) #31
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit: ; preds = %bb.i, %.thread.i, %bb.e
  %i.bl = load ptr, ptr %i.z, align 8, !tbaa !30  ; 3 uses
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !31  ; 2 uses
  %.not10.i.i.i.i43 = icmp eq ptr %i.bm, null
  br i1 %.not10.i.i.i.i43, label %.critedge.i57, label %.lr.ph.i.i.i.i44

.lr.ph.i.i.i.i44:                                 ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit, %.lr.ph.i.i.i.i44
  %.012.i.i.i.i45 = phi ptr [ %.1.i.i.i.i50, %.lr.ph.i.i.i.i44 ], [ %i.bm, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit ] ; 3 uses
  %.0811.i.i.i.i46 = phi ptr [ %.19.i.i.i.i47, %.lr.ph.i.i.i.i44 ], [ %i.g, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i45, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !30
  %i.bp = icmp ult ptr %i.bo, %i.bl               ; 2 uses
  %.19.i.i.i.i47 = select i1 %i.bp, ptr %.0811.i.i.i.i46, ptr %.012.i.i.i.i45 ; 5 uses
  %.1.in.v.i.i.i.i48 = select i1 %i.bp, i64 24, i64 16
  %.1.in.i.i.i.i49 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i45, i64 %.1.in.v.i.i.i.i48
  %.1.i.i.i.i50 = load ptr, ptr %.1.in.i.i.i.i49, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i51 = icmp eq ptr %.1.i.i.i.i50, null
  br i1 %.not.i.i.i.i51, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i52, label %.lr.ph.i.i.i.i44, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i52: ; preds = %.lr.ph.i.i.i.i44
  %i.bq = icmp eq ptr %.19.i.i.i.i47, %i.g
  br i1 %i.bq, label %.critedge.i57, label %bb.j

bb.j:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i52
  %i.br = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i47, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !39
  %i.bt = icmp ult ptr %i.bl, %i.bs
  br i1 %i.bt, label %.critedge.i57, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit59

.critedge.i57:                                    ; preds = %bb.j, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i52, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
  %.08.lcssa.i.i.i14.i58 = phi ptr [ %.19.i.i.i.i47, %bb.j ], [ %.19.i.i.i.i47, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i52 ], [ %i.g, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit ]
  %i.bu = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32 ; 3 uses
  store ptr %i.bl, ptr %i.bv, align 8, !tbaa !39
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store ptr %i.z, ptr %i.bw, align 8, !tbaa !41
  %i.bx = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr %.08.lcssa.i.i.i14.i58, ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %bb.k unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i121 ; 2 uses

bb.k:                                             ; preds = %.critedge.i57
  %i.by = extractvalue { ptr, ptr } %i.bx, 1      ; 4 uses
  %.not.i122 = icmp eq ptr %i.by, null
  br i1 %.not.i122, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = extractvalue { ptr, ptr } %i.bx, 0
  %.not.i.i.i123 = icmp ne ptr %i.bz, null
  %i.ca = icmp eq ptr %i.by, %i.g
  %or.cond.i.i.i124 = select i1 %.not.i.i.i123, i1 true, i1 %i.ca
  br i1 %or.cond.i.i.i124, label %.thread.i125, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !30
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !30
  %i.ce = icmp ult ptr %i.cb, %i.cd
  br label %.thread.i125

.thread.i125:                                     ; preds = %bb.m, %bb.l
  %i.cf = phi i1 [ %i.ce, %bb.m ], [ true, %bb.l ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cf, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #29
  %i.cg = load i64, ptr %i.ah, align 8, !tbaa !42
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.ah, align 8, !tbaa !42
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit59

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i121: ; preds = %.critedge.i57
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.n:                                             ; preds = %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 48) #31
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit59

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit59: ; preds = %bb.n, %.thread.i125, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.cj = load ptr, ptr %i.ac, align 8, !tbaa !20 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.ck, ptr %3, align 8, !tbaa !21
  %i.cl = icmp eq ptr %i.cj, null
  br i1 %i.cl, label %.noexc, label %bb.o

.noexc:                                           ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit59
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #30
  unreachable

bb.o:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit59
  %i.cm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cj) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.cm, ptr %i.b, align 8, !tbaa !14
  %i.cn = icmp ugt i64 %i.cm, 15
  br i1 %i.cn, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.o
  %i.co = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.co, ptr %3, align 8, !tbaa !23
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !14
  store i64 %i.cp, ptr %i.ck, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.o
  %i.cq = phi ptr [ %i.co, %.noexc.i ], [ %i.ck, %bb.o ] ; 2 uses
  switch i64 %i.cm, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.cr = load i8, ptr %i.cj, align 1, !tbaa !25
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !25
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr nonnull align 1 %i.cj, i64 %i.cm, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i
  %i.cs = load i64, ptr %i.b, align 8, !tbaa !14  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !26
  %i.cu = load ptr, ptr %3, align 8, !tbaa !23
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store i8 0, ptr %i.cv, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !31 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %.not10.i.i.i61 = icmp eq ptr %i.cx, null
  %.pre = load ptr, ptr %3, align 8               ; 4 uses
  br i1 %.not10.i.i.i61, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i62

.lr.ph.i.i.i62:                                   ; preds = %bb.r
  %i.cz = load i64, ptr %i.ct, align 8, !tbaa !26 ; 4 uses
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i62
  %.012.i.i.i63 = phi ptr [ %i.cx, %.lr.ph.i.i.i62 ], [ %.1.i.i.i68, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i64 = phi ptr [ %i.cy, %.lr.ph.i.i.i62 ], [ %.19.i.i.i65, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i63, i64 40
  %i.db = load i64, ptr %i.da, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cz, i64 %i.db) ; 2 uses
  %i.dc = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.dc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i63, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !23
  %i.df = call i32 @memcmp(ptr noundef %i.de, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.df, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.s
  %i.dg = sub i64 %i.db, %i.cz
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dg, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.df, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.dh = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i65 = select i1 %i.dh, ptr %.0811.i.i.i64, ptr %.012.i.i.i63 ; 5 uses
  %.1.in.v.i.i.i66 = select i1 %i.dh, i64 24, i64 16
  %.1.in.i.i.i67 = getelementptr inbounds nuw i8, ptr %.012.i.i.i63, i64 %.1.in.v.i.i.i66
  %.1.i.i.i68 = load ptr, ptr %.1.in.i.i.i67, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %.1.i.i.i68, null
  br i1 %.not.i.i.i69, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.s, !llvm.loop !43

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.di = icmp eq ptr %.19.i.i.i65, %i.cy
  br i1 %i.di, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.19.i.i.i65, i64 40
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dk, i64 %i.cz) ; 2 uses
  %i.dl = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.dl, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.t
  %i.dm = getelementptr inbounds nuw i8, ptr %.19.i.i.i65, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !23
  %i.do = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.dn, i64 noundef %.sroa.speculated.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.t
  %i.dp = sub i64 %i.cz, %i.dk
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dp, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.do, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.dq = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i70 = select i1 %i.dq, ptr %i.cy, ptr %.19.i.i.i65
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.r
  %.sroa.0.0.i.i71 = phi ptr [ %i.cy, %bb.r ], [ %i.cy, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i70, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ]
  %i.dr = icmp eq ptr %.pre, %i.ck
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.ds = load i64, ptr %i.ck, align 8, !tbaa !25
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.dt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.du = load ptr, ptr %i.ae, align 8, !tbaa !20 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.dv, ptr %4, align 8, !tbaa !21
  %i.dw = icmp eq ptr %i.du, null
  br i1 %i.dw, label %.noexc74, label %bb.u

.noexc74:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #30
  unreachable

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.du) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.dx, ptr %i.a, align 8, !tbaa !14
  %i.dy = icmp ugt i64 %i.dx, 15
  br i1 %i.dy, label %.noexc.i73, label %._crit_edge.i.i72

.noexc.i73:                                       ; preds = %bb.u
  %i.dz = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.dz, ptr %4, align 8, !tbaa !23
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.ea, ptr %i.dv, align 8, !tbaa !25
  br label %._crit_edge.i.i72

._crit_edge.i.i72:                                ; preds = %.noexc.i73, %bb.u
  %i.eb = phi ptr [ %i.dz, %.noexc.i73 ], [ %i.dv, %bb.u ] ; 2 uses
  switch i64 %i.dx, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i72
  %i.ec = load i8, ptr %i.du, align 1, !tbaa !25
  store i8 %i.ec, ptr %i.eb, align 1, !tbaa !25
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i72
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr nonnull align 1 %i.du, i64 %i.dx, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i72
  %i.ed = load i64, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !26
  %i.ef = load ptr, ptr %4, align 8, !tbaa !23
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ed
  store i8 0, ptr %i.eg, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.eh = load ptr, ptr %i.cw, align 8, !tbaa !31 ; 2 uses
  %.not10.i.i.i77 = icmp eq ptr %i.eh, null
  %.pre159 = load ptr, ptr %4, align 8            ; 4 uses
  br i1 %.not10.i.i.i77, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit107, label %.lr.ph.i.i.i78

.lr.ph.i.i.i78:                                   ; preds = %bb.x
  %i.ei = load i64, ptr %i.ee, align 8, !tbaa !26 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i84, %.lr.ph.i.i.i78
  %.012.i.i.i79 = phi ptr [ %i.eh, %.lr.ph.i.i.i78 ], [ %.1.i.i.i89, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i84 ] ; 4 uses
  %.0811.i.i.i80 = phi ptr [ %i.cy, %.lr.ph.i.i.i78 ], [ %.19.i.i.i86, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i84 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i.i.i79, i64 40
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i81 = call i64 @llvm.umin.i64(i64 %i.ei, i64 %i.ek) ; 2 uses
  %i.el = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i81, 0
  br i1 %i.el, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i103, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i82

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i82: ; preds = %bb.y
  %i.em = getelementptr inbounds nuw i8, ptr %.012.i.i.i79, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !23
  %i.eo = call i32 @memcmp(ptr noundef %i.en, ptr noundef %.pre159, i64 noundef %.sroa.speculated.i.i.i.i.i.i81) #29 ; 2 uses
  %.not.i.i.i.i.i.i83 = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i.i.i.i.i83, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i103, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i84

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i103: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i82, %bb.y
  %i.ep = sub i64 %i.ek, %i.ei
  %spec.select7.i.i.i.i.i.i.i104 = call i64 @llvm.smax.i64(i64 %i.ep, i64 -2147483648)
  %.08.i.i.i.i.i.i.i105 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i104, i64 2147483647)
  %.0.i6.i.i.i.i.i.i106 = trunc nsw i64 %.08.i.i.i.i.i.i.i105 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i84

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i84: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i103, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i82
  %.0.i.i.i.i.i.i85 = phi i32 [ %i.eo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i82 ], [ %.0.i6.i.i.i.i.i.i106, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i103 ]
  %i.eq = icmp slt i32 %.0.i.i.i.i.i.i85, 0       ; 2 uses
  %.19.i.i.i86 = select i1 %i.eq, ptr %.0811.i.i.i80, ptr %.012.i.i.i79 ; 5 uses
  %.1.in.v.i.i.i87 = select i1 %i.eq, i64 24, i64 16
  %.1.in.i.i.i88 = getelementptr inbounds nuw i8, ptr %.012.i.i.i79, i64 %.1.in.v.i.i.i87
  %.1.i.i.i89 = load ptr, ptr %.1.in.i.i.i88, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i90 = icmp eq ptr %.1.i.i.i89, null
  br i1 %.not.i.i.i90, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i91, label %bb.y, !llvm.loop !43

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i91: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i84
  %i.er = icmp eq ptr %.19.i.i.i86, %i.cy
  br i1 %i.er, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit107, label %bb.z

bb.z:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i91
  %i.es = getelementptr inbounds nuw i8, ptr %.19.i.i.i86, i64 40
  %i.et = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i92 = call i64 @llvm.umin.i64(i64 %i.et, i64 %i.ei) ; 2 uses
  %i.eu = icmp eq i64 %.sroa.speculated.i.i.i.i.i92, 0
  br i1 %i.eu, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i99, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i93

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i93: ; preds = %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %.19.i.i.i86, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !23
  %i.ex = call i32 @memcmp(ptr noundef %.pre159, ptr noundef %i.ew, i64 noundef %.sroa.speculated.i.i.i.i.i92) #29 ; 2 uses
  %.not.i.i.i.i.i94 = icmp eq i32 %i.ex, 0
  br i1 %.not.i.i.i.i.i94, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i99, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i95

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i99: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i93, %bb.z
  %i.ey = sub i64 %i.ei, %i.et
  %spec.select7.i.i.i.i.i.i100 = call i64 @llvm.smax.i64(i64 %i.ey, i64 -2147483648)
  %.08.i.i.i.i.i.i101 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i100, i64 2147483647)
  %.0.i6.i.i.i.i.i102 = trunc nsw i64 %.08.i.i.i.i.i.i101 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i95

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i95: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i99, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i93
  %.0.i.i.i.i.i96 = phi i32 [ %i.ex, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i93 ], [ %.0.i6.i.i.i.i.i102, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i99 ]
  %i.ez = icmp slt i32 %.0.i.i.i.i.i96, 0
  %spec.select.i.i97 = select i1 %i.ez, ptr %i.cy, ptr %.19.i.i.i86
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit107

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit107: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i95, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i91, %bb.x
  %.sroa.0.0.i.i98 = phi ptr [ %i.cy, %bb.x ], [ %i.cy, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i91 ], [ %spec.select.i.i97, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i95 ]
  %i.fa = icmp eq ptr %.pre159, %i.dv
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit107
  %i.fb = load i64, ptr %i.dv, align 8, !tbaa !25
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %.pre159, i64 noundef %i.fc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.fd = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.0.0.i.i71, ptr noundef nonnull align 8 dereferenceable(32) %i.cy) #29 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !23 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 48 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !25
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #31
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef 72) #31
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !42
  %i.fm = add i64 %i.fl, -1
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !42
  %i.fn = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.0.0.i.i98, ptr noundef nonnull align 8 dereferenceable(32) %i.cy) #29 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !23 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 48 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i111: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !25
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #31
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit113

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit113: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i111
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef 72) #31
  %i.fu = load i64, ptr %i.fk, align 8, !tbaa !42
  %i.fv = add i64 %i.fu, -1
  store i64 %i.fv, ptr %i.fk, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.fw = load ptr, ptr %i.ac, align 8, !tbaa !72
  store ptr %i.fw, ptr %5, align 8, !tbaa !73
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ab, ptr %i.fx, align 8, !tbaa !75
  %i.fy = call { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_emplace_uniqueIJS6_IPKcS9_EEEES6_ISt17_Rb_tree_iteratorISA_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.fz = load ptr, ptr %i.ae, align 8, !tbaa !72
  store ptr %i.fz, ptr %6, align 8, !tbaa !73
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.z, ptr %i.ga, align 8, !tbaa !75
  %i.gb = call { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_emplace_uniqueIJS6_IPKcS9_EEEES6_ISt17_Rb_tree_iteratorISA_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.gc = load ptr, ptr %i.ab, align 8, !tbaa !19
  store ptr %i.gc, ptr %1, align 8, !tbaa !89
  %i.gd = load ptr, ptr %i.z, align 8, !tbaa !19
  store ptr %i.gd, ptr %2, align 8, !tbaa !89
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i39, %bb.a, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit42, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit113
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN10MallocPlus16memory_duplicateEPvPKc(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef readnone captures(address) %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = icmp ult ptr %i.e, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit: ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.j = icmp ult ptr %1, %i.i
  br i1 %i.j, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !17
  %i.t = tail call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.o, i64 noundef %i.q, ptr noundef %2, i32 noundef %i.s)
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.a, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit, %bb.b
  %.0 = phi ptr [ %i.t, %bb.b ], [ null, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit ], [ null, %bb.a ], [ null, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN10MallocPlus14get_memory_ptrEPKc(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(96) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !21
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #30
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.d, ptr %i.a, align 8, !tbaa !14
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !23
  %i.g = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !25
  store i8 %i.i, ptr %i.h, align 1, !tbaa !25
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !26
  %i.l = load ptr, ptr %2, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.o, null
  %.pre = load ptr, ptr %2, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.q = load i64, ptr %i.k, align 8, !tbaa !26   ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.s) ; 2 uses
  %i.t = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.w = call i32 @memcmp(ptr noundef %i.v, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.x = sub i64 %i.s, %i.q
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.x, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.y = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.y, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.y, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.f, !llvm.loop !43

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.z = icmp eq ptr %.19.i.i.i, %i.p
  br i1 %i.z, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.q) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23
  %i.af = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.g
  %i.ag = sub i64 %i.q, %i.ab
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ah = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.ah, ptr %i.p, ptr %.19.i.i.i
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %i.p, %bb.e ], [ %i.p, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %i.ai = icmp eq ptr %.pre, %i.b
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !25
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ak) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %.not = icmp eq ptr %.sroa.0.0.i.i, %i.p
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.0 = phi ptr [ %i.an, %bb.h ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef zeroext i1 @_ZN10MallocPlus22check_memory_attributeEPvi(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(96) %0, ptr noundef readnone captures(address) %1, i32 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = icmp ult ptr %i.e, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit: ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.j = icmp ult ptr %1, %i.i
  br i1 %i.j, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17
  %i.o = and i32 %i.n, %2
  %.not = icmp ne i32 %i.o, 0
  ret i1 %.not

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.a, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 1) #36
  unreachable
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(96) %0, ptr noundef readnone captures(address) %1, i32 noundef %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = icmp ult ptr %i.e, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit: ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.j = icmp ult ptr %1, %i.i
  br i1 %i.j, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17
  %i.o = or i32 %i.n, %2
  store i32 %i.o, ptr %i.m, align 8, !tbaa !17
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.a, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10MallocPlus22clear_memory_attributeEPvi(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(96) %0, ptr noundef readnone captures(address) %1, i32 noundef %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i
end_hunk_7
