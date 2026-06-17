inline.NumInlined: 22010
inline.NumDeleted: 8913
begin_hunk_0_@_ZN6duckdb17RowGroupReorderer12RetrieveStatERKNS_14BaseStatisticsENS_17OrderByStatisticsENS_17OrderByColumnTypeE:bb.a
bb.o:                                             ; preds = %bb.n
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 noundef zeroext 1)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %7)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.q:                                             ; preds = %bb.o
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.r:                                             ; preds = %bb.n
  switch i8 %2, label %bb.y [
    i8 0, label %bb.s
    i8 1, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  call void @_ZN6duckdb11StringStats3MinB5cxx11ERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %1)
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %8)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.k = load ptr, ptr %8, align 8, !tbaa !35     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.k) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.u:                                             ; preds = %bb.s
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %8, align 8, !tbaa !35     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.o) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.v:                                             ; preds = %bb.r
  call void @_ZN6duckdb11StringStats3MaxB5cxx11ERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(128) %1)
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %9)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.r = load ptr, ptr %9, align 8, !tbaa !35     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.r) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.x:                                             ; preds = %bb.v
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %9, align 8, !tbaa !35     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.v) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.y:                                             ; preds = %bb.r
  %i.y = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.133, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.z unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.ai unwind label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread: ; preds = %bb.y
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.014 = phi i1 [ false, %bb.aa ], [ true, %bb.z ] ; 2 uses
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ab = load ptr, ptr %10, align 8, !tbaa !35   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.ab) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br i1 %.014, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br i1 %.014, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %.pn2654 = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ]
  call void @__cxa_free_exception(ptr %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.ad:                                            ; preds = %bb.a
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.134, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.ai unwind label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread: ; preds = %bb.ad
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0 = phi i1 [ false, %bb.af ], [ true, %bb.ae ] ; 2 uses
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ah = load ptr, ptr %12, align 8, !tbaa !35   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.ag
  call void @_ZdlPv(ptr noundef %i.ah) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br i1 %.0, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br i1 %.0, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %.pn57 = phi { ptr, i32 } [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ]
  call void @__cxa_free_exception(ptr %i.ae) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.w, %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.p, %bb.h, %bb.g, %bb.d
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.x, %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.m, %bb.q, %bb.e
  %.pn28.pn = phi { ptr, i32 } [ %.pn2851, %bb.m ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.b, %bb.e ], [ %.pn2654, %bb.ac ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.j, %bb.q ], [ %.pn57, %bb.ah ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.n, %bb.u ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.u, %bb.x ]
  resume { ptr, i32 } %.pn28.pn

bb.ai:                                            ; preds = %bb.af, %bb.aa, %bb.k
  unreachable
}

declare noundef zeroext i1 @_ZN6duckdb12NumericStats9HasMinMaxERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare void @_ZN6duckdb11StringStats3MinB5cxx11ERKNS_14BaseStatisticsE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #3

declare void @_ZN6duckdb11StringStats3MaxB5cxx11ERKNS_14BaseStatisticsE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17RowGroupReorderer21GetOffsetAfterPruningENS_17OrderByStatisticsENS_17OrderByColumnTypeENS_9OrderTypeENS_15OrderByNullTypeERKNS_12StorageIndexEmRNS_6vectorINS_19PartitionStatisticsELb1ESaIS9_EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.duckdb::OffsetPruningResult") align 8 captures(none) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(104) %5, i64 noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.duckdb::Value", align 8     ; 10 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 11 uses
  %10 = alloca %"class.duckdb::Value", align 8    ; 10 uses
  %11 = alloca %"class.duckdb::Value", align 8    ; 11 uses
  %12 = alloca %"class.std::multimap.2103", align 8 ; 8 uses
  %13 = alloca %"class.duckdb::unique_ptr.48", align 8 ; 14 uses
  %14 = alloca %"class.duckdb::Value", align 8    ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 17 uses
  store i32 0, ptr %i.a, align 8, !tbaa !3524
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !3525
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !3526
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !3527
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !3528
  %i.f = load ptr, ptr %7, align 8, !tbaa !3746   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3746 ; 2 uses
  %.not170 = icmp eq ptr %i.f, %i.h
  br i1 %.not170, label %.thread116.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not284 = icmp eq i8 %4, 2                     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.l = icmp eq i8 %4, 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ao
  %.047174 = phi i64 [ %6, %.lr.ph ], [ %.148.jt3, %bb.ao ] ; 5 uses
  %.049173 = phi i64 [ 0, %.lr.ph ], [ %.150.jt3, %bb.ao ] ; 4 uses
  %.053172 = phi i1 [ false, %.lr.ph ], [ %.255.jt3, %bb.ao ] ; 3 uses
  %.sroa.0105.0171 = phi ptr [ %i.f, %.lr.ph ], [ %i.bj, %bb.ao ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0105.0171, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !2856
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %.thread112, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0105.0171, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3606
  %.not126 = icmp eq ptr %i.q, null
  br i1 %.not126, label %.thread112, label %bb.d

.thread112:                                       ; preds = %bb.c, %bb.b
  store i64 %6, ptr %0, align 8, !tbaa !3747
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.r = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_17PartitionRowGroupELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %bb.e unwind label %bb.l       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.48") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(104) %5)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  br i1 %.not284, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.w = invoke noundef zeroext i1 @_ZNK6duckdb14BaseStatistics13CanHaveNoNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.v)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  br i1 %i.w, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0105.0171, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !2849 ; 2 uses
  %i.z = icmp ult i64 %.047174, %i.y
  br i1 %i.z, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  store i64 %.047174, ptr %0, align 8, !tbaa !3747
  store i64 0, ptr %i.i, align 8, !tbaa !3749
  store i64 %.049173, ptr %i.j, align 8, !tbaa !3750
  br label %18

bb.l:                                             ; preds = %bb.e, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.n:                                             ; preds = %bb.j
  %i.ac = sub nuw i64 %.047174, %i.y
  %i.ad = add i64 %.049173, 1
  br label %bb.am

bb.o:                                             ; preds = %bb.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.ae = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6duckdb17RowGroupReorderer12RetrieveStatERKNS_14BaseStatisticsENS_17OrderByStatisticsENS_17OrderByColumnTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %14, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, i8 noundef zeroext %1, i8 noundef zeroext %2)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.af = load i8, ptr %i.k, align 8, !tbaa !3751, !range !263, !noundef !70
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  br i1 %i.l, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.ah = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ai = invoke noundef zeroext i1 @_ZNK6duckdb14BaseStatistics13CanHaveNoNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ah)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  br i1 %i.ai, label %bb.al, label %17

