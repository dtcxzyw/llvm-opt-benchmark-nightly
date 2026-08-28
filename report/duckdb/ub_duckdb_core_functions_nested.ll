Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_nested?download=true
inline.NumInlined: 12414
inline.NumDeleted: 4971
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZNSt3mapIfmSt4lessIfESaISt4pairIKfmEEEixERS3_:bb.a
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIfmSt4lessIfESaISt4pairIKfmEEE11lower_boundERS3_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load float, ptr %i.i, align 4, !tbaa !928
  %i.k = fcmp olt float %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIfmSt4lessIfESaISt4pairIKfmEEE11lower_boundERS3_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIfmSt4lessIfESaISt4pairIKfmEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load float, ptr %1, align 4, !tbaa !928
  store float %i.n, ptr %i.m, align 8, !tbaa !1300
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !1297
  %i.p = invoke { ptr, ptr } @_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

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
  %i.u = load float, ptr %i.m, align 8, !tbaa !928
  %i.v = load float, ptr %i.t, align 4, !tbaa !928
  %i.w = fcmp olt float %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.x = phi i1 [ %i.w, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #25
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1147
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !1147
  br label %_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #29
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #29
  br label %_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.g, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIfSt3mapIfmSt4lessIfESaISt4pairIKfmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !100
  %i.d = icmp eq i8 %i.c, 8
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.h = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1147
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1152 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load float, ptr %i.g, align 4, !tbaa !928
  %i.i = load float, ptr %2, align 4, !tbaa !928
  %i.j = fcmp olt float %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02021.i = load ptr, ptr %i.k, align 8, !tbaa !1152 ; 2 uses
  %.not22.i = icmp eq ptr %.02021.i, null
  br i1 %.not22.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load float, ptr %2, align 4, !tbaa !928  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02023.i = phi ptr [ %.02021.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02023.i, i64 32
  %i.n = load float, ptr %i.m, align 4, !tbaa !928 ; 2 uses
  %i.o = fcmp olt float %i.l, %i.n                ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02023.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !1152 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !1305

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa28.i.a = phi ptr [ %.02023.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1141
  %i.r = icmp eq ptr %.019.lcssa28.i.a, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa28.i.a) #30 ; 2 uses
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre77 = load float, ptr %.phi.trans.insert76, align 4, !tbaa !928
  %.pre78 = load float, ptr %2, align 4, !tbaa !928
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi float [ %.pre78, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi float [ %.pre77, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa27.i = phi ptr [ %.019.lcssa28.i.a, %bb.f ], [ %.02023.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02023.i, %._crit_edge.i ]
  %i.v = fcmp olt float %i.u, %i.t                ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa27.i, ptr null
  br label %_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load float, ptr %2, align 4, !tbaa !928  ; 8 uses
  %i.y = load float, ptr %i.w, align 4, !tbaa !928 ; 2 uses
  %i.z = fcmp olt float %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1152 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load float, ptr %i.ae, align 4, !tbaa !928
  %i.ag = fcmp olt float %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1160
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select67 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02021.i10 = load ptr, ptr %i.ak, align 8, !tbaa !1152 ; 2 uses
  %.not22.i11 = icmp eq ptr %.02021.i10, null
  br i1 %.not22.i11, label %._crit_edge.thread.i25, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02023.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02021.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02023.i13, i64 32
  %i.am = load float, ptr %i.al, align 4, !tbaa !928 ; 2 uses
  %i.an = fcmp olt float %i.x, %i.am              ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02023.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !1152 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !1305

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i25, label %bb.n

._crit_edge.thread.i25:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa28.i26 = phi ptr [ %.02023.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa28.i26, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i25
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa28.i26) #30 ; 2 uses
  %.phi.trans.insert74 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre75 = load float, ptr %.phi.trans.insert74, align 4, !tbaa !928
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi float [ %.pre75, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa27.i19 = phi ptr [ %.019.lcssa28.i26, %bb.m ], [ %.02023.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02023.i13, %._crit_edge.i18 ]
  %i.ar = fcmp olt float %i.aq, %i.x              ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa27.i19, ptr null
  br label %_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = fcmp olt float %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1152 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !928
  %i.az = fcmp olt float %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1160
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select68 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select69 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02021.i28 = load ptr, ptr %i.bd, align 8, !tbaa !1152 ; 2 uses
  %.not22.i29 = icmp eq ptr %.02021.i28, null
  br i1 %.not22.i29, label %._crit_edge.thread.i43, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.s, %.lr.ph.i30
  %.02023.i31 = phi ptr [ %.020.i34, %.lr.ph.i30 ], [ %.02021.i28, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02023.i31, i64 32
  %i.bf = load float, ptr %i.be, align 4, !tbaa !928 ; 2 uses
  %i.bg = fcmp olt float %i.x, %i.bf              ; 2 uses
  %.in.v.i32 = select i1 %i.bg, i64 16, i64 24
  %.in.i33 = getelementptr inbounds nuw i8, ptr %.02023.i31, i64 %.in.v.i32
  %.020.i34 = load ptr, ptr %.in.i33, align 8, !tbaa !1152 ; 2 uses
  %.not.i35 = icmp eq ptr %.020.i34, null
  br i1 %.not.i35, label %._crit_edge.i36, label %.lr.ph.i30, !llvm.loop !1305

._crit_edge.i36:                                  ; preds = %.lr.ph.i30
  br i1 %i.bg, label %._crit_edge.thread.i43, label %bb.u

._crit_edge.thread.i43:                           ; preds = %._crit_edge.i36, %bb.s
  %.019.lcssa28.i44 = phi ptr [ %.02023.i31, %._crit_edge.i36 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1141
  %i.bj = icmp eq ptr %.019.lcssa28.i44, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i43
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa28.i44) #30 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !928
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i36
  %i.bl = phi float [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i36 ]
  %.019.lcssa27.i37 = phi ptr [ %.019.lcssa28.i44, %bb.t ], [ %.02023.i31, %._crit_edge.i36 ]
  %.sroa.05.0.i38 = phi ptr [ %i.bk, %bb.t ], [ %.02023.i31, %._crit_edge.i36 ]
  %i.bm = fcmp olt float %i.bl, %i.x              ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i38
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa27.i37, ptr null
  br label %_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i43, %bb.n, %._crit_edge.thread.i25, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select68, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i25 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i43 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select67, %bb.k ], [ %i.f, %bb.c ], [ %spec.select69, %bb.r ], [ %.019.lcssa28.i.a, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa28.i26, %._crit_edge.thread.i25 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa28.i44, %._crit_edge.thread.i43 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKNS_17HistogramAggStateIfSt3mapIfmSt4lessIfESaISt4pairIKfmEEEEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !134
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !134
  store i8 %i.g, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.j = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_17HistogramAggStateIfSt3mapIfmSt4lessIfESaISt4pairIKfmEEEEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !134
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !134
  store i8 %i.g, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.j = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1160
  tail call void @_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1161 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1306

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_17HistogramAggStateIdSt3mapIdmSt4lessIdESaISt4pairIKdmEEEEEEEmRKS0_(ptr noundef nonnull align 8 dereferenceable(368) %0) #4 comdat align 2 {
bb.a:
  ret i64 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_17HistogramAggStateIdSt3mapIdmSt4lessIdESaISt4pairIKdmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #6 align 2 {
bb.a:
  store ptr null, ptr %1, align 8, !tbaa !1307
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_123HistogramUpdateFunctionINS_16HistogramFunctorEdNS0_14DefaultMapTypeISt3mapIdmSt4lessIdESaISt4pairIKdmEEEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRSD_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 11 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
end_hunk_0
begin_hunk_1_@_ZNSt3mapIdmSt4lessIdESaISt4pairIKdmEEEixERS3_:bb.a
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIdmSt4lessIdESaISt4pairIKdmEEE11lower_boundERS3_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !972
  %i.k = fcmp olt double %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIdmSt4lessIdESaISt4pairIKdmEEE11lower_boundERS3_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIdmSt4lessIdESaISt4pairIKdmEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load double, ptr %1, align 8, !tbaa !972
  store double %i.n, ptr %i.m, align 8, !tbaa !1316
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !1313
  %i.p = invoke { ptr, ptr } @_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

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
  %i.u = load double, ptr %i.m, align 8, !tbaa !972
  %i.v = load double, ptr %i.t, align 8, !tbaa !972
  %i.w = fcmp olt double %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.x = phi i1 [ %i.w, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #25
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1147
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !1147
  br label %_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #29
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #29
  br label %_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.g, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIdSt3mapIdmSt4lessIdESaISt4pairIKdmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !100
  %i.d = icmp eq i8 %i.c, 8
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.h = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1147
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1152 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load double, ptr %i.g, align 8, !tbaa !972
  %i.i = load double, ptr %2, align 8, !tbaa !972
  %i.j = fcmp olt double %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02021.i = load ptr, ptr %i.k, align 8, !tbaa !1152 ; 2 uses
  %.not22.i = icmp eq ptr %.02021.i, null
  br i1 %.not22.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load double, ptr %2, align 8, !tbaa !972 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02023.i = phi ptr [ %.02021.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02023.i, i64 32
  %i.n = load double, ptr %i.m, align 8, !tbaa !972 ; 2 uses
  %i.o = fcmp olt double %i.l, %i.n               ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02023.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !1152 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !1321

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa28.i.a = phi ptr [ %.02023.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1141
  %i.r = icmp eq ptr %.019.lcssa28.i.a, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa28.i.a) #30 ; 2 uses
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre77 = load double, ptr %.phi.trans.insert76, align 8, !tbaa !972
  %.pre78 = load double, ptr %2, align 8, !tbaa !972
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi double [ %.pre78, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi double [ %.pre77, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa27.i = phi ptr [ %.019.lcssa28.i.a, %bb.f ], [ %.02023.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02023.i, %._crit_edge.i ]
  %i.v = fcmp olt double %i.u, %i.t               ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa27.i, ptr null
  br label %_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load double, ptr %2, align 8, !tbaa !972 ; 8 uses
  %i.y = load double, ptr %i.w, align 8, !tbaa !972 ; 2 uses
  %i.z = fcmp olt double %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1152 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load double, ptr %i.ae, align 8, !tbaa !972
  %i.ag = fcmp olt double %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1160
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select67 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02021.i10 = load ptr, ptr %i.ak, align 8, !tbaa !1152 ; 2 uses
  %.not22.i11 = icmp eq ptr %.02021.i10, null
  br i1 %.not22.i11, label %._crit_edge.thread.i25, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02023.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02021.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02023.i13, i64 32
  %i.am = load double, ptr %i.al, align 8, !tbaa !972 ; 2 uses
  %i.an = fcmp olt double %i.x, %i.am             ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02023.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !1152 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !1321

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i25, label %bb.n

._crit_edge.thread.i25:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa28.i26 = phi ptr [ %.02023.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa28.i26, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i25
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa28.i26) #30 ; 2 uses
  %.phi.trans.insert74 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre75 = load double, ptr %.phi.trans.insert74, align 8, !tbaa !972
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi double [ %.pre75, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa27.i19 = phi ptr [ %.019.lcssa28.i26, %bb.m ], [ %.02023.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02023.i13, %._crit_edge.i18 ]
  %i.ar = fcmp olt double %i.aq, %i.x             ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa27.i19, ptr null
  br label %_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = fcmp olt double %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1152 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !972
  %i.az = fcmp olt double %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1160
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select68 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select69 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02021.i28 = load ptr, ptr %i.bd, align 8, !tbaa !1152 ; 2 uses
  %.not22.i29 = icmp eq ptr %.02021.i28, null
  br i1 %.not22.i29, label %._crit_edge.thread.i43, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.s, %.lr.ph.i30
  %.02023.i31 = phi ptr [ %.020.i34, %.lr.ph.i30 ], [ %.02021.i28, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02023.i31, i64 32
  %i.bf = load double, ptr %i.be, align 8, !tbaa !972 ; 2 uses
  %i.bg = fcmp olt double %i.x, %i.bf             ; 2 uses
  %.in.v.i32 = select i1 %i.bg, i64 16, i64 24
  %.in.i33 = getelementptr inbounds nuw i8, ptr %.02023.i31, i64 %.in.v.i32
  %.020.i34 = load ptr, ptr %.in.i33, align 8, !tbaa !1152 ; 2 uses
  %.not.i35 = icmp eq ptr %.020.i34, null
  br i1 %.not.i35, label %._crit_edge.i36, label %.lr.ph.i30, !llvm.loop !1321

._crit_edge.i36:                                  ; preds = %.lr.ph.i30
  br i1 %i.bg, label %._crit_edge.thread.i43, label %bb.u

._crit_edge.thread.i43:                           ; preds = %._crit_edge.i36, %bb.s
  %.019.lcssa28.i44 = phi ptr [ %.02023.i31, %._crit_edge.i36 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1141
  %i.bj = icmp eq ptr %.019.lcssa28.i44, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i43
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa28.i44) #30 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !972
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i36
  %i.bl = phi double [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i36 ]
  %.019.lcssa27.i37 = phi ptr [ %.019.lcssa28.i44, %bb.t ], [ %.02023.i31, %._crit_edge.i36 ]
  %.sroa.05.0.i38 = phi ptr [ %i.bk, %bb.t ], [ %.02023.i31, %._crit_edge.i36 ]
  %i.bm = fcmp olt double %i.bl, %i.x             ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i38
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa27.i37, ptr null
  br label %_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i43, %bb.n, %._crit_edge.thread.i25, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select68, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i25 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i43 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select67, %bb.k ], [ %i.f, %bb.c ], [ %spec.select69, %bb.r ], [ %.019.lcssa28.i.a, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa28.i26, %._crit_edge.thread.i25 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa28.i44, %._crit_edge.thread.i43 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKNS_17HistogramAggStateIdSt3mapIdmSt4lessIdESaISt4pairIKdmEEEEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !134
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !134
  store i8 %i.g, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.j = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_17HistogramAggStateIdSt3mapIdmSt4lessIdESaISt4pairIKdmEEEEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !134
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !134
  store i8 %i.g, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.j = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1160
  tail call void @_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1161 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1322

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEEEEmRKS0_(ptr noundef nonnull align 8 dereferenceable(368) %0) #4 comdat align 2 {
bb.a:
  ret i64 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEENS_12_GLOBAL__N_117HistogramFunctionINSF_13StringMapTypeISD_EEEELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #6 align 2 {
bb.a:
  store ptr null, ptr %1, align 8, !tbaa !1323
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_123HistogramUpdateFunctionINS_22HistogramStringFunctorENS_8string_tENS0_13StringMapTypeINS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRSG_m(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 11 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
end_hunk_1
