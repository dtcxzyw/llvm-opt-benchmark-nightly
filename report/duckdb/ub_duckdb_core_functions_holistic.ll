Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_holistic?download=true
inline.NumInlined: 37468
inline.NumDeleted: 10738
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_SD_RT0_:bb.a

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !1311
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ag = icmp sgt i64 %.1.i, %.010
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_T0_SE_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1313
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !1299
  %i.ak = load double, ptr %.sroa.03.0.copyload, align 8, !tbaa !1299
  %i.al = fcmp ogt double %i.aj, %i.ak
  br i1 %i.al, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_T0_SE_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.019.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !1311
  %i.an = icmp sgt i64 %.0920.i.i, %.010
  br i1 %i.an, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_T0_SE_T1_T2_.exit, !llvm.loop !82

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_T0_SE_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i
  store <2 x ptr> %i.q, ptr %i.ao, align 8, !tbaa !1295
  %.not = icmp eq i64 %.010, 0
  %i.ap = add nsw i64 %.010, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !5395

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_T0_SE_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_129ApproxQuantileScalarOperation8FinalizeINS_10dtime_tz_tENS0_19ApproxQuantileStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1291
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1275
  tail call void @_ZN14duckdb_tdigest7TDigest7processEv(ptr noundef nonnull align 8 dereferenceable(128) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !487, !nonnull !375, !align !412 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_12FunctionDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !378
  %i.h = load ptr, ptr %0, align 8, !tbaa !1275   ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN6duckdb6vectorIfLb1ESaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 0)
  %i.k = load float, ptr %i.j, align 4, !tbaa !527
  %i.l = fpext float %i.k to double
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1281
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !1278
  %.not.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i, label %bb.d, label %_ZN14duckdb_tdigest7TDigest7isDirtyEv.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1281
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !1278
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1289
  %i.aa = icmp ugt i64 %i.x, %i.z
  br i1 %i.aa, label %_ZN14duckdb_tdigest7TDigest7isDirtyEv.exit.thread.i, label %_ZN14duckdb_tdigest7TDigest8quantileEd.exit

_ZN14duckdb_tdigest7TDigest7isDirtyEv.exit.thread.i: ; preds = %bb.d, %bb.c
  tail call void @_ZN14duckdb_tdigest7TDigest7processEv(ptr noundef nonnull align 8 dereferenceable(128) %i.h)
  br label %_ZN14duckdb_tdigest7TDigest8quantileEd.exit

