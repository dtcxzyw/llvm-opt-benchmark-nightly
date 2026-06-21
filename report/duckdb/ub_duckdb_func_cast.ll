inline.NumInlined: 41041
inline.NumDeleted: 4767
begin_hunk_0_@_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !105    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.81", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !150    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !140

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
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
  %i.e = load ptr, ptr %1, align 8, !tbaa !105    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_12ValidityMaskEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.81", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !762
  %i.e = load ptr, ptr %0, align 8, !tbaa !769    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !13
  store i64 %i.i, ptr %i.b, align 8, !tbaa !13
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorISt17reference_wrapperINS_12ValidityMaskEELb1ESaIS3_EE3getILb1EEERS3_m.exit, label %bb.b, !prof !177

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !105    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorISt17reference_wrapperINS_12ValidityMaskEELb1ESaIS3_EE3getILb1EEERS3_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb20VectorStringToStruct11SplitStructERKNS_8string_tERNS_6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEERmRSt13unordered_mapIS1_mNS_10StringHashENS_14StringEqualityESaISt4pairIS2_mEEERNS4_ISt17reference_wrapperINS_12ValidityMaskEELb1ESaISO_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.sroa.5 = alloca [12 x i8], align 4   ; 9 uses
  %5 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %6 = alloca %"class.std::stack", align 8        ; 12 uses
  %i.a = alloca i64, align 8                      ; 13 uses
  %i.b = alloca i64, align 8                      ; 32 uses
  %7 = alloca %"class.duckdb::Vector", align 8    ; 7 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %9 = alloca %"struct.(anonymous namespace)::StringCastInputState", align 8 ; 14 uses
  %10 = alloca %"class.duckdb::optional_idx", align 8 ; 22 uses
  %i.c = alloca i64, align 8                      ; 9 uses
  %11 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %12 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %13 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %14 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %15 = alloca %"struct.duckdb::string_t", align 8 ; 9 uses
  %16 = alloca %"class.duckdb::optional_idx", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !100    ; 2 uses
  %i.f = icmp ult i32 %i.e, 13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = select i1 %i.f, ptr %i.g, ptr %i.i       ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.k = zext i32 %i.e to i64
  store i64 %i.k, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 0, ptr %i.b, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 noundef zeroext 25)
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull %8, i64 noundef 2048)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store ptr %i.j, ptr %9, align 8, !tbaa !722
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store ptr %i.b, ptr %i.l, align 8, !tbaa !724
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.a, ptr %i.m, align 8, !tbaa !724
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 10 uses
  store i8 0, ptr %i.n, align 8, !tbaa !725
  %i.o = load i64, ptr %i.b, align 8, !tbaa !13   ; 5 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !13   ; 18 uses
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.preheader, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.o
  %i.s = load i8, ptr %i.r, align 1, !tbaa !100
  switch i8 %i.s, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit.loopexit [
    i8 32, label %bb.c
    i8 12, label %bb.c
    i8 11, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i.preheader, %.lr.ph.i.preheader, %.lr.ph.i.preheader, %.lr.ph.i.preheader, %.lr.ph.i.preheader, %.lr.ph.i.preheader
  %i.t = add nuw i64 %i.o, 1                      ; 3 uses
  store i64 %i.t, ptr %i.b, align 8, !tbaa !13
  %exitcond.peel.not = icmp eq i64 %i.t, %i.p
  br i1 %exitcond.peel.not, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %i.u = phi i64 [ %i.x, %bb.d ], [ %i.t, %bb.c ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !100
  switch i8 %i.w, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit.loopexit [
    i8 32, label %bb.d
    i8 12, label %bb.d
    i8 11, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.x = add i64 %i.u, 1                          ; 3 uses
  store i64 %i.x, ptr %i.b, align 8, !tbaa !13
  %exitcond.not = icmp eq i64 %i.x, %i.p
  br i1 %exitcond.not, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit.loopexit, label %.lr.ph.i, !llvm.loop !809

_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit.loopexit: ; preds = %.lr.ph.i, %bb.d, %bb.c, %.lr.ph.i.preheader
  %i.y = phi i64 [ %i.o, %.lr.ph.i.preheader ], [ %i.p, %bb.c ], [ %i.u, %.lr.ph.i ], [ %i.p, %bb.d ]
  store i8 0, ptr %i.n, align 8
  br label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit

_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit: ; preds = %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit.loopexit, %bb.b
  %i.z = phi i64 [ %i.y, %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit.loopexit ], [ %i.o, %bb.b ] ; 4 uses
  %i.aa = icmp eq i64 %i.z, %i.p
  br i1 %i.aa, label %.loopexit235, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.z
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !100 ; 2 uses
  switch i8 %i.ac, label %.loopexit235 [
    i8 123, label %bb.g
    i8 40, label %bb.g
  ]

bb.f:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #28
  br label %bb.do

bb.g:                                             ; preds = %bb.e, %bb.e
  %i.ae = icmp eq i8 %i.ac, 123                   ; 2 uses
  %i.af = add i64 %i.z, 1                         ; 5 uses
  store i64 %i.af, ptr %i.b, align 8, !tbaa !13
  %i.ag = icmp ult i64 %i.af, %i.p
  br i1 %i.ag, label %.lr.ph.i155.preheader, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit156

.lr.ph.i155.preheader:                            ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.af
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !100
  switch i8 %i.ai, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit156.loopexit [
    i8 32, label %bb.h
    i8 12, label %bb.h
    i8 11, label %bb.h
    i8 10, label %bb.h
    i8 9, label %bb.h
    i8 13, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph.i155.preheader, %.lr.ph.i155.preheader, %.lr.ph.i155.preheader, %.lr.ph.i155.preheader, %.lr.ph.i155.preheader, %.lr.ph.i155.preheader
  %i.aj = add i64 %i.z, 2                         ; 3 uses
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !13
  %exitcond328.peel.not = icmp eq i64 %i.aj, %i.p
  br i1 %exitcond328.peel.not, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit156.loopexit, label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %bb.h, %bb.i
  %i.ak = phi i64 [ %i.an, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !100
  switch i8 %i.am, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit156.loopexit [
    i8 32, label %bb.i
    i8 12, label %bb.i
    i8 11, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.i155, %.lr.ph.i155, %.lr.ph.i155, %.lr.ph.i155, %.lr.ph.i155, %.lr.ph.i155
  %i.an = add i64 %i.ak, 1                        ; 3 uses
  store i64 %i.an, ptr %i.b, align 8, !tbaa !13
  %exitcond328.not = icmp eq i64 %i.an, %i.p
  br i1 %exitcond328.not, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit156.loopexit, label %.lr.ph.i155, !llvm.loop !810

_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit156.loopexit: ; preds = %.lr.ph.i155, %bb.i, %bb.h, %.lr.ph.i155.preheader
  %i.ao = phi i64 [ %i.af, %.lr.ph.i155.preheader ], [ %i.p, %bb.h ], [ %i.ak, %.lr.ph.i155 ], [ %i.p, %bb.i ]
  store i8 0, ptr %i.n, align 8
  br label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit156

_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit156: ; preds = %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit156.loopexit, %bb.g
  %i.ap = phi i64 [ %i.ao, %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit156.loopexit ], [ %i.af, %bb.g ] ; 7 uses
  %i.aq = select i1 %i.ae, i32 125, i32 41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ap
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !100
  %i.at = sext i8 %i.as to i32
  %i.au = icmp eq i32 %i.aq, %i.at
  br i1 %i.au, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit156
  %i.av = add i64 %i.ap, 1                        ; 5 uses
  store i64 %i.av, ptr %i.b, align 8, !tbaa !13
  %i.aw = icmp ult i64 %i.av, %i.p
  br i1 %i.aw, label %.lr.ph.i157.preheader, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit158

.lr.ph.i157.preheader:                            ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.av
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !100
  switch i8 %i.ay, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit158 [
    i8 32, label %bb.k
    i8 12, label %bb.k
    i8 11, label %bb.k
    i8 10, label %bb.k
    i8 9, label %bb.k
    i8 13, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph.i157.preheader, %.lr.ph.i157.preheader, %.lr.ph.i157.preheader, %.lr.ph.i157.preheader, %.lr.ph.i157.preheader, %.lr.ph.i157.preheader
  %i.az = add i64 %i.ap, 2                        ; 3 uses
  store i64 %i.az, ptr %i.b, align 8, !tbaa !13
  %exitcond345.peel.not = icmp eq i64 %i.az, %i.p
  br i1 %exitcond345.peel.not, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit158, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %bb.k, %bb.l
  %i.ba = phi i64 [ %i.bd, %bb.l ], [ %i.az, %bb.k ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !100
  switch i8 %i.bc, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit158 [
    i8 32, label %bb.l
    i8 12, label %bb.l
    i8 11, label %bb.l
    i8 10, label %bb.l
    i8 9, label %bb.l
    i8 13, label %bb.l
  ]

bb.l:                                             ; preds = %.lr.ph.i157, %.lr.ph.i157, %.lr.ph.i157, %.lr.ph.i157, %.lr.ph.i157, %.lr.ph.i157
  %i.bd = add i64 %i.ba, 1                        ; 3 uses
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !13
  %exitcond345.not = icmp eq i64 %i.bd, %i.p
  br i1 %exitcond345.not, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit158, label %.lr.ph.i157, !llvm.loop !811

_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit158: ; preds = %bb.l, %.lr.ph.i157, %.lr.ph.i157.preheader, %bb.k, %bb.j
  %i.be = phi i64 [ %i.av, %bb.j ], [ %i.av, %.lr.ph.i157.preheader ], [ %i.p, %bb.k ], [ %i.ba, %.lr.ph.i157 ], [ %i.p, %bb.l ]
  %i.bf = icmp eq i64 %i.be, %i.p
  br label %.loopexit235

bb.m:                                             ; preds = %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit156
  %i.bg = icmp ult i64 %i.ap, %i.p                ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb20VectorStringToStruct11SplitStructERKNS_8string_tERNS_6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEERmRSt13unordered_mapIS1_mNS_10StringHashENS_14StringEqualityESaISt4pairIS2_mEEERNS4_ISt17reference_wrapperINS_12ValidityMaskEELb1ESaISO_EEE:bb.a
  %i.br = phi ptr [ %i.a, %.lr.ph295 ], [ %i.ii, %bb.cd ] ; 5 uses
  %i.bs = phi ptr [ %i.b, %.lr.ph295 ], [ %i.ih, %bb.cd ] ; 6 uses
  %i.bt = phi i64 [ %i.ap, %.lr.ph295 ], [ %i.iz, %bb.cd ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store i64 -1, ptr %10, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %.promoted267 = load i8, ptr %i.n, align 8      ; 2 uses
  %i.bu = load ptr, ptr %9, align 8               ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bt
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !100 ; 2 uses
  %.not133468 = icmp eq i8 %i.bw, 58
  br i1 %.not133468, label %.critedge, label %.lr.ph470

bb.n:                                             ; preds = %.critedge154
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.df
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !100 ; 2 uses
  %.not133 = icmp eq i8 %i.by, 58
  br i1 %.not133, label %.critedge.loopexit, label %.lr.ph470

.lr.ph470:                                        ; preds = %.lr.ph284, %bb.n
  %i.bz = phi i8 [ %i.by, %bb.n ], [ %i.bw, %.lr.ph284 ]
  %i.ca = phi i64 [ %i.de, %bb.n ], [ undef, %.lr.ph284 ] ; 6 uses
  %.lcssa266268283469 = phi i8 [ %.0112, %bb.n ], [ %.promoted267, %.lr.ph284 ]
  %i.cb = phi i64 [ %i.df, %bb.n ], [ %i.bt, %.lr.ph284 ] ; 16 uses
  %i.cc = trunc nuw i8 %.lcssa266268283469 to i1
  br i1 %i.cc, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph470
  %i.cd = load i64, ptr %10, align 8, !tbaa !104
  %.not226 = icmp eq i64 %i.cd, -1
  br i1 %.not226, label %bb.p, label %.critedge154

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.cb)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ce = load i64, ptr %11, align 8, !tbaa !13
  store i64 %i.ce, ptr %10, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %.pre353.a = load i64, ptr %i.b, align 8, !tbaa !13 ; 2 uses
  br label %.critedge154

bb.r:                                             ; preds = %bb.p
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.cf

bb.s:                                             ; preds = %.lr.ph470
  switch i8 %i.bz, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit [
    i8 34, label %bb.t
    i8 39, label %bb.t
    i8 92, label %bb.ab
    i8 32, label %.critedge154
    i8 12, label %.critedge154
    i8 11, label %.critedge154
    i8 10, label %.critedge154
    i8 9, label %.critedge154
    i8 13, label %.critedge154
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.cg = load i64, ptr %10, align 8, !tbaa !104
  %.not224 = icmp eq i64 %i.cg, -1
  br i1 %.not224, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %i.cb)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ch = load i64, ptr %12, align 8, !tbaa !13
  store i64 %i.ch, ptr %10, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.cf

bb.x:                                             ; preds = %bb.v, %bb.t
  %i.cj = load i64, ptr %i.bs, align 8, !tbaa !13 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !100
  %storemerge25.i = add i64 %i.cj, 1              ; 3 uses
  store i64 %storemerge25.i, ptr %i.bs, align 8, !tbaa !13
  %i.cm = load i64, ptr %i.br, align 8, !tbaa !13
  %i.cn = icmp ult i64 %storemerge25.i, %i.cm
  br i1 %i.cn, label %.lr.ph.i159, label %.thread

.lr.ph.i159:                                      ; preds = %bb.x, %.critedge.i
  %i.co = phi i8 [ %.020.i, %.critedge.i ], [ 0, %bb.x ] ; 2 uses
  %storemerge26.i = phi i64 [ %storemerge.i, %.critedge.i ], [ %storemerge25.i, %bb.x ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bu, i64 %storemerge26.i
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !100 ; 2 uses
  %i.cr = icmp eq i8 %i.cq, 92
  br i1 %i.cr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i159
  %not..i = xor i8 %i.co, 1
  br label %.critedge.i

bb.z:                                             ; preds = %.lr.ph.i159
  %i.cs = icmp ne i8 %i.cq, %i.cl
  %i.ct = trunc nuw i8 %i.co to i1
  %or.cond.i = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond.i, label %.critedge.i, label %bb.aa, !llvm.loop !812

.critedge.i:                                      ; preds = %bb.z, %bb.y
  %.020.i = phi i8 [ %not..i, %bb.y ], [ 0, %bb.z ]
  %storemerge.i = add nuw i64 %storemerge26.i, 1  ; 3 uses
  store i64 %storemerge.i, ptr %i.bs, align 8, !tbaa !13
  %i.cu = load i64, ptr %i.br, align 8, !tbaa !13
  %i.cv = icmp ult i64 %storemerge.i, %i.cu
  br i1 %i.cv, label %.lr.ph.i159, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cw = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  br label %.critedge154

bb.ab:                                            ; preds = %bb.s
  %i.cx = load i64, ptr %10, align 8, !tbaa !104
  %.not223 = icmp eq i64 %i.cx, -1
  br i1 %.not223, label %bb.ac, label %.critedge154

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %i.cb)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cy = load i64, ptr %13, align 8, !tbaa !13
  store i64 %i.cy, ptr %10, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %.pre351.a = load i64, ptr %i.b, align 8, !tbaa !13 ; 2 uses
  br label %.critedge154

bb.ae:                                            ; preds = %bb.ac
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.cf

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit:  ; preds = %bb.s
  %i.da = load i64, ptr %10, align 8, !tbaa !104
  %.not225 = icmp eq i64 %i.da, -1
  br i1 %.not225, label %bb.af, label %.critedge154

bb.af:                                            ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %i.cb)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.db = load i64, ptr %14, align 8, !tbaa !13
  store i64 %i.db, ptr %10, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %.pre352 = load i64, ptr %i.b, align 8, !tbaa !13 ; 2 uses
  br label %.critedge154

bb.ah:                                            ; preds = %bb.af
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.cf

.critedge154:                                     ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit, %bb.ag, %bb.ab, %bb.ad, %bb.o, %bb.q, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.aa
  %i.dd = phi i64 [ %i.cb, %bb.s ], [ %i.cw, %bb.aa ], [ %i.cb, %bb.o ], [ %i.cb, %bb.ab ], [ %i.cb, %bb.s ], [ %i.cb, %bb.s ], [ %i.cb, %bb.s ], [ %i.cb, %bb.s ], [ %i.cb, %bb.s ], [ %.pre353.a, %bb.q ], [ %.pre351.a, %bb.ad ], [ %.pre352, %bb.ag ], [ %i.cb, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit ]
  %i.de = phi i64 [ %i.ca, %bb.s ], [ %i.cw, %bb.aa ], [ %i.cb, %bb.o ], [ %i.cb, %bb.ab ], [ %i.ca, %bb.s ], [ %i.ca, %bb.s ], [ %i.ca, %bb.s ], [ %i.ca, %bb.s ], [ %i.ca, %bb.s ], [ %.pre353.a, %bb.q ], [ %.pre351.a, %bb.ad ], [ %.pre352, %bb.ag ], [ %i.cb, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit ] ; 2 uses
  %.0112 = phi i8 [ 0, %bb.s ], [ 0, %bb.aa ], [ 0, %bb.o ], [ 1, %bb.ab ], [ 0, %bb.s ], [ 0, %bb.s ], [ 0, %bb.s ], [ 0, %bb.s ], [ 0, %bb.s ], [ 0, %bb.q ], [ 1, %bb.ad ], [ 0, %bb.ag ], [ 0, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit ] ; 2 uses
  %i.df = add i64 %i.dd, 1                        ; 5 uses
  store i64 %i.df, ptr %i.b, align 8, !tbaa !13
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.dh = icmp ult i64 %i.df, %i.dg
  br i1 %i.dh, label %bb.n, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %bb.n, %.critedge154
  %i.di = icmp ne i64 %i.df, %i.dg
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph284
  %.lcssa276.ph = phi i64 [ undef, %.lr.ph284 ], [ %i.de, %.critedge.loopexit ] ; 2 uses
  %.lcssa266268.lcssa.ph = phi i8 [ %.promoted267, %.lr.ph284 ], [ %.0112, %.critedge.loopexit ] ; 2 uses
  %.lcssa243.ph = phi i1 [ true, %.lr.ph284 ], [ %i.di, %.critedge.loopexit ]
  %.pre354.a = load i64, ptr %10, align 8
  %i.dj = icmp ne i64 %.pre354.a, -1
  store i8 %.lcssa266268.lcssa.ph, ptr %i.n, align 8
  %or.cond = select i1 %.lcssa243.ph, i1 %i.dj, i1 false
  br i1 %or.cond, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %.critedge
  %i.dk = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.aj unwind label %bb.al     ; 5 uses

bb.aj:                                            ; preds = %bb.ai
  %i.dl = add i64 %.lcssa276.ph, 1                ; 4 uses
  store i64 %i.dl, ptr %i.c, align 8, !tbaa !13
  %i.dm = add i64 %i.dk, 3
  %.not.i = icmp eq i64 %i.dm, %.lcssa276.ph
  br i1 %.not.i, label %bb.ak, label %_ZN6duckdbL6IsNullEPKcmm.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.dn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dk
  %i.do = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsEPKcmS2_m(ptr noundef %i.dn, i64 noundef 4, ptr noundef nonnull @.str.30, i64 noundef 4)
          to label %_ZN6duckdbL6IsNullEPKcmm.exit unwind label %bb.al

_ZN6duckdbL6IsNullEPKcmm.exit:                    ; preds = %bb.ak
  br i1 %i.do, label %.thread, label %_ZN6duckdbL6IsNullEPKcmm.exit.thread

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

_ZN6duckdbL6IsNullEPKcmm.exit.thread:             ; preds = %bb.aj, %_ZN6duckdbL6IsNullEPKcmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.5)
  %i.dq = sub i64 %i.dl, %i.dk                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.dr = invoke { i64, ptr } @_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %7, i64 noundef %i.dq)
          to label %.noexc163 unwind label %bb.bb ; 2 uses

.noexc163:                                        ; preds = %_ZN6duckdbL6IsNullEPKcmm.exit.thread
  %i.ds = extractvalue { i64, ptr } %i.dr, 0      ; 2 uses
  store i64 %i.ds, ptr %5, align 8
  %i.dt = extractvalue { i64, ptr } %i.dr, 1      ; 2 uses
  store ptr %i.dt, ptr %i.bi, align 8
  %i.du = trunc i64 %i.ds to i32
  %i.dv = icmp ult i32 %i.du, 13
  %i.dw = select i1 %i.dv, ptr %i.bj, ptr %i.dt   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %6, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %6, i64 noundef 0)
          to label %.noexc164 unwind label %bb.bb

.noexc164:                                        ; preds = %.noexc163
  %.not.i160 = icmp eq i64 %i.dl, %i.dk
  br i1 %.not.i160, label %.thread92.i, label %.lr.ph.i161

.thread92.i:                                      ; preds = %.noexc164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.i.sroa.5, i8 0, i64 12, i1 false)
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i

._crit_edge.i:                                    ; preds = %bb.ay
  %i.dx = icmp ult i32 %.2.i, 13
  br i1 %i.dx, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.i.sroa.5, i8 0, i64 12, i1 false)
  %i.dy = icmp eq i32 %.2.i, 0
  br i1 %i.dy, label %_ZN6duckdb8string_tC2EPKcj.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dz = zext nneg i32 %.2.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.sroa.5, ptr align 1 %i.dw, i64 %i.dz, i1 false)
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i

bb.ao:                                            ; preds = %._crit_edge.i
  %i.ea = load i32, ptr %i.dw, align 1
  store i32 %i.ea, ptr %.sroa.0.i.sroa.5, align 4
  store ptr %i.dw, ptr %.sroa.0.i.sroa.5.4.i.8..sroa_idx508, align 4, !tbaa !100
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i

.lr.ph.i161:                                      ; preds = %.noexc164, %bb.ay
  %.079.i = phi i32 [ %.2.i, %bb.ay ], [ 0, %.noexc164 ] ; 7 uses
  %.05278.i = phi i1 [ %.254.i, %bb.ay ], [ false, %.noexc164 ]
  %.05576.i = phi i8 [ %.156.i, %bb.ay ], [ 0, %.noexc164 ] ; 4 uses
  %.05775.i = phi i64 [ %i.fi, %bb.ay ], [ 0, %.noexc164 ] ; 2 uses
  %.05873.i = phi i8 [ %.159.i, %bb.ay ], [ 0, %.noexc164 ] ; 6 uses
  %i.eb = add i64 %.05775.i, %i.dk                ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !100 ; 7 uses
  br i1 %.05278.i, label %.thread.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i161
  %i.ee = load ptr, ptr %i.bk, align 8, !tbaa !813 ; 3 uses
  %i.ef = load ptr, ptr %i.bl, align 8, !tbaa !813
  %i.eg = icmp eq ptr %i.ee, %i.ef                ; 2 uses
  %i.eh = icmp eq i8 %i.ed, 92
  %or.cond.i162 = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %or.cond.i162, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.ei = trunc nuw i8 %.05576.i to i1
  br i1 %i.ei, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ej = add i64 %i.eb, 1                        ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %i.dl
  br i1 %i.ek, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.el = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ej
  %i.em = load i8, ptr %i.el, align 1, !tbaa !100
  switch i8 %i.em, label %bb.at [
    i8 39, label %bb.ay
    i8 34, label %bb.ay
  ]

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.ap
  br i1 %i.eg, label %bb.au, label %.thread70.i

bb.au:                                            ; preds = %bb.at
  switch i8 %i.ed, label %.thread.i [
    i8 39, label %bb.av
    i8 34, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au
  %i.en = trunc nuw i8 %.05576.i to i1            ; 2 uses
  %i.eo = icmp eq i8 %i.ed, %.05873.i
  %or.cond62.i = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %or.cond62.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %i.en, label %.thread.i, label %bb.ay

.thread70.i:                                      ; preds = %bb.at
  %i.ep = trunc nuw i8 %.05576.i to i1
  br i1 %i.ep, label %.thread.i, label %.thread71.i

.thread71.i:                                      ; preds = %.thread70.i
  %i.eq = load ptr, ptr %i.bm, align 8, !tbaa !814, !noalias !815 ; 2 uses
  %i.er = icmp eq ptr %i.ee, %i.eq
  br i1 %i.er, label %_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv.exit.i, label %_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv.exit.thread.i

_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv.exit.i:      ; preds = %.thread71.i
  %i.es = load ptr, ptr %i.bn, align 8, !tbaa !818, !noalias !815
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !731
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 511
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !100
  %i.ex = icmp eq i8 %i.ed, %i.ew
  br i1 %i.ex, label %bb.ax, label %.thread.i

_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv.exit.thread.i: ; preds = %.thread71.i
  %i.ey = getelementptr inbounds i8, ptr %i.ee, i64 -1 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !100
  %i.fa = icmp eq i8 %i.ed, %i.ez
  br i1 %i.fa, label %_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv.exit.i, label %.thread.i

bb.ax:                                            ; preds = %_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv.exit.i
  call void @_ZdlPv(ptr noundef %i.eq) #30
  %i.fb = load ptr, ptr %i.bn, align 8, !tbaa !742
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 -8 ; 2 uses
  store ptr %i.fc, ptr %i.bn, align 8, !tbaa !818
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !731 ; 3 uses
  store ptr %i.fd, ptr %i.bm, align 8, !tbaa !814
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 512
  store ptr %i.fe, ptr %i.bo, align 8, !tbaa !819
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 511
  br label %_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv.exit.i

_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv.exit.i:      ; preds = %bb.ax, %_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv.exit.thread.i
  %storemerge.i.i.i = phi ptr [ %i.ff, %bb.ax ], [ %i.ey, %_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv.exit.thread.i ]
  store ptr %storemerge.i.i.i, ptr %i.bk, align 8, !tbaa !820
  br label %.thread.i

.thread.i:                                        ; preds = %_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv.exit.i, %_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv.exit.thread.i, %_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv.exit.i, %.thread70.i, %bb.aw, %bb.au, %.lr.ph.i161
  %i.fg = zext i32 %.079.i to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.fg
  store i8 %i.ed, ptr %i.fh, align 1, !tbaa !100
  %.1.i = add i32 %.079.i, 1
  br label %bb.ay

bb.ay:                                            ; preds = %.thread.i, %bb.aw, %bb.av, %bb.as, %bb.as, %bb.aq
  %.159.i = phi i8 [ %.05873.i, %.thread.i ], [ %.05873.i, %bb.av ], [ %.05873.i, %bb.aq ], [ %.05873.i, %bb.as ], [ %.05873.i, %bb.as ], [ %i.ed, %bb.aw ]
  %.156.i = phi i8 [ %.05576.i, %.thread.i ], [ 0, %bb.av ], [ 1, %bb.aq ], [ 0, %bb.as ], [ 0, %bb.as ], [ 1, %bb.aw ]
  %.254.i = phi i1 [ false, %.thread.i ], [ false, %bb.av ], [ true, %bb.aq ], [ true, %bb.as ], [ true, %bb.as ], [ false, %bb.aw ]
  %.2.i = phi i32 [ %.1.i, %.thread.i ], [ %.079.i, %bb.av ], [ %.079.i, %bb.aq ], [ %.079.i, %bb.as ], [ %.079.i, %bb.as ], [ %.079.i, %bb.aw ] ; 6 uses
  %i.fi = add nuw i64 %.05775.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fi, %i.dq
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i161, !llvm.loop !821

_ZN6duckdb8string_tC2EPKcj.exit.i:                ; preds = %bb.ao, %bb.an, %bb.am, %.thread92.i
  %.sroa.0.i.sroa.0.0 = phi i32 [ 0, %.thread92.i ], [ 0, %bb.am ], [ %.2.i, %bb.an ], [ %.2.i, %bb.ao ]
  %i.fj = load ptr, ptr %6, align 8, !tbaa !737   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN6duckdb8string_tC2EPKcj.exit.i
  %i.fk = load ptr, ptr %i.bp, align 8, !tbaa !741 ; 2 uses
  %i.fl = load ptr, ptr %i.bn, align 8, !tbaa !742 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = icmp ult ptr %i.fk, %i.fm
  br i1 %i.fn, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.az, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i ], [ %i.fk, %bb.az ] ; 3 uses
  %i.fo = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !731
  call void @_ZdlPv(ptr noundef %i.fo) #30
  %i.fp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.fq = icmp ult ptr %.06.i.i.i.i.i, %i.fl
  br i1 %i.fq, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i.i.i, !llvm.loop !743

_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %6, align 8, !tbaa !737
  br label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i.i.i

_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i.i.i, %bb.az
  %i.fr = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i.i.i ], [ %i.fj, %bb.az ]
  call void @_ZdlPv(ptr noundef %i.fr) #30
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i.i.i, %_ZN6duckdb8string_tC2EPKcj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.sroa.0.i.sroa.5.0..sroa.0.i.sroa.5.0..sroa.0.i.sroa.5.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i349 = load i32, ptr %.sroa.0.i.sroa.5, align 4
  %.sroa.0.i.sroa.5.4..sroa.0.i.sroa.5.4..sroa.0.i.sroa.5.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.i = load ptr, ptr %.sroa.0.i.sroa.5.4.i.8..fca.1.gep.sroa_idx509, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.5)
  store i32 %.sroa.0.i.sroa.0.0, ptr %15, align 8
  store i32 %.sroa.0.i.sroa.5.0..sroa.0.i.sroa.5.0..sroa.0.i.sroa.5.4..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..fca.0.load.i349, ptr %.sroa_idx, align 4
  store ptr %.sroa.0.i.sroa.5.4..sroa.0.i.sroa.5.4..sroa.0.i.sroa.5.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..fca.1.load.i, ptr %i.bq, align 8
  %i.fs = invoke ptr @_ZNSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS3_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt13unordered_mapIN6duckdb8string_tEmNS0_10StringHashENS0_14StringEqualityESaISt4pairIKS1_mEEE4findERS5_.exit unwind label %.loopexit.split-lp ; 2 uses

