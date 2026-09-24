Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_scalar?download=true
inline.NumInlined: 4066
inline.NumDeleted: 1630
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_117SortKeyVectorDataD2Ev:bb.a

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.z, align 8, !tbaa !124
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !125
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !127
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #29, !inline_history !3
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !127
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #29, !inline_history !3
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.m:                                             ; preds = %bb.k
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ac, %bb.l ], [ %i.am, %bb.m ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.an, label %bb.n, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !128

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #29
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.n
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(122) ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_ELb1EEdeEv(ptr nofree readnone returned captures(address_is_null, ret: address, provenance) %.0.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %1 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_ELb1EE13AssertNotNullEb.exit, !prof !128

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.64, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %.0.val
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr %.0.val, ptr %.8.val, i64 noundef range(i64 0, -1) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.c = ptrtoint ptr %.8.val to i64
  %i.d = ptrtoint ptr %.0.val to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %0, ptr %i.a, align 8, !tbaa !31
  store i64 %i.f, ptr %i.b, align 8, !tbaa !31
  %.not.i.i = icmp ult i64 %0, %i.f
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEELb1ESaIS6_EE3getILb1EEERS6_m.exit, label %bb.b, !prof !121

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.69, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.g) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEELb1ESaIS6_EE3getILb1EEERS6_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %0
  ret ptr %i.m
}

declare noundef zeroext i1 @_ZN6duckdb18TypeIsConstantSizeENS_12PhysicalTypeE(i8 noundef zeroext) local_unnamed_addr #2

