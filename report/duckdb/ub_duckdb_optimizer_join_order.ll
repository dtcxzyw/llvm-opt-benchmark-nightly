inline.NumInlined: 7873
inline.NumDeleted: 3418
begin_hunk_0_@_ZN6duckdb15RelationManager31CrossProductWithRelationAllowedEm:bb.a
  br i1 %.not.i.i, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %i.f = icmp eq i64 %1, %i.e
  br i1 %i.f, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %bb.c, !llvm.loop !665

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i64, ptr %i.h, align 8, !tbaa !164  ; 2 uses
  %i.j = urem i64 %1, %i.i                        ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19
  %i.q = icmp eq i64 %1, %i.p
  br i1 %i.q, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.r = icmp eq i64 %1, %i.u
  br i1 %i.r, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !666

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.s, %bb.g ], [ %i.n, %bb.f ]
  %i.s = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !33 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19   ; 2 uses
  %i.v = urem i64 %i.u, %i.i
  %.not19.i.i.i.i = icmp eq i64 %i.v, %i.j
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !666

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, !llvm.loop !666

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit: ; preds = %bb.g, %.lr.ph.i.i.i.i, %bb.c, %bb.d, %bb.e, %bb.f, %..loopexit_crit_edge21.i.i.i.i
  %.sroa.06.1.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i ], [ null, %bb.c ], [ %i.n, %bb.f ], [ null, %bb.e ], [ %.sroa.06.0.i.i, %bb.d ], [ %i.s, %bb.g ], [ null, %.lr.ph.i.i.i.i ]
  %i.w = icmp eq ptr %.sroa.06.1.i.i, null
  ret i1 %i.w
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17QueryGraphManager28CreateQueryGraphCrossProductERNS_15JoinRelationSetES2_(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @_ZN6duckdb15QueryGraphEdges10CreateEdgeERNS_15JoinRelationSetES2_NS_12optional_ptrINS_10FilterInfoELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr null)
  tail call void @_ZN6duckdb15QueryGraphEdges10CreateEdgeERNS_15JoinRelationSetES2_NS_12optional_ptrINS_10FilterInfoELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr null)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14PlanEnumerator14CreateJoinTreeERNS_15JoinRelationSetERKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEERNS_10DPJoinNodeESC_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.472") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %4, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.duckdb::optional_ptr.122", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !671
  store ptr %i.b, ptr %8, align 8, !tbaa !253
  %i.c = load ptr, ptr %3, align 8, !tbaa !673    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !673  ; 2 uses
  %.not5464 = icmp eq ptr %i.c, %i.e
  br i1 %.not5464, label %.loopexit, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.a, %._crit_edge
  %.sroa.045.065 = phi ptr [ %i.v, %._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.045.065, align 8, !tbaa !671 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !597  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !597  ; 2 uses
  %.not5562 = icmp eq ptr %i.h, %i.j
  br i1 %.not5562, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.041.063, i64 8 ; 2 uses
  %.not55 = icmp eq ptr %i.k, %i.j
  br i1 %.not55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph67, %bb.b
  %.sroa.041.063 = phi ptr [ %i.k, %bb.b ], [ %i.h, %.lr.ph67 ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.041.063, align 8, !tbaa !563 ; 2 uses
  %.not.i34 = icmp eq ptr %i.l, null
  br i1 %.not.i34, label %bb.c, label %_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv.exit

bb.c:                                             ; preds = %.lr.ph
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.h unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i35 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.p = load ptr, ptr %6, align 8, !tbaa !25     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.p) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.0.i35, label %bb.g, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.0.i35, label %bb.g, label %common.resume

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.m) #28
  br label %common.resume

