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
begin_hunk_1_@_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE10TryNextRunERmS4_:bb.a
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 48
  %.not6 = icmp ult i64 %i.i, %i.p
  br i1 %.not6, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.q = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef 0)
          to label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11LowestLevelEv.exit unwind label %bb.e ; 2 uses

_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11LowestLevelEv.exit: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !356
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !353
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !827
  %i.aa = shl i64 %i.z, 5                         ; 3 uses
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !827
  %i.ab = add i64 %i.aa, -1
  %i.ac = add i64 %i.ab, %i.x
  %i.ad = udiv i64 %i.ac, %i.aa                   ; 2 uses
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !828
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.ae, align 8, !tbaa !817
  store atomic i64 0, ptr %i.c seq_cst, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  resume { ptr, i32 } %i.af

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11LowestLevelEv.exit
  %i.ah = phi i64 [ %i.f, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge ], [ %i.ad, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11LowestLevelEv.exit ]
  %i.ai = phi i64 [ %.pre, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge ], [ 0, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11LowestLevelEv.exit ]
  %.not7 = icmp ult i64 %i.ai, %i.ah
  br i1 %.not7, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load atomic i64, ptr %i.ak seq_cst, align 8
  store i64 %i.al, ptr %1, align 8, !tbaa !252
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !817 ; 2 uses
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.aj, align 8, !tbaa !817
  store i64 %i.am, ptr %2, align 8, !tbaa !252
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.c, %bb.g
  %.0 = phi i1 [ true, %bb.g ], [ false, %bb.c ], [ false, %bb.f ]
  %i.ao = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE8BuildRunEmm(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 13 uses
  %i.d = alloca i64, align 8                      ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::array.1292", align 8  ; 8 uses
  %6 = alloca %"struct.std::array.1273", align 8  ; 11 uses
  %7 = alloca %"struct.std::array.1273", align 8  ; 6 uses
  %8 = alloca %"struct.std::array.1292", align 8  ; 7 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) ; 3 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = add i64 %1, -1
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !356
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !353
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp ugt i64 %1, 1
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.t = add i64 %1, -1                           ; 2 uses
  %i.u = add i64 %1, -2
  %xtraiter = and i64 %i.t, 7                     ; 3 uses
  %i.v = icmp ult i64 %i.u, 7
  br i1 %i.v, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.t, -8
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.w = shl i64 %.050134, 35
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.050134.epil.init = phi i64 [ 32, %.lr.ph.preheader ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod198 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod198)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.050134.epil = phi i64 [ %i.x, %.lr.ph.epil ], [ %.050134.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.x = shl i64 %.050134.epil, 5                 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !2043

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.050.lcssa = phi i64 [ 32, %bb.a ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ], [ %i.x, %.lr.ph.epil ] ; 2 uses
  %.046.lcssa = phi i64 [ 1, %bb.a ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ], [ %.050134.epil, %.lr.ph.epil ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %6, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %7, i8 0, i64 512, i1 false)
  %i.y = mul i64 %.050.lcssa, %2                  ; 2 uses
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.050134 = phi i64 [ 32, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.z = shl i64 %.050134, 40                     ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2044

bb.b:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %8, i8 0, i64 496, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %5, i8 0, i64 496, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 240
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 240 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread.i, %bb.b
  %.075.i = phi i64 [ 0, %bb.b ], [ %i.as, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread.i ] ; 5 uses
  %.idx.i = shl nuw nsw i64 %.075.i, 5
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 %.idx.i ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !252 ; 5 uses
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !252 ; 5 uses
  %i.ag = icmp ult i64 %i.ae, %i.af
  br i1 %i.ag, label %._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread_crit_edge.i, label %bb.d

._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread_crit_edge.i: ; preds = %bb.c
  %.phi.trans.insert78.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.pre79.i = load i64, ptr %.phi.trans.insert78.i, align 8, !tbaa !636
  br label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.ah = icmp ult i64 %i.af, %i.ae
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !636 ; 2 uses
  br i1 %i.ah, label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread69.i, label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.i

_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.i: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !636 ; 2 uses
  %i.ak = icmp ult i64 %.pre.i, %i.aj
  br i1 %i.ak, label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread.i, label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread69.i

_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread69.i: ; preds = %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.i, %bb.d
  br label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread.i

_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread.i: ; preds = %._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread_crit_edge.i, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.i, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread69.i
  %.sink185 = phi i64 [ %i.ae, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread69.i ], [ %i.af, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.i ], [ %i.af, %._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread_crit_edge.i ]
  %.pre.i.sink = phi i64 [ %.pre.i, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread69.i ], [ %i.aj, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.i ], [ %.pre79.i, %._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread_crit_edge.i ]
  %.sink = phi i64 [ %i.af, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread69.i ], [ %i.ae, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.i ], [ %i.ae, %._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread_crit_edge.i ]
  %.sink.i = phi i64 [ 24, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread69.i ], [ 8, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.i ], [ 8, %._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread_crit_edge.i ]
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.075.i ; 2 uses
  store i64 %.sink185, ptr %i.al, align 8, !tbaa !634
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.pre.i.sink, ptr %i.am, align 8, !tbaa !636
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.075.i
  store i64 %.sink, ptr %i.an, align 8, !tbaa !634
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.075.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sink.i
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !636
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !636
  %i.as = add nuw nsw i64 %.075.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.as, 16
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.c, !llvm.loop !2045

.preheader.i:                                     ; preds = %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread.i, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread.i
  %i.at = phi i64 [ %i.bg, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread.i ], [ 14, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread.i ] ; 5 uses
  %.idx97.i = shl i64 %i.at, 5
  %i.au = getelementptr i8, ptr %5, i64 %.idx97.i ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr i8, ptr %i.au, i64 32
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !252 ; 5 uses
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !252 ; 5 uses
  %i.az = icmp ult i64 %i.ax, %i.ay
  br i1 %i.az, label %.preheader._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread_crit_edge.i, label %bb.e

.preheader._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread_crit_edge.i: ; preds = %.preheader.i
  %.phi.trans.insert84.i = getelementptr i8, ptr %i.au, i64 40
  %.pre85.i = load i64, ptr %.phi.trans.insert84.i, align 8, !tbaa !636
  %.phi.trans.insert86.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.pre87.i = load i64, ptr %.phi.trans.insert86.i, align 8, !tbaa !636
  br label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread.i

bb.e:                                             ; preds = %.preheader.i
  %i.ba = icmp uge i64 %i.ay, %i.ax
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.pre81.i = load i64, ptr %.phi.trans.insert80.i, align 8, !tbaa !636 ; 3 uses
  %.phi.trans.insert82.i = getelementptr i8, ptr %i.au, i64 40
  %.pre83.i = load i64, ptr %.phi.trans.insert82.i, align 8, !tbaa !636 ; 3 uses
  %i.bb = icmp ult i64 %.pre81.i, %.pre83.i
  %or.cond.i = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond.i, label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread.i, label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread72.i

_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread72.i: ; preds = %bb.e
  br label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread.i

_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread.i: ; preds = %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread72.i, %bb.e, %.preheader._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread_crit_edge.i
  %.sink107.i = phi i64 [ %i.ax, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread72.i ], [ %i.ay, %bb.e ], [ %i.ay, %.preheader._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread_crit_edge.i ]
  %.pre81.sink.i = phi i64 [ %.pre81.i, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread72.i ], [ %.pre83.i, %bb.e ], [ %.pre85.i, %.preheader._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread_crit_edge.i ]
  %.sink103.i = phi i64 [ %i.ay, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread72.i ], [ %i.ax, %bb.e ], [ %i.ax, %.preheader._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread_crit_edge.i ]
  %.pre83.sink.i = phi i64 [ %.pre83.i, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread72.i ], [ %.pre81.i, %bb.e ], [ %.pre87.i, %.preheader._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread_crit_edge.i ]
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %i.at ; 2 uses
  store i64 %.sink107.i, ptr %i.bc, align 8, !tbaa !634
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %.pre81.sink.i, ptr %i.bd, align 8, !tbaa !636
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.at ; 2 uses
  store i64 %.sink103.i, ptr %i.be, align 8, !tbaa !634
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %.pre83.sink.i, ptr %i.bf, align 8, !tbaa !636
  %i.bg = add nsw i64 %i.at, -1
  %.not65.i = icmp eq i64 %i.at, 0
  br i1 %.not65.i, label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE10StartGamesERSt5arrayISt4pairImmELm31EERKS4_IS6_Lm32EERKS6_.exit, label %.preheader.i, !llvm.loop !2046

_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE10StartGamesERSt5arrayISt4pairImmELm31EERKS4_IS6_Lm32EERKS6_.exit: ; preds = %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread.i
  %i.bh = shl i64 %2, 5
  %i.bi = lshr exact i64 %.050.lcssa, 5
  %i.bj = add nuw nsw i64 %i.bi, 2
  %i.bk = mul i64 %i.bh, %i.bj                    ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %5, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.bl = icmp ne i64 %.sroa.0.0.copyload.i, -1
  %i.bm = icmp ne i64 %.sroa.2.0.copyload.i, -1
  %.not3.i139 = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %.not3.i139, label %.lr.ph144, label %._crit_edge145

.lr.ph144:                                        ; preds = %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE10StartGamesERSt5arrayISt4pairImmELm31EERKS4_IS6_Lm32EERKS6_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  br label %bb.j

bb.f:                                             ; preds = %._crit_edge, %bb.i
  %storemerge136 = phi i64 [ 0, %._crit_edge ], [ %i.ca, %bb.i ] ; 6 uses
  %i.bo = mul i64 %storemerge136, %.046.lcssa
  %i.bp = add i64 %i.bo, %i.y                     ; 3 uses
  %i.bq = tail call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.r) ; 2 uses
  %i.br = add i64 %i.bp, %.046.lcssa
  %i.bs = tail call noundef i64 @llvm.umin.i64(i64 %i.br, i64 %i.r) ; 2 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %storemerge136 ; 2 uses
  store i64 %i.bq, ptr %i.bt, align 8, !tbaa !634
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %i.bs, ptr %i.bu, align 8, !tbaa !636
  %.not = icmp eq i64 %i.bq, %i.bs
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.bp)
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !252
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %storemerge136 ; 2 uses
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !634
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %storemerge136, ptr %i.by, align 8, !tbaa !636
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %storemerge136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 -1, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ca = add nuw nsw i64 %storemerge136, 1       ; 2 uses
  %exitcond154.not = icmp eq i64 %i.ca, 32
  br i1 %exitcond154.not, label %bb.b, label %bb.f, !llvm.loop !2047