declare noundef i64 @_ZN6duckdb13GetTypeIdSizeENS_12PhysicalTypeE(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_125GetSortKeyLengthRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE(ptr noundef nonnull align 8 dereferenceable(122) %0, ptr nofree noundef readonly byval(%"struct.duckdb::(anonymous namespace)::SortKeyChunk") align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::(anonymous namespace)::SortKeyChunk", align 8 ; 7 uses
  %4 = alloca %"struct.duckdb::(anonymous namespace)::SortKeyChunk", align 8 ; 7 uses
  %5 = alloca %"struct.duckdb::(anonymous namespace)::SortKeyChunk", align 8 ; 8 uses
  %6 = alloca %"struct.duckdb::string_t", align 8 ; 14 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %.val = load ptr, ptr %0, align 8, !tbaa !76    ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 9
  %.val.val = load i8, ptr %i.b, align 1, !tbaa !83 ; 2 uses
  store i8 %.val.val, ptr %i.a, align 1, !tbaa !282
  switch i8 %.val.val, label %bb.cq [
    i8 1, label %bb.b
    i8 2, label %bb.g
    i8 3, label %bb.l
    i8 4, label %bb.q
    i8 5, label %bb.v
    i8 6, label %bb.aa
    i8 7, label %bb.af
    i8 8, label %bb.ak
    i8 9, label %bb.ap
    i8 11, label %bb.au
    i8 12, label %bb.az
    i8 21, label %bb.be
    i8 -53, label %bb.bj
    i8 -52, label %bb.bo
    i8 -56, label %bb.bt
    i8 24, label %bb.ce
    i8 23, label %bb.cg
    i8 29, label %bb.cl
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.0690.0.copyload = load i64, ptr %1, align 8, !tbaa !31 ; 14 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !31 ; 10 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !31 ; 3 uses
  %.sroa.4691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4691.0.copyload = load i8, ptr %.sroa.4691.0..sroa_idx, align 8, !tbaa !156
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIbEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.c)
  %i.d = icmp ult i64 %.sroa.0690.0.copyload, %.sroa.2.0.copyload
  br i1 %i.d, label %.lr.ph.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !129
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !130  ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null              ; 2 uses
  %i.g = trunc nuw i8 %.sroa.4691.0.copyload to i1 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51   ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !131  ; 5 uses
  %.not.i15.i = icmp eq ptr %i.k, null
  br i1 %.not.i15.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %.not.i.i, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.i
  br i1 %i.g, label %._crit_edge.sink.split.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader: ; preds = %.lr.ph.split.us.split.us.i
  %i.l = sub i64 %.sroa.2.0.copyload, %.sroa.0690.0.copyload ; 3 uses
  %min.iters.check1839 = icmp ult i64 %i.l, 4
  br i1 %min.iters.check1839, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader1850, label %vector.ph1840

vector.ph1840:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader
  %n.vec1841 = and i64 %i.l, -4                   ; 3 uses
  %i.m = add i64 %.sroa.0690.0.copyload, %n.vec1841
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.0690.0.copyload
  br label %vector.body1842

vector.body1842:                                  ; preds = %vector.body1842, %vector.ph1840
  %index1843 = phi i64 [ 0, %vector.ph1840 ], [ %index.next1846, %vector.body1842 ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index1843 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %wide.load1844 = load <2 x i64>, ptr %i.o, align 8, !tbaa !31
  %wide.load1845 = load <2 x i64>, ptr %i.p, align 8, !tbaa !31
  %i.q = add <2 x i64> %wide.load1844, splat (i64 2)
  %i.r = add <2 x i64> %wide.load1845, splat (i64 2)
  store <2 x i64> %i.q, ptr %i.o, align 8, !tbaa !31
  store <2 x i64> %i.r, ptr %i.p, align 8, !tbaa !31
  %index.next1846 = add nuw i64 %index1843, 4     ; 2 uses
  %i.s = icmp eq i64 %index.next1846, %n.vec1841
  br i1 %i.s, label %middle.block1847, label %vector.body1842, !llvm.loop !613

middle.block1847:                                 ; preds = %vector.body1842
  %cmp.n1848 = icmp eq i64 %i.l, %n.vec1841
  br i1 %cmp.n1848, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader1850

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader1850: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader, %middle.block1847
  %.017.us.us.i.ph = phi i64 [ %.sroa.0690.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader ], [ %i.m, %middle.block1847 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader1850, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i
  %.017.us.us.i = phi i64 [ %i.w, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i ], [ %.017.us.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader1850 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.017.us.us.i ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31
  %i.v = add i64 %i.u, 2
  store i64 %i.v, ptr %i.t, align 8, !tbaa !31
  %i.w = add nuw i64 %.017.us.us.i, 1             ; 2 uses
  %exitcond44.not.i = icmp eq i64 %i.w, %.sroa.2.0.copyload
  br i1 %exitcond44.not.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i, !llvm.loop !614

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i
  br i1 %i.g, label %._crit_edge.sink.split.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader: ; preds = %.lr.ph.split.us.split.i
  %i.x = sub i64 %.sroa.2.0.copyload, %.sroa.0690.0.copyload ; 3 uses
  %min.iters.check1827 = icmp ult i64 %i.x, 4
  br i1 %min.iters.check1827, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader1851, label %vector.ph1828

vector.ph1828:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader
  %n.vec1829 = and i64 %i.x, -4                   ; 3 uses
  %i.y = add i64 %.sroa.0690.0.copyload, %n.vec1829
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.0690.0.copyload
  br label %vector.body1830

vector.body1830:                                  ; preds = %vector.body1830, %vector.ph1828
  %index1831 = phi i64 [ 0, %vector.ph1828 ], [ %index.next1834, %vector.body1830 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index1831 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %wide.load1832 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !31
  %wide.load1833 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !31
  %i.ac = add <2 x i64> %wide.load1832, splat (i64 2)
  %i.ad = add <2 x i64> %wide.load1833, splat (i64 2)
  store <2 x i64> %i.ac, ptr %i.aa, align 8, !tbaa !31
  store <2 x i64> %i.ad, ptr %i.ab, align 8, !tbaa !31
  %index.next1834 = add nuw i64 %index1831, 4     ; 2 uses
  %i.ae = icmp eq i64 %index.next1834, %n.vec1829
  br i1 %i.ae, label %middle.block1835, label %vector.body1830, !llvm.loop !615

middle.block1835:                                 ; preds = %vector.body1830
  %cmp.n1836 = icmp eq i64 %i.x, %n.vec1829
  br i1 %cmp.n1836, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader1851

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader1851: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader, %middle.block1835
  %.017.us.i.ph = phi i64 [ %.sroa.0690.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader ], [ %i.y, %middle.block1835 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader1851, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i
  %.017.us.i = phi i64 [ %i.ai, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i ], [ %.017.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader1851 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.017.us.i ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31
  %i.ah = add i64 %i.ag, 2
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !31
  %i.ai = add nuw i64 %.017.us.i, 1               ; 2 uses
  %exitcond43.not.i = icmp eq i64 %i.ai, %.sroa.2.0.copyload
  br i1 %exitcond43.not.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, !llvm.loop !616

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %.not.i.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  br i1 %i.g, label %.lr.ph.split.split.us.split.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i

.lr.ph.split.split.us.split.us.i:                 ; preds = %.lr.ph.split.split.us.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.3.0.copyload ; 3 uses
  %.promoted26.i = load i64, ptr %i.aj, align 8, !tbaa !31
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i: ; preds = %bb.c, %.lr.ph.split.split.us.split.us.i
  %i.ak = phi i64 [ %.promoted26.i, %.lr.ph.split.split.us.split.us.i ], [ %i.at, %bb.c ] ; 2 uses
  %.017.us18.us.i = phi i64 [ %.sroa.0690.0.copyload, %.lr.ph.split.split.us.split.us.i ], [ %i.au, %bb.c ] ; 3 uses
  %i.al = add i64 %i.ak, 1                        ; 2 uses
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !31
  %i.am = lshr i64 %.017.us18.us.i, 6
  %i.an = and i64 %.017.us18.us.i, 63
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.am
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !31
  %i.aq = shl nuw i64 1, %i.an
  %i.ar = and i64 %i.ap, %i.aq
  %.not.us.us.i = icmp eq i64 %i.ar, 0
  br i1 %.not.us.us.i, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i
  %i.as = add i64 %i.ak, 2                        ; 2 uses
  store i64 %i.as, ptr %i.aj, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i
  %i.at = phi i64 [ %i.al, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i ], [ %i.as, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i ]
  %i.au = add nuw i64 %.017.us18.us.i, 1          ; 2 uses
  %exitcond42.not.i = icmp eq i64 %i.au, %.sroa.2.0.copyload
  br i1 %exitcond42.not.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i, !llvm.loop !617

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i: ; preds = %.lr.ph.split.split.us.i, %bb.d
  %.017.us18.i = phi i64 [ %i.bf, %bb.d ], [ %.sroa.0690.0.copyload, %.lr.ph.split.split.us.i ] ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.017.us18.i ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !31 ; 2 uses
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !31
  %i.ay = lshr i64 %.017.us18.i, 6
  %i.az = and i64 %.017.us18.i, 63
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ay
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !31
  %i.bc = shl nuw i64 1, %i.az
  %i.bd = and i64 %i.bb, %i.bc
  %.not.us.i = icmp eq i64 %i.bd, 0
  br i1 %.not.us.i, label %bb.d, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_125GetSortKeyLengthRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE:bb.a
  %i.bfy = phi i64 [ %.promoted.i660, %.lr.ph.split.split.split.us.i659 ], [ %i.bhg, %bb.cc ] ; 2 uses
  %.018.us37.i = phi i64 [ %.sroa.0828.0.copyload, %.lr.ph.split.split.split.us.i659 ], [ %i.bhh, %bb.cc ] ; 2 uses
  %i.bfz = getelementptr inbounds nuw [4 x i8], ptr %i.bdb, i64 %.018.us37.i
  %i.bga = load i32, ptr %i.bfz, align 4, !tbaa !22
  %i.bgb = zext i32 %i.bga to i64                 ; 3 uses
  %i.bgc = add i64 %i.bfy, 1                      ; 2 uses
  store i64 %i.bgc, ptr %i.bfx, align 8, !tbaa !31
  %i.bgd = lshr i64 %i.bgb, 6
  %i.bge = and i64 %i.bgb, 63
  %i.bgf = getelementptr inbounds nuw [8 x i8], ptr %i.bdg, i64 %i.bgd
  %i.bgg = load i64, ptr %i.bgf, align 8, !tbaa !31
  %i.bgh = shl nuw i64 1, %i.bge
  %i.bgi = and i64 %i.bgh, %i.bgg
  %.not.us53.i = icmp eq i64 %i.bgi, 0
  br i1 %.not.us53.i, label %bb.cc, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us38.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us38.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.i
  %i.bgj = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.bgb ; 2 uses
  %.sroa.0.0.copyload.us39.i = load i64, ptr %i.bgj, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.us40.i = getelementptr inbounds nuw i8, ptr %i.bgj, i64 8
  %.sroa.2.0.copyload.us41.i = load ptr, ptr %.sroa.2.0..sroa_idx.us40.i, align 8, !tbaa !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.copyload.us39.i, ptr %6, align 8
  store ptr %.sroa.2.0.copyload.us41.i, ptr %i.bdh, align 8
  %i.bgk = trunc i64 %.sroa.0.0.copyload.us39.i to i32 ; 2 uses
  %i.bgl = icmp ult i32 %i.bgk, 13
  %i.bgm = select i1 %i.bgl, ptr %i.bdi, ptr %.sroa.2.0.copyload.us41.i ; 2 uses
  %i.bgn = and i64 %.sroa.0.0.copyload.us39.i, 4294967295 ; 4 uses
  %.not.i16.us42.i = icmp eq i32 %i.bgk, 0
  br i1 %.not.i16.us42.i, label %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator15GetEncodeLengthENS_8string_tE.exit.us51.i, label %.lr.ph.i.us44.i.preheader

.lr.ph.i.us44.i.preheader:                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us38.i
  %min.iters.check1430 = icmp samesign ult i64 %i.bgn, 4
  br i1 %min.iters.check1430, label %.lr.ph.i.us44.i.preheader1979, label %vector.ph1431

vector.ph1431:                                    ; preds = %.lr.ph.i.us44.i.preheader
  %n.vec1432 = and i64 %.sroa.0.0.copyload.us39.i, 4294967292 ; 3 uses
  br label %vector.body1433

vector.body1433:                                  ; preds = %vector.body1433, %vector.ph1431
  %index1434 = phi i64 [ 0, %vector.ph1431 ], [ %index.next1439, %vector.body1433 ] ; 2 uses
  %vec.phi1435 = phi <2 x i64> [ zeroinitializer, %vector.ph1431 ], [ %i.bgu, %vector.body1433 ]
  %vec.phi1436 = phi <2 x i64> [ zeroinitializer, %vector.ph1431 ], [ %i.bgv, %vector.body1433 ]
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgm, i64 %index1434 ; 2 uses
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgo, i64 2
  %wide.load1437 = load <2 x i8>, ptr %i.bgo, align 1, !tbaa !34
  %wide.load1438 = load <2 x i8>, ptr %i.bgp, align 1, !tbaa !34
  %i.bgq = icmp ult <2 x i8> %wide.load1437, splat (i8 2)
  %i.bgr = icmp ult <2 x i8> %wide.load1438, splat (i8 2)
  %i.bgs = zext <2 x i1> %i.bgq to <2 x i64>
  %i.bgt = zext <2 x i1> %i.bgr to <2 x i64>
  %i.bgu = add <2 x i64> %vec.phi1435, %i.bgs     ; 2 uses
  %i.bgv = add <2 x i64> %vec.phi1436, %i.bgt     ; 2 uses
  %index.next1439 = add nuw i64 %index1434, 4     ; 2 uses
  %i.bgw = icmp eq i64 %index.next1439, %n.vec1432
  br i1 %i.bgw, label %middle.block1440, label %vector.body1433, !llvm.loop !699

middle.block1440:                                 ; preds = %vector.body1433
  %bin.rdx1441 = add <2 x i64> %i.bgv, %i.bgu
  %i.bgx = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1441) ; 2 uses
  %cmp.n1442 = icmp eq i64 %i.bgn, %n.vec1432
  br i1 %cmp.n1442, label %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator15GetEncodeLengthENS_8string_tE.exit.us51.i, label %.lr.ph.i.us44.i.preheader1979

.lr.ph.i.us44.i.preheader1979:                    ; preds = %.lr.ph.i.us44.i.preheader, %middle.block1440
  %.08.i.us45.i.ph = phi i64 [ 0, %.lr.ph.i.us44.i.preheader ], [ %n.vec1432, %middle.block1440 ]
  %.067.i.us46.i.ph = phi i64 [ 0, %.lr.ph.i.us44.i.preheader ], [ %i.bgx, %middle.block1440 ]
  br label %.lr.ph.i.us44.i

.lr.ph.i.us44.i:                                  ; preds = %.lr.ph.i.us44.i.preheader1979, %.lr.ph.i.us44.i
  %.08.i.us45.i = phi i64 [ %i.bhc, %.lr.ph.i.us44.i ], [ %.08.i.us45.i.ph, %.lr.ph.i.us44.i.preheader1979 ] ; 2 uses
  %.067.i.us46.i = phi i64 [ %spec.select.i.us47.i, %.lr.ph.i.us44.i ], [ %.067.i.us46.i.ph, %.lr.ph.i.us44.i.preheader1979 ]
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgm, i64 %.08.i.us45.i
  %i.bgz = load i8, ptr %i.bgy, align 1, !tbaa !34
  %i.bha = icmp ult i8 %i.bgz, 2
  %i.bhb = zext i1 %i.bha to i64
  %spec.select.i.us47.i = add i64 %.067.i.us46.i, %i.bhb ; 2 uses
  %i.bhc = add nuw nsw i64 %.08.i.us45.i, 1       ; 2 uses
  %exitcond.not.i.us48.i = icmp eq i64 %i.bhc, %i.bgn
  br i1 %exitcond.not.i.us48.i, label %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator15GetEncodeLengthENS_8string_tE.exit.us51.i, label %.lr.ph.i.us44.i, !llvm.loop !700

_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator15GetEncodeLengthENS_8string_tE.exit.us51.i: ; preds = %.lr.ph.i.us44.i, %middle.block1440, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us38.i
  %.06.lcssa.i.us52.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us38.i ], [ %i.bgx, %middle.block1440 ], [ %spec.select.i.us47.i, %.lr.ph.i.us44.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bhd = add i64 %i.bfy, 2
  %i.bhe = add i64 %i.bhd, %i.bgn
  %i.bhf = add i64 %i.bhe, %.06.lcssa.i.us52.i    ; 2 uses
  store i64 %i.bhf, ptr %i.bfx, align 8, !tbaa !31
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator15GetEncodeLengthENS_8string_tE.exit.us51.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.i
  %i.bhg = phi i64 [ %i.bgc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.i ], [ %i.bhf, %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator15GetEncodeLengthENS_8string_tE.exit.us51.i ]
  %i.bhh = add nuw i64 %.018.us37.i, 1            ; 2 uses
  %exitcond57.not.i = icmp eq i64 %i.bhh, %.sroa.2829.0.copyload
  br i1 %exitcond57.not.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.i, !llvm.loop !696

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i654: ; preds = %.lr.ph.split.split.i653, %bb.cd
  %.018.i = phi i64 [ %i.bir, %bb.cd ], [ %.sroa.0828.0.copyload, %.lr.ph.split.split.i653 ] ; 3 uses
  %i.bhi = getelementptr inbounds nuw [4 x i8], ptr %i.bdb, i64 %.018.i
  %i.bhj = load i32, ptr %i.bhi, align 4, !tbaa !22
  %i.bhk = zext i32 %i.bhj to i64                 ; 3 uses
  %i.bhl = getelementptr inbounds nuw [8 x i8], ptr %i.bde, i64 %.018.i ; 3 uses
  %i.bhm = load i64, ptr %i.bhl, align 8, !tbaa !31 ; 2 uses
  %i.bhn = add i64 %i.bhm, 1
  store i64 %i.bhn, ptr %i.bhl, align 8, !tbaa !31
  %i.bho = lshr i64 %i.bhk, 6
  %i.bhp = and i64 %i.bhk, 63
  %i.bhq = getelementptr inbounds nuw [8 x i8], ptr %i.bdg, i64 %i.bho
  %i.bhr = load i64, ptr %i.bhq, align 8, !tbaa !31
  %i.bhs = shl nuw i64 1, %i.bhp
  %i.bht = and i64 %i.bhr, %i.bhs
  %.not.i655 = icmp eq i64 %i.bht, 0
  br i1 %.not.i655, label %bb.cd, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i656

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i656: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i654
  %i.bhu = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.bhk ; 2 uses
  %.sroa.0.0.copyload.i657 = load i64, ptr %i.bhu, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bhu, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.copyload.i657, ptr %6, align 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.bdh, align 8
  %i.bhv = trunc i64 %.sroa.0.0.copyload.i657 to i32 ; 2 uses
  %i.bhw = icmp ult i32 %i.bhv, 13
  %i.bhx = select i1 %i.bhw, ptr %i.bdi, ptr %.sroa.2.0.copyload.i ; 2 uses
  %i.bhy = and i64 %.sroa.0.0.copyload.i657, 4294967295 ; 4 uses
  %.not.i16.i = icmp eq i32 %i.bhv, 0
  br i1 %.not.i16.i, label %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator15GetEncodeLengthENS_8string_tE.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i656
  %min.iters.check = icmp samesign ult i64 %i.bhy, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader1983, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %.sroa.0.0.copyload.i657, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bif, %vector.body ]
  %vec.phi1427 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.big, %vector.body ]
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhx, i64 %index ; 2 uses
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhz, i64 2
  %wide.load = load <2 x i8>, ptr %i.bhz, align 1, !tbaa !34
  %wide.load1428 = load <2 x i8>, ptr %i.bia, align 1, !tbaa !34
  %i.bib = icmp ult <2 x i8> %wide.load, splat (i8 2)
  %i.bic = icmp ult <2 x i8> %wide.load1428, splat (i8 2)
  %i.bid = zext <2 x i1> %i.bib to <2 x i64>
  %i.bie = zext <2 x i1> %i.bic to <2 x i64>
  %i.bif = add <2 x i64> %vec.phi, %i.bid         ; 2 uses
  %i.big = add <2 x i64> %vec.phi1427, %i.bie     ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bih = icmp eq i64 %index.next, %n.vec
  br i1 %i.bih, label %middle.block, label %vector.body, !llvm.loop !701

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.big, %i.bif
  %i.bii = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bhy, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator15GetEncodeLengthENS_8string_tE.exit.i, label %.lr.ph.i.i.preheader1983

.lr.ph.i.i.preheader1983:                         ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.bii, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader1983, %.lr.ph.i.i
  %.08.i.i = phi i64 [ %i.bin, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader1983 ] ; 2 uses
  %.067.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader1983 ]
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bhx, i64 %.08.i.i
  %i.bik = load i8, ptr %i.bij, align 1, !tbaa !34
  %i.bil = icmp ult i8 %i.bik, 2
  %i.bim = zext i1 %i.bil to i64
  %spec.select.i.i = add i64 %.067.i.i, %i.bim    ; 2 uses
  %i.bin = add nuw nsw i64 %.08.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bin, %i.bhy
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator15GetEncodeLengthENS_8string_tE.exit.i, label %.lr.ph.i.i, !llvm.loop !702

_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator15GetEncodeLengthENS_8string_tE.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i656
  %.06.lcssa.i.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i656 ], [ %i.bii, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bio = add i64 %i.bhm, 2
  %i.bip = add i64 %i.bio, %i.bhy
  %i.biq = add i64 %i.bip, %.06.lcssa.i.i
  store i64 %i.biq, ptr %i.bhl, align 8, !tbaa !31
  br label %bb.cd

bb.cd:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator15GetEncodeLengthENS_8string_tE.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i654
  %i.bir = add nuw i64 %.018.i, 1                 ; 2 uses
  %exitcond.not.i658 = icmp eq i64 %i.bir, %.sroa.2829.0.copyload
  br i1 %exitcond.not.i658, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i654, !llvm.loop !696

bb.ce:                                            ; preds = %bb.a
  %.sroa.0855.0.copyload = load i64, ptr %1, align 8, !tbaa !31 ; 6 uses
  %.sroa.2856.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2856.0.copyload = load i64, ptr %.sroa.2856.0..sroa_idx, align 8, !tbaa !31 ; 5 uses
  %.sroa.3857.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3857.0.copyload = load i64, ptr %.sroa.3857.0..sroa_idx, align 8, !tbaa !31 ; 6 uses
  %.sroa.4858.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4858.0.copyload = load i8, ptr %.sroa.4858.0..sroa_idx, align 8, !tbaa !156 ; 2 uses
  %.sroa.5859.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 25
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bis = icmp ult i64 %.sroa.0855.0.copyload, %.sroa.2856.0.copyload
  br i1 %i.bis, label %.lr.ph1030, label %._crit_edge

.lr.ph1030:                                       ; preds = %bb.ce
  %i.bit = trunc nuw i8 %.sroa.4858.0.copyload to i1 ; 5 uses
  %i.biu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.biv = load ptr, ptr %i.biu, align 8, !tbaa !51 ; 5 uses
  %i.biw = sub nuw i64 %.sroa.2856.0.copyload, %.sroa.0855.0.copyload
  %xtraiter = and i64 %i.biw, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph1030, %.prol.preheader
  %.0.i1029.prol = phi i64 [ %i.bjb, %.prol.preheader ], [ %.sroa.0855.0.copyload, %.lr.ph1030 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph1030 ]
  %i.bix = select i1 %i.bit, i64 %.sroa.3857.0.copyload, i64 %.0.i1029.prol
  %i.biy = getelementptr inbounds nuw [8 x i8], ptr %i.biv, i64 %i.bix ; 2 uses
  %i.biz = load i64, ptr %i.biy, align 8, !tbaa !31
  %i.bja = add i64 %i.biz, 1
  store i64 %i.bja, ptr %i.biy, align 8, !tbaa !31
  %i.bjb = add nuw i64 %.0.i1029.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !703

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph1030
  %.0.i1029.unr = phi i64 [ %.sroa.0855.0.copyload, %.lr.ph1030 ], [ %i.bjb, %.prol.preheader ]
  %i.bjc = sub i64 %.sroa.0855.0.copyload, %.sroa.2856.0.copyload
  %i.bjd = icmp ugt i64 %i.bjc, -4
  br i1 %i.bjd, label %._crit_edge, label %.lr.ph1030.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph1030.new, %bb.ce
  %i.bje = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val9.i = load ptr, ptr %i.bje, align 8, !tbaa !283 ; 2 uses
  %i.bjf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i665 = load ptr, ptr %i.bjf, align 8, !tbaa !283 ; 2 uses
  %.not8981031 = icmp eq ptr %.val9.i, %.val.i665
  br i1 %.not8981031, label %_ZN6duckdb12_GLOBAL__N_122GetSortKeyLengthStructERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %.lr.ph1034

.lr.ph1034:                                       ; preds = %._crit_edge
  %.sroa.5845.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.6848.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.7851.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 25
  br label %bb.cf

.lr.ph1030.new:                                   ; preds = %.prol.loopexit, %.lr.ph1030.new
  %.0.i1029 = phi i64 [ %i.bjz, %.lr.ph1030.new ], [ %.0.i1029.unr, %.prol.loopexit ] ; 5 uses
  %i.bjg = select i1 %i.bit, i64 %.sroa.3857.0.copyload, i64 %.0.i1029
  %i.bjh = getelementptr inbounds nuw [8 x i8], ptr %i.biv, i64 %i.bjg ; 2 uses
  %i.bji = load i64, ptr %i.bjh, align 8, !tbaa !31
  %i.bjj = add i64 %i.bji, 1
  store i64 %i.bjj, ptr %i.bjh, align 8, !tbaa !31
  %i.bjk = add nuw i64 %.0.i1029, 1
  %i.bjl = select i1 %i.bit, i64 %.sroa.3857.0.copyload, i64 %i.bjk
  %i.bjm = getelementptr inbounds nuw [8 x i8], ptr %i.biv, i64 %i.bjl ; 2 uses
  %i.bjn = load i64, ptr %i.bjm, align 8, !tbaa !31
  %i.bjo = add i64 %i.bjn, 1
  store i64 %i.bjo, ptr %i.bjm, align 8, !tbaa !31
  %i.bjp = add nuw i64 %.0.i1029, 2
  %i.bjq = select i1 %i.bit, i64 %.sroa.3857.0.copyload, i64 %i.bjp
  %i.bjr = getelementptr inbounds nuw [8 x i8], ptr %i.biv, i64 %i.bjq ; 2 uses
  %i.bjs = load i64, ptr %i.bjr, align 8, !tbaa !31
  %i.bjt = add i64 %i.bjs, 1
  store i64 %i.bjt, ptr %i.bjr, align 8, !tbaa !31
  %i.bju = add nuw i64 %.0.i1029, 3
  %i.bjv = select i1 %i.bit, i64 %.sroa.3857.0.copyload, i64 %i.bju
  %i.bjw = getelementptr inbounds nuw [8 x i8], ptr %i.biv, i64 %i.bjv ; 2 uses
  %i.bjx = load i64, ptr %i.bjw, align 8, !tbaa !31
  %i.bjy = add i64 %i.bjx, 1
  store i64 %i.bjy, ptr %i.bjw, align 8, !tbaa !31
  %i.bjz = add nuw i64 %.0.i1029, 4               ; 2 uses
  %exitcond1132.not.3 = icmp eq i64 %i.bjz, %.sroa.2856.0.copyload
  br i1 %exitcond1132.not.3, label %._crit_edge, label %.lr.ph1030.new, !llvm.loop !704

bb.cf:                                            ; preds = %.lr.ph1034, %bb.cf
  %.sroa.0861.01032 = phi ptr [ %.val9.i, %.lr.ph1034 ], [ %i.bkb, %bb.cf ] ; 2 uses
  %.val13.i = load ptr, ptr %.sroa.0861.01032, align 8, !tbaa !42 ; 2 uses
  %i.bka = tail call fastcc noundef nonnull align 8 dereferenceable(122) ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_ELb1EEdeEv(ptr %.val13.i), !inline_history !705 ; 0 uses
  store i64 %.sroa.0855.0.copyload, ptr %5, align 8, !tbaa !31
  store i64 %.sroa.2856.0.copyload, ptr %.sroa.5845.0..sroa_idx, align 8, !tbaa !31
  store i64 %.sroa.3857.0.copyload, ptr %.sroa.6848.0..sroa_idx, align 8, !tbaa !31
  store i8 %.sroa.4858.0.copyload, ptr %.sroa.7851.0..sroa_idx, align 8, !tbaa !156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5859.0..sroa_idx, i64 7, i1 false)
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_125GetSortKeyLengthRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE(ptr noundef nonnull align 8 dereferenceable(122) %.val13.i, ptr noundef nonnull byval(%"struct.duckdb::(anonymous namespace)::SortKeyChunk") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %2), !inline_history !705
  %i.bkb = getelementptr inbounds nuw i8, ptr %.sroa.0861.01032, i64 8 ; 2 uses
  %.not898 = icmp eq ptr %i.bkb, %.val.i665
  br i1 %.not898, label %_ZN6duckdb12_GLOBAL__N_122GetSortKeyLengthStructERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %bb.cf

_ZN6duckdb12_GLOBAL__N_122GetSortKeyLengthStructERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit: ; preds = %bb.cf, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

bb.cg:                                            ; preds = %bb.a
  %.sroa.0867.0.copyload = load i64, ptr %1, align 8, !tbaa !31 ; 2 uses
  %.sroa.2868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2868.0.copyload = load i64, ptr %.sroa.2868.0..sroa_idx, align 8, !tbaa !31 ; 2 uses
  %.sroa.3869.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3869.0.copyload = load i64, ptr %.sroa.3869.0..sroa_idx, align 8, !tbaa !31
  %.sroa.4870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4870.0.copyload = load i8, ptr %.sroa.4870.0..sroa_idx, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bkc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val21.i = load ptr, ptr %i.bkc, align 8, !tbaa !45
  %i.bkd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val22.i = load ptr, ptr %i.bkd, align 8, !tbaa !46
  %i.bke = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr %.val21.i, ptr %.val22.i, i64 noundef 0), !inline_history !706
  %i.bkf = icmp ult i64 %.sroa.0867.0.copyload, %.sroa.2868.0.copyload
  br i1 %i.bkf, label %.lr.ph1028, label %_ZN6duckdb12_GLOBAL__N_120GetSortKeyLengthListINS0_16SortKeyListEntryEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph1028:                                       ; preds = %bb.cg
  %i.bkg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bkh = trunc nuw i8 %.sroa.4870.0.copyload to i1
  %i.bki = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bkj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bkk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5874.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.6875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.ch

bb.ch:                                            ; preds = %.lr.ph1028, %bb.ck
  %.0.i6671027 = phi i64 [ %.sroa.0867.0.copyload, %.lr.ph1028 ], [ %i.bll, %bb.ck ] ; 4 uses
  %i.bkl = load ptr, ptr %i.bkg, align 8, !tbaa !284
  %i.bkm = load ptr, ptr %i.bkl, align 8, !tbaa !130 ; 2 uses
  %.not.i682 = icmp eq ptr %i.bkm, null
  br i1 %.not.i682, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.bkn = getelementptr inbounds nuw [4 x i8], ptr %i.bkm, i64 %.0.i6671027
  %i.bko = load i32, ptr %i.bkn, align 4, !tbaa !22
  %i.bkp = zext i32 %i.bko to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.ch, %bb.ci
  %i.bkq = phi i64 [ %i.bkp, %bb.ci ], [ %.0.i6671027, %bb.ch ] ; 3 uses
  %i.bkr = select i1 %i.bkh, i64 %.sroa.3869.0.copyload, i64 %.0.i6671027 ; 3 uses
  %i.bks = load ptr, ptr %i.bki, align 8, !tbaa !51
  %i.bkt = getelementptr inbounds nuw [8 x i8], ptr %i.bks, i64 %i.bkr ; 2 uses
  %i.bku = load i64, ptr %i.bkt, align 8, !tbaa !31
  %i.bkv = add i64 %i.bku, 1
  store i64 %i.bkv, ptr %i.bkt, align 8, !tbaa !31
  %i.bkw = load ptr, ptr %i.bkj, align 8, !tbaa !131 ; 2 uses
  %.not.i680 = icmp eq ptr %i.bkw, null
  br i1 %.not.i680, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.bkx = lshr i64 %i.bkq, 6
  %i.bky = and i64 %i.bkq, 63
  %i.bkz = getelementptr inbounds nuw [8 x i8], ptr %i.bkw, i64 %i.bkx
  %i.bla = load i64, ptr %i.bkz, align 8, !tbaa !31
  %i.blb = shl nuw i64 1, %i.bky
  %i.blc = and i64 %i.bla, %i.blb
  %.not = icmp eq i64 %i.blc, 0
  br i1 %.not, label %bb.ck, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.bkg)
  %i.bld = load ptr, ptr %i.bkk, align 8, !tbaa !216
  %i.ble = getelementptr inbounds nuw [16 x i8], ptr %i.bld, i64 %i.bkq ; 2 uses
  %.sroa.0.0.copyload.i677 = load i64, ptr %i.ble, align 8, !tbaa !31 ; 2 uses
  %.sroa.2.0..sroa_idx.i678 = getelementptr inbounds nuw i8, ptr %i.ble, i64 8
  %.sroa.2.0.copyload.i679 = load i64, ptr %.sroa.2.0..sroa_idx.i678, align 8, !tbaa !31 ; 2 uses
  %i.blf = load ptr, ptr %i.bki, align 8, !tbaa !51
  %i.blg = getelementptr inbounds nuw [8 x i8], ptr %i.blf, i64 %i.bkr ; 2 uses
  %i.blh = load i64, ptr %i.blg, align 8, !tbaa !31
  %i.bli = add i64 %i.blh, 1
  store i64 %i.bli, ptr %i.blg, align 8, !tbaa !31
  %.not.i668 = icmp eq i64 %.sroa.2.0.copyload.i679, 0
  br i1 %.not.i668, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.blj = add i64 %.sroa.2.0.copyload.i679, %.sroa.0.0.copyload.i677
  %.val.i669 = load ptr, ptr %i.bke, align 8, !tbaa !42 ; 2 uses
  %i.blk = tail call fastcc noundef nonnull align 8 dereferenceable(122) ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_ELb1EEdeEv(ptr %.val.i669), !inline_history !706 ; 0 uses
  store i64 %.sroa.0.0.copyload.i677, ptr %4, align 8, !tbaa !31
  store i64 %i.blj, ptr %.sroa.4873.0..sroa_idx, align 8, !tbaa !31
  store i64 %i.bkr, ptr %.sroa.5874.0..sroa_idx, align 8, !tbaa !31
  store i8 1, ptr %.sroa.6875.0..sroa_idx, align 8, !tbaa !156
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_125GetSortKeyLengthRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE(ptr noundef nonnull align 8 dereferenceable(122) %.val.i669, ptr noundef nonnull byval(%"struct.duckdb::(anonymous namespace)::SortKeyChunk") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %2), !inline_history !706
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %bb.cj, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.bll = add i64 %.0.i6671027, 1                ; 2 uses
  %exitcond1131.not = icmp eq i64 %i.bll, %.sroa.2868.0.copyload
  br i1 %exitcond1131.not, label %_ZN6duckdb12_GLOBAL__N_120GetSortKeyLengthListINS0_16SortKeyListEntryEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %bb.ch, !llvm.loop !707

_ZN6duckdb12_GLOBAL__N_120GetSortKeyLengthListINS0_16SortKeyListEntryEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit: ; preds = %bb.ck, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

bb.cl:                                            ; preds = %bb.a
  %.sroa.0882.0.copyload = load i64, ptr %1, align 8, !tbaa !31 ; 2 uses
  %.sroa.2883.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2883.0.copyload = load i64, ptr %.sroa.2883.0..sroa_idx, align 8, !tbaa !31 ; 2 uses
  %.sroa.3884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3884.0.copyload = load i64, ptr %.sroa.3884.0..sroa_idx, align 8, !tbaa !31
  %.sroa.4885.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4885.0.copyload = load i8, ptr %.sroa.4885.0..sroa_idx, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.blm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val21.i670 = load ptr, ptr %i.blm, align 8, !tbaa !45
  %i.bln = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val22.i671 = load ptr, ptr %i.bln, align 8, !tbaa !46
  %i.blo = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr %.val21.i670, ptr %.val22.i671, i64 noundef 0), !inline_history !708
  %i.blp = icmp ult i64 %.sroa.0882.0.copyload, %.sroa.2883.0.copyload
  br i1 %i.blp, label %.lr.ph, label %_ZN6duckdb12_GLOBAL__N_120GetSortKeyLengthListINS0_17SortKeyArrayEntryEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph:                                           ; preds = %bb.cl
  %i.blq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.blr = trunc nuw i8 %.sroa.4885.0.copyload to i1
  %i.bls = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.4888.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5889.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.6890.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.cm