common.resume:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.g, %_ZNSt10unique_ptrIN6duckdb10DPJoinNodeESt14default_deleteIS1_EED2Ev.exit, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.bm, %_ZNSt10unique_ptrIN6duckdb10DPJoinNodeESt14default_deleteIS1_EED2Ev.exit ], [ %i.be, %bb.l ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.g ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.e
  unreachable

_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv.exit: ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.t = load i8, ptr %i.s, align 8, !tbaa !562
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.b, label %.thread50

.thread50:                                        ; preds = %_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv.exit
  %i.u = ptrtoint ptr %i.f to i64
  store i64 %i.u, ptr %8, align 8, !tbaa !105
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.b, %.lr.ph67
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.045.065, i64 8 ; 2 uses
  %.not54 = icmp eq ptr %i.v, %i.e
  br i1 %.not54, label %.loopexit, label %.lr.ph67

.loopexit:                                        ; preds = %._crit_edge, %bb.a, %.thread50
  call void @_ZNK6duckdb12optional_ptrINS_12NeighborInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.w = load ptr, ptr %8, align 8, !tbaa !253    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !597  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !597 ; 3 uses
  %.not5668 = icmp eq ptr %i.y, %i.aa
  br i1 %.not5668, label %._crit_edge72, label %.lr.ph71

.lr.ph71:                                         ; preds = %.loopexit, %.lr.ph71.backedge
  %.sroa.036.069 = phi ptr [ %.sroa.036.069.be, %.lr.ph71.backedge ], [ %i.y, %.loopexit ] ; 8 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.036.069)
  %i.ab = load ptr, ptr %.sroa.036.069, align 8, !tbaa !563
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !36
  %.not57 = icmp eq ptr %i.ad, null
  br i1 %.not57, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph71
  call void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.036.069)
  %i.ae = load ptr, ptr %.sroa.036.069, align 8, !tbaa !563
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36
  %.not58 = icmp eq ptr %i.ag, null
  br i1 %.not58, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.036.069)
  %i.ah = load ptr, ptr %.sroa.036.069, align 8, !tbaa !563
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !562
  %.fr59 = freeze i8 %i.aj
  %i.ak = add i8 %.fr59, -5
  %or.cond = icmp ult i8 %i.ak, 2
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.036.069, i64 8 ; 2 uses
  %.not56 = icmp eq ptr %i.al, %i.aa
  %or.cond74 = select i1 %or.cond, i1 true, i1 %.not56
  br i1 %or.cond74, label %._crit_edge72, label %.lr.ph71.backedge

bb.k:                                             ; preds = %.lr.ph71, %bb.i
  %.old = getelementptr inbounds nuw i8, ptr %.sroa.036.069, i64 8 ; 2 uses
  %.not56.old = icmp eq ptr %.old, %i.aa
  br i1 %.not56.old, label %._crit_edge72, label %.lr.ph71.backedge

.lr.ph71.backedge:                                ; preds = %bb.k, %bb.j
  %.sroa.036.069.be = phi ptr [ %i.al, %bb.j ], [ %.old, %bb.k ]
  br label %.lr.ph71

._crit_edge72:                                    ; preds = %bb.k, %bb.j, %.loopexit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !451, !nonnull !362, !align !363 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !658, !nonnull !362, !align !363
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  %i.aq = load ptr, ptr %4, align 8, !tbaa !660, !nonnull !362, !align !363
  %i.ar = load ptr, ptr %5, align 8, !tbaa !660, !nonnull !362, !align !363
  %i.as = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager5UnionERNS_15JoinRelationSetES2_(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.au = call noundef double @_ZN6duckdb20CardinalityEstimator26EstimateCardinalityWithSetIdEET_RNS_15JoinRelationSetE(ptr noundef nonnull align 8 dereferenceable(168) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.as)
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aw = load double, ptr %i.av, align 8, !tbaa !259
  %i.ax = fadd double %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.az = load double, ptr %i.ay, align 8, !tbaa !259
  %i.ba = fadd double %i.ax, %i.az
  %i.bb = load ptr, ptr %4, align 8, !tbaa !660, !nonnull !362, !align !363
  %i.bc = load ptr, ptr %5, align 8, !tbaa !660, !nonnull !362, !align !363
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.bd = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #30, !noalias !674 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %8, align 8, !tbaa !105, !noalias !674
  invoke void @_ZN6duckdb10DPJoinNodeC1ERNS_15JoinRelationSetENS_12optional_ptrINS_12NeighborInfoELb1EEES2_S2_d(ptr noundef nonnull align 8 dereferenceable(56) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, double noundef %i.ba)
          to label %_ZN6duckdb9make_uniqINS_10DPJoinNodeEJRNS_15JoinRelationSetERNS_12optional_ptrINS_12NeighborInfoELb1EEES3_S3_RdEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.l, !noalias !674

bb.l:                                             ; preds = %._crit_edge72
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.bd) #27, !noalias !674
  br label %common.resume