_ZN14duckdb_tdigest7TDigest8quantileEd.exit:      ; preds = %bb.d, %_ZN14duckdb_tdigest7TDigest7isDirtyEv.exit.thread.i
  %i.ab = tail call noundef double @_ZNK14duckdb_tdigest7TDigest17quantileProcessedEd(ptr noundef nonnull align 8 dereferenceable(128) %i.h, double noundef %i.l)
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_120ApproxQuantileCoding6DecodeIdNS_10dtime_tz_tEEEbRKT_RT0_(double %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.e

bb.e:                                             ; preds = %_ZN14duckdb_tdigest7TDigest8quantileEd.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZN6duckdb6vectorIfLb1ESaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !617
  %i.e = load ptr, ptr %0, align 8, !tbaa !616    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !223
  store i64 %i.i, ptr %i.b, align 8, !tbaa !223
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorIfLb1ESaIfEE3getILb1EEERfm.exit, label %bb.b, !prof !373

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !188    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorIfLb1ESaIfEE3getILb1EEERfm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_120ApproxQuantileCoding6DecodeIdNS_10dtime_tz_tEEEbRKT_RT0_(double %.0.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %2 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %3 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdmEEbT_RT0_b(double noundef %.0.val, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %i.d = and i64 %i.c, 16777215
  %i.e = mul i64 %i.d, -16777216000000
  %i.f = add i64 %i.e, %i.c
  store i64 %i.f, ptr %0, align 8, !tbaa !223
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.g = fcmp uge double %.0.val, 0.000000e+00
  %spec.select.i = sext i1 %i.g to i64
  store i64 %spec.select.i, ptr %i.a, align 8, !tbaa !223
  %5 = fcmp olt double %.0.val, 0.000000e+00
  br i1 %5, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef zeroext 34)
  invoke void @_ZN6duckdb5Value12MinimumValueERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = invoke i64 @_ZNK6duckdb5Value8GetValueINS_10dtime_tz_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  store i64 %i.h, ptr %0, align 8, !tbaa !223
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #30
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.p

bb.g:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn17 = phi { ptr, i32 } [ %i.j, %bb.h ], [ %i.i, %bb.g ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.q

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 34)
  invoke void @_ZN6duckdb5Value12MaximumValueERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.k = invoke i64 @_ZNK6duckdb5Value8GetValueINS_10dtime_tz_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  store i64 %i.k, ptr %0, align 8, !tbaa !223
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #30
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.m, %bb.n ], [ %i.l, %bb.m ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.q

bb.p:                                             ; preds = %bb.f, %bb.l, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %bb.i ], [ %.pn, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  resume { ptr, i32 } %.pn17.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK14duckdb_tdigest7TDigest17quantileProcessedEd(ptr noundef nonnull align 8 dereferenceable(128) %0, double noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = fcmp ogt double %1, 1.000000e+00
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1281
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1278 ; 6 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 4
  switch i64 %i.j, label %bb.d [
    i64 0, label %bb.m
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = load double, ptr %i.f, align 8, !tbaa !1299
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load double, ptr %i.l, align 8, !tbaa !1296 ; 2 uses
  %i.n = fmul double %1, %i.m                     ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !1298 ; 2 uses
  %i.q = fmul double %i.p, 5.000000e-01
  %i.r = fcmp ugt double %i.n, %i.q
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !1300 ; 2 uses
  %i.u = fmul double %i.n, 2.000000e+00
  %i.v = fdiv double %i.u, %i.p
  %i.w = load double, ptr %i.f, align 8, !tbaa !1299
  %i.x = fsub double %i.w, %i.t
  %i.y = tail call double @llvm.fmuladd.f64(double %i.v, double %i.x, double %i.t)
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !439 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !439 ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 3                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEdET_S8_S8_RKT0_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.f, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.ag, %bb.f ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ai = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i, i64 %i.ai ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !440
  %i.al = fcmp olt double %i.ak, %i.n             ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = xor i64 %i.ai, -1
  %i.ao = add nsw i64 %.016.i.i, %i.an
  %.sroa.011.1.i.i = select i1 %i.al, ptr %i.am, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.al, i64 %i.ao, i64 %i.ai ; 2 uses
  %i.ap = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ap, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEdET_S8_S8_RKT0_.exit, !llvm.loop !5396

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEdET_S8_S8_RKT0_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.f
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.aa, %bb.f ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i, i64 8
  %.not = icmp eq ptr %i.aq, %i.ac
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEdET_S8_S8_RKT0_.exit
  %i.ar = ptrtoint ptr %.sroa.011.0.lcssa.i.i to i64
  %i.as = sub i64 %i.ar, %i.ae
  %i.at = ashr exact i64 %i.as, 3
  %i.au = getelementptr inbounds i8, ptr %.sroa.011.0.lcssa.i.i, i64 -8
  %i.av = load double, ptr %i.au, align 8, !tbaa !440
  %i.aw = fsub double %i.n, %i.av                 ; 3 uses
  %i.ax = load double, ptr %.sroa.011.0.lcssa.i.i, align 8, !tbaa !440
  %i.ay = fsub double %i.ax, %i.n                 ; 3 uses
  %i.az = getelementptr [16 x i8], ptr %i.f, i64 %i.at ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -16
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !1299 ; 5 uses
  %i.bc = load double, ptr %i.az, align 8, !tbaa !1299 ; 5 uses
  %i.bd = fcmp ugt double %i.bb, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = fmul double %i.aw, %i.bc
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.ay, double %i.be)
  br label %_ZN14duckdb_tdigest7TDigest15weightedAverageEdddd.exit

bb.i:                                             ; preds = %bb.g
  %i.bg = fmul double %i.bb, %i.ay
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.aw, double %i.bg)
  br label %_ZN14duckdb_tdigest7TDigest15weightedAverageEdddd.exit

_ZN14duckdb_tdigest7TDigest15weightedAverageEdddd.exit: ; preds = %bb.h, %bb.i
  %.sink.i = phi double [ %i.bh, %bb.i ], [ %i.bf, %bb.h ]
  %.sink21.i = phi double [ %i.bb, %bb.i ], [ %i.bc, %bb.h ] ; 2 uses
  %.sink17.i = phi double [ %i.bc, %bb.i ], [ %i.bb, %bb.h ] ; 2 uses
  %i.bi = fadd double %i.aw, %i.ay
  %i.bj = fdiv double %.sink.i, %i.bi             ; 2 uses
  %i.bk = fcmp olt double %.sink21.i, %i.bj
  %i.bl = select i1 %i.bk, double %.sink21.i, double %i.bj ; 2 uses
  %i.bm = fcmp olt double %.sink17.i, %i.bl
  %.sroa.speculated.i12.i = select i1 %i.bm, double %i.bl, double %.sink17.i
end_hunk_0