bb.cm:                                            ; preds = %.lr.ph, %bb.cp
  %.0.i6721026 = phi i64 [ %.sroa.0882.0.copyload, %.lr.ph ], [ %i.bmn, %bb.cp ] ; 4 uses
  %i.blt = load ptr, ptr %i.blq, align 8, !tbaa !284
  %i.blu = load ptr, ptr %i.blt, align 8, !tbaa !130 ; 2 uses
  %.not.i688 = icmp eq ptr %i.blu, null
  br i1 %.not.i688, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit689, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.blv = getelementptr inbounds nuw [4 x i8], ptr %i.blu, i64 %.0.i6721026
  %i.blw = load i32, ptr %i.blv, align 4, !tbaa !22
  %i.blx = zext i32 %i.blw to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit689

_ZNK6duckdb15SelectionVector9get_indexEm.exit689: ; preds = %bb.cm, %bb.cn
  %i.bly = phi i64 [ %i.blx, %bb.cn ], [ %.0.i6721026, %bb.cm ]
  %i.blz = select i1 %i.blr, i64 %.sroa.3884.0.copyload, i64 %.0.i6721026 ; 3 uses
  %i.bma = load ptr, ptr %i.bls, align 8, !tbaa !51
  %i.bmb = getelementptr inbounds nuw [8 x i8], ptr %i.bma, i64 %i.blz ; 2 uses
  %i.bmc = load i64, ptr %i.bmb, align 8, !tbaa !31
  %i.bmd = add i64 %i.bmc, 1
  store i64 %i.bmd, ptr %i.bmb, align 8, !tbaa !31
  %.val23.i = load ptr, ptr %0, align 8, !tbaa !76
  %i.bme = getelementptr inbounds nuw i8, ptr %.val23.i, i64 8
  %i.bmf = tail call noundef i64 @_ZN6duckdb9ArrayType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.bme) ; 3 uses
  %i.bmg = load ptr, ptr %i.bls, align 8, !tbaa !51
  %i.bmh = getelementptr inbounds nuw [8 x i8], ptr %i.bmg, i64 %i.blz ; 2 uses
  %i.bmi = load i64, ptr %i.bmh, align 8, !tbaa !31
  %i.bmj = add i64 %i.bmi, 1
  store i64 %i.bmj, ptr %i.bmh, align 8, !tbaa !31
  %.not.i675 = icmp eq i64 %i.bmf, 0
  br i1 %.not.i675, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit689
  %i.bmk = mul i64 %i.bmf, %i.bly                 ; 2 uses
  %i.bml = add i64 %i.bmk, %i.bmf
  %.val.i676 = load ptr, ptr %i.blo, align 8, !tbaa !42 ; 2 uses
  %i.bmm = tail call fastcc noundef nonnull align 8 dereferenceable(122) ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_ELb1EEdeEv(ptr %.val.i676), !inline_history !708 ; 0 uses
  store i64 %i.bmk, ptr %3, align 8, !tbaa !31
  store i64 %i.bml, ptr %.sroa.4888.0..sroa_idx, align 8, !tbaa !31
  store i64 %i.blz, ptr %.sroa.5889.0..sroa_idx, align 8, !tbaa !31
  store i8 1, ptr %.sroa.6890.0..sroa_idx, align 8, !tbaa !156
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_125GetSortKeyLengthRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE(ptr noundef nonnull align 8 dereferenceable(122) %.val.i676, ptr noundef nonnull byval(%"struct.duckdb::(anonymous namespace)::SortKeyChunk") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %2), !inline_history !708
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %_ZNK6duckdb15SelectionVector9get_indexEm.exit689
  %i.bmn = add i64 %.0.i6721026, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bmn, %.sroa.2883.0.copyload
  br i1 %exitcond.not, label %_ZN6duckdb12_GLOBAL__N_120GetSortKeyLengthListINS0_17SortKeyArrayEntryEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %bb.cm, !llvm.loop !709