_ZN6duckdb9make_uniqINS_10DPJoinNodeEJRNS_15JoinRelationSetERNS_12optional_ptrINS_12NeighborInfoELb1EEES3_S3_RdEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %._crit_edge72
  store ptr %i.bd, ptr %0, align 8, !tbaa !397, !alias.scope !674
  %i.bf = load ptr, ptr %i.am, align 8, !tbaa !451, !nonnull !362, !align !363
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = invoke noundef double @_ZN6duckdb20CardinalityEstimator26EstimateCardinalityWithSetIdEET_RNS_15JoinRelationSetE(ptr noundef nonnull align 8 dereferenceable(168) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.m unwind label %bb.o       ; 2 uses

bb.m:                                             ; preds = %_ZN6duckdb9make_uniqINS_10DPJoinNodeEJRNS_15JoinRelationSetERNS_12optional_ptrINS_12NeighborInfoELb1EEES3_S3_RdEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bi = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10DPJoinNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bj = fcmp ult double %i.bh, f0x43F0000000000000
  %i.bk = fptoui double %i.bh to i64
  %.0.i = select i1 %i.bj, i64 %i.bk, i64 -1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  store i64 %.0.i, ptr %i.bl, align 8, !tbaa !455
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret void

bb.o:                                             ; preds = %_ZN6duckdb9make_uniqINS_10DPJoinNodeEJRNS_15JoinRelationSetERNS_12optional_ptrINS_12NeighborInfoELb1EEES3_S3_RdEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %0, align 8, !tbaa !397   ; 2 uses
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10DPJoinNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10DPJoinNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10DPJoinNodeEEclEPS1_.exit.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef nonnull %i.bn) #27
  br label %_ZNSt10unique_ptrIN6duckdb10DPJoinNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10DPJoinNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.o, %_ZNKSt14default_deleteIN6duckdb10DPJoinNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !673    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !673  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZNK6duckdb6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS3_EE3getILb1EEERKS3_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.g unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %common.resume

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn9, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNK6duckdb6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS3_EE3getILb1EEERKS3_m.exit: ; preds = %bb.a
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr i8, ptr %i.a, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  ret ptr %i.o

bb.g:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_10DPJoinNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !397    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_10DPJoinNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g
end_hunk_0
begin_hunk_1_@_ZN6duckdb15RelationManager20ExtractJoinRelationsERNS_18JoinOrderOptimizerERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperIS3_ELb1ESaIS7_EEENS_12optional_ptrIS3_Lb1EEE:bb.a

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i855
  %i.aps = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i856, i64 8 ; 2 uses
  %.not.i.i.i.i857 = icmp eq ptr %i.aps, %i.apn
  br i1 %.not.i.i.i.i857, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i855, !llvm.loop !375

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i858 = load ptr, ptr %5, align 8, !tbaa !372, !noalias !882
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.ms
  %i.apt = phi ptr [ %.pr.i.i858, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.apm, %bb.ms ] ; 2 uses
  %.not.i.i1.i.i859 = icmp eq ptr %i.apt, null
  br i1 %.not.i.i1.i.i859, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.mt

bb.mt:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.apt) #27, !noalias !882
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