bb.v:                                             ; preds = %bb.p, %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.w:                                             ; preds = %bb.t, %bb.aa, %bb.z, %bb.s
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.x:                                             ; preds = %bb.r
  br i1 %.not284, label %17, label %bb.al

bb.y:                                             ; preds = %bb.q
  br i1 %.not284, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.al = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.aa unwind label %bb.w

bb.aa:                                            ; preds = %bb.z
  %i.am = invoke noundef zeroext i1 @_ZNK6duckdb14BaseStatistics11CanHaveNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.al)
          to label %bb.ab unwind label %bb.w

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.am, label %17, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0105.0171, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !2849
  %i.ap = load i64, ptr %13, align 8, !tbaa !320  ; 3 uses
  store ptr null, ptr %13, align 8, !tbaa !320
  %i.aq = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #38
          to label %.noexc unwind label %bb.ap    ; 6 uses

.noexc:                                           ; preds = %bb.ac
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 3 uses
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, ptr noundef nonnull align 8 dereferenceable(64) %14)
          to label %bb.ah unwind label %bb.ad

bb.ad:                                            ; preds = %.noexc
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  %i.au = call ptr @__cxa_begin_catch(ptr %i.at) #37 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.aq) #39
  invoke void @__cxa_rethrow() #40
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = inttoptr i64 %i.ap to ptr
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #41
  unreachable

bb.ag:                                            ; preds = %bb.ad
  unreachable

bb.ah:                                            ; preds = %.noexc
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store i64 %i.ao, ptr %i.az, align 8, !tbaa !3752
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  store i64 %i.ap, ptr %i.ba, align 8, !tbaa !320
  %.0910.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !3530 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %.0910.i.i.i, null
  br i1 %.not11.i.i.i, label %_ZN6duckdb12_GLOBAL__N_119RowGroupOffsetEntryD2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ah, %.noexc.i.i
  %.0912.i.i.i = phi ptr [ %.09.i.i.i, %.noexc.i.i ], [ %.0910.i.i.i, %bb.ah ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 32 ; 2 uses
  %i.bc = invoke noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, ptr noundef nonnull align 8 dereferenceable(64) %i.bb)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %.in.v.i.i.i = select i1 %i.bc, i64 16, i64 24
  %.in.i.i.i = getelementptr i8, ptr %.0912.i.i.i, i64 %.in.v.i.i.i
  %.09.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !3530 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.09.i.i.i, null
  br i1 %.not.i.i.i, label %bb.ai, label %.lr.ph.i.i.i, !llvm.loop !3754

bb.ai:                                            ; preds = %.noexc.i.i
  %i.bd = icmp eq ptr %.0912.i.i.i, %i.a
  br i1 %i.bd, label %_ZN6duckdb12_GLOBAL__N_119RowGroupOffsetEntryD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.be = invoke noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, ptr noundef nonnull align 8 dereferenceable(64) %i.bb)
          to label %_ZN6duckdb12_GLOBAL__N_119RowGroupOffsetEntryD2Ev.exit unwind label %.loopexit.split-lp.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp.i.i:                           ; preds = %bb.aj
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call fastcc void @_ZNSt8_Rb_treeIN6duckdb5ValueESt4pairIKS1_NS0_12_GLOBAL__N_119RowGroupOffsetEntryEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev(ptr nonnull %i.aq) #37
  br label %.body