_ZNSt13unordered_mapIN6duckdb8string_tEmNS0_10StringHashENS0_14StringEqualityESaISt4pairIKS1_mEEE4findERS5_.exit: ; preds = %bb.ba
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %.thread206, label %bb.bc

bb.bb:                                            ; preds = %.noexc163, %_ZN6duckdbL6IsNullEPKcmm.exit.thread
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.loopexit228:                                     ; preds = %bb.bg
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.loopexit.split-lp:                               ; preds = %bb.ba
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.bc:                                            ; preds = %_ZNSt13unordered_mapIN6duckdb8string_tEmNS0_10StringHashENS0_14StringEqualityESaISt4pairIKS1_mEEE4findERS5_.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !759 ; 2 uses
  store i64 -1, ptr %10, align 8, !tbaa !13
  %i.fx = load i64, ptr %i.b, align 8, !tbaa !13
  %i.fy = add i64 %i.fx, 1
  store i64 %i.fy, ptr %i.b, align 8, !tbaa !13
  %i.fz = load i64, ptr %i.bs, align 8, !tbaa !13 ; 3 uses
  %i.ga = load i64, ptr %i.br, align 8, !tbaa !13
  %i.gb = icmp ult i64 %i.fz, %i.ga
  br i1 %i.gb, label %.lr.ph.i167, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit168.preheader