bb.mu:                                            ; preds = %.noexc860
  %i.apu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #28, !noalias !882
  call void @_ZdlPv(ptr noundef nonnull %i.apk) #27, !noalias !882
  br label %.body861

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %bb.mt, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #28
  %i.apv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16LogicalAggregateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %58)
          to label %bb.mv unwind label %bb.ne     ; 3 uses

bb.mv:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 160 ; 3 uses
  %i.apx = load ptr, ptr %i.apw, align 8, !tbaa !888 ; 7 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apv, i64 168
  %i.apz = load ptr, ptr %i.apy, align 8, !tbaa !891
  %.not.i865 = icmp eq ptr %i.apx, %i.apz
  br i1 %.not.i865, label %bb.mx, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apx, i64 8 ; 2 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apx, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.apx, i8 0, i64 24, i1 false)
  store ptr %i.aqa, ptr %i.aqb, align 8, !tbaa !892
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apx, i64 32
  store ptr %i.aqa, ptr %i.aqc, align 8, !tbaa !897
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.apx, i64 40
  store i64 0, ptr %i.aqd, align 8, !tbaa !898
  %i.aqe = load ptr, ptr %i.apw, align 8, !tbaa !888
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 48
  store ptr %i.aqf, ptr %i.apw, align 8, !tbaa !888
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEEvDpOT_.exit

bb.mx:                                            ; preds = %bb.mv
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.apv, i64 152
  invoke void @_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aqg, ptr %i.apx)
          to label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEEvDpOT_.exit unwind label %bb.ne

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEEvDpOT_.exit: ; preds = %bb.mw, %bb.mx
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.ant, i64 232
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !899 ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.ant, i64 240
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !899 ; 2 uses
  %.not1124 = icmp eq ptr %i.aqi, %i.aqk
  br i1 %.not1124, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEEvDpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #28
  %i.aql = invoke noundef nonnull align 8 dereferenceable(225) ptr @_ZNK6duckdb10unique_ptrINS_16LogicalAggregateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %58)
          to label %bb.nw unwind label %bb.oh

bb.my:                                            ; preds = %bb.mi
  %i.aqm = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1071

bb.mz:                                            ; preds = %bb.mj
  %i.aqn = landingpad { ptr, i32 }
          cleanup
  br label %.body838

bb.na:                                            ; preds = %_ZN6duckdb18JoinOrderOptimizer20CreateChildOptimizerEv.exit840, %bb.mn
  %i.aqo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit872

bb.nb:                                            ; preds = %bb.mo
  %i.aqp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit869

bb.nc:                                            ; preds = %bb.mp, %bb.mq
  %i.aqq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aqr = load ptr, ptr %56, align 8, !tbaa !377 ; 3 uses
  %.not.i867 = icmp eq ptr %i.aqr, null
  br i1 %.not.i867, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit869, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i868

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i868: ; preds = %bb.nc
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !352
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 8
  %i.aqu = load ptr, ptr %i.aqt, align 8
  call void %i.aqu(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.aqr) #28, !inline_history !395
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit869

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit869: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i868, %bb.nc, %bb.nb
  %.pn192 = phi { ptr, i32 } [ %i.aqp, %bb.nb ], [ %i.aqq, %bb.nc ], [ %i.aqq, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i868 ] ; 2 uses
  %i.aqv = load ptr, ptr %57, align 8, !tbaa !377 ; 3 uses
  %.not.i870 = icmp eq ptr %i.aqv, null
  br i1 %.not.i870, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit872, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i871

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i871: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit869
  %i.aqw = load ptr, ptr %i.aqv, align 8, !tbaa !352
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 8
  %i.aqy = load ptr, ptr %i.aqx, align 8
  call void %i.aqy(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.aqv) #28, !inline_history !395
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit872

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit872: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i871, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit869, %bb.na
  %.pn192.pn = phi { ptr, i32 } [ %i.aqo, %bb.na ], [ %.pn192, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit869 ], [ %.pn192, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i871 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #28
  br label %bb.pk

bb.nd:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit853
  %i.aqz = landingpad { ptr, i32 }
          cleanup
  br label %.body861

.body861:                                         ; preds = %bb.mu, %bb.nd
  %eh.lpad-body862 = phi { ptr, i32 } [ %i.aqz, %bb.nd ], [ %i.apu, %bb.mu ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %59) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #28
  br label %_ZNSt10unique_ptrIN6duckdb16LogicalAggregateESt14default_deleteIS1_EED2Ev.exit989

bb.ne:                                            ; preds = %bb.mx, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.ara = landingpad { ptr, i32 }
          cleanup
  br label %bb.pj

.lr.ph:                                           ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEEvDpOT_.exit, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.01015.01125 = phi ptr [ %i.auf, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %i.aqi, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEEvDpOT_.exit ] ; 2 uses
  %i.arb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16LogicalAggregateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %58)
          to label %bb.nf unwind label %bb.ns

