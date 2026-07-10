inline.NumInlined: 11767
inline.NumDeleted: 5033
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6duckdb15WindowTokenTree8FinishedEv:bb.a
  call void @_ZdlPv(ptr noundef nonnull %i.fv) #30
  br label %_ZN6duckdb19WindowMergeSortTree8FinishedEv.exit

_ZN6duckdb19WindowMergeSortTree8FinishedEv.exit:  ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_14LocalSinkStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit.i, %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i
  %.not.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZN6duckdb19WindowMergeSortTree8FinishedEv.exit
  call void @_ZdlPv(ptr noundef nonnull %i.ff) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN6duckdb19WindowMergeSortTree8FinishedEv.exit, %bb.at
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(112) ptr @_ZNK6duckdb10unique_ptrINS_13MergeSortTreeImmSt4lessImELm32ELm32EEESt14default_deleteIS4_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1031   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_13MergeSortTreeImmSt4lessImELm32ELm32EEESt14default_deleteIS4_ELb1EE13AssertNotNullEb.exit, !prof !193

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !156    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_13MergeSortTreeImmSt4lessImELm32ELm32EEESt14default_deleteIS4_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(112) ptr @_ZNK6duckdb10unique_ptrINS_13MergeSortTreeIjjSt4lessIjELm32ELm32EEESt14default_deleteIS4_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1019   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_13MergeSortTreeIjjSt4lessIjELm32ELm32EEESt14default_deleteIS4_ELb1EE13AssertNotNullEb.exit, !prof !193

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !156    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_13MergeSortTreeIjjSt4lessIjELm32ELm32EEESt14default_deleteIS4_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21WindowValueLocalState4SinkERNS_16ExecutionContextERNS_9DataChunkES4_mRNS_17OperatorSinkInputE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %5, align 8, !tbaa !244, !nonnull !42, !align !232 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !465  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1424
  %i.h = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !995, !nonnull !42, !align !232 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !135
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !408  ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43 = icmp eq i64 %i.e, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.q = load ptr, ptr %6, align 8, !tbaa !960
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !389  ; 2 uses
  %.not.i38 = icmp eq ptr %i.r, null
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  br i1 %.not.i38, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.h
  %i.t = phi i64 [ %8, %bb.h ], [ 0, %.lr.ph ]    ; 2 uses
  %.042.us = phi i64 [ %.1.us, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %.03441.us = phi i32 [ %7, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %i.u = lshr i64 %i.t, 6
  %i.v = and i64 %i.t, 63
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.u
  %i.x = load i64, ptr %i.w, align 8, !tbaa !252
  %i.y = shl nuw i64 1, %i.v
  %i.z = and i64 %i.y, %i.x
  %.not40.us = icmp eq i64 %i.z, 0
  br i1 %.not40.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.aa = add i64 %.042.us, 1
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !389
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.042.us
  store i32 %.03441.us, ptr %i.ac, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.1.us = phi i64 [ %i.aa, %bb.g ], [ %.042.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %7 = add i32 %.03441.us, 1                      ; 2 uses
  %8 = zext i32 %7 to i64                         ; 2 uses
  %i.ad = icmp ugt i64 %i.e, %8
  br i1 %i.ad, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %._crit_edge, !llvm.loop !1434

._crit_edge:                                      ; preds = %bb.l, %bb.h, %bb.f
  %.0.lcssa = phi i64 [ 0, %bb.f ], [ %.1.us, %bb.h ], [ %.1, %bb.l ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 344
  br label %bb.m

bb.i:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.j:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph, %bb.l
  %i.ah = phi i64 [ %10, %bb.l ], [ 0, %.lr.ph ]
  %.042 = phi i64 [ %.1, %bb.l ], [ 0, %.lr.ph ]  ; 3 uses
  %.03441 = phi i32 [ %9, %bb.l ], [ 0, %.lr.ph ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 6
  %i.am = and i64 %i.ak, 63
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.al
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !252
  %i.ap = shl nuw i64 1, %i.am
  %i.aq = and i64 %i.ap, %i.ao
  %.not40 = icmp eq i64 %i.aq, 0
  br i1 %.not40, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ar = add i64 %.042, 1
  %i.as = load ptr, ptr %i.s, align 8, !tbaa !389
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.042
  store i32 %.03441, ptr %i.at, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %.1 = phi i64 [ %i.ar, %bb.k ], [ %.042, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %9 = add i32 %.03441, 1                         ; 2 uses
  %10 = zext i32 %9 to i64                        ; 2 uses
  %i.au = icmp ugt i64 %i.e, %10
  br i1 %i.au, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %._crit_edge, !llvm.loop !1434

bb.m:                                             ; preds = %._crit_edge, %bb.e, %bb.d
  %.sroa.039.0 = phi ptr [ null, %bb.e ], [ %i.ae, %._crit_edge ], [ null, %bb.d ]
  %.2 = phi i64 [ 0, %bb.e ], [ %.0.lcssa, %._crit_edge ], [ 0, %bb.d ]
  %i.av = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.n unwind label %bb.ab

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !248, !nonnull !42, !align !232
  invoke void @_ZN6duckdb29WindowMergeSortTreeLocalState4SinkERNS_16ExecutionContextERNS_9DataChunkEmNS_12optional_ptrINS_15SelectionVectorELb1EEEmRNS_14InterruptStateE(ptr noundef nonnull align 8 dereferenceable(152) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %4, ptr %.sroa.039.0, i64 noundef %.2, ptr noundef nonnull align 8 dereferenceable(40) %i.ax)
          to label %bb.o unwind label %bb.ab

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !261 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ba, align 8, !tbaa !305
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !307
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !135
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #29, !inline_history !690
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !135
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #29, !inline_history !690
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !263
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bd, %bb.s ], [ %i.bn, %bb.t ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.u, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !193

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.q, %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !261 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.br, align 8, !tbaa !305
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !307
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !135
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #29, !inline_history !691
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !135
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #29, !inline_history !691
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !263
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.z:                                             ; preds = %bb.x
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.bu, %bb.y ], [ %i.ce, %bb.z ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cf, label %bb.aa, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !193

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #29
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.ad

bb.ab:                                            ; preds = %bb.n, %bb.m
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %bb.j, %bb.ab, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.cg, %bb.ab ], [ %i.ag, %bb.j ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  resume { ptr, i32 } %.pn.pn

bb.ad:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21WindowValueLocalState8FinalizeERNS_16ExecutionContextENS_12optional_ptrINS_16WindowCollectionELb1EEERNS_17OperatorSinkInputE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::optional_ptr.355", align 8 ; 3 uses
  store ptr %2, ptr %4, align 8
  tail call void @_ZN6duckdb24WindowExecutorLocalState8FinalizeERNS_16ExecutionContextENS_12optional_ptrINS_16WindowCollectionELb1EEERNS_17OperatorSinkInputE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull align 8 poison, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !248, !nonnull !42, !align !232
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1051, !nonnull !42, !align !232
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.i = load atomic i8, ptr %i.h seq_cst, align 8
  %.not3.i = icmp eq i8 %i.i, 4
  br i1 %.not3.i, label %_ZN6duckdb29WindowMergeSortTreeLocalState8FinalizeERNS_16ExecutionContextERNS_14InterruptStateE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !1051, !nonnull !42, !align !232
  %i.k = tail call noundef zeroext i1 @_ZN6duckdb19WindowMergeSortTree19TryPrepareSortStageERNS_29WindowMergeSortTreeLocalStateE(ptr noundef nonnull align 8 dereferenceable(240) %i.j, ptr noundef nonnull align 8 dereferenceable(152) %i.c)
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_ZN6duckdb29WindowMergeSortTreeLocalState15ExecuteSortTaskERNS_16ExecutionContextERNS_14InterruptStateE(ptr noundef nonnull align 8 dereferenceable(152) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.e)
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = tail call noundef i32 @sched_yield() #29 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !1051, !nonnull !42, !align !232
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.o = load atomic i8, ptr %i.n seq_cst, align 8
  %.not.i = icmp eq i8 %i.o, 4
  br i1 %.not.i, label %_ZN6duckdb29WindowMergeSortTreeLocalState8FinalizeERNS_16ExecutionContextERNS_14InterruptStateE.exit, label %.lr.ph.i, !llvm.loop !1138

_ZN6duckdb29WindowMergeSortTreeLocalState8FinalizeERNS_16ExecutionContextERNS_14InterruptStateE.exit: ; preds = %bb.e, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1435, !nonnull !42, !align !232
  tail call void @_ZN6duckdb19WindowMergeSortTree5BuildEv(ptr noundef nonnull align 8 dereferenceable(240) %i.q)
  br label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb29WindowMergeSortTreeLocalState8FinalizeERNS_16ExecutionContextERNS_14InterruptStateE.exit, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !402
  %.not10 = icmp eq ptr %i.s, null
  br i1 %.not10, label %bb.g, label %_ZNSt10unique_ptrIN6duckdb12WindowCursorESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1437, !nonnull !42, !align !232
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 232
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1424
  %.not = icmp eq i64 %i.w, -1
  br i1 %.not, label %_ZNSt10unique_ptrIN6duckdb12WindowCursorESt14default_deleteIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNK6duckdb12optional_ptrINS_16WindowCollectionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.x = load ptr, ptr %4, align 8, !tbaa !403
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !1437, !nonnull !42, !align !232
end_hunk_0