_ZN6duckdb12_GLOBAL__N_119RowGroupOffsetEntryD2Ev.exit: ; preds = %bb.ah, %bb.ai, %bb.aj
  %.0.lcssa.i14.i.i = phi ptr [ %.0912.i.i.i, %bb.aj ], [ %.0912.i.i.i, %bb.ai ], [ %i.a, %bb.ah ]
  %i.bf = phi i1 [ %i.be, %bb.aj ], [ true, %bb.ai ], [ true, %bb.ah ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bf, ptr noundef nonnull %i.aq, ptr noundef nonnull %.0.lcssa.i14.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #37
  %i.bg = load i64, ptr %i.e, align 8, !tbaa !3528
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.e, align 8, !tbaa !3528
  br label %17

bb.al:                                            ; preds = %bb.x, %bb.u
  store i64 %.047174, ptr %0, align 8, !tbaa !3747
  store i64 0, ptr %i.i, align 8, !tbaa !3749
  store i64 %.049173, ptr %i.j, align 8, !tbaa !3750
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %18

17:                                               ; preds = %bb.ab, %bb.x, %bb.u, %_ZN6duckdb12_GLOBAL__N_119RowGroupOffsetEntryD2Ev.exit
  %.154.jt3 = phi i1 [ %.053172, %_ZN6duckdb12_GLOBAL__N_119RowGroupOffsetEntryD2Ev.exit ], [ %.053172, %bb.u ], [ true, %bb.ab ], [ true, %bb.x ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.am

bb.am:                                            ; preds = %17, %bb.n
  %.255.jt3 = phi i1 [ %.154.jt3, %17 ], [ %.053172, %bb.n ] ; 2 uses
  %.150.jt3 = phi i64 [ %.049173, %17 ], [ %i.ad, %bb.n ] ; 3 uses
  %.148.jt3 = phi i64 [ %.047174, %17 ], [ %i.ac, %bb.n ] ; 3 uses
  %i.bi = load ptr, ptr %13, align 8, !tbaa !320  ; 3 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %bb.ao, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i

18:                                               ; preds = %bb.al, %bb.k
  %19 = load ptr, ptr %13, align 8, !tbaa !320    ; 3 uses
  %.not.i.jt1 = icmp eq ptr %19, null
  br i1 %.not.i.jt1, label %20, label %bb.an

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i: ; preds = %bb.am
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.bi) #37
  call void @_ZdlPv(ptr noundef nonnull %i.bi) #39
  br label %bb.ao

bb.an:                                            ; preds = %18
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %19) #37
  call void @_ZdlPv(ptr noundef nonnull %19) #39
  br label %20

bb.ao:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0105.0171, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.bj, %i.h
  br i1 %.not, label %.thread116, label %bb.b

20:                                               ; preds = %bb.an, %18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %.loopexit

bb.ap:                                            ; preds = %bb.ac
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = inttoptr i64 %i.ap to ptr
  br label %.body

.body:                                            ; preds = %bb.ae, %bb.ak, %bb.ap
  %.sroa.5.1 = phi ptr [ %i.bl, %bb.ap ], [ null, %bb.ak ], [ %i.aw, %bb.ae ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.bk, %bb.ap ], [ %lpad.phi.i.i, %bb.ak ], [ %i.av, %bb.ae ]
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119RowGroupOffsetEntryD2Ev(ptr %.sroa.5.1) #37
  br label %bb.aq

bb.aq:                                            ; preds = %.body, %bb.w
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.w ], [ %eh.lpad-body, %.body ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #37
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.aq ], [ %i.aj, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ar ], [ %i.ab, %bb.m ]
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #37
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.as ], [ %i.aa, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %.body90

.thread116:                                       ; preds = %bb.ao
  %i.bm = icmp eq i8 %4, 2
  %or.cond = select i1 %i.bm, i1 %.255.jt3, i1 false
  br i1 %or.cond, label %bb.au, label %.thread116.thread

bb.au:                                            ; preds = %.thread116
  store i64 %.148.jt3, ptr %0, align 8, !tbaa !3747
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bn, align 8, !tbaa !3749
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.150.jt3, ptr %i.bo, align 8, !tbaa !3750
  br label %.loopexit

.thread116.thread:                                ; preds = %bb.a, %.thread116
  %.047.lcssa336 = phi i64 [ %.148.jt3, %.thread116 ], [ %6, %bb.a ] ; 12 uses
  %.049.lcssa335 = phi i64 [ %.150.jt3, %.thread116 ], [ 0, %bb.a ] ; 2 uses
  switch i8 %3, label %bb.cm [
    i8 2, label %bb.av
    i8 3, label %bb.br
  ]

bb.av:                                            ; preds = %.thread116.thread
  %.val81 = load ptr, ptr %i.c, align 8, !tbaa !3526 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3755)
  %i.bp = icmp eq ptr %.val81, %i.a
  br i1 %i.bp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i64 %.047.lcssa336, ptr %0, align 8, !tbaa !3747, !alias.scope !3755
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bq, align 8
  br label %_ZN6duckdb12_GLOBAL__N_124FindOffsetPrunableChunksISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_19RowGroupOffsetEntryEEES8_EENS_19OffsetPruningResultET_T0_NS_17OrderByStatisticsENS_17OrderByColumnTypeEm.exit

bb.ax:                                            ; preds = %bb.av
  %i.br = icmp ne i8 %1, 1
  %i.bs = zext i1 %i.br to i8                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37, !noalias !3755
  %i.bt = getelementptr inbounds nuw i8, ptr %.val81, i64 104
  %i.bu = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
          to label %.noexc88 unwind label %bb.bq

.noexc88:                                         ; preds = %bb.ax
  invoke void @_ZN6duckdb17RowGroupReorderer12RetrieveStatERKNS_14BaseStatisticsENS_17OrderByStatisticsENS_17OrderByColumnTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %10, ptr noundef nonnull align 8 dereferenceable(128) %i.bu, i8 noundef zeroext %i.bs, i8 noundef zeroext %2)
          to label %.noexc89.preheader unwind label %bb.bq