bb.nf:                                            ; preds = %.lr.ph
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 152
  %i.ard = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.arc)
          to label %bb.ng unwind label %bb.ns     ; 4 uses

bb.ng:                                            ; preds = %bb.nf
  %i.are = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16LogicalAggregateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %58)
          to label %bb.nh unwind label %bb.nt     ; 2 uses

bb.nh:                                            ; preds = %bb.ng
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 128
  %i.arg = getelementptr inbounds nuw i8, ptr %i.are, i64 136
  %i.arh = load ptr, ptr %i.arg, align 8, !tbaa !373
  %i.ari = load ptr, ptr %i.arf, align 8, !tbaa !372
  %i.arj = ptrtoint ptr %i.arh to i64
  %i.ark = ptrtoint ptr %i.ari to i64
  %i.arl = sub i64 %i.arj, %i.ark
  %i.arm = ashr exact i64 %i.arl, 3               ; 4 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %i.ard, i64 16
  %i.aro = getelementptr inbounds nuw i8, ptr %i.ard, i64 8 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.arn, align 8, !tbaa !900 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i873

.lr.ph.i.i.i873:                                  ; preds = %bb.nh, %.lr.ph.i.i.i873
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i873 ], [ %.02022.i.i.i, %bb.nh ] ; 4 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.arq = load i64, ptr %i.arp, align 8, !tbaa !19 ; 2 uses
  %i.arr = icmp ult i64 %i.arm, %i.arq            ; 2 uses
  %.in.v.i.i.i = select i1 %i.arr, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !900 ; 2 uses
  %.not.i.i.i874 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i874, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i873, !llvm.loop !901

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i873
  br i1 %i.arr, label %._crit_edge.thread.i.i.i, label %bb.nj

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.nh
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.aro, %bb.nh ] ; 4 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.ard, i64 24
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !892
  %i.aru = icmp eq ptr %.019.lcssa29.i.i.i, %i.art
  br i1 %i.aru, label %select.unfold.i.i, label %bb.ni

bb.ni:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.arv = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #32
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.arv, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !19
  br label %bb.nj

bb.nj:                                            ; preds = %bb.ni, %._crit_edge.i.i.i
  %i.arw = phi i64 [ %.pre.i.i, %bb.ni ], [ %i.arq, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.ni ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.arx = icmp ult i64 %i.arw, %i.arm
  %cond.fr.i.i = freeze i1 %i.arx
  br i1 %cond.fr.i.i, label %select.unfold.i.i, label %bb.nl

select.unfold.i.i:                                ; preds = %bb.nj, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.nj ] ; 3 uses
  %i.ary = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.aro
  br i1 %i.ary, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i, label %bb.nk

bb.nk:                                            ; preds = %select.unfold.i.i
  %i.arz = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.asa = load i64, ptr %i.arz, align 8, !tbaa !19
  %i.asb = icmp ult i64 %i.arm, %i.asa
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i: ; preds = %bb.nk, %select.unfold.i.i
  %i.asc = phi i1 [ %i.asb, %bb.nk ], [ true, %select.unfold.i.i ]
  %i.asd = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %.noexc875 unwind label %bb.nt ; 2 uses

