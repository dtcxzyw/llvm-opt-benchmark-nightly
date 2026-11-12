Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_execution_index_art?download=true
inline.NumInlined: 6663
inline.NumDeleted: 2963
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN6duckdb4Leaf19DeprecatedGetRowIdsERNS_3ARTERKNS_4NodeERSt3setIlSt4lessIlESaIlEEm:bb.a
  %i.an = phi i8 [ %i.q, %bb.f ], [ %.pre, %_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE10_M_insert_IRKlNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIlEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = zext i8 %i.an to i64
  %i.ap = icmp samesign ult i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %bb.c, label %._crit_edge, !llvm.loop !1959

.critedge:                                        ; preds = %._crit_edge, %bb.b, %bb.a
  %.lcssa19 = phi i1 [ true, %bb.a ], [ %.not.not.not, %bb.b ], [ %.not.not.not, %._crit_edge ]
  ret i1 %.lcssa19
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb4Node11GetNextByteERNS_3ARTERh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(433) %1, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1963 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.26", align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = load i64, ptr %0, align 8, !tbaa !298    ; 4 uses
  %i.c = lshr i64 %i.b, 56
  %i.d = trunc nuw i64 %i.c to i8
  %i.e = and i8 %i.d, 127                         ; 2 uses
  store i8 %i.e, ptr %i.a, align 1, !tbaa !316
  switch i8 %i.e, label %bb.l [
    i8 8, label %bb.b
    i8 9, label %bb.e
    i8 10, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 1 dereferenceable(8) ptr @_ZN6duckdb4Node3RefIKNS_9Node7LeafEEERT_RKNS_3ARTES0_NS_5NTypeE(ptr noundef nonnull align 8 dereferenceable(433) %1, i64 %i.b, i8 noundef zeroext 8) ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !324   ; 2 uses
  %.not14.i = icmp eq i8 %i.g, 0
  br i1 %.not14.i, label %_ZNK6duckdb8BaseLeafILh7ELNS_5NTypeE8EE11GetNextByteERh.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.i = load i8, ptr %2, align 1, !tbaa !218
  %wide.trip.count.i = zext i8 %i.g to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK6duckdb8BaseLeafILh7ELNS_5NTypeE8EE11GetNextByteERh.exit, label %bb.d, !llvm.loop !1961

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !218   ; 2 uses
  %.not.i = icmp ult i8 %i.k, %i.i
  br i1 %.not.i, label %bb.c, label %_ZNK6duckdb8BaseLeafILh7ELNS_5NTypeE8EE11GetNextByteERh.exit.sink.split

bb.e:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 1 dereferenceable(16) ptr @_ZN6duckdb4Node3RefIKNS_10Node15LeafEEERT_RKNS_3ARTES0_NS_5NTypeE(ptr noundef nonnull align 8 dereferenceable(433) %1, i64 %i.b, i8 noundef zeroext 9) ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !330   ; 2 uses
  %.not14.i16 = icmp eq i8 %i.m, 0
  br i1 %.not14.i16, label %_ZNK6duckdb8BaseLeafILh7ELNS_5NTypeE8EE11GetNextByteERh.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.o = load i8, ptr %2, align 1, !tbaa !218
  %wide.trip.count.i18 = zext i8 %i.m to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i21 = add nuw nsw i64 %indvars.iv.i19, 1 ; 2 uses
  %exitcond.not.i22 = icmp eq i64 %indvars.iv.next.i21, %wide.trip.count.i18
  br i1 %exitcond.not.i22, label %_ZNK6duckdb8BaseLeafILh7ELNS_5NTypeE8EE11GetNextByteERh.exit, label %bb.g, !llvm.loop !1962

bb.g:                                             ; preds = %bb.f, %.lr.ph.i17
  %indvars.iv.i19 = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next.i21, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.i19
  %i.q = load i8, ptr %i.p, align 1, !tbaa !218   ; 2 uses
  %.not.i20 = icmp ult i8 %i.q, %i.o
  br i1 %.not.i20, label %bb.f, label %_ZNK6duckdb8BaseLeafILh7ELNS_5NTypeE8EE11GetNextByteERh.exit.sink.split

bb.h:                                             ; preds = %bb.a
  %i.r = tail call noundef nonnull align 8 dereferenceable(264) ptr @_ZN6duckdb4Node3RefINS_11Node256LeafEEERT_RKNS_3ARTES0_NS_5NTypeE(ptr noundef nonnull align 8 dereferenceable(433) %1, i64 %i.b, i8 noundef zeroext 10)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i8, ptr %2, align 1, !tbaa !218
  %i.u = zext i8 %i.t to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %indvars.iv.i23 = phi i64 [ %i.u, %bb.h ], [ %indvars.iv.next.i24, %bb.k ] ; 4 uses
  %i.v = lshr i64 %indvars.iv.i23, 6
  %i.w = and i64 %indvars.iv.i23, 63
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !199
  %i.z = shl nuw i64 1, %i.w
  %i.aa = and i64 %i.z, %i.y
  %.not.not.not.i.not = icmp eq i64 %i.aa, 0
  br i1 %.not.not.not.i.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = trunc nuw i64 %indvars.iv.i23 to i8
  br label %_ZNK6duckdb8BaseLeafILh7ELNS_5NTypeE8EE11GetNextByteERh.exit.sink.split

bb.k:                                             ; preds = %bb.i
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond.not.i25 = icmp eq i64 %indvars.iv.next.i24, 256
  br i1 %exitcond.not.i25, label %_ZNK6duckdb8BaseLeafILh7ELNS_5NTypeE8EE11GetNextByteERh.exit, label %bb.i, !llvm.loop !33

bb.l:                                             ; preds = %bb.a
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb17InternalExceptionC2IJRNS_5NTypeEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.r unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i1 [ false, %bb.n ], [ true, %bb.m ]  ; 2 uses
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !294   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.af) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.0, label %bb.p, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.0, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn29 = phi { ptr, i32 } [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ac) #30
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn28 = phi { ptr, i32 } [ %.pn29, %bb.p ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  resume { ptr, i32 } %.pn28

_ZNK6duckdb8BaseLeafILh7ELNS_5NTypeE8EE11GetNextByteERh.exit.sink.split: ; preds = %bb.g, %bb.d, %bb.j
  %.sink = phi i8 [ %i.ab, %bb.j ], [ %i.k, %bb.d ], [ %i.q, %bb.g ]
  store i8 %.sink, ptr %2, align 1, !tbaa !218
  br label %_ZNK6duckdb8BaseLeafILh7ELNS_5NTypeE8EE11GetNextByteERh.exit

_ZNK6duckdb8BaseLeafILh7ELNS_5NTypeE8EE11GetNextByteERh.exit: ; preds = %bb.k, %bb.f, %bb.c, %_ZNK6duckdb8BaseLeafILh7ELNS_5NTypeE8EE11GetNextByteERh.exit.sink.split, %bb.e, %bb.b
  %.014 = phi i1 [ false, %bb.f ], [ true, %_ZNK6duckdb8BaseLeafILh7ELNS_5NTypeE8EE11GetNextByteERh.exit.sink.split ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i1 %.014

bb.r:                                             ; preds = %bb.n
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb8Iterator4NextEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 !guid !1967 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !812  ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !812
  %.not16 = icmp eq ptr %i.c, %i.d
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %i.h = phi ptr [ %i.c, %.lr.ph ], [ %i.bg, %bb.m ] ; 2 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !813, !noalias !1968
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !814, !noalias !1968
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !585
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 512
  br label %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit

_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit: ; preds = %bb.b, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %1 = getelementptr inbounds i8, ptr %i.o, i64 -16
  %i.p = getelementptr i8, ptr %i.o, i64 -9
  %2 = load i8, ptr %i.p, align 1, !tbaa !298
  %3 = and i8 %2, 127
  %i.q = icmp eq i8 %3, 1
  br i1 %i.q, label %bb.m, label %bb.d, !llvm.loop !1966

bb.d:                                             ; preds = %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 5 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !592   ; 2 uses
  %i.t = icmp eq i8 %i.s, -1
  br i1 %i.t, label %bb.m, label %bb.e, !llvm.loop !1966

bb.e:                                             ; preds = %bb.d
  %i.u = add nuw i8 %i.s, 1
  store i8 %i.u, ptr %i.r, align 8, !tbaa !592
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !586, !nonnull !209, !align !210
  %i.w = tail call ptr @_ZN6duckdb20GetNextChildInternalIKNS_4NodeEEENS_12optional_ptrIS1_Lb0EEERNS_3ARTERT_Rh(ptr noundef nonnull align 8 dereferenceable(433) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.r) ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.m, label %bb.f, !llvm.loop !1966

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !587
  %i.z = load ptr, ptr %0, align 8, !tbaa !544
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %.neg = xor i64 %i.ab, -1
  %i.ac = add i64 %.neg, %i.aa
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ac)
  %i.ad = load i8, ptr %i.r, align 8, !tbaa !592  ; 2 uses
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !587 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !588
  %.not.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !218
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !587
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.ai, ptr %i.x, align 8, !tbaa !587
  br label %_ZN6duckdb11IteratorKey4PushEh.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %0, align 8, !tbaa !544   ; 4 uses
  %i.ak = ptrtoint ptr %i.ae to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 7 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775807
  br i1 %i.an, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #31
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.ao = add i64 %.sroa.speculated.i.i.i.i, %i.am ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.am
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 9223372036854775807)
  %i.ar = select i1 %i.ap, i64 9223372036854775807, i64 %i.aq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ar, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #32 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.am ; 2 uses
  store i8 %i.ad, ptr %i.at, align 1, !tbaa !218
  %i.au = icmp sgt i64 %i.am, 0
  br i1 %i.au, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %i.aj, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aj) #29
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.as, ptr %0, align 8, !tbaa !544
  store ptr %i.av, ptr %i.x, align 8, !tbaa !587
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store ptr %i.aw, ptr %i.af, align 8, !tbaa !588
  br label %_ZN6duckdb11IteratorKey4PushEh.exit