.lr.ph.i167:                                      ; preds = %bb.bc
  %i.gc = load ptr, ptr %9, align 8, !tbaa !731   ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fz
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !100
  switch i8 %i.ge, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit168.loopexit [
    i8 32, label %bb.bd
    i8 12, label %bb.bd
    i8 11, label %bb.bd
    i8 10, label %bb.bd
    i8 9, label %bb.bd
    i8 13, label %bb.bd
  ]

bb.bd:                                            ; preds = %.lr.ph.i167, %.lr.ph.i167, %.lr.ph.i167, %.lr.ph.i167, %.lr.ph.i167, %.lr.ph.i167
  %i.gf = add nuw i64 %i.fz, 1                    ; 3 uses
  store i64 %i.gf, ptr %i.bs, align 8, !tbaa !13
  %i.gg = load i64, ptr %i.br, align 8, !tbaa !13
  %i.gh = icmp ult i64 %i.gf, %i.gg
  br i1 %i.gh, label %.peel.next334, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit168.loopexit

.peel.next334:                                    ; preds = %bb.bd, %bb.be
  %i.gi = phi i64 [ %i.gl, %bb.be ], [ %i.gf, %bb.bd ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !100
  switch i8 %i.gk, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit168.loopexit [
    i8 32, label %bb.be
    i8 12, label %bb.be
    i8 11, label %bb.be
    i8 10, label %bb.be
    i8 9, label %bb.be
    i8 13, label %bb.be
  ]

bb.be:                                            ; preds = %.peel.next334, %.peel.next334, %.peel.next334, %.peel.next334, %.peel.next334, %.peel.next334
  %i.gl = add nuw i64 %i.gi, 1                    ; 3 uses
  store i64 %i.gl, ptr %i.bs, align 8, !tbaa !13
  %i.gm = load i64, ptr %i.br, align 8, !tbaa !13
  %i.gn = icmp ult i64 %i.gl, %i.gm
  br i1 %i.gn, label %.peel.next334, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit168.loopexit, !llvm.loop !822

_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit168.loopexit: ; preds = %bb.be, %.peel.next334, %bb.bd, %.lr.ph.i167
  %i.go = phi i8 [ %.lcssa266268.lcssa.ph, %.lr.ph.i167 ], [ 0, %bb.bd ], [ 0, %.peel.next334 ], [ 0, %bb.be ]
  store i8 %i.go, ptr %i.n, align 8
  br label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit168.preheader

_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit168.preheader: ; preds = %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit168.loopexit, %bb.bc
  br label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit168

_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit168: ; preds = %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit168.preheader, %bb.bh
  %i.gp = load i64, ptr %i.b, align 8, !tbaa !13  ; 3 uses
  %i.gq = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.gr = icmp ult i64 %i.gp, %i.gq
  br i1 %i.gr, label %bb.bf, label %.critedge3

bb.bf:                                            ; preds = %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit168
  %i.gs = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gp
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !100
  switch i8 %i.gt, label %bb.bg [
    i8 44, label %.critedge3
    i8 125, label %.critedge3
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.gu = invoke fastcc noundef zeroext i1 @_ZN6duckdbL20ValueStateTransitionERN12_GLOBAL__N_120StringCastInputStateERNS_12optional_idxERm(ptr noundef nonnull align 8 dereferenceable(25) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.bh unwind label %.loopexit228

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.gu, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit168, label %.thread206, !llvm.loop !823

.critedge3:                                       ; preds = %bb.bf, %bb.bf, %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit168
  %i.gv = icmp eq i64 %i.gp, %i.gq
  br i1 %i.gv, label %.thread206, label %bb.bi

bb.bi:                                            ; preds = %.critedge3
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.fw)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.gx = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gw)
          to label %bb.bk unwind label %bb.bo     ; 3 uses

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.gx)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !93
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_12ValidityMaskEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.fw)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !766 ; 2 uses
  %i.hc = load i64, ptr %10, align 8, !tbaa !104
  %.not227 = icmp eq i64 %i.hc, -1
  br i1 %.not227, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %bb.bm
  store i64 0, ptr %10, align 8, !tbaa !13
  br label %bb.bs