.noexc89.preheader:                               ; preds = %.noexc88
  %switch = icmp ult i8 %1, 2
  br i1 %switch, label %.noexc89.preheader.split.us, label %.thread63.i

.noexc89.preheader.split.us:                      ; preds = %.noexc89.preheader
  %cond282 = icmp eq i8 %1, 1
  br i1 %cond282, label %.noexc89.us.us, label %.noexc89.us

.noexc89.us.us:                                   ; preds = %.noexc89.preheader.split.us, %bb.ay
  %.0117.i.us.us = phi i64 [ %i.by, %bb.ay ], [ 0, %.noexc89.preheader.split.us ]
  %.027116.i.us.us = phi i64 [ %.128.lcssa.i.us.us, %bb.ay ], [ %.047.lcssa336, %.noexc89.preheader.split.us ] ; 2 uses
  %.035115.i.us.us = phi i64 [ %.136.lcssa.i.us.us, %bb.ay ], [ 0, %.noexc89.preheader.split.us ] ; 2 uses
  %.sroa.0.0114.i.us.us = phi ptr [ %.sroa.0.1.lcssa.i.us.us, %bb.ay ], [ %.val81, %.noexc89.preheader.split.us ] ; 3 uses
  %.sroa.058.0113.i.us.us = phi ptr [ %i.ca, %bb.ay ], [ %.val81, %.noexc89.preheader.split.us ] ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.058.0113.i.us.us, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.058.0113.i.us.us, i64 96
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !3758, !noalias !3755
  %i.by = add i64 %i.bx, %.0117.i.us.us           ; 2 uses
  %.not76100.i.us.us = icmp eq ptr %.sroa.0.0114.i.us.us, %.sroa.058.0113.i.us.us
  br i1 %.not76100.i.us.us, label %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i.us.us, label %.lr.ph.i.us.us.us

_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i.us.us: ; preds = %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i.us.us.us, %bb.bf, %.noexc89.us.us
  %.sroa.0.1.lcssa.i.us.us = phi ptr [ %.sroa.0.0114.i.us.us, %.noexc89.us.us ], [ %i.cj, %bb.bf ], [ %.sroa.0.1101.i.us.us.us, %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i.us.us.us ]
  %.136.lcssa.i.us.us = phi i64 [ %.035115.i.us.us, %.noexc89.us.us ], [ %i.cf, %bb.bf ], [ %.136102.i.us.us.us, %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i.us.us.us ] ; 3 uses
  %.128.lcssa.i.us.us = phi i64 [ %.027116.i.us.us, %.noexc89.us.us ], [ %i.ci, %bb.bf ], [ %.128103.i.us.us.us, %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i.us.us.us ] ; 3 uses
  %i.bz = icmp ugt i64 %i.by, %.047.lcssa336
  br i1 %i.bz, label %.thread63.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i.us.us
  %i.ca = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.058.0113.i.us.us) #42, !noalias !3755 ; 2 uses
  %.not.i87.us.us = icmp eq ptr %i.ca, %i.a
  br i1 %.not.i87.us.us, label %.thread63.i, label %.noexc89.us.us, !llvm.loop !3760

.lr.ph.i.us.us.us:                                ; preds = %.noexc89.us.us, %bb.bf
  %.128103.i.us.us.us = phi i64 [ %i.ci, %bb.bf ], [ %.027116.i.us.us, %.noexc89.us.us ] ; 3 uses
  %.136102.i.us.us.us = phi i64 [ %i.cf, %bb.bf ], [ %.035115.i.us.us, %.noexc89.us.us ] ; 3 uses
  %.sroa.0.1101.i.us.us.us = phi ptr [ %i.cj, %bb.bf ], [ %.sroa.0.0114.i.us.us, %.noexc89.us.us ] ; 4 uses
  %i.cb = invoke noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bv, ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i.us.us.us unwind label %.split229.us.split.us.split.us, !noalias !3755

_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i.us.us.us: ; preds = %.lr.ph.i.us.us.us
  br i1 %i.cb, label %bb.az, label %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i.us.us

bb.az:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i.us.us.us
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.1101.i.us.us.us, i64 104
  %i.cd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
          to label %bb.ba unwind label %.split237.us.split.us.split.us, !noalias !3755

bb.ba:                                            ; preds = %bb.az
  %i.ce = invoke noundef zeroext i1 @_ZNK6duckdb14BaseStatistics11CanHaveNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.cd)
          to label %bb.bb unwind label %.split237.us.split.us.split.us, !noalias !3755

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.ce, label %.thread63.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cf = add i64 %.136102.i.us.us.us, 1          ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.1101.i.us.us.us, i64 96
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !3758, !noalias !3755
  %i.ci = sub i64 %.128103.i.us.us.us, %i.ch      ; 3 uses
  %i.cj = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.1101.i.us.us.us) #42, !noalias !3755 ; 5 uses
  %i.ck = icmp eq ptr %i.cj, %i.a
  br i1 %i.ck, label %.thread63.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 104
  %i.cm = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
          to label %bb.be unwind label %.split242.us.split.us.split.us, !noalias !3755

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37, !noalias !3755
  invoke void @_ZN6duckdb17RowGroupReorderer12RetrieveStatERKNS_14BaseStatisticsENS_17OrderByStatisticsENS_17OrderByColumnTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) %i.cm, i8 noundef zeroext %i.bs, i8 noundef zeroext %2)
          to label %bb.bf unwind label %.split245.us.split.us.split.us, !noalias !3755