_ZN6duckdb12_GLOBAL__N_120GetSortKeyLengthListINS0_17SortKeyArrayEntryEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit: ; preds = %bb.cp, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

bb.cq:                                            ; preds = %bb.a
  %i.bmo = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.cr unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJRNS_12PhysicalTypeEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bmo, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.cs unwind label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  invoke void @__cxa_throw(ptr nonnull %i.bmo, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.cw unwind label %bb.ct

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.cq
  %i.bmp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
end_hunk_1
begin_hunk_2_@_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56
  store i64 %i.i, ptr %i.ap, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.7 = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i.i.i.7, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !737

bb.l:                                             ; preds = %bb.c
  %i.ar = icmp eq i64 %2, %i.l
  br i1 %i.ar, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.as, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.m
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %i.d, %bb.m ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.at
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !737

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !740
  %i.av = icmp sgt i64 %i.k, 8
  br i1 %i.av, label %bb.n, label %bb.o, !prof !121

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !740
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  %i.aw = icmp eq i64 %i.k, 8
  br i1 %i.aw, label %bb.p, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.ax = load i64, ptr %1, align 8, !tbaa !31
  store i64 %i.ax, ptr %.0.i.i.i.i.i, align 8, !tbaa !31
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.ay = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.k
  store ptr %i.az, ptr %i.c, align 8, !tbaa !740
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.ba, %.lr.ph.i.i.i71 ], [ %1, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69 ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.ba, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !737

bb.q:                                             ; preds = %bb.b
  %i.bb = load ptr, ptr %0, align 8, !tbaa !51    ; 5 uses
  %i.bc = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bd = sub i64 %i.f, %i.bc
  %i.be = ashr exact i64 %i.bd, 3                 ; 4 uses
  %i.bf = sub nsw i64 1152921504606846975, %i.be
  %i.bg = icmp ult i64 %i.bf, %2
  br i1 %i.bg, label %bb.r, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #31
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 %2)
  %i.bh = add nsw i64 %.sroa.speculated.i, %i.be  ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.be
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.bc                    ; 4 uses
  %.not.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.bn = shl nuw nsw i64 %i.bk, 3
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.bp = phi ptr [ %i.bo, %bb.s ], [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.bm ; 4 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i.i.i.i.i75
  %i.bs = load i64, ptr %3, align 8, !tbaa !31    ; 9 uses
  %i.bt = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 2 uses
  %i.bu = lshr exact i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bu, 1
  %xtraiter114 = and i64 %i.bv, 7                 ; 2 uses
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i76.prol

.lr.ph.i.i.i.i.i.i.i76.prol:                      ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i76.prol
  %.06.i.i.i.i.i.i.i77.prol = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i76.prol ], [ %i.bq, %bb.t ] ; 2 uses
  %prol.iter116 = phi i64 [ %prol.iter116.next, %.lr.ph.i.i.i.i.i.i.i76.prol ], [ 0, %bb.t ]
  store i64 %i.bs, ptr %.06.i.i.i.i.i.i.i77.prol, align 8, !tbaa !31
  %i.bw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77.prol, i64 8 ; 2 uses
  %prol.iter116.next = add i64 %prol.iter116, 1   ; 2 uses
  %prol.iter116.cmp.not = icmp eq i64 %prol.iter116.next, %xtraiter114
  br i1 %prol.iter116.cmp.not, label %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i76.prol, !llvm.loop !738