.noexc875:                                        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 32
  store i64 %i.arm, ptr %i.ase, align 8, !tbaa !19
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.asc, ptr noundef nonnull %i.asd, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.aro) #28
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ard, i64 40 ; 2 uses
  %i.asg = load i64, ptr %i.asf, align 8, !tbaa !898
  %i.ash = add i64 %i.asg, 1
  store i64 %i.ash, ptr %i.asf, align 8, !tbaa !898
  br label %bb.nl

bb.nl:                                            ; preds = %.noexc875, %bb.nj
  %i.asi = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16LogicalAggregateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %58)
          to label %bb.nm unwind label %bb.ns     ; 3 uses

bb.nm:                                            ; preds = %bb.nl
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #28
  %i.ask = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01015.01125)
          to label %bb.nn unwind label %bb.nu     ; 2 uses

bb.nn:                                            ; preds = %bb.nm
  %i.asl = load ptr, ptr %i.ask, align 8, !tbaa !352
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asl, i64 136
  %i.asn = load ptr, ptr %i.asm, align 8
  invoke void %i.asn(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.390") align 8 %60, ptr noundef nonnull align 8 dereferenceable(88) %i.ask)
          to label %bb.no unwind label %bb.nu

bb.no:                                            ; preds = %bb.nn
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asi, i64 136 ; 3 uses
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !373 ; 6 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asi, i64 144 ; 2 uses
  %i.asr = load ptr, ptr %i.asq, align 8, !tbaa !902
  %.not.i.i876 = icmp eq ptr %i.asp, %i.asr
  br i1 %.not.i.i876, label %bb.np, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.no
  %i.ass = load i64, ptr %60, align 8, !tbaa !350
  store i64 %i.ass, ptr %i.asp, align 8, !tbaa !350
  %i.ast = getelementptr inbounds nuw i8, ptr %i.asp, i64 8
  store ptr %i.ast, ptr %i.aso, align 8, !tbaa !373
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

bb.np:                                            ; preds = %bb.no
  %i.asu = load ptr, ptr %i.asj, align 8, !tbaa !372 ; 10 uses
  %i.asv = ptrtoint ptr %i.asp to i64             ; 3 uses
  %i.asw = ptrtoint ptr %i.asu to i64             ; 3 uses
  %i.asx = sub i64 %i.asv, %i.asw                 ; 3 uses
  %i.asy = icmp eq i64 %i.asx, 9223372036854775800
  br i1 %i.asy, label %bb.nq, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.nq:                                            ; preds = %bb.np
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc886 unwind label %.loopexit.split-lp

.noexc886:                                        ; preds = %bb.nq
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.np
  %i.asz = ashr exact i64 %i.asx, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i877 = call i64 @llvm.umax.i64(i64 %i.asz, i64 1)
  %i.ata = add nsw i64 %.sroa.speculated.i.i.i.i877, %i.asz ; 2 uses
  %i.atb = icmp ult i64 %i.ata, %i.asz
  %i.atc = call i64 @llvm.umin.i64(i64 %i.ata, i64 1152921504606846975)
  %i.atd = select i1 %i.atb, i64 1152921504606846975, i64 %i.atc ; 3 uses
  %.not.i.i.i.i878 = icmp ne i64 %i.atd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i878)
  %i.ate = shl nuw nsw i64 %i.atd, 3
  %i.atf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ate) #30
          to label %.noexc887 unwind label %.loopexit1064 ; 10 uses

.noexc887:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 %i.asx
  %i.ath = load i64, ptr %60, align 8, !tbaa !350
  store i64 %i.ath, ptr %i.atg, align 8, !tbaa !350
  store ptr null, ptr %60, align 8, !tbaa !350
  %.not10.i.i.i.i.i.i.i879 = icmp eq ptr %i.asu, %i.asp
  br i1 %.not10.i.i.i.i.i.i.i879, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i880.preheader