bb.bf:                                            ; preds = %bb.be
  %i.cn = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(64) %11) #37, !noalias !3755 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #37, !noalias !3755
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37, !noalias !3755
  %.not76.i.us.us.us = icmp eq ptr %i.cj, %.sroa.058.0113.i.us.us
  br i1 %.not76.i.us.us.us, label %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i.us.us, label %.lr.ph.i.us.us.us, !llvm.loop !3761

.split229.us.split.us.split.us:                   ; preds = %.lr.ph.i.us.us.us
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.split237.us.split.us.split.us:                   ; preds = %bb.ba, %bb.az
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.split242.us.split.us.split.us:                   ; preds = %bb.bd
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.split245.us.split.us.split.us:                   ; preds = %bb.be
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.noexc89.us:                                      ; preds = %.noexc89.preheader.split.us, %bb.bn
  %.0117.i.us = phi i64 [ %i.cv, %bb.bn ], [ 0, %.noexc89.preheader.split.us ]
  %.027116.i.us = phi i64 [ %.128.lcssa.i.us, %bb.bn ], [ %.047.lcssa336, %.noexc89.preheader.split.us ] ; 2 uses
  %.035115.i.us = phi i64 [ %.136.lcssa.i.us, %bb.bn ], [ 0, %.noexc89.preheader.split.us ] ; 2 uses
  %.sroa.0.0114.i.us = phi ptr [ %.sroa.0.1.lcssa.i.us, %bb.bn ], [ %.val81, %.noexc89.preheader.split.us ] ; 3 uses
  %.sroa.058.0113.i.us = phi ptr [ %i.dk, %bb.bn ], [ %.val81, %.noexc89.preheader.split.us ] ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.058.0113.i.us, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.058.0113.i.us, i64 96
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !3758, !noalias !3755
  %i.cv = add i64 %i.cu, %.0117.i.us              ; 2 uses
  %.not76100.i.us = icmp eq ptr %.sroa.0.0114.i.us, %.sroa.058.0113.i.us
  br i1 %.not76100.i.us, label %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i.us, label %.lr.ph.i.us247

.lr.ph.i.us247:                                   ; preds = %.noexc89.us, %bb.bm
  %.128103.i.us248 = phi i64 [ %i.dd, %bb.bm ], [ %.027116.i.us, %.noexc89.us ] ; 3 uses
  %.136102.i.us249 = phi i64 [ %i.da, %bb.bm ], [ %.035115.i.us, %.noexc89.us ] ; 3 uses
  %.sroa.0.1101.i.us250 = phi ptr [ %i.de, %bb.bm ], [ %.sroa.0.0114.i.us, %.noexc89.us ] ; 4 uses
  %i.cw = invoke noundef zeroext i1 @_ZNK6duckdb5ValuegtERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cs, ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i.us251 unwind label %.split229.split.us, !noalias !3755

_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i.us251: ; preds = %.lr.ph.i.us247
  br i1 %i.cw, label %bb.bg, label %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i.us

bb.bg:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i.us251
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.1101.i.us250, i64 104
  %i.cy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
          to label %bb.bh unwind label %.split237.split.us, !noalias !3755

bb.bh:                                            ; preds = %bb.bg
  %i.cz = invoke noundef zeroext i1 @_ZNK6duckdb14BaseStatistics11CanHaveNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.cy)
          to label %bb.bi unwind label %.split237.split.us, !noalias !3755

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.cz, label %.thread63.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.da = add i64 %.136102.i.us249, 1             ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.1101.i.us250, i64 96
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !3758, !noalias !3755
  %i.dd = sub i64 %.128103.i.us248, %i.dc         ; 3 uses
  %i.de = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.1101.i.us250) #42, !noalias !3755 ; 5 uses
  %i.df = icmp eq ptr %i.de, %i.a
  br i1 %i.df, label %.thread63.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 104
  %i.dh = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dg)
          to label %bb.bl unwind label %.split242.split.us, !noalias !3755

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37, !noalias !3755
  invoke void @_ZN6duckdb17RowGroupReorderer12RetrieveStatERKNS_14BaseStatisticsENS_17OrderByStatisticsENS_17OrderByColumnTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) %i.dh, i8 noundef zeroext %i.bs, i8 noundef zeroext %2)
          to label %bb.bm unwind label %.split245.split.us, !noalias !3755

bb.bm:                                            ; preds = %bb.bl
  %i.di = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(64) %11) #37, !noalias !3755 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #37, !noalias !3755
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37, !noalias !3755
  %.not76.i.us252 = icmp eq ptr %i.de, %.sroa.058.0113.i.us
  br i1 %.not76.i.us252, label %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i.us, label %.lr.ph.i.us247, !llvm.loop !3761

_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i.us: ; preds = %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i.us251, %bb.bm, %.noexc89.us
  %.sroa.0.1.lcssa.i.us = phi ptr [ %.sroa.0.0114.i.us, %.noexc89.us ], [ %i.de, %bb.bm ], [ %.sroa.0.1101.i.us250, %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i.us251 ]
  %.136.lcssa.i.us = phi i64 [ %.035115.i.us, %.noexc89.us ], [ %i.da, %bb.bm ], [ %.136102.i.us249, %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i.us251 ] ; 3 uses
  %.128.lcssa.i.us = phi i64 [ %.027116.i.us, %.noexc89.us ], [ %i.dd, %bb.bm ], [ %.128103.i.us248, %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i.us251 ] ; 3 uses
  %i.dj = icmp ugt i64 %i.cv, %.047.lcssa336
  br i1 %i.dj, label %.thread63.i, label %bb.bn