_ZN6duckdb11IteratorKey4PushEh.exit:              ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !571
  %i.az = icmp eq i8 %i.ay, 1
  br i1 %i.az, label %bb.l, label %.thread

bb.l:                                             ; preds = %_ZN6duckdb11IteratorKey4PushEh.exit
  %i.ba = load i8, ptr %i.r, align 8, !tbaa !592
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !572
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 119
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.bd
  store i8 %i.ba, ptr %i.bf, align 1, !tbaa !218
  br label %.thread

.thread:                                          ; preds = %_ZN6duckdb11IteratorKey4PushEh.exit, %bb.l
  tail call void @_ZN6duckdb8Iterator11FindMinimumERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  br label %.loopexit

bb.m:                                             ; preds = %bb.e, %bb.d, %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit
  tail call void @_ZN6duckdb8Iterator7PopNodeEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !812 ; 2 uses
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !812
  %.not17 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not17, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.m, %bb.a, %.thread
  %i.bi = phi i1 [ true, %.thread ], [ false, %bb.a ], [ false, %bb.m ]
  ret i1 %i.bi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14KeyRowIdOutput3AddEl(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !1969 {
bb.a:
  %2 = alloca %"class.duckdb::ARTKey", align 8    ; 5 uses
  %3 = alloca %"class.duckdb::ARTKey", align 8    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !712, !nonnull !209, !align !210 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !713
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !714  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !486  ; 4 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !498  ; 2 uses
  %i.j = add i64 %i.i, %i.e                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !499
  %i.m = icmp ugt i64 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZN6duckdb6ARTKey21CreateARTKeyFromBytesERNS_14ArenaAllocatorEPKhm.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef %i.e)
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !486 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 24
  %.pre4.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !498 ; 2 uses
  %.pre5.i.i = add i64 %.pre4.i.i, %i.e
  br label %_ZN6duckdb6ARTKey21CreateARTKeyFromBytesERNS_14ArenaAllocatorEPKhm.exit

_ZN6duckdb6ARTKey21CreateARTKeyFromBytesERNS_14ArenaAllocatorEPKhm.exit: ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %.pre5.i.i, %bb.c ], [ %i.j, %bb.b ]
  %i.n = phi i64 [ %.pre4.i.i, %bb.c ], [ %i.i, %bb.b ]
  %i.o = phi ptr [ %.pre.i.i, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !500
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 2 uses
  store i64 %.pre-phi.i.i, ptr %i.r, align 8, !tbaa !498
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.c, i64 %i.e, i1 false)
  call void @_ZN6duckdb6ARTKeyC1EPhm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.s, i64 noundef %i.e)
  %.fca.0.load.i = load i64, ptr %3, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load.i = load ptr, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1970, !nonnull !209, !align !210
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !711
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w ; 2 uses
  store i64 %.fca.0.load.i, ptr %i.y, align 8, !tbaa !199
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %.fca.1.load.i, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !501
  %i.z = load ptr, ptr %0, align 8, !tbaa !712, !nonnull !209, !align !210 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !486 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb6ARTKey21CreateARTKeyFromBytesERNS_14ArenaAllocatorEPKhm.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !498 ; 2 uses
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !499
  %i.ah = icmp ugt i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZN6duckdb6ARTKey12CreateARTKeyIlEES0_RNS_14ArenaAllocatorET_.exit