bb.j:                                             ; preds = %.lr.ph144, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11ReplayGamesERSt5arrayISt4pairImmELm31EEmRKS6_.exit
  %.048143 = phi i64 [ %i.bk, %.lr.ph144 ], [ %.2, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11ReplayGamesERSt5arrayISt4pairImmELm31EEmRKS6_.exit ] ; 2 uses
  %.049142 = phi i64 [ %i.y, %.lr.ph144 ], [ %i.di, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11ReplayGamesERSt5arrayISt4pairImmELm31EEmRKS6_.exit ] ; 3 uses
  %.sroa.7.0141 = phi i64 [ %.sroa.2.0.copyload.i, %.lr.ph144 ], [ %.sroa.7.1, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11ReplayGamesERSt5arrayISt4pairImmELm31EEmRKS6_.exit ] ; 4 uses
  %.sroa.0101.0140 = phi i64 [ %.sroa.0.0.copyload.i, %.lr.ph144 ], [ %.sroa.0101.1, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11ReplayGamesERSt5arrayISt4pairImmELm31EEmRKS6_.exit ]
  %i.cb = load ptr, ptr %i.i, align 8, !tbaa !667 ; 4 uses
  %i.cc = load ptr, ptr %i.bn, align 8, !tbaa !667
  %i.cd = icmp ne ptr %i.cb, %i.cc
  %i.ce = and i64 %.049142, 31
  %i.cf = icmp eq i64 %i.ce, 0
  %or.cond = select i1 %i.cd, i1 %i.cf, i1 false
  br i1 %or.cond, label %.preheader128, label %.loopexit129