.lr.ph.i.i.i.i.i.i.i76.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i76.prol, %bb.t
  %.06.i.i.i.i.i.i.i77.unr = phi ptr [ %i.bq, %bb.t ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i76.prol ]
  %i.bx = icmp ult i64 %i.bt, 56
  br i1 %i.bx, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.unr, %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit ] ; 9 uses
  store i64 %i.bs, ptr %.06.i.i.i.i.i.i.i77, align 8, !tbaa !31
  %i.by = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 8
  store i64 %i.bs, ptr %i.by, align 8, !tbaa !31
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 16
  store i64 %i.bs, ptr %i.bz, align 8, !tbaa !31
  %i.ca = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 24
  store i64 %i.bs, ptr %i.ca, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 32
  store i64 %i.bs, ptr %i.cb, align 8, !tbaa !31
  %i.cc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 40
  store i64 %i.bs, ptr %i.cc, align 8, !tbaa !31
  %i.cd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 48
  store i64 %i.bs, ptr %i.cd, align 8, !tbaa !31
  %i.ce = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 56
  store i64 %i.bs, ptr %i.ce, align 8, !tbaa !31
  %i.cf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i78.7 = icmp eq ptr %i.cf, %i.br
  br i1 %.not.i.i.i.i.i.i.i78.7, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !737

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit
  %i.cg = icmp sgt i64 %i.bm, 8
  br i1 %i.cg, label %bb.u, label %bb.v, !prof !121

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bp, ptr align 8 %i.bb, i64 %i.bm, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.ch = icmp eq i64 %i.bm, 8
  br i1 %i.ch, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ci = load i64, ptr %i.bb, align 8, !tbaa !31
  store i64 %i.ci, ptr %i.bp, align 8, !tbaa !31
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %2 ; 3 uses
  %i.ck = sub i64 %i.f, %i.bl                     ; 4 uses
  %i.cl = icmp sgt i64 %i.ck, 8
  br i1 %i.cl, label %bb.x, label %bb.y, !prof !121

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr align 8 %1, i64 %i.ck, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.cm = icmp eq i64 %i.ck, 8
  br i1 %i.cm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cn = load i64, ptr %1, align 8, !tbaa !31
  store i64 %i.cn, ptr %i.cj, align 8, !tbaa !31
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.co = getelementptr inbounds i8, ptr %i.cj, i64 %i.ck
  %.not.i82 = icmp eq ptr %i.bb, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZdlPv(ptr noundef nonnull %i.bb) #30
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.bp, ptr %0, align 8, !tbaa !51
  store ptr %i.co, ptr %i.c, align 8, !tbaa !740
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bk
  store ptr %i.cp, ptr %i.a, align 8, !tbaa !739
  br label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