bb.bn:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i.us
  %i.dk = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.058.0113.i.us) #42, !noalias !3755 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb17RowGroupReorderer21GetOffsetAfterPruningENS_17OrderByStatisticsENS_17OrderByColumnTypeENS_9OrderTypeENS_15OrderByNullTypeERKNS_12StorageIndexEmRNS_6vectorINS_19PartitionStatisticsELb1ESaIS9_EEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37, !noalias !3762
  invoke void @_ZN6duckdb17RowGroupReorderer12RetrieveStatERKNS_14BaseStatisticsENS_17OrderByStatisticsENS_17OrderByColumnTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %9, ptr noundef nonnull align 8 dereferenceable(128) %i.et, i8 noundef zeroext %i.dv, i8 noundef zeroext %2)
          to label %bb.cb unwind label %.split191.us.split.us.split.us, !noalias !3762

bb.cb:                                            ; preds = %bb.ca
  %i.eu = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %9) #37, !noalias !3762 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #37, !noalias !3762
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37, !noalias !3762
  %.not20.i.us.us.us = icmp eq ptr %i.em, %.sroa.0102.0.us.us
  br i1 %.not20.i.us.us.us, label %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i94.us.us, label %.lr.ph.i92.us.us.us, !llvm.loop !3766

.split.us.split.us.split.us:                      ; preds = %.lr.ph.i92.us.us.us
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.split183.us.split.us.split.us:                   ; preds = %bb.bw, %bb.bv
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.split188.us.split.us.split.us:                   ; preds = %bb.bz
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.split191.us.split.us.split.us:                   ; preds = %bb.ca
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.lr.ph64.i.us:                                    ; preds = %.lr.ph64.i.preheader.split.us, %bb.cj
  %.sroa.0102.0.us = phi ptr [ %i.fu, %bb.cj ], [ %i.a, %.lr.ph64.i.preheader.split.us ] ; 4 uses
  %.063.i.us = phi i64 [ %i.fd, %bb.cj ], [ 0, %.lr.ph64.i.preheader.split.us ]
  %.02762.i.us = phi i64 [ %.128.lcssa.i96.us, %bb.cj ], [ %.047.lcssa336, %.lr.ph64.i.preheader.split.us ] ; 2 uses
  %.02961.i.us = phi i64 [ %.130.lcssa.i.us, %bb.cj ], [ 0, %.lr.ph64.i.preheader.split.us ] ; 2 uses
  %.sroa.0.060.i.us = phi ptr [ %.sroa.0.1.lcssa.i95.us, %bb.cj ], [ %i.a, %.lr.ph64.i.preheader.split.us ] ; 3 uses
  %i.ez = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0102.0.us) #42, !noalias !3762 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 96
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !3758, !noalias !3762
  %i.fd = add i64 %i.fc, %.063.i.us               ; 2 uses
  %.not2045.i.us = icmp eq ptr %.sroa.0.060.i.us, %.sroa.0102.0.us
  br i1 %.not2045.i.us, label %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i94.us, label %.lr.ph.i92.us193

.lr.ph.i92.us193:                                 ; preds = %.lr.ph64.i.us, %bb.ci
  %.12848.i.us194 = phi i64 [ %i.fn, %bb.ci ], [ %.02762.i.us, %.lr.ph64.i.us ] ; 3 uses
  %.13047.i.us195 = phi i64 [ %i.fj, %bb.ci ], [ %.02961.i.us, %.lr.ph64.i.us ] ; 3 uses
  %.sroa.0.146.i.us196 = phi ptr [ %i.fk, %bb.ci ], [ %.sroa.0.060.i.us, %.lr.ph64.i.us ] ; 3 uses
  %i.fe = invoke noundef zeroext i1 @_ZNK6duckdb5ValuegtERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.fa, ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i93.us197 unwind label %.split.split.us, !noalias !3762

_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i93.us197: ; preds = %.lr.ph.i92.us193
  br i1 %i.fe, label %bb.cc, label %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i94.us

bb.cc:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i93.us197
  %i.ff = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0.146.i.us196) #42, !noalias !3762
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 104
  %i.fh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fg)
          to label %bb.cd unwind label %.split183.split.us, !noalias !3762

bb.cd:                                            ; preds = %bb.cc
  %i.fi = invoke noundef zeroext i1 @_ZNK6duckdb14BaseStatistics11CanHaveNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.fh)
          to label %bb.ce unwind label %.split183.split.us, !noalias !3762

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.fi, label %.thread7.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fj = add i64 %.13047.i.us195, 1              ; 3 uses
  %i.fk = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0.146.i.us196) #42, !noalias !3762 ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 96
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !3758, !noalias !3762
  %i.fn = sub i64 %.12848.i.us194, %i.fm          ; 3 uses
  %i.fo = icmp eq ptr %i.fk, %.val82
  br i1 %i.fo, label %.thread7.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.fp = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.fk) #42, !noalias !3762
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 104
  %i.fr = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fq)
          to label %bb.ch unwind label %.split188.split.us, !noalias !3762

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37, !noalias !3762
  invoke void @_ZN6duckdb17RowGroupReorderer12RetrieveStatERKNS_14BaseStatisticsENS_17OrderByStatisticsENS_17OrderByColumnTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %9, ptr noundef nonnull align 8 dereferenceable(128) %i.fr, i8 noundef zeroext %i.dv, i8 noundef zeroext %2)
          to label %bb.ci unwind label %.split191.split.us, !noalias !3762