bb.bo:                                            ; preds = %bb.bj, %bb.bi
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.bp:                                            ; preds = %bb.bk
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.bq:                                            ; preds = %bb.bl
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.br:                                            ; preds = %bb.bm
  %i.hg = load i64, ptr %i.c, align 8, !tbaa !13
  %i.hh = add i64 %i.hg, 1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bn
  %storemerge136 = phi i64 [ 0, %bb.bn ], [ %i.hh, %bb.br ] ; 2 uses
  %i.hi = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.bt unwind label %bb.bw     ; 3 uses

bb.bt:                                            ; preds = %bb.bs
  %i.hj = add i64 %i.hi, 4
  %.not.i170 = icmp eq i64 %i.hj, %storemerge136
  br i1 %.not.i170, label %bb.bu, label %_ZN6duckdbL6IsNullEPKcmm.exit173.thread

bb.bu:                                            ; preds = %bb.bt
  %i.hk = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hi
  %i.hl = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsEPKcmS2_m(ptr noundef %i.hk, i64 noundef 4, ptr noundef nonnull @.str.30, i64 noundef 4)
          to label %_ZN6duckdbL6IsNullEPKcmm.exit173 unwind label %bb.bw

_ZN6duckdbL6IsNullEPKcmm.exit173:                 ; preds = %bb.bu
  br i1 %i.hl, label %bb.bv, label %_ZN6duckdbL6IsNullEPKcmm.exit173.thread