bb.e:                                             ; preds = %bb.d, %_ZN6duckdb6ARTKey21CreateARTKeyFromBytesERNS_14ArenaAllocatorEPKhm.exit
  call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %i.z, i64 noundef 8)
  %.pre.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !486 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %.pre4.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !498 ; 2 uses
  %.pre5.i.i.i = add i64 %.pre4.i.i.i, 8
  br label %_ZN6duckdb6ARTKey12CreateARTKeyIlEES0_RNS_14ArenaAllocatorET_.exit

_ZN6duckdb6ARTKey12CreateARTKeyIlEES0_RNS_14ArenaAllocatorET_.exit: ; preds = %bb.d, %bb.e
  %.pre-phi.i.i.i = phi i64 [ %.pre5.i.i.i, %bb.e ], [ %i.ae, %bb.d ]
  %i.ai = phi i64 [ %.pre4.i.i.i, %bb.e ], [ %i.ad, %bb.d ]
  %i.aj = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !500
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai ; 3 uses
  store i64 %.pre-phi.i.i.i, ptr %i.am, align 8, !tbaa !498
  %i.ao = call noundef i64 @llvm.bswap.i64(i64 %1) ; 2 uses
  store i64 %i.ao, ptr %i.an, align 1
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = xor i8 %i.ap, -128
  store i8 %i.aq, ptr %i.an, align 1, !tbaa !218
  call void @_ZN6duckdb6ARTKeyC1EPhm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.an, i64 noundef 8)
  %.fca.0.load.i3 = load i64, ptr %2, align 8
  %.fca.1.gep.i5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load.i6 = load ptr, ptr %.fca.1.gep.i5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1971, !nonnull !209, !align !210
  %i.at = load i64, ptr %i.v, align 8, !tbaa !711
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !213
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.at ; 2 uses
  store i64 %.fca.0.load.i3, ptr %i.av, align 8, !tbaa !199
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %.fca.1.load.i6, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !501
  %i.aw = load i64, ptr %i.v, align 8, !tbaa !711
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.v, align 8, !tbaa !711
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK6duckdb11IteratorKey8ContainsERKNS_6ARTKeyE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 !guid !1972 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !587
  %i.c = load ptr, ptr %0, align 8, !tbaa !544    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = load i64, ptr %1, align 8, !tbaa !216    ; 3 uses
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !217
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %.0911 = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0911
  %i.m = load i8, ptr %i.l, align 1, !tbaa !218
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0911
  %i.o = load i8, ptr %i.n, align 1, !tbaa !218
  %.not = icmp eq i8 %i.m, %i.o                   ; 2 uses
  %i.p = add nuw i64 %.0911, 1                    ; 2 uses
  %exitcond.not = icmp ne i64 %i.p, %i.g
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %.not, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb4Node9IsAnyLeafEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #14 align 2 !guid !1973 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !298
  %i.b = lshr i64 %i.a, 56
  %i.c = trunc nuw i64 %i.b to i8
  %i.d = and i8 %i.c, 127                         ; 3 uses
  %.off.i = add nsw i8 %i.d, -8
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %switch.selectcmp.case1 = icmp eq i8 %i.d, 7
  %switch.selectcmp.case2 = icmp eq i8 %i.d, 2
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %switch.selectcmp, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define ptr @_ZNK6duckdb4Node12GetNextChildERNS_3ARTERh(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(433) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 align 2 !guid !1974 {
bb.a:
  %i.a = tail call ptr @_ZN6duckdb20GetNextChildInternalIKNS_4NodeEEENS_12optional_ptrIS1_Lb0EEERNS_3ARTERT_Rh(ptr noundef nonnull align 8 dereferenceable(433) %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %2)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8Iterator7PopNodeEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1977 {
bb.a:
  %1 = alloca %"class.duckdb::Prefix", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !812, !noalias !1978 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !813, !noalias !1978
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit3, label %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit3.thread

_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit3: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !814, !noalias !1978
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !585
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 496
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %sum.shift.i5 = lshr i64 %i.k, 63
  %.lobit1.i6 = trunc nuw nsw i64 %sum.shift.i5 to i8 ; 2 uses
  %i.l = and i64 %i.k, 9151314442816847872
  %.not = icmp eq i64 %i.l, 72057594037927936
  br i1 %.not, label %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit4, label %bb.b

_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit3.thread: ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !298  ; 3 uses
  %sum.shift.i = lshr i64 %i.n, 63
  %.lobit1.i = trunc nuw nsw i64 %sum.shift.i to i8 ; 2 uses
  %i.o = and i64 %i.n, 9151314442816847872
  %.not10 = icmp eq i64 %i.o, 72057594037927936
  br i1 %.not10, label %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit4, label %bb.b

bb.b:                                             ; preds = %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit3.thread, %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit3
  %.lobit1.i712 = phi i8 [ %.lobit1.i, %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit3.thread ], [ %.lobit1.i6, %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit3 ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !587
  %i.r = load ptr, ptr %0, align 8, !tbaa !544
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %.neg = xor i64 %i.t, -1
  %i.u = add i64 %.neg, %i.s
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = load i8, ptr %i.v, align 8, !tbaa !571
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !572
  %i.aa = add i8 %i.z, -1
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !572
  br label %bb.f

_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit4: ; preds = %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit3, %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit3.thread
  %.sroa.0.0.copyload = phi i64 [ %i.n, %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit3.thread ], [ %i.k, %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit3 ]
  %.lobit1.i71315 = phi i8 [ %.lobit1.i, %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit3.thread ], [ %.lobit1.i6, %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit3 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !586, !nonnull !209, !align !210
  call void @_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(433) %i.ac, i64 %.sroa.0.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.ad = load ptr, ptr %1, align 8, !tbaa !300
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !586, !nonnull !209, !align !210
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 432
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !290
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !218 ; 2 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !587
  %i.an = load ptr, ptr %0, align 8, !tbaa !544
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = add i64 %i.ak, %i.ap
  %i.ar = sub i64 %i.ao, %i.aq
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.at = load i8, ptr %i.as, align 8, !tbaa !571
  %i.au = icmp eq i8 %i.at, 1
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !572
  %i.ax = sub i8 %i.aw, %i.aj
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !572
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3topEv.exit4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.lobit1.i711 = phi i8 [ %.lobit1.i712, %bb.b ], [ %.lobit1.i712, %bb.c ], [ %.lobit1.i71315, %bb.e ]
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !589 ; 2 uses
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !1979 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -16
  br label %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3popEv.exit

bb.h:                                             ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.az) #29
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !584
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8 ; 2 uses
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !814
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !585 ; 3 uses
  store ptr %i.be, ptr %i.c, align 8, !tbaa !813
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !815
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 496
  br label %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3popEv.exit

_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3popEv.exit: ; preds = %bb.g, %bb.h
  %storemerge.i.i = phi ptr [ %i.ba, %bb.g ], [ %i.bh, %bb.h ]
  store ptr %storemerge.i.i, ptr %i.a, align 8, !tbaa !589
  %i.bi = icmp eq i8 %.lobit1.i711, 1
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3popEv.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.bj, align 8, !tbaa !571
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt5stackIN6duckdb13IteratorEntryESt5dequeIS1_SaIS1_EEE3popEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb4Leaf17TransformToNestedERNS_3ARTERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1982 {
bb.a:
  %2 = alloca %"class.duckdb::ARTKey", align 8    ; 5 uses
  %3 = alloca %"class.duckdb::ArenaAllocator", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::Node", align 8      ; 8 uses
  %5 = alloca %"class.duckdb::ARTKey", align 8    ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.26", align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !511, !nonnull !209, !align !210
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator3GetERNS_16AttachedDatabaseE(ptr noundef nonnull align 8 dereferenceable(408) %i.b)
  call void @_ZN6duckdb14ArenaAllocatorC1ERNS_9AllocatorEm(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 2048)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store i64 0, ptr %4, align 8, !tbaa !298
  %i.d = load i64, ptr %1, align 8, !tbaa !298    ; 2 uses
  %i.e = icmp ugt i64 %i.d, 72057594037927935
  br i1 %i.e, label %.lr.ph45, label %.loopexit42

.lr.ph45:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph45, %._crit_edge
  %i.h = phi i64 [ %i.d, %.lr.ph45 ], [ %i.m, %._crit_edge ]
  %i.i = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb4Node3RefIKNS_4LeafEEERT_RKNS_3ARTES0_NS_5NTypeE(ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %i.h, i8 noundef zeroext 2)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.preheader:                                       ; preds = %bb.b
  %i.j = load i8, ptr %i.i, align 8, !tbaa !811
  %.not47 = icmp eq i8 %i.j, 0
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.n, %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !298  ; 2 uses
  %i.n = icmp ugt i64 %i.m, 72057594037927935
  br i1 %i.n, label %bb.b, label %._crit_edge46, !llvm.loop !1980

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc34, %.noexc33, %.noexc32, %bb.p, %bb.b
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.p = load i64, ptr %i.o, align 8, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !486  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !498  ; 2 uses
  %i.t = add i64 %i.s, 8                          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !499
  %i.w = icmp ugt i64 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %_ZN6duckdb6ARTKey10CreateDataIlEEPhRNS_14ArenaAllocatorET_.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef 8)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.e
  %.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !486 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %.pre4.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !498 ; 2 uses
  %.pre5.i.i.i = add i64 %.pre4.i.i.i, 8
  br label %_ZN6duckdb6ARTKey10CreateDataIlEEPhRNS_14ArenaAllocatorET_.exit.i

_ZN6duckdb6ARTKey10CreateDataIlEEPhRNS_14ArenaAllocatorET_.exit.i: ; preds = %.noexc, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %.pre5.i.i.i, %.noexc ], [ %i.t, %bb.d ]
  %i.x = phi i64 [ %.pre4.i.i.i, %.noexc ], [ %i.s, %bb.d ]
end_hunk_0