bb.ci:                                            ; preds = %bb.ch
  %i.fs = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %9) #37, !noalias !3762 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #37, !noalias !3762
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37, !noalias !3762
  %.not20.i.us198 = icmp eq ptr %i.fk, %.sroa.0102.0.us
  br i1 %.not20.i.us198, label %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i94.us, label %.lr.ph.i92.us193, !llvm.loop !3766

_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i94.us: ; preds = %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i93.us197, %bb.ci, %.lr.ph64.i.us
  %.sroa.0.1.lcssa.i95.us = phi ptr [ %.sroa.0.060.i.us, %.lr.ph64.i.us ], [ %i.fk, %bb.ci ], [ %.sroa.0.146.i.us196, %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i93.us197 ]
  %.130.lcssa.i.us = phi i64 [ %.02961.i.us, %.lr.ph64.i.us ], [ %i.fj, %bb.ci ], [ %.13047.i.us195, %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i93.us197 ] ; 3 uses
  %.128.lcssa.i96.us = phi i64 [ %.02762.i.us, %.lr.ph64.i.us ], [ %i.fn, %bb.ci ], [ %.12848.i.us194, %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i93.us197 ] ; 3 uses
  %i.ft = icmp ugt i64 %i.fd, %.047.lcssa336
  br i1 %i.ft, label %.thread7.i, label %bb.cj

bb.cj:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i94.us
  %i.fu = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0102.0.us) #42, !noalias !3762 ; 2 uses
  %.not.i97.us = icmp eq ptr %i.fu, %.val82
  br i1 %.not.i97.us, label %.thread7.i, label %.lr.ph64.i.us, !llvm.loop !3765