bb.bv:                                            ; preds = %_ZN6duckdbL6IsNullEPKcmm.exit173
  %i.hm = load i64, ptr %2, align 8, !tbaa !13
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm(ptr noundef nonnull align 8 dereferenceable(32) %i.hb, i64 noundef %i.hm)
          to label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv, %bb.bs
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

_ZN6duckdbL6IsNullEPKcmm.exit173.thread:          ; preds = %bb.bt, %_ZN6duckdbL6IsNullEPKcmm.exit173
  %i.ho = invoke fastcc { i64, ptr } @_ZN6duckdbL12HandleStringILb1EEENS_8string_tERNS_6VectorEPKcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.gx, ptr noundef %i.j, i64 noundef %i.hi, i64 noundef %storemerge136)
          to label %bb.bx unwind label %bb.bz     ; 2 uses

bb.bx:                                            ; preds = %_ZN6duckdbL6IsNullEPKcmm.exit173.thread
  %i.hp = extractvalue { i64, ptr } %i.ho, 0
  %i.hq = extractvalue { i64, ptr } %i.ho, 1
  %i.hr = load i64, ptr %2, align 8, !tbaa !13
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %i.hr ; 2 uses
  store i64 %i.hp, ptr %i.hs, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store ptr %i.hq, ptr %.sroa.516.0..sroa_idx, align 8, !tbaa !100
  %i.ht = load ptr, ptr %i.hb, align 8, !tbaa !94 ; 2 uses
  %.not.i174 = icmp eq ptr %i.ht, null
  br i1 %.not.i174, label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hu = load i64, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.hv = lshr i64 %i.hu, 6
  %i.hw = and i64 %i.hu, 63
  %i.hx = shl nuw i64 1, %i.hw
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hv ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !13
  %i.ia = or i64 %i.hx, %i.hz
  store i64 %i.ia, ptr %i.hy, align 8, !tbaa !13
  br label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit

bb.bz:                                            ; preds = %_ZN6duckdbL6IsNullEPKcmm.exit173.thread
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit: ; preds = %bb.by, %bb.bx, %bb.bv
  %i.ic = load i64, ptr %i.b, align 8, !tbaa !13  ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !100
  %i.if = icmp eq i8 %i.ie, 125
  br i1 %i.if, label %.thread208, label %bb.ca

.thread208:                                       ; preds = %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.thread219

bb.ca:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit
  %i.ig = add i64 %i.ic, 1                        ; 2 uses
  store i64 %i.ig, ptr %i.b, align 8, !tbaa !13
  %i.ih = load ptr, ptr %i.l, align 8, !tbaa !729, !nonnull !22, !align !23 ; 4 uses
  %i.ii = load ptr, ptr %i.m, align 8, !tbaa !730, !nonnull !22, !align !23 ; 4 uses
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !13 ; 3 uses
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !13
  %i.il = icmp ult i64 %i.ij, %i.ik
  br i1 %i.il, label %.lr.ph.i176, label %bb.cd

.lr.ph.i176:                                      ; preds = %bb.ca
  %i.im = load ptr, ptr %9, align 8, !tbaa !731   ; 2 uses
  %.promoted294 = load i8, ptr %i.n, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ij
  %i.io = load i8, ptr %i.in, align 1, !tbaa !100
  switch i8 %i.io, label %.loopexit [
    i8 32, label %bb.cb
    i8 12, label %bb.cb
    i8 11, label %bb.cb
    i8 10, label %bb.cb
    i8 9, label %bb.cb
    i8 13, label %bb.cb
  ]

bb.cb:                                            ; preds = %.lr.ph.i176, %.lr.ph.i176, %.lr.ph.i176, %.lr.ph.i176, %.lr.ph.i176, %.lr.ph.i176
  %i.ip = add nuw i64 %i.ij, 1                    ; 3 uses
  store i64 %i.ip, ptr %i.ih, align 8, !tbaa !13
  %i.iq = load i64, ptr %i.ii, align 8, !tbaa !13
  %i.ir = icmp ult i64 %i.ip, %i.iq
  br i1 %i.ir, label %.peel.next338, label %.loopexit