_ZSt4fillIPmmEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_125ConstructSortKeyRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE(ptr noundef nonnull align 8 dereferenceable(122) %0, ptr nofree noundef readonly byval(%"struct.duckdb::(anonymous namespace)::SortKeyChunk") align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(25) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::(anonymous namespace)::SortKeyChunk", align 8 ; 7 uses
  %4 = alloca %"struct.duckdb::(anonymous namespace)::SortKeyChunk", align 8 ; 7 uses
  %5 = alloca %"struct.duckdb::(anonymous namespace)::SortKeyChunk", align 8 ; 7 uses
  %6 = alloca %"struct.duckdb::(anonymous namespace)::SortKeyChunk", align 8 ; 8 uses
  %7 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %9 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %11 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %12 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %13 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %14 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::allocator.2", align 1 ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !76    ; 2 uses
  %i.a = getelementptr i8, ptr %.val, i64 9
  %.val.val = load i8, ptr %i.a, align 1, !tbaa !83
  switch i8 %.val.val, label %bb.om [
    i8 1, label %bb.b
    i8 2, label %bb.aa
    i8 3, label %bb.az
    i8 4, label %bb.by
    i8 5, label %bb.cs
    i8 6, label %bb.dm
    i8 7, label %bb.eg
    i8 8, label %bb.fa
    i8 9, label %bb.fu
    i8 11, label %bb.go
    i8 12, label %bb.hy
    i8 21, label %bb.ji
    i8 -53, label %bb.kc
    i8 -52, label %bb.kw
    i8 -56, label %bb.lq
    i8 24, label %bb.nr
    i8 23, label %bb.nz
    i8 29, label %bb.og
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.0896.0.copyload = load i64, ptr %1, align 8, !tbaa !31 ; 10 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !31 ; 10 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !31 ; 3 uses
  %i.b = icmp eq i64 %.sroa.0896.0.copyload, %.sroa.2.0.copyload
  br i1 %i.b, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.4897.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4897.0.copyload = load i8, ptr %.sroa.4897.0..sroa_idx, align 8, !tbaa !156
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131
  %.not.i.i = icmp eq ptr %i.e, null
  %i.f = trunc nuw i8 %.sroa.4897.0.copyload to i1 ; 4 uses
  br i1 %.not.i.i, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !284
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130
  %.not55.i = icmp eq ptr %i.h, null
  br i1 %.not55.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIbEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !216
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !892, !nonnull !155, !align !197
  %i.m = icmp ult i64 %.sroa.0896.0.copyload, %.sroa.2.0.copyload
  br i1 %i.m, label %.lr.ph3.i.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph3.i.i:                                      ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.i.i, %.lr.ph3.i.i
  %.0282.i.i = phi i64 [ %.sroa.0896.0.copyload, %.lr.ph3.i.i ], [ %i.ao, %.loopexit.i.i ] ; 4 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0282.i.i ; 6 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0282.i.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !92   ; 3 uses
  %i.v = load i8, ptr %i.o, align 1, !tbaa !287
  %i.w = load i64, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.r, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  store i8 %i.v, ptr %i.y, align 1, !tbaa !34
  %i.z = load i64, ptr %i.r, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %.0282.i.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !156, !range !154, !noundef !155
  store i8 %i.ac, ptr %i.aa, align 1
  %i.ad = load i8, ptr %i.p, align 8, !tbaa !105, !range !154, !noundef !155
  %i.ae = trunc nuw i8 %i.ad to i1
  %.pre.i.i = load i64, ptr %i.r, align 8, !tbaa !31 ; 3 uses
  br i1 %i.ae, label %bb.h, label %.loopexit.i.i

bb.h:                                             ; preds = %bb.g
  %.not.i14.i = icmp eq i64 %.pre.i.i, -1
  br i1 %.not.i14.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %.01.i.i = phi i64 [ %i.ai, %.lr.ph.i.i ], [ %.pre.i.i, %bb.h ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 %.01.i.i ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !34
  %i.ah = xor i8 %i.ag, -1
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !34
  %i.ai = add nuw i64 %.01.i.i, 1                 ; 2 uses
  %i.aj = load i64, ptr %i.r, align 8, !tbaa !31  ; 2 uses
  %i.ak = add i64 %i.aj, 1
  %i.al = icmp ult i64 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !741

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.h, %bb.g
  %i.am = phi i64 [ %.pre.i.i, %bb.g ], [ -1, %bb.h ], [ %i.aj, %.lr.ph.i.i ]
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.r, align 8, !tbaa !31
  %i.ao = add nuw i64 %.0282.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ao, %.sroa.2.0.copyload
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.g, !llvm.loop !742

bb.i:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIbEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.c)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !216 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !892, !nonnull !155, !align !197 ; 2 uses
  %i.at = icmp ult i64 %.sroa.0896.0.copyload, %.sroa.2.0.copyload
  br i1 %i.at, label %.lr.ph33.i.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph33.i.i:                                     ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br i1 %i.f, label %.lr.ph33.split.us.i.i, label %.lr.ph33.split.i.i

.lr.ph33.split.us.i.i:                            ; preds = %.lr.ph33.i.i, %.loopexit.us.i.i
  %.02932.us.i.i = phi i64 [ %i.cb, %.loopexit.us.i.i ], [ %.sroa.0896.0.copyload, %.lr.ph33.i.i ] ; 3 uses
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !284
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !130 ; 2 uses
  %.not.i.us.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.us.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph33.split.us.i.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.02932.us.i.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !22
  %i.bb = zext i32 %i.ba to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i: ; preds = %bb.j, %.lr.ph33.split.us.i.i
  %i.bc = phi i64 [ %i.bb, %bb.j ], [ %.02932.us.i.i, %.lr.ph33.split.us.i.i ]
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !51
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.sroa.3.0.copyload ; 6 uses
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !104
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.sroa.3.0.copyload
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !92 ; 3 uses
  %i.bi = load i8, ptr %i.av, align 1, !tbaa !287
  %i.bj = load i64, ptr %i.be, align 8, !tbaa !31 ; 2 uses
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.be, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj
  store i8 %i.bi, ptr %i.bl, align 1, !tbaa !34
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !31
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bc
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !156, !range !154, !noundef !155
  store i8 %i.bp, ptr %i.bn, align 1
  %i.bq = load i8, ptr %i.aw, align 8, !tbaa !105, !range !154, !noundef !155
  %i.br = trunc nuw i8 %i.bq to i1
  %.pre37.i.i = load i64, ptr %i.be, align 8, !tbaa !31 ; 3 uses
  br i1 %i.br, label %bb.k, label %.loopexit.us.i.i

bb.k:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i
  %.not34.i.i = icmp eq i64 %.pre37.i.i, -1
  br i1 %.not34.i.i, label %.loopexit.us.i.i, label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %bb.k, %.lr.ph.us.i.i
  %.031.us.i.i = phi i64 [ %i.bv, %.lr.ph.us.i.i ], [ %.pre37.i.i, %bb.k ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.031.us.i.i ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !34
  %i.bu = xor i8 %i.bt, -1
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !34
  %i.bv = add nuw i64 %.031.us.i.i, 1             ; 2 uses
  %i.bw = load i64, ptr %i.be, align 8, !tbaa !31 ; 2 uses
  %i.bx = add i64 %i.bw, 1
  %i.by = icmp ult i64 %i.bv, %i.bx
  br i1 %i.by, label %.lr.ph.us.i.i, label %.loopexit.us.i.i, !llvm.loop !743

.loopexit.us.i.i:                                 ; preds = %.lr.ph.us.i.i, %bb.k, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i
  %i.bz = phi i64 [ %.pre37.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i ], [ -1, %bb.k ], [ %i.bw, %.lr.ph.us.i.i ]
  %i.ca = add i64 %i.bz, 1
  store i64 %i.ca, ptr %i.be, align 8, !tbaa !31
  %i.cb = add nuw i64 %.02932.us.i.i, 1           ; 2 uses
  %exitcond36.not.i.i = icmp eq i64 %i.cb, %.sroa.2.0.copyload
  br i1 %exitcond36.not.i.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %.lr.ph33.split.us.i.i, !llvm.loop !744

.lr.ph33.split.i.i:                               ; preds = %.lr.ph33.i.i, %.loopexit.i16.i
end_hunk_2
begin_hunk_3_@_ZN6duckdb12_GLOBAL__N_125ConstructSortKeyRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE:bb.a
  %.1.i.i39.i = phi i64 [ %i.dzi, %bb.nf ], [ %i.dzk, %bb.ng ] ; 2 uses
  %i.dzm = add nuw nsw i64 %.019.i.i37.i, 1       ; 2 uses
  %exitcond.not.i.i40.i = icmp eq i64 %i.dzm, %i.dzc
  br i1 %exitcond.not.i.i40.i, label %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator6EncodeEPhNS_8string_tE.exit.i41.i, label %.lr.ph.i.i36.i, !llvm.loop !877

_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator6EncodeEPhNS_8string_tE.exit.i41.i: ; preds = %bb.nh, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i842
  %.017.lcssa.i.i42.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i842 ], [ %.1.i.i39.i, %bb.nh ] ; 2 uses
  %i.dzn = add i64 %.017.lcssa.i.i42.i, 1         ; 2 uses
  %i.dzo = getelementptr inbounds nuw i8, ptr %i.dyx, i64 %.017.lcssa.i.i42.i
  store i8 0, ptr %i.dzo, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.dzp = load i8, ptr %i.dyb, align 8, !tbaa !105, !range !154, !noundef !155
  %i.dzq = trunc nuw i8 %i.dzp to i1
  %.pre.i43.i = load i64, ptr %i.dyd, align 8, !tbaa !31 ; 3 uses
  %i.dzr = add i64 %.pre.i43.i, %i.dzn            ; 2 uses
  %i.dzs = icmp ult i64 %.pre.i43.i, %i.dzr
  %or.cond.i44.i = select i1 %i.dzq, i1 %i.dzs, i1 false
  br i1 %or.cond.i44.i, label %.lr.ph.i48.i, label %.loopexit.i45.i

.lr.ph.i48.i:                                     ; preds = %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator6EncodeEPhNS_8string_tE.exit.i41.i, %.lr.ph.i48.i
  %.02.i.i844 = phi i64 [ %i.dzw, %.lr.ph.i48.i ], [ %.pre.i43.i, %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator6EncodeEPhNS_8string_tE.exit.i41.i ] ; 2 uses
  %i.dzt = getelementptr inbounds nuw i8, ptr %i.dyg, i64 %.02.i.i844 ; 2 uses
  %i.dzu = load i8, ptr %i.dzt, align 1, !tbaa !34
  %i.dzv = xor i8 %i.dzu, -1
  store i8 %i.dzv, ptr %i.dzt, align 1, !tbaa !34
  %i.dzw = add nuw i64 %.02.i.i844, 1             ; 2 uses
  %i.dzx = load i64, ptr %i.dyd, align 8, !tbaa !31
  %i.dzy = add i64 %i.dzx, %i.dzn                 ; 2 uses
  %i.dzz = icmp ult i64 %i.dzw, %i.dzy
  br i1 %i.dzz, label %.lr.ph.i48.i, label %.loopexit.i45.i, !llvm.loop !882

.loopexit.i45.i:                                  ; preds = %.lr.ph.i48.i, %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator6EncodeEPhNS_8string_tE.exit.i41.i
  %.pre-phi.i46.i = phi i64 [ %i.dzr, %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator6EncodeEPhNS_8string_tE.exit.i41.i ], [ %i.dzy, %.lr.ph.i48.i ]
  store i64 %.pre-phi.i46.i, ptr %i.dyd, align 8, !tbaa !31
  br label %bb.ni

bb.ni:                                            ; preds = %.loopexit.i45.i, %bb.ne
  %i.eaa = add nuw i64 %.0333.i.i840, 1           ; 2 uses
  %exitcond.not.i47.i = icmp eq i64 %i.eaa, %.sroa.21035.0.copyload
  br i1 %exitcond.not.i47.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.nd, !llvm.loop !883

bb.nj:                                            ; preds = %bb.nb, %bb.na
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.dtg)
  %i.eab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eac = load ptr, ptr %i.eab, align 8, !tbaa !216
  %i.ead = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eae = load ptr, ptr %i.ead, align 8, !tbaa !892, !nonnull !155, !align !197
  %i.eaf = icmp ult i64 %.sroa.01034.0.copyload, %.sroa.21035.0.copyload
  br i1 %i.eaf, label %.lr.ph41.i.i834, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph41.i.i834:                                  ; preds = %bb.nj
  %i.eag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eah = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.eai = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.eaj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eak = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.eal = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.nk

bb.nk:                                            ; preds = %bb.nq, %.lr.ph41.i.i834
  %.03440.i.i835 = phi i64 [ %.sroa.01034.0.copyload, %.lr.ph41.i.i834 ], [ %i.ecr, %bb.nq ] ; 4 uses
  %i.eam = select i1 %i.dtj, i64 %.sroa.31036.0.copyload, i64 %.03440.i.i835 ; 2 uses
  %i.ean = load ptr, ptr %i.dtg, align 8, !tbaa !284
  %i.eao = load ptr, ptr %i.ean, align 8, !tbaa !130 ; 2 uses
  %.not.i.i50.i = icmp eq ptr %i.eao, null
  br i1 %.not.i.i50.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.i, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.eap = getelementptr inbounds nuw [4 x i8], ptr %i.eao, i64 %.03440.i.i835
  %i.eaq = load i32, ptr %i.eap, align 4, !tbaa !22
  %i.ear = zext i32 %i.eaq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.i: ; preds = %bb.nl, %bb.nk
  %i.eas = phi i64 [ %i.ear, %bb.nl ], [ %.03440.i.i835, %bb.nk ] ; 3 uses
  %i.eat = load ptr, ptr %i.eae, align 8, !tbaa !51
  %i.eau = getelementptr inbounds nuw [8 x i8], ptr %i.eat, i64 %i.eam ; 8 uses
  %i.eav = load ptr, ptr %i.eag, align 8, !tbaa !104
  %i.eaw = getelementptr inbounds nuw [8 x i8], ptr %i.eav, i64 %i.eam
  %i.eax = load ptr, ptr %i.eaw, align 8, !tbaa !92 ; 4 uses
  %i.eay = load ptr, ptr %i.dth, align 8, !tbaa !131 ; 2 uses
  %.not.i36.i.i836 = icmp eq ptr %i.eay, null
  br i1 %.not.i36.i.i836, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i54.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i52.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i52.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.i
  %i.eaz = lshr i64 %i.eas, 6
  %i.eba = and i64 %i.eas, 63
  %i.ebb = getelementptr inbounds nuw [8 x i8], ptr %i.eay, i64 %i.eaz
  %i.ebc = load i64, ptr %i.ebb, align 8, !tbaa !31
  %i.ebd = shl nuw i64 1, %i.eba
  %i.ebe = and i64 %i.ebc, %i.ebd
  %.not.i53.i = icmp eq i64 %i.ebe, 0
  br i1 %.not.i53.i, label %bb.nm, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i54.i

bb.nm:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i52.i
  %i.ebf = load i8, ptr %i.eah, align 8, !tbaa !288
  %i.ebg = load i64, ptr %i.eau, align 8, !tbaa !31 ; 2 uses
  %i.ebh = add i64 %i.ebg, 1
  store i64 %i.ebh, ptr %i.eau, align 8, !tbaa !31
  %i.ebi = getelementptr inbounds nuw i8, ptr %i.eax, i64 %i.ebg
  store i8 %i.ebf, ptr %i.ebi, align 1, !tbaa !34
  br label %bb.nq

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i54.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i52.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.i
  %i.ebj = load i8, ptr %i.eai, align 1, !tbaa !287
  %i.ebk = load i64, ptr %i.eau, align 8, !tbaa !31 ; 2 uses
  %i.ebl = add i64 %i.ebk, 1
  store i64 %i.ebl, ptr %i.eau, align 8, !tbaa !31
  %i.ebm = getelementptr inbounds nuw i8, ptr %i.eax, i64 %i.ebk
  store i8 %i.ebj, ptr %i.ebm, align 1, !tbaa !34
  %i.ebn = load i64, ptr %i.eau, align 8, !tbaa !31
  %i.ebo = getelementptr inbounds nuw i8, ptr %i.eax, i64 %i.ebn ; 3 uses
  %i.ebp = getelementptr inbounds nuw [16 x i8], ptr %i.eac, i64 %i.eas ; 2 uses
  %.sroa.0.0.copyload.i55.i = load i64, ptr %i.ebp, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i56.i = getelementptr inbounds nuw i8, ptr %i.ebp, i64 8
  %.sroa.2.0.copyload.i57.i = load ptr, ptr %.sroa.2.0..sroa_idx.i56.i, align 8, !tbaa !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.0.0.copyload.i55.i, ptr %7, align 8
  store ptr %.sroa.2.0.copyload.i57.i, ptr %i.eaj, align 8
  %i.ebq = trunc i64 %.sroa.0.0.copyload.i55.i to i32 ; 2 uses
  %i.ebr = icmp ult i32 %i.ebq, 13
  %i.ebs = select i1 %i.ebr, ptr %i.eak, ptr %.sroa.2.0.copyload.i57.i
  %i.ebt = and i64 %.sroa.0.0.copyload.i55.i, 4294967295
  %.not.i37.i.i837 = icmp eq i32 %i.ebq, 0
  br i1 %.not.i37.i.i837, label %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator6EncodeEPhNS_8string_tE.exit.i63.i, label %.lr.ph.i.i58.i

.lr.ph.i.i58.i:                                   ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i54.i, %bb.np
  %.019.i.i59.i = phi i64 [ %i.ecd, %bb.np ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i54.i ] ; 2 uses
  %.01718.i.i60.i = phi i64 [ %.1.i.i61.i, %bb.np ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i54.i ] ; 4 uses
  %i.ebu = getelementptr inbounds nuw i8, ptr %i.ebs, i64 %.019.i.i59.i ; 2 uses
  %i.ebv = load i8, ptr %i.ebu, align 1, !tbaa !34 ; 2 uses
  %i.ebw = icmp ult i8 %i.ebv, 2
  br i1 %i.ebw, label %bb.nn, label %bb.no

bb.nn:                                            ; preds = %.lr.ph.i.i58.i
  %i.ebx = getelementptr inbounds nuw i8, ptr %i.ebo, i64 %.01718.i.i60.i ; 2 uses
  store i8 1, ptr %i.ebx, align 1, !tbaa !34
  %i.eby = load i8, ptr %i.ebu, align 1, !tbaa !34
  %i.ebz = add i64 %.01718.i.i60.i, 2
  %i.eca = getelementptr i8, ptr %i.ebx, i64 1
  store i8 %i.eby, ptr %i.eca, align 1, !tbaa !34
  br label %bb.np

bb.no:                                            ; preds = %.lr.ph.i.i58.i
  %i.ecb = add i64 %.01718.i.i60.i, 1
  %i.ecc = getelementptr inbounds nuw i8, ptr %i.ebo, i64 %.01718.i.i60.i
  store i8 %i.ebv, ptr %i.ecc, align 1, !tbaa !34
  br label %bb.np

bb.np:                                            ; preds = %bb.no, %bb.nn
  %.1.i.i61.i = phi i64 [ %i.ebz, %bb.nn ], [ %i.ecb, %bb.no ] ; 2 uses
  %i.ecd = add nuw nsw i64 %.019.i.i59.i, 1       ; 2 uses
  %exitcond.not.i.i62.i = icmp eq i64 %i.ecd, %i.ebt
  br i1 %exitcond.not.i.i62.i, label %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator6EncodeEPhNS_8string_tE.exit.i63.i, label %.lr.ph.i.i58.i, !llvm.loop !877

_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator6EncodeEPhNS_8string_tE.exit.i63.i: ; preds = %bb.np, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i54.i
  %.017.lcssa.i.i64.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i54.i ], [ %.1.i.i61.i, %bb.np ] ; 2 uses
  %i.ece = add i64 %.017.lcssa.i.i64.i, 1         ; 2 uses
  %i.ecf = getelementptr inbounds nuw i8, ptr %i.ebo, i64 %.017.lcssa.i.i64.i
  store i8 0, ptr %i.ecf, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ecg = load i8, ptr %i.eal, align 8, !tbaa !105, !range !154, !noundef !155
  %i.ech = trunc nuw i8 %i.ecg to i1
  %.pre.i65.i = load i64, ptr %i.eau, align 8, !tbaa !31 ; 3 uses
  %i.eci = add i64 %.pre.i65.i, %i.ece            ; 2 uses
  %i.ecj = icmp ult i64 %.pre.i65.i, %i.eci
  %or.cond.i66.i = select i1 %i.ech, i1 %i.ecj, i1 false
  br i1 %or.cond.i66.i, label %.lr.ph.i70.i, label %.loopexit.i67.i