.split.split.us:                                  ; preds = %.lr.ph.i92.us193
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.split183.split.us:                               ; preds = %bb.cd, %bb.cc
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.split188.split.us:                               ; preds = %bb.cg
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.split191.split.us:                               ; preds = %bb.ch
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ck:                                            ; preds = %.split191.us.split.us.split.us, %.split191.split.us
  %.us-phi192 = phi { ptr, i32 } [ %i.fy, %.split191.split.us ], [ %i.ey, %.split191.us.split.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37, !noalias !3762
  br label %bb.cl

bb.cl:                                            ; preds = %.split188.split.us, %.split188.us.split.us.split.us, %.split183.split.us, %.split183.us.split.us.split.us, %.split.split.us, %.split.us.split.us.split.us, %bb.ck
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ew, %.split183.us.split.us.split.us ], [ %.us-phi192, %bb.ck ], [ %i.ev, %.split.us.split.us.split.us ], [ %i.fv, %.split.split.us ], [ %i.fw, %.split183.split.us ], [ %i.fx, %.split188.split.us ], [ %i.ex, %.split188.us.split.us.split.us ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #37, !noalias !3762
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37, !noalias !3762
  br label %.body90

.thread7.i:                                       ; preds = %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i94.us, %bb.cj, %bb.ce, %bb.cf, %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i94.us.us, %bb.bu, %bb.by, %bb.bx, %.lr.ph64.i.preheader
  %.12848.lcssa103.sink.i = phi i64 [ %.047.lcssa336, %.lr.ph64.i.preheader ], [ %.12848.i.us194, %bb.ce ], [ %i.ep, %bb.by ], [ %.128.lcssa.i96.us.us, %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i94.us.us ], [ %.12848.i.us.us.us, %bb.bx ], [ %.128.lcssa.i96.us.us, %bb.bu ], [ %i.fn, %bb.cf ], [ %.128.lcssa.i96.us, %bb.cj ], [ %.128.lcssa.i96.us, %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i94.us ]
  %.13047.lcssa97.sink.i = phi i64 [ 0, %.lr.ph64.i.preheader ], [ %.13047.i.us195, %bb.ce ], [ %i.el, %bb.by ], [ %.130.lcssa.i.us.us, %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i94.us.us ], [ %.13047.i.us.us.us, %bb.bx ], [ %.130.lcssa.i.us.us, %bb.bu ], [ %i.fj, %bb.cf ], [ %.130.lcssa.i.us, %bb.cj ], [ %.130.lcssa.i.us, %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i94.us ]
  store i64 %.12848.lcssa103.sink.i, ptr %0, align 8, !tbaa !3747, !alias.scope !3762
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.13047.lcssa97.sink.i, ptr %i.fz, align 8, !tbaa !3749, !alias.scope !3762
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #37, !noalias !3762
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37, !noalias !3762
  br label %_ZN6duckdb12_GLOBAL__N_124FindOffsetPrunableChunksISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_19RowGroupOffsetEntryEEEESA_EENS_19OffsetPruningResultET_T0_NS_17OrderByStatisticsENS_17OrderByColumnTypeEm.exit

_ZN6duckdb12_GLOBAL__N_124FindOffsetPrunableChunksISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_19RowGroupOffsetEntryEEEESA_EENS_19OffsetPruningResultET_T0_NS_17OrderByStatisticsENS_17OrderByColumnTypeEm.exit: ; preds = %.thread7.i, %bb.bs
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.049.lcssa335, ptr %i.ga, align 8, !tbaa !3750
  br label %.loopexit

bb.cm:                                            ; preds = %.thread116.thread
  %i.gb = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.135, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.cn unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.co unwind label %bb.cp

bb.co:                                            ; preds = %bb.cn
  invoke void @__cxa_throw(ptr nonnull %i.gb, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.cr unwind label %bb.cp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.cm
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.cq

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.0 = phi i1 [ false, %bb.co ], [ true, %bb.cn ] ; 2 uses
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ge = load ptr, ptr %15, align 8, !tbaa !35   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cp
  call void @_ZdlPv(ptr noundef %i.ge) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br i1 %.0, label %bb.cq, label %.body90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br i1 %.0, label %bb.cq, label %.body90

bb.cq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn77125 = phi { ptr, i32 } [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.gb) #37
  br label %.body90

.loopexit:                                        ; preds = %20, %.thread112, %_ZN6duckdb12_GLOBAL__N_124FindOffsetPrunableChunksISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_19RowGroupOffsetEntryEEEESA_EENS_19OffsetPruningResultET_T0_NS_17OrderByStatisticsENS_17OrderByColumnTypeEm.exit, %_ZN6duckdb12_GLOBAL__N_124FindOffsetPrunableChunksISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_19RowGroupOffsetEntryEEES8_EENS_19OffsetPruningResultET_T0_NS_17OrderByStatisticsENS_17OrderByColumnTypeEm.exit, %bb.au
  %.val85 = load ptr, ptr %i.b, align 8, !tbaa !3525
  call fastcc void @_ZNSt8_Rb_treeIN6duckdb5ValueESt4pairIKS1_NS0_12_GLOBAL__N_119RowGroupOffsetEntryEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef %.val85)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  ret void

.body90:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bp, %bb.cl, %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.cq, %bb.at
  %.pn77.pn = phi { ptr, i32 } [ %.pn77125, %bb.cq ], [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn.pn.pn, %bb.at ], [ %.pn.pn.pn.i, %bb.bp ], [ %i.dr, %bb.bq ], [ %.pn.pn.pn.pn.i, %bb.cl ], [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %.val84 = load ptr, ptr %i.b, align 8, !tbaa !3525
  call fastcc void @_ZNSt8_Rb_treeIN6duckdb5ValueESt4pairIKS1_NS0_12_GLOBAL__N_119RowGroupOffsetEntryEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef %.val84)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  resume { ptr, i32 } %.pn77.pn

bb.cr:                                            ; preds = %bb.co
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10shared_ptrINS_17PartitionRowGroupELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3606   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EE13AssertNotNullEb.exit, !prof !99

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.180, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_119RowGroupOffsetEntryD2Ev(ptr %.8.val) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.8.val) #37
  tail call void @_ZdlPv(ptr noundef nonnull %.8.val) #39
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define ptr @_ZN6duckdb17RowGroupReorderer14GetRootSegmentERNS_19RowGroupSegmentTreeE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::vector.2088", align 8 ; 12 uses
  %3 = alloca %"class.duckdb::vector.2088", align 8 ; 12 uses
  %4 = alloca %"class.std::multimap.2111", align 8 ; 10 uses
  %5 = alloca %"class.duckdb::SegmentTree<duckdb::RowGroup, true>::SegmentNodeIterationHelper::SegmentIterator", align 8 ; 7 uses
  %6 = alloca %"class.duckdb::unique_ptr.48", align 8 ; 11 uses
  %7 = alloca %"class.duckdb::Value", align 8     ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !3745, !range !263, !noundef !70
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3767
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3767
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.bn, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3026
  br label %bb.bn

bb.d:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !3745
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i32 0, ptr %i.k, align 8, !tbaa !3524
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr null, ptr %i.l, align 8, !tbaa !3525
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.k, ptr %i.m, align 8, !tbaa !3526
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.k, ptr %i.n, align 8, !tbaa !3527
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store i64 0, ptr %i.o, align 8, !tbaa !3528
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.p = invoke ptr @_ZNK6duckdb11SegmentTreeINS_8RowGroupELb1EE14GetRootSegmentEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  store ptr %1, ptr %5, align 8, !tbaa !3221, !alias.scope !3768
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !1282, !alias.scope !3768
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.r, align 8, !tbaa !842, !alias.scope !3768
  %.not97 = icmp eq ptr %i.p, null
  br i1 %.not97, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 107
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN6duckdb11SegmentTreeINS_8RowGroupELb1EE19BaseSegmentIteratorppEv.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !3771
  %i.ac = icmp eq i8 %i.ab, 2
  br i1 %i.ac, label %bb.ax, label %bb.bb

bb.f:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.h:                                             ; preds = %.lr.ph, %_ZN6duckdb11SegmentTreeINS_8RowGroupELb1EE19BaseSegmentIteratorppEv.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_11SegmentNodeINS_8RowGroupEEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !2318 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = invoke noundef nonnull align 8 dereferenceable(218) ptr @_ZNK6duckdb10shared_ptrINS_8RowGroupELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag)
          to label %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit unwind label %bb.s

_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit: ; preds = %bb.i
  invoke void @_ZNK6duckdb8RowGroup13GetStatisticsERKNS_12StorageIndexE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.48") align 8 %6, ptr noundef nonnull align 8 dereferenceable(218) %i.ah, ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
end_hunk_1