.peel.next338:                                    ; preds = %bb.cb, %bb.cc
  %i.is = phi i64 [ %i.iv, %bb.cc ], [ %i.ip, %bb.cb ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !100
  switch i8 %i.iu, label %.loopexit [
    i8 32, label %bb.cc
    i8 12, label %bb.cc
    i8 11, label %bb.cc
    i8 10, label %bb.cc
    i8 9, label %bb.cc
    i8 13, label %bb.cc
  ]

bb.cc:                                            ; preds = %.peel.next338, %.peel.next338, %.peel.next338, %.peel.next338, %.peel.next338, %.peel.next338
  %i.iv = add nuw i64 %i.is, 1                    ; 3 uses
  store i64 %i.iv, ptr %i.ih, align 8, !tbaa !13
  %i.iw = load i64, ptr %i.ii, align 8, !tbaa !13
  %i.ix = icmp ult i64 %i.iv, %i.iw
  br i1 %i.ix, label %.peel.next338, label %.loopexit, !llvm.loop !824

.thread:                                          ; preds = %.critedge, %_ZN6duckdbL6IsNullEPKcmm.exit, %bb.x, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.loopexit235

.thread206:                                       ; preds = %.critedge3, %_ZNSt13unordered_mapIN6duckdb8string_tEmNS0_10StringHashENS0_14StringEqualityESaISt4pairIKS1_mEEE4findERS5_.exit, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.loopexit235

.loopexit:                                        ; preds = %bb.cc, %.peel.next338, %bb.cb, %.lr.ph.i176
  %i.iy = phi i8 [ %.promoted294, %.lr.ph.i176 ], [ 0, %bb.cb ], [ 0, %.peel.next338 ], [ 0, %bb.cc ]
  store i8 %i.iy, ptr %i.n, align 8
  %.pre357 = load i64, ptr %i.b, align 8, !tbaa !13
  br label %bb.cd

bb.cd:                                            ; preds = %.loopexit, %bb.ca
  %i.iz = phi i64 [ %.pre357, %.loopexit ], [ %i.ig, %bb.ca ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.ja = load i64, ptr %i.a, align 8, !tbaa !13
  %i.jb = icmp ult i64 %i.iz, %i.ja
  br i1 %i.jb, label %.lr.ph284, label %.thread219

bb.ce:                                            ; preds = %.loopexit228, %.loopexit.split-lp, %bb.bp, %bb.bw, %bb.bz, %bb.bq, %bb.bo, %bb.bb
  %.pn142.pn = phi { ptr, i32 } [ %i.fu, %bb.bb ], [ %i.hn, %bb.bw ], [ %i.hd, %bb.bo ], [ %i.he, %bb.bp ], [ %i.hf, %bb.bq ], [ %i.ib, %bb.bz ], [ %lpad.loopexit, %.loopexit228 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.cf

bb.cf:                                            ; preds = %bb.al, %bb.ce, %bb.r, %bb.w, %bb.ae, %bb.ah
  %.pn146.pn = phi { ptr, i32 } [ %i.dc, %bb.ah ], [ %i.cf, %bb.r ], [ %i.ci, %bb.w ], [ %i.cz, %bb.ae ], [ %.pn142.pn, %bb.ce ], [ %i.dp, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.dn

bb.cg:                                            ; preds = %.lr.ph, %bb.dj
  %.0113264 = phi i64 [ 0, %.lr.ph ], [ %i.mg, %bb.dj ] ; 4 uses
  %i.jc = load ptr, ptr %i.bh, align 8, !tbaa !762
  %i.jd = load ptr, ptr %4, align 8, !tbaa !769
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = ashr exact i64 %i.jg, 3
  %i.ji = icmp eq i64 %.0113264, %i.jh
  br i1 %i.ji, label %.loopexit235, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  store i64 -1, ptr %16, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cl, %bb.ch
  %i.jj = load i64, ptr %i.b, align 8, !tbaa !13  ; 3 uses
  %i.jk = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.jl = icmp ult i64 %i.jj, %i.jk
  br i1 %i.jl, label %bb.cj, label %.critedge5

bb.cj:                                            ; preds = %bb.ci
  %i.jm = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.jj
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !100
  switch i8 %i.jn, label %bb.ck [
    i8 44, label %.critedge5
    i8 41, label %.critedge5
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.jo = invoke fastcc noundef zeroext i1 @_ZN6duckdbL20ValueStateTransitionERN12_GLOBAL__N_120StringCastInputStateERNS_12optional_idxERm(ptr noundef nonnull align 8 dereferenceable(25) %9, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.cl unwind label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.jo, label %bb.ci, label %.thread212, !llvm.loop !825

bb.cm:                                            ; preds = %bb.ck
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.critedge5:                                       ; preds = %bb.cj, %bb.cj, %bb.ci
  %i.jq = icmp eq i64 %i.jj, %i.jk
  br i1 %i.jq, label %.thread212, label %bb.cn

bb.cn:                                            ; preds = %.critedge5
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.0113264)
          to label %bb.co unwind label %bb.ct

bb.co:                                            ; preds = %bb.cn
  %i.js = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jr)
          to label %bb.cp unwind label %bb.ct     ; 3 uses

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.js)
          to label %bb.cq unwind label %bb.cu

bb.cq:                                            ; preds = %bb.cp
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !93
  %i.jv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_12ValidityMaskEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.0113264)
          to label %bb.cr unwind label %bb.cv

bb.cr:                                            ; preds = %bb.cq
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !766 ; 5 uses
  %i.jx = load i64, ptr %16, align 8, !tbaa !104
  %.not = icmp eq i64 %i.jx, -1
  br i1 %.not, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %bb.cr
  store i64 0, ptr %16, align 8, !tbaa !13
  br label %bb.cx

bb.ct:                                            ; preds = %bb.co, %bb.cn
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.cu:                                            ; preds = %bb.cp
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.cv:                                            ; preds = %bb.cq
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.cw:                                            ; preds = %bb.cr
  %i.kb = load i64, ptr %i.d, align 8, !tbaa !13
  %i.kc = add i64 %i.kb, 1
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cs
  %storemerge = phi i64 [ 0, %bb.cs ], [ %i.kc, %bb.cw ] ; 2 uses
  %i.kd = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.cy unwind label %bb.dc     ; 3 uses

bb.cy:                                            ; preds = %bb.cx
  %i.ke = add i64 %i.kd, 4
  %.not.i180 = icmp eq i64 %i.ke, %storemerge
  br i1 %.not.i180, label %bb.cz, label %_ZN6duckdbL6IsNullEPKcmm.exit183.thread

bb.cz:                                            ; preds = %bb.cy
  %i.kf = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.kd
  %i.kg = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsEPKcmS2_m(ptr noundef %i.kf, i64 noundef 4, ptr noundef nonnull @.str.30, i64 noundef 4)
          to label %_ZN6duckdbL6IsNullEPKcmm.exit183 unwind label %bb.dc

_ZN6duckdbL6IsNullEPKcmm.exit183:                 ; preds = %bb.cz
  br i1 %i.kg, label %bb.da, label %_ZN6duckdbL6IsNullEPKcmm.exit183.thread

bb.da:                                            ; preds = %_ZN6duckdbL6IsNullEPKcmm.exit183
  %i.kh = load i64, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.ki = load ptr, ptr %i.jw, align 8, !tbaa !94 ; 2 uses
  %.not.i184 = icmp eq ptr %i.ki, null
  br i1 %.not.i184, label %bb.db, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.db:                                            ; preds = %bb.da
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !141
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.jw, i64 noundef %i.kk)
          to label %.noexc185 unwind label %bb.dc

.noexc185:                                        ; preds = %bb.db
  %.pre.i = load ptr, ptr %i.jw, align 8, !tbaa !94
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.da, %.noexc185
  %i.kl = phi ptr [ %.pre.i, %.noexc185 ], [ %i.ki, %bb.da ]
  %i.km = lshr i64 %i.kh, 6
  %i.kn = and i64 %i.kh, 63
  %i.ko = shl nuw i64 1, %i.kn
  %i.kp = xor i64 %i.ko, -1
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.km ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !13
  %i.ks = and i64 %i.kr, %i.kp
  store i64 %i.ks, ptr %i.kq, align 8, !tbaa !13
  br label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit187

bb.dc:                                            ; preds = %bb.db, %bb.cz, %bb.cx
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

_ZN6duckdbL6IsNullEPKcmm.exit183.thread:          ; preds = %bb.cy, %_ZN6duckdbL6IsNullEPKcmm.exit183
  %i.ku = invoke fastcc { i64, ptr } @_ZN6duckdbL12HandleStringILb1EEENS_8string_tERNS_6VectorEPKcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.js, ptr noundef %i.j, i64 noundef %i.kd, i64 noundef %storemerge)
          to label %bb.dd unwind label %bb.df     ; 2 uses

bb.dd:                                            ; preds = %_ZN6duckdbL6IsNullEPKcmm.exit183.thread
  %i.kv = extractvalue { i64, ptr } %i.ku, 0
  %i.kw = extractvalue { i64, ptr } %i.ku, 1
  %i.kx = load i64, ptr %2, align 8, !tbaa !13
  %i.ky = getelementptr inbounds nuw [16 x i8], ptr %i.ju, i64 %i.kx ; 2 uses
  store i64 %i.kv, ptr %i.ky, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store ptr %i.kw, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !100
  %i.kz = load ptr, ptr %i.jw, align 8, !tbaa !94 ; 2 uses
  %.not.i186 = icmp eq ptr %i.kz, null
  br i1 %.not.i186, label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit187, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.la = load i64, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.lb = lshr i64 %i.la, 6
  %i.lc = and i64 %i.la, 63
  %i.ld = shl nuw i64 1, %i.lc
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.lb ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !13
  %i.lg = or i64 %i.ld, %i.lf
  store i64 %i.lg, ptr %i.le, align 8, !tbaa !13
  br label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit187

bb.df:                                            ; preds = %_ZN6duckdbL6IsNullEPKcmm.exit183.thread
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit187: ; preds = %bb.de, %bb.dd, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit
  %i.li = load i64, ptr %i.b, align 8, !tbaa !13  ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !100
  %i.ll = icmp eq i8 %i.lk, 41
  br i1 %i.ll, label %.thread215, label %bb.dg

.thread215:                                       ; preds = %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %.thread219

bb.dg:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit187
  %i.lm = add i64 %i.li, 1                        ; 2 uses
  store i64 %i.lm, ptr %i.b, align 8, !tbaa !13
  %i.ln = load ptr, ptr %i.l, align 8, !tbaa !729, !nonnull !22, !align !23 ; 3 uses
  %i.lo = load ptr, ptr %i.m, align 8, !tbaa !730, !nonnull !22, !align !23 ; 3 uses
  %i.lp = load i64, ptr %i.ln, align 8, !tbaa !13 ; 3 uses
  %i.lq = load i64, ptr %i.lo, align 8, !tbaa !13
  %i.lr = icmp ult i64 %i.lp, %i.lq
  br i1 %i.lr, label %.lr.ph.i189, label %bb.dj

.lr.ph.i189:                                      ; preds = %bb.dg
  %i.ls = load ptr, ptr %9, align 8, !tbaa !731   ; 2 uses
  %.promoted263 = load i8, ptr %i.n, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lp
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !100
  switch i8 %i.lu, label %.loopexit232 [
    i8 32, label %bb.dh
    i8 12, label %bb.dh
    i8 11, label %bb.dh
    i8 10, label %bb.dh
    i8 9, label %bb.dh
    i8 13, label %bb.dh
  ]