.lr.ph.i.i.i.i.i.i.i880.preheader:                ; preds = %.noexc887
  %i.ati = add i64 %i.asv, -8
  %i.atj = sub i64 %i.ati, %i.asw                 ; 2 uses
  %i.atk = lshr i64 %i.atj, 3
  %i.atl = add nuw nsw i64 %i.atk, 1              ; 2 uses
  %min.iters.check1589 = icmp ult i64 %i.atj, 56
  br i1 %min.iters.check1589, label %.lr.ph.i.i.i.i.i.i.i880.preheader1610, label %vector.memcheck1584

vector.memcheck1584:                              ; preds = %.lr.ph.i.i.i.i.i.i.i880.preheader
  %scevgep = getelementptr i8, ptr %i.atf, i64 8
  %i.atm = add i64 %i.asv, -8
  %i.atn = sub i64 %i.atm, %i.asw
  %i.ato = and i64 %i.atn, -8                     ; 2 uses
  %scevgep1585 = getelementptr i8, ptr %scevgep, i64 %i.ato
  %scevgep1586 = getelementptr i8, ptr %i.asu, i64 8
  %scevgep1587 = getelementptr i8, ptr %scevgep1586, i64 %i.ato
  %bound0 = icmp ult ptr %i.atf, %scevgep1587
  %bound1 = icmp ult ptr %i.asu, %scevgep1585
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i880.preheader1610, label %vector.ph1590

vector.ph1590:                                    ; preds = %vector.memcheck1584
  %n.vec1592 = and i64 %i.atl, 4611686018427387900 ; 3 uses
  %i.atp = shl i64 %n.vec1592, 3                  ; 2 uses
  %i.atq = getelementptr i8, ptr %i.atf, i64 %i.atp ; 2 uses
  %i.atr = getelementptr i8, ptr %i.asu, i64 %i.atp
  br label %vector.body1593

vector.body1593:                                  ; preds = %vector.body1593, %vector.ph1590
  %index1594 = phi i64 [ 0, %vector.ph1590 ], [ %index.next1599, %vector.body1593 ] ; 2 uses
  %i.ats = shl i64 %index1594, 3                  ; 2 uses
  %next.gep1595 = getelementptr i8, ptr %i.atf, i64 %i.ats ; 2 uses
  %next.gep1596 = getelementptr i8, ptr %i.asu, i64 %i.ats ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.att = getelementptr i8, ptr %next.gep1596, i64 16
  %wide.load1597 = load <2 x i64>, ptr %next.gep1596, align 8, !tbaa !350, !alias.scope !908, !noalias !903
  %wide.load1598 = load <2 x i64>, ptr %i.att, align 8, !tbaa !350, !alias.scope !908, !noalias !903
  %i.atu = getelementptr i8, ptr %next.gep1595, i64 16
  store <2 x i64> %wide.load1597, ptr %next.gep1595, align 8, !tbaa !350, !alias.scope !911, !noalias !908
  store <2 x i64> %wide.load1598, ptr %i.atu, align 8, !tbaa !350, !alias.scope !911, !noalias !908
  %i.atv = getelementptr i8, ptr %next.gep1596, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1596, align 8, !tbaa !350, !alias.scope !908, !noalias !903
  store <2 x ptr> splat (ptr null), ptr %i.atv, align 8, !tbaa !350, !alias.scope !908, !noalias !903
  %index.next1599 = add nuw i64 %index1594, 4     ; 2 uses
  %i.atw = icmp eq i64 %index.next1599, %n.vec1592
  br i1 %i.atw, label %middle.block1600, label %vector.body1593, !llvm.loop !913

middle.block1600:                                 ; preds = %vector.body1593
  %cmp.n1601 = icmp eq i64 %i.atl, %n.vec1592
  br i1 %cmp.n1601, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i880.preheader1610