.lr.ph.i70.i:                                     ; preds = %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator6EncodeEPhNS_8string_tE.exit.i63.i, %.lr.ph.i70.i
  %.039.i.i838 = phi i64 [ %i.ecn, %.lr.ph.i70.i ], [ %.pre.i65.i, %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator6EncodeEPhNS_8string_tE.exit.i63.i ] ; 2 uses
  %i.eck = getelementptr inbounds nuw i8, ptr %i.eax, i64 %.039.i.i838 ; 2 uses
  %i.ecl = load i8, ptr %i.eck, align 1, !tbaa !34
  %i.ecm = xor i8 %i.ecl, -1
  store i8 %i.ecm, ptr %i.eck, align 1, !tbaa !34
  %i.ecn = add nuw i64 %.039.i.i838, 1            ; 2 uses
  %i.eco = load i64, ptr %i.eau, align 8, !tbaa !31
  %i.ecp = add i64 %i.eco, %i.ece                 ; 2 uses
  %i.ecq = icmp ult i64 %i.ecn, %i.ecp
  br i1 %i.ecq, label %.lr.ph.i70.i, label %.loopexit.i67.i, !llvm.loop !884

.loopexit.i67.i:                                  ; preds = %.lr.ph.i70.i, %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator6EncodeEPhNS_8string_tE.exit.i63.i
  %.pre-phi.i68.i = phi i64 [ %i.eci, %_ZN6duckdb12_GLOBAL__N_119SortKeyBlobOperator6EncodeEPhNS_8string_tE.exit.i63.i ], [ %i.ecp, %.lr.ph.i70.i ]
  store i64 %.pre-phi.i68.i, ptr %i.eau, align 8, !tbaa !31
  br label %bb.nq

bb.nq:                                            ; preds = %.loopexit.i67.i, %bb.nm
  %i.ecr = add nuw i64 %.03440.i.i835, 1          ; 2 uses
  %exitcond.not.i69.i = icmp eq i64 %i.ecr, %.sroa.21035.0.copyload
  br i1 %exitcond.not.i69.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.nk, !llvm.loop !885

bb.nr:                                            ; preds = %bb.a
  %.sroa.01060.0.copyload = load i64, ptr %1, align 8, !tbaa !31 ; 3 uses
  %.sroa.21061.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.21061.0.copyload = load i64, ptr %.sroa.21061.0..sroa_idx, align 8, !tbaa !31 ; 3 uses
  %.sroa.31062.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.31062.0.copyload = load i64, ptr %.sroa.31062.0..sroa_idx, align 8, !tbaa !31 ; 3 uses
  %.sroa.41063.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.41063.0.copyload = load i8, ptr %.sroa.41063.0..sroa_idx, align 8, !tbaa !156
  %.sroa.51064.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 25
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ecs = trunc nuw i8 %.sroa.41063.0.copyload to i1 ; 3 uses
  %i.ect = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ecu = load ptr, ptr %i.ect, align 8, !tbaa !892, !nonnull !155, !align !197
  %i.ecv = icmp ult i64 %.sroa.01060.0.copyload, %.sroa.21061.0.copyload
  br i1 %i.ecv, label %.lr.ph1261, label %._crit_edge

.lr.ph1261:                                       ; preds = %bb.nr
  %i.ecw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ecx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ecy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ecz = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.eda = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.edb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.edc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.41068.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.51069.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.61070.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.ns

._crit_edge:                                      ; preds = %.loopexit, %bb.nr
  br i1 %i.ecs, label %_ZN6duckdb12_GLOBAL__N_122ConstructSortKeyStructERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.nx

bb.ns:                                            ; preds = %.lr.ph1261, %.loopexit
  %.0.i1259 = phi i64 [ %.sroa.01060.0.copyload, %.lr.ph1261 ], [ %i.eec, %.loopexit ] ; 6 uses
  %i.edd = select i1 %i.ecs, i64 %.sroa.31062.0.copyload, i64 %.0.i1259 ; 2 uses
  %i.ede = load ptr, ptr %i.ecw, align 8, !tbaa !284
  %i.edf = load ptr, ptr %i.ede, align 8, !tbaa !130 ; 2 uses
  %.not.i883 = icmp eq ptr %i.edf, null
  br i1 %.not.i883, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.edg = getelementptr inbounds nuw [4 x i8], ptr %i.edf, i64 %.0.i1259
  %i.edh = load i32, ptr %i.edg, align 4, !tbaa !22
  %i.edi = zext i32 %i.edh to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.ns, %bb.nt
  %i.edj = phi i64 [ %i.edi, %bb.nt ], [ %.0.i1259, %bb.ns ] ; 2 uses
  %i.edk = load ptr, ptr %i.ecu, align 8, !tbaa !51
  %i.edl = getelementptr inbounds nuw [8 x i8], ptr %i.edk, i64 %i.edd ; 2 uses
  %i.edm = load ptr, ptr %i.ecx, align 8, !tbaa !104
  %i.edn = getelementptr inbounds nuw [8 x i8], ptr %i.edm, i64 %i.edd
  %i.edo = load ptr, ptr %i.edn, align 8, !tbaa !92
  %i.edp = load ptr, ptr %i.ecy, align 8, !tbaa !131 ; 2 uses
  %.not.i881 = icmp eq ptr %i.edp, null
  br i1 %.not.i881, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.edq = lshr i64 %i.edj, 6
  %i.edr = and i64 %i.edj, 63
  %i.eds = getelementptr inbounds nuw [8 x i8], ptr %i.edp, i64 %i.edq
  %i.edt = load i64, ptr %i.eds, align 8, !tbaa !31
  %i.edu = shl nuw i64 1, %i.edr
  %i.edv = and i64 %i.edt, %i.edu
  %.not1113 = icmp eq i64 %i.edv, 0
  br i1 %.not1113, label %bb.nu, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  br label %bb.nu

bb.nu:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %.sink.in = phi ptr [ %i.eda, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %i.ecz, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %.sink = load i8, ptr %.sink.in, align 1, !tbaa !34
  %i.edw = load i64, ptr %i.edl, align 8, !tbaa !31 ; 2 uses
  %i.edx = add i64 %i.edw, 1
  store i64 %i.edx, ptr %i.edl, align 8, !tbaa !31
  %i.edy = getelementptr inbounds nuw i8, ptr %i.edo, i64 %i.edw
  store i8 %.sink, ptr %i.edy, align 1, !tbaa !34
  br i1 %i.ecs, label %bb.nv, label %.loopexit

bb.nv:                                            ; preds = %bb.nu
  %.val34.i = load ptr, ptr %i.edb, align 8, !tbaa !283 ; 2 uses
  %.val32.i = load ptr, ptr %i.edc, align 8, !tbaa !283 ; 2 uses
  %.not11141256 = icmp eq ptr %.val34.i, %.val32.i
  br i1 %.not11141256, label %.loopexit, label %.lr.ph1258

.lr.ph1258:                                       ; preds = %bb.nv
  %i.edz = add nuw i64 %.0.i1259, 1
  br label %bb.nw

bb.nw:                                            ; preds = %.lr.ph1258, %bb.nw
  %.sroa.01073.01257 = phi ptr [ %.val34.i, %.lr.ph1258 ], [ %i.eeb, %bb.nw ] ; 2 uses
  %.val42.i = load ptr, ptr %.sroa.01073.01257, align 8, !tbaa !42 ; 2 uses
  %i.eea = tail call fastcc noundef nonnull align 8 dereferenceable(122) ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_ELb1EEdeEv(ptr %.val42.i), !inline_history !886 ; 0 uses
  store i64 %.0.i1259, ptr %5, align 8, !tbaa !31
  store i64 %i.edz, ptr %.sroa.41068.0..sroa_idx, align 8, !tbaa !31
  store i64 %.sroa.31062.0.copyload, ptr %.sroa.51069.0..sroa_idx, align 8, !tbaa !31
  store i8 1, ptr %.sroa.61070.0..sroa_idx, align 8, !tbaa !156
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_125ConstructSortKeyRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE(ptr noundef nonnull align 8 dereferenceable(122) %.val42.i, ptr noundef nonnull byval(%"struct.duckdb::(anonymous namespace)::SortKeyChunk") align 8 %5, ptr noundef nonnull align 8 dereferenceable(25) %2), !inline_history !886
  %i.eeb = getelementptr inbounds nuw i8, ptr %.sroa.01073.01257, i64 8 ; 2 uses
  %.not1114 = icmp eq ptr %i.eeb, %.val32.i
  br i1 %.not1114, label %.loopexit, label %bb.nw

.loopexit:                                        ; preds = %bb.nw, %bb.nv, %bb.nu
  %i.eec = add nuw i64 %.0.i1259, 1               ; 2 uses
  %exitcond1405.not = icmp eq i64 %i.eec, %.sroa.21061.0.copyload
  br i1 %exitcond1405.not, label %._crit_edge, label %bb.ns, !llvm.loop !887

bb.nx:                                            ; preds = %._crit_edge
  %i.eed = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val33.i = load ptr, ptr %i.eed, align 8, !tbaa !283 ; 2 uses
  %i.eee = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i = load ptr, ptr %i.eee, align 8, !tbaa !283 ; 2 uses
  %.not11121262 = icmp eq ptr %.val33.i, %.val.i
  br i1 %.not11121262, label %_ZN6duckdb12_GLOBAL__N_122ConstructSortKeyStructERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %.lr.ph1265

.lr.ph1265:                                       ; preds = %bb.nx
  %.sroa.51051.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.71056.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 25
  br label %bb.ny

bb.ny:                                            ; preds = %.lr.ph1265, %bb.ny
  %.sroa.01066.01263 = phi ptr [ %.val33.i, %.lr.ph1265 ], [ %i.eeg, %bb.ny ] ; 2 uses
  %.val41.i = load ptr, ptr %.sroa.01066.01263, align 8, !tbaa !42 ; 2 uses
  %i.eef = tail call fastcc noundef nonnull align 8 dereferenceable(122) ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_ELb1EEdeEv(ptr %.val41.i), !inline_history !886 ; 0 uses
  store i64 %.sroa.01060.0.copyload, ptr %6, align 8, !tbaa !31
  store i64 %.sroa.21061.0.copyload, ptr %.sroa.51051.0..sroa_idx, align 8, !tbaa !31
  store i64 %.sroa.31062.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !31
  store i8 0, ptr %.sroa.71056.0..sroa_idx, align 8, !tbaa !156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.51064.0..sroa_idx, i64 7, i1 false)
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_125ConstructSortKeyRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE(ptr noundef nonnull align 8 dereferenceable(122) %.val41.i, ptr noundef nonnull byval(%"struct.duckdb::(anonymous namespace)::SortKeyChunk") align 8 %6, ptr noundef nonnull align 8 dereferenceable(25) %2), !inline_history !886
  %i.eeg = getelementptr inbounds nuw i8, ptr %.sroa.01066.01263, i64 8 ; 2 uses
  %.not1112 = icmp eq ptr %i.eeg, %.val.i
  br i1 %.not1112, label %_ZN6duckdb12_GLOBAL__N_122ConstructSortKeyStructERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.ny

_ZN6duckdb12_GLOBAL__N_122ConstructSortKeyStructERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit: ; preds = %bb.ny, %bb.nx, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