bb.dh:                                            ; preds = %.lr.ph.i189, %.lr.ph.i189, %.lr.ph.i189, %.lr.ph.i189, %.lr.ph.i189, %.lr.ph.i189
  %i.lv = add nuw i64 %i.lp, 1                    ; 3 uses
  store i64 %i.lv, ptr %i.ln, align 8, !tbaa !13
  %i.lw = load i64, ptr %i.lo, align 8, !tbaa !13
  %i.lx = icmp ult i64 %i.lv, %i.lw
  br i1 %i.lx, label %.peel.next, label %.loopexit232

.peel.next:                                       ; preds = %bb.dh, %bb.di
  %i.ly = phi i64 [ %i.mb, %bb.di ], [ %i.lv, %bb.dh ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !100
  switch i8 %i.ma, label %.loopexit232 [
    i8 32, label %bb.di
    i8 12, label %bb.di
    i8 11, label %bb.di
    i8 10, label %bb.di
    i8 9, label %bb.di
    i8 13, label %bb.di
  ]

bb.di:                                            ; preds = %.peel.next, %.peel.next, %.peel.next, %.peel.next, %.peel.next, %.peel.next
  %i.mb = add nuw i64 %i.ly, 1                    ; 3 uses
  store i64 %i.mb, ptr %i.ln, align 8, !tbaa !13
  %i.mc = load i64, ptr %i.lo, align 8, !tbaa !13
  %i.md = icmp ult i64 %i.mb, %i.mc
  br i1 %i.md, label %.peel.next, label %.loopexit232, !llvm.loop !826

.thread212:                                       ; preds = %.critedge5, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %.loopexit235

.loopexit232:                                     ; preds = %bb.di, %.peel.next, %bb.dh, %.lr.ph.i189
  %i.me = phi i8 [ %.promoted263, %.lr.ph.i189 ], [ 0, %bb.dh ], [ 0, %.peel.next ], [ 0, %bb.di ]
  store i8 %i.me, ptr %i.n, align 8
  %.pre350 = load i64, ptr %i.b, align 8, !tbaa !13
  br label %bb.dj

bb.dj:                                            ; preds = %.loopexit232, %bb.dg
  %i.mf = phi i64 [ %.pre350, %.loopexit232 ], [ %i.lm, %bb.dg ] ; 2 uses
  %i.mg = add i64 %.0113264, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.mh = load i64, ptr %i.a, align 8, !tbaa !13
  %i.mi = icmp ult i64 %i.mf, %i.mh
  br i1 %i.mi, label %bb.cg, label %.thread219

bb.dk:                                            ; preds = %bb.ct, %bb.cv, %bb.df, %bb.dc, %bb.cu, %bb.cm
  %.pn131 = phi { ptr, i32 } [ %i.jp, %bb.cm ], [ %i.jy, %bb.ct ], [ %i.jz, %bb.cu ], [ %i.ka, %bb.cv ], [ %i.lh, %bb.df ], [ %i.kt, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.dn

.thread219:                                       ; preds = %bb.dj, %bb.cd, %.preheader233, %.preheader, %.thread215, %.thread208
  %i.mj = phi i64 [ %i.iz, %bb.cd ], [ %i.ic, %.thread208 ], [ %i.ap, %.preheader233 ], [ %i.ap, %.preheader ], [ %i.li, %.thread215 ], [ %i.mf, %bb.dj ]
  %i.mk = add i64 %i.mj, 1                        ; 2 uses
  store i64 %i.mk, ptr %i.b, align 8, !tbaa !13
  %i.ml = load ptr, ptr %i.l, align 8, !tbaa !729, !nonnull !22, !align !23 ; 3 uses
  %i.mm = load ptr, ptr %i.m, align 8, !tbaa !730, !nonnull !22, !align !23 ; 3 uses
  %i.mn = load i64, ptr %i.ml, align 8, !tbaa !13 ; 3 uses
  %i.mo = load i64, ptr %i.mm, align 8, !tbaa !13
  %i.mp = icmp ult i64 %i.mn, %i.mo
  br i1 %i.mp, label %.lr.ph.i192, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit193

.lr.ph.i192:                                      ; preds = %.thread219
  %i.mq = load ptr, ptr %9, align 8, !tbaa !731   ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.mn
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !100
  switch i8 %i.ms, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit193.loopexit [
    i8 32, label %bb.dl
    i8 12, label %bb.dl
    i8 11, label %bb.dl
    i8 10, label %bb.dl
    i8 9, label %bb.dl
    i8 13, label %bb.dl
  ]

bb.dl:                                            ; preds = %.lr.ph.i192, %.lr.ph.i192, %.lr.ph.i192, %.lr.ph.i192, %.lr.ph.i192, %.lr.ph.i192
  %i.mt = add nuw i64 %i.mn, 1                    ; 3 uses
  store i64 %i.mt, ptr %i.ml, align 8, !tbaa !13
  %i.mu = load i64, ptr %i.mm, align 8, !tbaa !13
  %i.mv = icmp ult i64 %i.mt, %i.mu
  br i1 %i.mv, label %.peel.next342, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit193.loopexit

.peel.next342:                                    ; preds = %bb.dl, %bb.dm
  %i.mw = phi i64 [ %i.mz, %bb.dm ], [ %i.mt, %bb.dl ] ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !100
  switch i8 %i.my, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit193.loopexit [
    i8 32, label %bb.dm
    i8 12, label %bb.dm
    i8 11, label %bb.dm
    i8 10, label %bb.dm
    i8 9, label %bb.dm
    i8 13, label %bb.dm
  ]

bb.dm:                                            ; preds = %.peel.next342, %.peel.next342, %.peel.next342, %.peel.next342, %.peel.next342, %.peel.next342
  %i.mz = add nuw i64 %i.mw, 1                    ; 3 uses
  store i64 %i.mz, ptr %i.ml, align 8, !tbaa !13
  %i.na = load i64, ptr %i.mm, align 8, !tbaa !13
  %i.nb = icmp ult i64 %i.mz, %i.na
  br i1 %i.nb, label %.peel.next342, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit193.loopexit, !llvm.loop !827

_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit193.loopexit: ; preds = %.peel.next342, %bb.dm, %bb.dl, %.lr.ph.i192
  %.pre358 = load i64, ptr %i.b, align 8, !tbaa !13
  br label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit193

_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit193: ; preds = %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit193.loopexit, %.thread219
  %i.nc = phi i64 [ %.pre358, %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit193.loopexit ], [ %i.mk, %.thread219 ]
  %i.nd = load i64, ptr %i.a, align 8, !tbaa !13
  %i.ne = icmp eq i64 %i.nc, %i.nd
  br label %.loopexit235

.loopexit235:                                     ; preds = %bb.cg, %.thread212, %.thread206, %.thread, %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit158, %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit193, %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit, %bb.e
  %.11 = phi i1 [ false, %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit ], [ false, %bb.e ], [ %i.bf, %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit158 ], [ false, %.thread206 ], [ %i.ne, %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit193 ], [ false, %.thread ], [ false, %.thread212 ], [ false, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i1 %.11

bb.dn:                                            ; preds = %bb.cf, %bb.dk
  %.pn149.pn = phi { ptr, i32 } [ %.pn131, %bb.dk ], [ %.pn146.pn, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %7) #28
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.f
  %.pn149.pn.pn = phi { ptr, i32 } [ %.pn149.pn, %bb.dn ], [ %i.ad, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
end_hunk_1