.lr.ph.i.i.i.i.i.i.i880.preheader1610:            ; preds = %vector.memcheck1584, %.lr.ph.i.i.i.i.i.i.i880.preheader, %middle.block1600
  %.012.i.i.i.i.i.i.i881.ph = phi ptr [ %i.atf, %vector.memcheck1584 ], [ %i.atf, %.lr.ph.i.i.i.i.i.i.i880.preheader ], [ %i.atq, %middle.block1600 ]
  %.0911.i.i.i.i.i.i.i882.ph = phi ptr [ %i.asu, %vector.memcheck1584 ], [ %i.asu, %.lr.ph.i.i.i.i.i.i.i880.preheader ], [ %i.atr, %middle.block1600 ]
  br label %.lr.ph.i.i.i.i.i.i.i880

.lr.ph.i.i.i.i.i.i.i880:                          ; preds = %.lr.ph.i.i.i.i.i.i.i880.preheader1610, %.lr.ph.i.i.i.i.i.i.i880
  %.012.i.i.i.i.i.i.i881 = phi ptr [ %i.atz, %.lr.ph.i.i.i.i.i.i.i880 ], [ %.012.i.i.i.i.i.i.i881.ph, %.lr.ph.i.i.i.i.i.i.i880.preheader1610 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i882 = phi ptr [ %i.aty, %.lr.ph.i.i.i.i.i.i.i880 ], [ %.0911.i.i.i.i.i.i.i882.ph, %.lr.ph.i.i.i.i.i.i.i880.preheader1610 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.atx = load i64, ptr %.0911.i.i.i.i.i.i.i882, align 8, !tbaa !350, !alias.scope !906, !noalias !903
  store i64 %i.atx, ptr %.012.i.i.i.i.i.i.i881, align 8, !tbaa !350, !alias.scope !903, !noalias !906
  store ptr null, ptr %.0911.i.i.i.i.i.i.i882, align 8, !tbaa !350, !alias.scope !906, !noalias !903
  %i.aty = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i882, i64 8 ; 2 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i881, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i883 = icmp eq ptr %i.aty, %i.asp
  br i1 %.not.i.i.i.i.i.i.i883, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i880, !llvm.loop !914

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i880, %middle.block1600, %.noexc887
  %.0.lcssa.i.i.i.i.i.i.i884 = phi ptr [ %i.atf, %.noexc887 ], [ %i.atq, %middle.block1600 ], [ %i.atz, %.lr.ph.i.i.i.i.i.i.i880 ]
  %i.aua = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i884, i64 8
  %.not.i23.i.i.i885 = icmp eq ptr %i.asu, null
  br i1 %.not.i23.i.i.i885, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.nr

bb.nr:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.asu) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.nr
  store ptr %i.atf, ptr %i.asj, align 8, !tbaa !372
  store ptr %i.aua, ptr %i.aso, align 8, !tbaa !373
  %i.aub = getelementptr inbounds nuw [8 x i8], ptr %i.atf, i64 %i.atd
  store ptr %i.aub, ptr %i.asq, align 8, !tbaa !902
  %.pr = load ptr, ptr %60, align 8, !tbaa !350   ; 3 uses
  %.not.i888 = icmp eq ptr %.pr, null
  br i1 %.not.i888, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.auc = load ptr, ptr %.pr, align 8, !tbaa !352
  %i.aud = getelementptr inbounds nuw i8, ptr %i.auc, i64 8
  %i.aue = load ptr, ptr %i.aud, align 8
  call void %i.aue(ptr noundef nonnull align 8 dereferenceable(88) %.pr) #28, !inline_history !497
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #28
  %i.auf = getelementptr inbounds nuw i8, ptr %.sroa.01015.01125, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.auf, %i.aqk
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.ns:                                            ; preds = %bb.nl, %bb.nf, %.lr.ph
  %i.aug = landingpad { ptr, i32 }
          cleanup
end_hunk_1