bb.nz:                                            ; preds = %bb.a
  %.sroa.01079.0.copyload = load i64, ptr %1, align 8, !tbaa !31 ; 2 uses
  %.sroa.21080.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.21080.0.copyload = load i64, ptr %.sroa.21080.0..sroa_idx, align 8, !tbaa !31 ; 2 uses
  %.sroa.31081.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.31081.0.copyload = load i64, ptr %.sroa.31081.0..sroa_idx, align 8, !tbaa !31
  %.sroa.41082.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.41082.0.copyload = load i8, ptr %.sroa.41082.0..sroa_idx, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.eeh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eei = load ptr, ptr %i.eeh, align 8, !tbaa !892, !nonnull !155, !align !197
  %i.eej = icmp ult i64 %.sroa.01079.0.copyload, %.sroa.21080.0.copyload
  br i1 %i.eej, label %.lr.ph1255, label %_ZN6duckdb12_GLOBAL__N_120ConstructSortKeyListINS0_16SortKeyListEntryEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph1255:                                       ; preds = %bb.nz
  %i.eek = trunc nuw i8 %.sroa.41082.0.copyload to i1
  %i.eel = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.eem = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.een = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eeo = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.eep = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.eeq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eer = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ees = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.41085.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.51086.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.61087.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.eet = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.oa

bb.oa:                                            ; preds = %.lr.ph1255, %bb.of
  %.0.i8701254 = phi i64 [ %.sroa.01079.0.copyload, %.lr.ph1255 ], [ %i.egc, %bb.of ] ; 4 uses
  %i.eeu = select i1 %i.eek, i64 %.sroa.31081.0.copyload, i64 %.0.i8701254 ; 3 uses
  %i.eev = load ptr, ptr %i.eel, align 8, !tbaa !284
  %i.eew = load ptr, ptr %i.eev, align 8, !tbaa !130 ; 2 uses
  %.not.i887 = icmp eq ptr %i.eew, null
  br i1 %.not.i887, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit888, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.eex = getelementptr inbounds nuw [4 x i8], ptr %i.eew, i64 %.0.i8701254
  %i.eey = load i32, ptr %i.eex, align 4, !tbaa !22
  %i.eez = zext i32 %i.eey to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit888

_ZNK6duckdb15SelectionVector9get_indexEm.exit888: ; preds = %bb.oa, %bb.ob
  %i.efa = phi i64 [ %i.eez, %bb.ob ], [ %.0.i8701254, %bb.oa ] ; 3 uses
  %i.efb = load ptr, ptr %i.eei, align 8, !tbaa !51
  %i.efc = getelementptr inbounds nuw [8 x i8], ptr %i.efb, i64 %i.eeu ; 4 uses
  %i.efd = load ptr, ptr %i.eem, align 8, !tbaa !104
  %i.efe = getelementptr inbounds nuw [8 x i8], ptr %i.efd, i64 %i.eeu
  %i.eff = load ptr, ptr %i.efe, align 8, !tbaa !92 ; 2 uses
  %i.efg = load ptr, ptr %i.een, align 8, !tbaa !131 ; 2 uses
  %.not.i884 = icmp eq ptr %i.efg, null
  br i1 %.not.i884, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit886.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit886

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit886: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit888
  %i.efh = lshr i64 %i.efa, 6
  %i.efi = and i64 %i.efa, 63
  %i.efj = getelementptr inbounds nuw [8 x i8], ptr %i.efg, i64 %i.efh
  %i.efk = load i64, ptr %i.efj, align 8, !tbaa !31
  %i.efl = shl nuw i64 1, %i.efi
  %i.efm = and i64 %i.efk, %i.efl
  %.not1111 = icmp eq i64 %i.efm, 0
  br i1 %.not1111, label %bb.oc, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit886.thread

bb.oc:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit886
  %i.efn = load i8, ptr %i.eeo, align 8, !tbaa !288
  br label %bb.of

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit886.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit888, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit886
  %i.efo = load i8, ptr %i.eep, align 1, !tbaa !287
  %i.efp = load i64, ptr %i.efc, align 8, !tbaa !31 ; 2 uses
  %i.efq = add i64 %i.efp, 1
  store i64 %i.efq, ptr %i.efc, align 8, !tbaa !31
  %i.efr = getelementptr inbounds nuw i8, ptr %i.eff, i64 %i.efp
  store i8 %i.efo, ptr %i.efr, align 1, !tbaa !34
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.eel)
  %i.efs = load ptr, ptr %i.eeq, align 8, !tbaa !216
  %i.eft = getelementptr inbounds nuw [16 x i8], ptr %i.efs, i64 %i.efa ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eft, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !31 ; 2 uses
  %.not.i871 = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not.i871, label %bb.oe, label %bb.od

bb.od:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit886.thread
  %.sroa.0.0.copyload.i = load i64, ptr %i.eft, align 8, !tbaa !31 ; 2 uses
  %i.efu = add i64 %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %.val30.i = load ptr, ptr %i.eer, align 8, !tbaa !45
  %.val31.i = load ptr, ptr %i.ees, align 8, !tbaa !46
  %i.efv = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr %.val30.i, ptr %.val31.i, i64 noundef 0), !inline_history !888
  %.val.i872 = load ptr, ptr %i.efv, align 8, !tbaa !42 ; 2 uses
  %i.efw = tail call fastcc noundef nonnull align 8 dereferenceable(122) ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_ELb1EEdeEv(ptr %.val.i872), !inline_history !888 ; 0 uses
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8, !tbaa !31
  store i64 %i.efu, ptr %.sroa.41085.0..sroa_idx, align 8, !tbaa !31
  store i64 %i.eeu, ptr %.sroa.51086.0..sroa_idx, align 8, !tbaa !31
  store i8 1, ptr %.sroa.61087.0..sroa_idx, align 8, !tbaa !156
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_125ConstructSortKeyRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE(ptr noundef nonnull align 8 dereferenceable(122) %.val.i872, ptr noundef nonnull byval(%"struct.duckdb::(anonymous namespace)::SortKeyChunk") align 8 %4, ptr noundef nonnull align 8 dereferenceable(25) %2), !inline_history !888
  br label %bb.oe

bb.oe:                                            ; preds = %bb.od, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit886.thread
  %i.efx = load i8, ptr %i.eet, align 8, !tbaa !105, !range !154, !noundef !155
  %i.efy = sub nsw i8 0, %i.efx
  br label %bb.of

bb.of:                                            ; preds = %bb.oe, %bb.oc
  %.sink1770 = phi i8 [ %i.efy, %bb.oe ], [ %i.efn, %bb.oc ]
  %i.efz = load i64, ptr %i.efc, align 8, !tbaa !31 ; 2 uses
  %i.ega = add i64 %i.efz, 1
  store i64 %i.ega, ptr %i.efc, align 8, !tbaa !31
  %i.egb = getelementptr inbounds nuw i8, ptr %i.eff, i64 %i.efz
  store i8 %.sink1770, ptr %i.egb, align 1, !tbaa !34
  %i.egc = add i64 %.0.i8701254, 1                ; 2 uses
  %exitcond1404.not = icmp eq i64 %i.egc, %.sroa.21080.0.copyload
  br i1 %exitcond1404.not, label %_ZN6duckdb12_GLOBAL__N_120ConstructSortKeyListINS0_16SortKeyListEntryEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit, label %bb.oa, !llvm.loop !889

_ZN6duckdb12_GLOBAL__N_120ConstructSortKeyListINS0_16SortKeyListEntryEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit: ; preds = %bb.of, %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedConstructSortKeyINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

bb.og:                                            ; preds = %bb.a
  %.sroa.01094.0.copyload = load i64, ptr %1, align 8, !tbaa !31 ; 2 uses
  %.sroa.21095.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.21095.0.copyload = load i64, ptr %.sroa.21095.0..sroa_idx, align 8, !tbaa !31 ; 2 uses
  %.sroa.31096.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.31096.0.copyload = load i64, ptr %.sroa.31096.0..sroa_idx, align 8, !tbaa !31
  %.sroa.41097.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.41097.0.copyload = load i8, ptr %.sroa.41097.0..sroa_idx, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.egd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ege = load ptr, ptr %i.egd, align 8, !tbaa !892, !nonnull !155, !align !197
  %i.egf = icmp ult i64 %.sroa.01094.0.copyload, %.sroa.21095.0.copyload
  br i1 %i.egf, label %.lr.ph, label %_ZN6duckdb12_GLOBAL__N_120ConstructSortKeyListINS0_17SortKeyArrayEntryEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_20SortKeyConstructInfoE.exit

.lr.ph:                                           ; preds = %bb.og
  %i.egg = trunc nuw i8 %.sroa.41097.0.copyload to i1
  %i.egh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.egi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.egj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.egk = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.egl = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.egm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.egn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.41100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.51101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.61102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ego = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.oh

bb.oh:                                            ; preds = %.lr.ph, %bb.ol
  %.0.i8731253 = phi i64 [ %.sroa.01094.0.copyload, %.lr.ph ], [ %i.ehw, %bb.ol ] ; 4 uses
  %i.egp = select i1 %i.egg, i64 %.sroa.31096.0.copyload, i64 %.0.i8731253 ; 3 uses
  %i.egq = load ptr, ptr %i.egh, align 8, !tbaa !284
  %i.egr = load ptr, ptr %i.egq, align 8, !tbaa !130 ; 2 uses
  %.not.i894 = icmp eq ptr %i.egr, null
  br i1 %.not.i894, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit895, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.egs = getelementptr inbounds nuw [4 x i8], ptr %i.egr, i64 %.0.i8731253
  %i.egt = load i32, ptr %i.egs, align 4, !tbaa !22
  %i.egu = zext i32 %i.egt to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit895

_ZNK6duckdb15SelectionVector9get_indexEm.exit895: ; preds = %bb.oh, %bb.oi
  %i.egv = phi i64 [ %i.egu, %bb.oi ], [ %.0.i8731253, %bb.oh ] ; 3 uses
  %i.egw = load ptr, ptr %i.ege, align 8, !tbaa !51
  %i.egx = getelementptr inbounds nuw [8 x i8], ptr %i.egw, i64 %i.egp ; 4 uses
  %i.egy = load ptr, ptr %i.egi, align 8, !tbaa !104
  %i.egz = getelementptr inbounds nuw [8 x i8], ptr %i.egy, i64 %i.egp
  %i.eha = load ptr, ptr %i.egz, align 8, !tbaa !92 ; 2 uses
  %i.ehb = load ptr, ptr %i.egj, align 8, !tbaa !131 ; 2 uses
  %.not.i891 = icmp eq ptr %i.ehb, null
  br i1 %.not.i891, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit895
  %i.ehc = lshr i64 %i.egv, 6
  %i.ehd = and i64 %i.egv, 63
  %i.ehe = getelementptr inbounds nuw [8 x i8], ptr %i.ehb, i64 %i.ehc
  %i.ehf = load i64, ptr %i.ehe, align 8, !tbaa !31
  %i.ehg = shl nuw i64 1, %i.ehd
  %i.ehh = and i64 %i.ehf, %i.ehg
  %.not = icmp eq i64 %i.ehh, 0
  br i1 %.not, label %bb.oj, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit895, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893
  br label %bb.oj

bb.oj:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893.thread
  %.sink1775.in = phi ptr [ %i.egl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893.thread ], [ %i.egk, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit893 ]
  %.sink1775 = load i8, ptr %.sink1775.in, align 1, !tbaa !34
  %i.ehi = load i64, ptr %i.egx, align 8, !tbaa !31 ; 2 uses
  %i.ehj = add i64 %i.ehi, 1
  store i64 %i.ehj, ptr %i.egx, align 8, !tbaa !31
  %i.ehk = getelementptr inbounds nuw i8, ptr %i.eha, i64 %i.ehi
  store i8 %.sink1775, ptr %i.ehk, align 1, !tbaa !34
  %.val32.i876 = load ptr, ptr %0, align 8, !tbaa !76
  %i.ehl = getelementptr inbounds nuw i8, ptr %.val32.i876, i64 8
end_hunk_3