.preheader128:                                    ; preds = %bb.j
  %i.cg = ptrtoint ptr %i.cb to i64               ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit.1, %.preheader128
  %.047138 = phi i64 [ 0, %.preheader128 ], [ %i.dh, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit.1 ] ; 3 uses
  %.1137 = phi i64 [ %.048143, %.preheader128 ], [ %i.df, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit.1 ] ; 5 uses
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.047138
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !634
  %i.cj = load ptr, ptr %i.bn, align 8, !tbaa !356 ; 2 uses
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.cg
  %i.cm = ashr exact i64 %i.cl, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.1137, ptr %i.e, align 8, !tbaa !252
  store i64 %i.cm, ptr %i.f, align 8, !tbaa !252
  %.not.i.i.i = icmp ult i64 %.1137, %i.cm
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit, label %.noexc.i, !prof !257

.noexc.i:                                         ; preds = %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit, %bb.k
  %i.cn = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.co, ptr %4, align 8, !tbaa !706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 55, ptr %i.b, align 8, !tbaa !252
  %i.cp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.cp, ptr %4, align 8, !tbaa !156
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !252 ; 3 uses
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.cp, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !707
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cq
  store i8 0, ptr %i.cs, align 1, !tbaa !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.n unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %common.resume.sink.split

bb.m:                                             ; preds = %bb.l, %.noexc
  %.0.i.i.i = phi i1 [ false, %bb.l ], [ true, %.noexc ] ; 2 uses
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cv = load ptr, ptr %4, align 8, !tbaa !156   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.co
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.cv) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br i1 %.0.i.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br i1 %.0.i.i.i, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i88
  %.sink187 = phi ptr [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i83 ], [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i88 ], [ %i.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87 ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i83 ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i88 ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink187) #29
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87 ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i88 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.l
  unreachable

_ZN6duckdb6vectorImLb1ESaImEEixEm.exit:           ; preds = %bb.k
  %i.cx = add nuw i64 %.1137, 1                   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.1137
  store i64 %i.ci, ptr %i.cy, align 8, !tbaa !252
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.047138
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
end_hunk_1
